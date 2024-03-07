## Exercise Overview

The primary goal was to structure the given data into a relational model, analyze it to answer specific business questions, and identify data quality issues.

### Data Overview

The provided data consists of three main components:

1. Receipts Data: Contains information about each transaction, including items purchased, total spent, and user ID.
2. Users Data: Details about users, such as account creation and last login.
3. Brands Data: Information on various brands, including categories and codes.

### Technologies and Tools Used

* **SQL**: For structuring unstructured data into a relational model and conducting analysis.
* **Python (Jupyter Notebook)**: For initial data loading, cleaning, and preparing SQL queries.
* **SQLite**: Served as the relational database management system for executing SQL queries and storing structured data.


## Submission Overview
* `src/analysis.ipynb`: This Jupyter Notebook contains all the code, analysis with detailed comments on each step, output of each cell and `SQL Queries` answering below two questions:
  1. When considering average spend from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?
  2. When considering total number of items purchased from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?
* `ERD.png`: Relational diagram representing data model in a data warehouse. The diagram includes the following:
  * Entities (or tables)
  * Fields of each table
  * Keys
  * Relationship between each entity
  * DataType of each field: This could change according to how missing values are dealt as per busniess requirements.
* `Email Communicate with Stakeholders.pdf`: Email to the business stakeholder
* `ERD_Explanation.pdf`: Contains overview and relationships explanation of ERD.
* `Dockerfile`: Dockerfile to run juypter notebook/

## Assumptions
* `signUpSource` was in data but wasn’t mentioned in schema. So, assumed the presence.
* In `rewardsReceiptStatus` there is no `ACCEPTED` value but logically I replaced it with `FINISHED`.

## Installation
```bash
git clone https://github.com/shivams1208/fetch_analytics_take_home.git

cd fetch_analytics_take_home
```

## Usage
All the code and  SQL queries with output is present in `src/analysis.ipynb` and if you want to run the jupyter notebook and please use docker as described below:

First make sure you have docker installed in your system and if not you can get the docker from [here](https://docs.docker.com/get-docker/).

Ensure that port `8889` is not currently in use by any other processes or if you prefer, you can use another port and update the commands accordingly. Then, **execute the Jupyter notebook from top to bottom to guarantee that all necessary dependencies are properly loaded and available for use.**

### Steps
1. Build the docker:

   `docker build -t analytics .`
2. Run the docker:

   `docker run -p 8889:8889 analytics`

After executing the second command, you will receive two links to access the Jupyter notebook. Attempt to open both links in your web browser and proceed with the one that successfully launches the Jupyter notebook interface.