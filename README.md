# 04_Data_Engineering_AWS

This project is to create an automated pipeline in the cloud for an e-scooter-sharing start-up - Gans. 

The company wants to anticipate as much as possible scooter movements. Predictive modelling is certainly on the roadmap, but the first step is to collect more data, transform it and store it appropriately. My task is to collect data from external sources that can potentially help Gans predict e-scooter movement. Since data is needed every day, in real-time and accessible by everyone in the company, the challenge is going to be to assemble and automate a data pipeline in the cloud.

## Code
There will be two major phases of the project, each with its own sub-phases.
Phase 1: Local pipeline
`1.1. Scrape data from the web - with the Beautiful Soup library`
`1.2. Collect data with APIs - working With JSON Data`
`1.3. Set up a local database on MySQL`
`1.4. Store data on a local MySQL instance - using SQLAlchemy`

Phase 2: Cloud Pipeline
2.1. Set up an Amazon RDS MySQL Instance
`2.2. Move scripts to AWS Lambda`
2.3. Automate the pipeline with EventBridge

---

The project has some limitations due to the limited time we had for its completion:
- Data pipeline is not connected to a BI tool.
- A data warehouse or a data lake will not be created.
- We did not work with big data, data streaming or parallel computing.

