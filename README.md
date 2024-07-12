
# Building Energy Consumption Prediction with MLOps Sample

## Project Overview

This project aims to predict the energy consumption of buildings in terms of heating load and cooling load. The objective is to utilize machine learning models to estimate energy efficiency based on various building parameters.

## Dataset

- **Source:** [UCI Machine Learning Repository - Energy Efficiency](https://archive.ics.uci.edu/dataset/242/energy+efficiency)
- **Instances:** 768
- **Features:** 8
- **Target Variables:** Heating Load (Y1), Cooling Load (Y2)

## Project Structure

```
energy-consumption-prediction/
├── .github/
│   └── workflows/
│       └── ci_cd_pipeline.yml
├── data/
│   ├── raw/
│   │   └── ENB2012_data.xlsx
│   ├── processed/
│       └── ENB2012_data_processed.csv
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
├── notebooks/
│   ├── 1_data_preparation.ipynb
│   ├── 2_model_training.ipynb
│   └── 3_model_evaluation.ipynb
├── src/
│   ├── data_preparation.py
│   ├── model_training.py
│   └── model_evaluation.py
├── Dockerfile
├── README.md
└── requirements.txt
```

## Setup and Usage

### Prerequisites

- Python 3.8 or later
- Docker
- Kubernetes (kubectl)
- GitHub account (for CI/CD)

### Installation

1. **Clone the repository:**

   ```sh
   git clone https://github.com/oaslananka/energy-consumption-prediction.git
   cd energy-consumption-prediction
   ```

2. **Install Python dependencies:**

   ```sh
   pip install -r requirements.txt
   ```

3. **Prepare the data:**
   - Download the dataset and place it in the `data/raw/` directory.
   - Run the `1_data_preparation.ipynb` notebook to preprocess the data.

4. **Train the model:**
   - Run the `2_model_training.ipynb` notebook to train the models.

5. **Evaluate the model:**
   - Run the `3_model_evaluation.ipynb` notebook to evaluate and visualize the model performance.

### Docker Usage

1. **Build the Docker image:**

   ```sh
   docker build -t energy-consumption-prediction .
   ```

2. **Run the Docker container:**

   ```sh
   docker run --rm energy-consumption-prediction
   ```

### Kubernetes Deployment

1. **Apply the deployment and service:**

   ```sh
   kubectl apply -f kubernetes/deployment.yaml
   kubectl apply -f kubernetes/service.yaml
   ```

2. **Check the status:**

   ```sh
   kubectl get deployments
   kubectl get services
   ```

### CI/CD Pipeline

This project uses GitHub Actions for continuous integration and continuous deployment. The pipeline is defined in `.github/workflows/ci_cd_pipeline.yml`.

1. **Set up GitHub Secrets:**
   - `DOCKER_USERNAME`: Your Docker Hub username
   - `DOCKER_PASSWORD`: Your Docker Hub password

2. **Push the changes to GitHub:**

   ```sh
   git add .
   git commit -m "Set up CI/CD pipeline"
   git push origin main
   ```

### Results

- The model performance metrics and visualizations are available in the `3_model_evaluation.ipynb` notebook.
- Heating Load MSE: *value*
- Cooling Load MSE: *value*

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- UCI Machine Learning Repository for the dataset.
- Contributors to the open-source libraries used in this project.

## Note

This project is a practice exercise and is not intended for production use. It serves as a learning tool for implementing machine learning models, Docker, and Kubernetes.
