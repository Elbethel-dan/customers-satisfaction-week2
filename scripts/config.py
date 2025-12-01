"""
Configuration file for Bank Reviews Analysis Project
"""
import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv('.env')

# Google Play Store App IDs
APP_IDS = {
# env
    'CBE': os.getenv('CBE_APP_ID', 'id=com.combanketh.mobilebanking'),
    'BOA': os.getenv('BOA_APP_ID', 'id=com.boa.boaMobileBanking'),
    'Dashenbank': os.getenv('DASHENBANK_APP_ID', 'id=com.dashen.dashensuperapp')

}

# Bank Names Mapping
BANK_NAMES = {
    'CBE': 'Commercial Bank of Ethiopia',
    'BOA': 'Bank of Abyssinia',
    'Dashenbank': 'Dashen Bank'
}

# Scraping Configuration
SCRAPING_CONFIG = {
    'reviews_per_bank': int(os.getenv('REVIEWS_PER_BANK', 800)),
    'max_retries': int(os.getenv('MAX_RETRIES', 3)),
    'lang': 'en',
    'country': 'et'  # Ethiopia
}

# File Paths
DATA_PATHS = {
    'raw': 'data/raw',
    'processed': 'data/processed',
    'raw_reviews': 'data/raw/reviews_raw.csv',
    'processed_reviews': 'data/processed/reviews_processed.csv',
    'sentiment_results': 'data/processed/reviews_with_sentiment.csv',
    'final_results': 'data/processed/reviews_final.csv'
}

"""
DB_CONFIG = {
    'host': os.getenv('DB_HOST', 'localhost'),
    'port': os.getenv('DB_PORT', 5432),
    'database': os.getenv('DB_NAME', 'bank_reviews_db'),        
    'user': os.getenv('DB_USER', 'user'),
    'password': os.getenv('DB_PASSWORD', 'password')
}

SENTIMENT_CONFIG = {
    'model_name': os.getenv('SENTIMENT_MODEL_NAME', 'distilbert-base-uncased-finetuned-sst-2-english'),
    'batch_size': int(os.getenv('SENTIMENT_BATCH_SIZE', 16)),
    'use_vader': os.getenv('USE_VADER', 'False').lower() in ('true', '1', 't')
}       
"""