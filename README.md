# FIFA Players Analysis

This project focuses on cleaning, processing, and analyzing male FIFA player data. It includes steps for transforming raw CSV data into structured datasets, generating analytical summaries, and exporting results for further use. The processed data is also visualized in Tableau to explore player performance, attribute distributions, and team insights.

## Project Overview

The goal of the project is to take the raw male_players.csv dataset and transform it into a clean, analysis-ready database. The workflow includes:

• Data cleaning
• Handling missing values
• Correcting numeric and string columns
• Generating player composite scores
• Ranking the top players
• Creating team-level summaries
• Exporting processed datasets to CSV and SQLite
• Visualizing results in Tableau

## Project Structure

See above at files

## Data Processing Workflow

The project uses Python (Pandas, SQLite, Pathlib) to perform:

1. Cleaning and formatting
Columns with incorrect types (string vs numeric) are fixed, while certain fields remain strings (names, clubs, nationalities, positions, etc.).

2. Handling missing values
Numeric columns are filled using median values. Text columns remain untouched.

3. Feature engineering
A composite score is computed based on key player attributes, normalized when needed.

4. Ranking players
The top 20 players are extracted into a dedicated dataset.

5. Team-level summaries
Each team’s average attributes (overall, potential, passing, etc.) are aggregated.

6. Exporting results
All processed tables are written to CSV and imported into a SQLite database (fifa.db).

## Tableau Visualization

The processed datasets are imported into Tableau to create dashboards such as:

• Player performance comparisons
• Attribute distributions
• Top players overview
• League and club insights
• Team-level attribute heatmaps

These dashboards help turn the cleaned data into visual insights.

## How to Run the Project

Install dependencies:

pip install pandas numpy sqlite3 pathlib

Place male_players.csv inside the /data folder. #from Kaggle data source: https://www.kaggle.com/datasets/stefanoleone992/fifa-23-complete-player-dataset?select=male_players.csv

Run the data processing script or Jupyter notebook.

Check the /outputs folder for:
cleaned_players.csv
top20_players.csv
teams_summary.csv
fifa.db

Import the files into Tableau to create visual dashboards.

## Technologies Used
• Python (Pandas, NumPy)
• SQLite
• Tableau
• Jupyter Notebook
• Git / GitHub

## Future Improvements
• Add more advanced scoring models (e.g., weighted attributes or ML-based ranking)
• Build automated dashboards
• Expand dataset including FIFA women’s data
• Add REST API endpoints for interactive use
