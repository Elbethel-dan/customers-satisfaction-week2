# Customer Satisfaction Analysis for Banks

This repository contains the code and resources for analyzing **customer reviews** of three banks. The goal is to uncover user sentiment and recurring themes that drive satisfaction or dissatisfaction.

---

## 📌 Project Overview

The project consists of two main tasks:

### **1. Web Scraping**
- Collected reviews, ratings, dates, and app names for three banks using `google-play-scraper`.
- Targeted **800+ reviews per bank** (2,400+ reviews total).
- Preprocessed data by:
  - Removing duplicates.
  - Handling missing values.
  - Normalizing dates to `YYYY-MM-DD`.
- Saved cleaned data as CSV with columns:

  
---

### **2. Sentiment and Thematic Analysis**
The objective is to **quantify sentiment** and **identify recurring themes** in user feedback.

#### **Sentiment Analysis**
- Applied **DistilBERT** (`distilbert-base-uncased-finetuned-sst-2-english`) for sentiment scoring (positive, negative, neutral).
- Optionally compared results with simpler methods like **VADER** or **TextBlob**.
- Aggregated sentiment by bank and rating to understand patterns (e.g., mean sentiment for 1-star reviews).

#### **Thematic Analysis**
- Extracted **keywords and n-grams** using **TF-IDF** and **spaCy**.
- Grouped related keywords into **3–5 overarching themes per bank**, such as:
- **Account Access Issues**  
- **Transaction Performance**  
- **User Interface & Experience**  
- **Customer Support**  
- **Feature Requests**
- Implemented a **rule-based clustering pipeline**:
- Tokenization, stop-word removal, and optional lemmatization.
- Keyword extraction per review.
- Mapping of keywords to predefined themes.


---

## ⚙️ Reproduce this environment

To set up and reproduce this project locally, follow the steps below:

## 1. Clone the repository
```bash
   [git clone [https://github.com/Elbethel-dan/solar-challenge-week0.git]
```
## 2. Create and activate a virtual environment (recommended)

   **For macOS / Linux**
   ```bash
     python3 -m venv week0
     source week0/bin/activate
   ```

   **For Windows**
   ```bash
python -m venv week0
     week0\Scripts\activate
   ```
## 3. Install dependencies
  ```bash
     pip install -r requirements.txt
 ```
