# tests/test_preprocessing.py
import sys
import os
import pandas as pd
from unittest.mock import MagicMock

# --- Mock dotenv so tests run without installing python-dotenv ---
sys.modules['dotenv'] = MagicMock()

# Add scripts folder to path so we can import preprocessing
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '../scripts')))
from preprocessing import ReviewPreprocessor

# Sample data for testing
sample_data = pd.DataFrame({
    'review_id': ['r1', 'r2', 'r3'],
    'review_text': ['Good app', 'Bad experience', 'Average'],
    'rating': [5, 1, 3],
    'review_date': ['2025-01-01', '2025-01-02', '2025-01-03'],
    'bank_name': ['BankA', 'BankB', 'BankA'],
    'user_name': ['User1', 'User2', None],
    'thumbs_up': [10, 0, None],
    'reply_content': [None, 'Sorry to hear', None]
})

def test_handle_missing_values_removes_none():
    preprocessor = ReviewPreprocessor()
    preprocessor.df = sample_data.copy()
    preprocessor.handle_missing_values()
    
    # Check that 'user_name' None is replaced with 'Anonymous'
    assert 'Anonymous' in preprocessor.df['user_name'].values
    # Check that 'thumbs_up' None is replaced with 0
    assert preprocessor.df['thumbs_up'].isnull().sum() == 0

def test_clean_text_removes_whitespace_and_empty():
    preprocessor = ReviewPreprocessor()
    preprocessor.df = pd.DataFrame({
        'review_text': ['  Good app  ', '', 'Another review']
    })
    preprocessor.clean_text()
    
    # Empty row should be removed
    assert '' not in preprocessor.df['review_text'].values
    # Leading/trailing whitespace removed
    assert preprocessor.df['review_text'].iloc[0] == 'Good app'

def test_validate_ratings_filters_invalid():
    preprocessor = ReviewPreprocessor()
    preprocessor.df = pd.DataFrame({
        'rating': [0, 3, 6]
    })
    preprocessor.validate_ratings()
    
    # Only rating 3 should remain
    assert preprocessor.df['rating'].tolist() == [3]
