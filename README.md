# end-to-end-analytics-engineering-pipeline-dbt-sql-bigquery
End-to-End Analytics Engineering Pipeline using dbt, SQL, BigQuery, and GitHub

## Project Overview

This project demonstrates the design and implementation of a modern end-to-end analytics engineering pipeline using:

* Google BigQuery
* dbt (Data Build Tool)
* SQL
* Git & GitHub

The pipeline ingests raw ecommerce datasets into a cloud data warehouse, applies layered SQL transformations using dbt, validates data quality through automated testing, and generates business-facing analytics marts and warehouse lineage documentation.

---

# Architecture

```text
Local CSV Datasets
        ↓
dbt seed
        ↓
BigQuery Raw Source Tables
        ↓
dbt Staging Models
        ↓
Fact Tables
        ↓
Business KPI Marts
        ↓
Automated Tests + Documentation
```

---

# Technologies Used

| Technology | Purpose                                     |
| ---------- | ------------------------------------------- |
| BigQuery   | Cloud data warehouse                        |
| dbt        | SQL transformation orchestration            |
| SQL        | Data modelling and transformations          |
| Git        | Version control                             |
| GitHub     | Repository hosting and portfolio management |
| YAML       | dbt testing and metadata configuration      |

---

# Key Analytics Engineering Concepts Implemented

## Cloud Data Warehousing

Created and configured a Google BigQuery warehouse environment including:

* BigQuery project
* warehouse dataset/schema
* raw ingestion layer

The warehouse stores:

* source data
* staging transformations
* marts models
* analytics outputs

---

# dbt Project Initialization

Initialized a dbt project using:

```bash
dbt init analytics_engineering
```

Configured:

* OAuth authentication
* BigQuery warehouse connection
* multi-threaded execution
* project environment settings

Generated a professional dbt project structure including:

* models/
* seeds/
* macros/
* tests/
* snapshots/
* analyses/

---

# Raw Data Ingestion

Loaded real-world ecommerce datasets into BigQuery using:

```bash
dbt seed
```

Datasets included:

* customers
* orders
* products
* payments
* order items
* sellers
* geolocation

This created the raw warehouse/source layer inside BigQuery.

---

# Staging Layer Modelling

Built SQL staging models to:

* clean raw data
* standardize formatting
* simplify schemas
* prepare reusable warehouse transformations

Examples:

* stg_customers
* stg_orders
* stg_payments
* stg_products
* stg_order_items

Example transformation:

```sql
SELECT customer_id, customer_unique_id, lower(customer_city) as customer_city, upper(customer_state) as customer_state, customer_zip_code_prefix
FROM {{ ref('olist_customers_dataset') }}
```

Implemented dbt dependency management using:

```sql
{{ ref('model_name') }}
```

to create warehouse lineage and automated orchestration.

---

# Fact Table Development

Created a business-facing fact table:

```text
fct_orders
```

This combines:

* orders
* products
* payments
* revenue
* freight values

using warehouse joins between staging models.

The fact table serves as the foundation for KPI modelling and downstream analytics.

---

# KPI / Marts Layer

Built analytics marts including:

## customer_revenue

Customer-level revenue metrics:

* total orders
* total revenue
* average order value

## product_revenue

Product-level KPI metrics:

* total product revenue
* order counts
* freight costs

## monthly_revenue

Time-series revenue analysis:

* monthly orders
* monthly revenue trends

---

# Automated Data Quality Testing

Implemented dbt YAML configuration files:

```yaml
schema.yml
```

to define automated warehouse data quality validation rules.

Example validations:

* not_null tests
* model-level testing

Executed:

```bash
dbt test
```

and:

```bash
dbt build
```

to orchestrate:

* seed loading
* model execution
* data quality validation

across the entire analytics pipeline.

---

# Documentation & Lineage

Generated interactive warehouse documentation using:

```bash
dbt docs generate
dbt docs serve
```

This automatically produced:

* model lineage graphs
* dependency visualization
* warehouse metadata documentation
* transformation catalog documentation

The lineage graph visualizes:

* raw ingestion layer
* staging transformations
* fact table dependencies
* KPI marts relationships

---

# Git & GitHub Version Control

Configured Git-based version control for the entire analytics engineering project.

Implemented:

* repository initialization
* Git staging workflows
* commit history
* GitHub repository synchronization

Commands used:

```bash
git init
git add .
git commit
git push
```

Configured `.gitignore` rules to exclude:

* dbt build artifacts
* logs
* temporary files

---

# End-to-End Pipeline Execution

Executed the full warehouse pipeline using:

```bash
dbt build
```

This orchestrated:

1. raw seed ingestion
2. staging transformations
3. fact table creation
4. KPI marts generation
5. automated testing

inside BigQuery.

---

# Skills Demonstrated

* Analytics Engineering
* Cloud Data Warehousing
* BigQuery
* dbt
* SQL Transformations
* Dimensional Modelling
* Fact & Mart Modelling
* Data Quality Testing
* Warehouse Documentation
* Git Version Control
* GitHub Repository Management
* Pipeline Orchestration
* Data Lineage & Dependency Management

---

# Future Improvements

Potential future enhancements:

* incremental dbt models
* partitioned BigQuery tables
* Looker Studio dashboards
* CI/CD automation
* dbt Cloud deployment
* Airflow orchestration
* source freshness testing
* semantic layer implementation

---

# Repository Structure

```text
analytics_engineering/
│
├── models/
│   ├── staging/
│   └── marts/
│
├── seeds/
├── tests/
├── macros/
├── snapshots/
├── analyses/
│
├── dbt_project.yml
├── schema.yml
└── README.md
```

---

# Repository

GitHub Repository:

```text
https://github.com/olliemerriden/end-to-end-analytics-engineering-pipeline-dbt-sql-bigquery
```
