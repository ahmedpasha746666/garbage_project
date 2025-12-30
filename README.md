Garbage Classification using Vision Transformer (ViT)
📌 Project Overview

This project implements an end-to-end image classification system using a Vision Transformer (ViT) model to classify garbage images into multiple classes.
The project follows best practices, including model evaluation, testing, Dockerization, and CI/CD automation.

🎯 Objectives

Train a ViT-based image classification model

Evaluate model performance using multiple metrics

Save and reuse the trained model

Automate testing and builds using CI/CD

Provide a reproducible environment using Docker

🧠 Model Information

Model Type: Vision Transformer (ViT)

Base Model: google/vit-base-patch16-224

Framework: PyTorch + HuggingFace Transformers

Saved Model Path: model/best_vit_model.pth

📂 Project Structure
GARBAGE/
│
├── .github/workflows/
│   └── ci-cd.yaml                # CI/CD pipeline configuration
│
├── data/
│   └── ...                       # Dataset (train / validation / test)
│
├── eval/                         # Evaluation results & notebooks
│   ├── classification_report.csv
│   ├── precision_recall_f1.csv
│   ├── confidence_by_class.png
│   ├── confidence_distribution.png
│   ├── confusion_matrix.png
│   ├── confusion_matrix_normalized.png
│   ├── metrics_heatmap.png
│   ├── metrics_radar.png
│   ├── per_class_accuracy.png
│   ├── precision_recall_f1_bars.png
│   ├── test_distribution.png
│   ├── cr_cm.ipynb
│   ├── precision_recall.ipynb
│   └── prediction_analysis.ipynb
│
├── model/
│   └── best_vit_model.pth        # Trained ViT model
│
├── src/
│   ├── train.ipynb               # Model training notebook
│   └── predict.ipynb             # Model inference notebook
│
├── tests/
│   └── test_model.py             # Unit tests
│
├── Dockerfile                    # Docker configuration
├── requirements.txt              # Project dependencies
├── README.md                     # Project documentation
└── .gitignore

🏋️ Model Training

Model training is performed using the notebook:

src/train.ipynb

Training Workflow:

Load images from the data/ directory

Apply ViT image preprocessing

Fine-tune the ViT model

Save the best model to model/best_vit_model.pth

🔍 Model Evaluation

All evaluation artifacts are stored in the eval/ folder.

Evaluation Includes:

Accuracy (overall & per-class)

Precision, Recall, F1-score

Confusion Matrix (raw & normalized)

Confidence analysis per class

Visual reports (heatmaps, radar charts, bar plots)

🧪 Testing

Automated tests ensure model correctness.

Run Tests:
pytest


Test files are located in:

tests/test_model.py

🐳 Docker Usage
Build Docker Image
docker build -t vit-garbage-classifier .

Run Docker Container
docker run vit-garbage-classifier

🔄 CI/CD Pipeline

The project uses GitHub Actions for continuous integration and delivery.

Pipeline file:

.github/workflows/ci-cd.yaml

CI/CD Tasks:

Code checkout

Dependency installation

Unit testing

Docker image build

📦 Local Setup
Create Virtual Environment
python -m venv venv
source venv/bin/activate      # Linux / Mac
venv\Scripts\activate         # Windows

Install Dependencies
pip install -r requirements.txt

🧰 Tech Stack

Python

PyTorch

HuggingFace Transformers (ViT)

Scikit-learn

Matplotlib & Seaborn

Pytest

Docker

GitHub Actions

🚀 Future Improvements

MLflow experiment tracking

DVC + DagsHub for data versioning

REST API using FastAPI

Cloud deployment (AWS / GCP / Azure)

👨‍💻 Author

Ahmed Pasha
Machine Learning Engineer | MLOps Enthusias