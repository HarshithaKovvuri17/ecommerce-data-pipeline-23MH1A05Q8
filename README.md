# E-Commerce Data Pipeline Project

## Project Overview
This project implements an end-to-end **E-Commerce Data Pipeline** following modern **data engineering best practices**.
It covers the complete lifecycle of data from **generation to analytics**, including ingestion, transformation, data quality checks,
monitoring, testing, and BI dashboards.

The pipeline is modular, scalable, and production-oriented, with strong emphasis on **automation, data quality, monitoring, and testing**.

---

## Project Architecture

### Data Flow

Raw CSV Files  
↓  
Staging Schema (PostgreSQL)  
↓  
Production Schema (Cleaned & Normalized)  
↓  
Warehouse Schema (Star Schema)  
↓  
Analytics & Aggregates  
↓  
BI Dashboards (Power BI / Tableau)

---

## Technology Stack

- Data Generation: Python, Faker
- Database: PostgreSQL
- ETL / Transformations: Python, Pandas, SQLAlchemy
- Orchestration: Python Scheduler & Pipeline Orchestrator
- Monitoring & Alerting: Python, JSON-based reports
- Testing: Pytest, Pytest-cov
- BI Tools: Power BI Desktop / Tableau Public
- Version Control: Git & GitHub

---

## Project Structure

ecommerce-data-pipeline/
├── config/
│   └── database.py
├── data/
│   ├── raw/
│   ├── processed/
│   └── warehouse/
├── scripts/
│   ├── data_generation/
│   ├── ingestion/
│   ├── transformation/
│   ├── quality_checks/
│   ├── monitoring/
│   ├── scheduler.py
│   ├── pipeline_orchestrator.py
│   └── cleanup_old_data.py
├── sql/
│   └── queries/
│       └── monitoring_queries.sql
├── tests/
│   ├── test_data_generation.py
│   ├── test_ingestion.py
│   ├── test_transformation.py
│   ├── test_quality_checks.py
│   └── test_warehouse.py
├── dashboards/
│   ├── powerbi/
│   └── screenshots/
├── docs/
│   ├── architecture.md
│   └── dashboard_guide.md
├── pytest.ini
├── run_tests.sh
├── requirements.txt
└── README.md

---

## Setup Instructions

### Prerequisites

- Python 3.10+
- PostgreSQL 14+
- Git
- Power BI Desktop or Tableau Public

---

### Step-by-Step Setup

Clone the repository:

git clone <your-github-repo-url>  
cd ecommerce-data-pipeline

Create virtual environment:

python -m venv venv

Activate environment:

source venv/bin/activate  
Windows: venv\\Scripts\\activate

Install dependencies:

pip install -r requirements.txt

---

### Database Setup

- Create a PostgreSQL database
- Update credentials in config/database.py
- Verify database connectivity

---

## Running the Pipeline

### Full Pipeline Execution

python scripts/pipeline_orchestrator.py

---

### Individual Steps

Data generation:

python scripts/data_generation/generate_data.py

Ingestion to staging:

python scripts/ingestion/ingest_to_staging.py

Transform staging to production:

python scripts/transformation/staging_to_production.py

Load warehouse:

python scripts/transformation/load_warehouse.py

Generate analytics:

python scripts/transformation/generate_analytics.py

---

## Monitoring & Alerting (Phase 5)

### Monitoring Coverage

- Pipeline execution health
- Data freshness
- Data volume anomalies
- Data quality trends
- Database connectivity

Run monitoring:

python -m scripts.monitoring.pipeline_monitor

Monitoring output:

data/processed/monitoring_report.json

Alert levels:

- Critical: Pipeline stopped, database unreachable, zero records
- Warning: Data delays, volume anomalies, quality degradation

---

## Testing (Phase 6.1)

Run all tests:

pytest

Run tests with coverage:

pytest --cov=scripts --cov-report=html

Test coverage includes:

- Data generation validation
- Ingestion correctness
- Transformation business rules
- Data quality checks
- Warehouse integrity

---

## Database Schemas

### Staging Schema

- staging.customers
- staging.products
- staging.orders
- staging.order_items

### Production Schema

- production.customers
- production.products
- production.orders
- production.order_items

### Warehouse Schema

- warehouse.dim_customer
- warehouse.dim_product
- warehouse.dim_date
- warehouse.dim_status
- warehouse.fact_sales
- warehouse.agg_daily_sales
- warehouse.agg_product_performance
- warehouse.agg_customer_metrics

---

## Analytics & BI Dashboards

Power BI:
- dashboards/powerbi/ecommerce_analytics.pbix

Tableau Public:
- Add published dashboard URL

Dashboard screenshots:
- dashboards/screenshots/

---

## Key Insights from Analytics

- Top product categories contribute majority of revenue
- Weekend sales outperform weekdays
- High-value customers generate disproportionate revenue
- Payment method dominance observed
- Seasonal revenue trends identified

---

## Challenges & Solutions

1. Large pipeline execution time  
   Solution: Modular pipeline design and optimized queries

2. Data quality issues  
   Solution: Automated quality checks

3. Monitoring complexity  
   Solution: Centralized JSON-based monitoring

4. Test isolation  
   Solution: Independent pytest fixtures

---

## Future Enhancements

- Real-time streaming with Apache Kafka
- Cloud deployment (AWS / GCP / Azure)
- Machine learning for forecasting
- Real-time alerts via Email / Slack
- CI/CD integration

---

## Contact

Name: Harshitha  
Roll Number: 23MH1A05Q8  
Email: harshitahanisha@gmail.com  
GitHub: https://github.com/HarshithaKovvuri17

---

## Acknowledgement

This project was developed as part of an academic Data Engineering Capstone following industry-aligned standards.
