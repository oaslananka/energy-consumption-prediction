import pandas as pd

def process_data():
    """
    Reads the ENB2012_data.xlsx file, performs data preprocessing, and saves the processed data to a CSV file.

    Returns:
    None
    """

    data_path = '../data/raw/ENB2012_data.xlsx'

    data = pd.read_excel(data_path)

    data.head()

    data.isnull().sum()

    processed_data_path = '../data/processed/ENB2012_data_processed.csv'
    data.to_csv(processed_data_path, index=False)

process_data()