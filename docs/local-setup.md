# Local Setup Guide

## 1. Prerequisites
Follow the [Git Setup](setup-guides/git-setup.md) and [Python Setup](setup-guides/python-setup.md) guides.

## 2. Environment Configuration
Create a `.env` file in the root directory:
```env
GEMINI_API_KEY=your_key_here
TAVILY_API_KEY=your_key_here
```

## 3. Installation
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r backend/requirements.txt
pip install -r frontend/requirements.txt
```

## 4. Run Locally
**Start Backend:**
```bash
cd backend
python app.py
```

**Start Frontend:**
```bash
cd frontend
streamlit run app.py
```
