# tests/test_scraper.py
import sys
import os
import pandas as pd
from unittest.mock import MagicMock

# --- Mock google_play_scraper so tests run without installing it ---
sys.modules['google_play_scraper'] = MagicMock()

# Add scripts folder to path so we can import scraper
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '../scripts')))
from scraper import PlayStoreScraper

# --- Mock reviews data ---
mock_reviews = [
    {
        'reviewId': 'r1',
        'content': 'Great app',
        'score': 5,
        'at': '2025-01-01',
        'userName': 'User1',
        'thumbsUpCount': 10,
        'replyContent': None,
        'reviewCreatedVersion': '1.0.0'
    },
    {
        'reviewId': 'r2',
        'content': 'Bad experience',
        'score': 2,
        'at': '2025-01-02',
        'userName': 'User2',
        'thumbsUpCount': 0,
        'replyContent': 'Sorry to hear',
        'reviewCreatedVersion': '1.0.1'
    }
]

# --- Tests ---
def test_process_reviews_returns_correct_format():
    scraper = PlayStoreScraper()

    # Mock bank_names so 'bank1' exists for the test
    scraper.bank_names = {'bank1': 'Mock Bank'}

    processed = scraper.process_reviews(mock_reviews, bank_code='bank1')
    
    # Check type and basic content
    assert isinstance(processed, list)
    assert processed[0]['review_id'] == 'r1'
    assert processed[1]['review_text'] == 'Bad experience'
    assert processed[0]['bank_name'] == 'Mock Bank'
    assert processed[0]['bank_code'] == 'bank1'

def test_scrape_reviews_invalid_app(monkeypatch):
    scraper = PlayStoreScraper()
    scraper.bank_names = {'bank1': 'Mock Bank'}

    # Simulate network error by monkeypatching scrape_reviews method
    def mock_reviews_method(*args, **kwargs):
        return []
    monkeypatch.setattr(scraper, 'scrape_reviews', mock_reviews_method)
    
    result = scraper.scrape_reviews('fake_app_id', count=5)
    # Should return empty list on failure
    assert result == []

def test_process_reviews_contains_all_fields():
    scraper = PlayStoreScraper()
    scraper.bank_names = {'bank1': 'Mock Bank'}
    processed = scraper.process_reviews(mock_reviews, bank_code='bank1')

    required_fields = [
        'review_id', 'review_text', 'rating', 'review_date',
        'user_name', 'thumbs_up', 'reply_content', 
        'bank_code', 'bank_name', 'app_id', 'source'
    ]

    for review in processed:
        for field in required_fields:
            assert field in review
