# 📊 Machine Monitoring & Alert System

## 🔹 Overview

This project is a machine monitoring and analytics dashboard designed to track equipment performance, detect failures, and identify high-risk machines.

---

## 🧠 Objectives

* Monitor machine performance using sensor data
* Identify machine failures and their types
* Classify machines into risk levels (High / Medium / Low)
* Detect critical machines that exceed threshold conditions

---

## 🛠️ Tech Stack

* **PostgreSQL** – Data storage and transformation (raw → staging → mart)
* **Power BI** – Data visualization and dashboard
* **SQL** – Data cleaning, transformation, and aggregation

---

## 🗂️ Data Pipeline Architecture

The data pipeline is designed using a layered approach:

```
Raw Layer → Staging Layer → Mart Layer
```

* **Raw**: Original sensor data (no transformation)
* **Staging**: Cleaned and validated data
* **Mart**: Aggregated data optimized for analytics

---

## 📊 Dashboard Features

### 🔸 Key KPIs

* Total Machines
* Machine Failures
* Failure Rate (%)
* Machines Above Threshold
* Average Torque
* Average Tool Wear

---

### 🔸 Analysis

* Failure Type Distribution
* Risk Level Segmentation
* Machine Type Analysis
* Sensor Trends (tool_wear, torque)

---

### 🔸 Advanced Insights

* 🔴 Critical Machines (Threshold-based)
* ⚠️ High Risk Machines
* 📋 Machine-level Detail Table

---

## 📸 Dashboard Preview

### Machine Performance Overview

![Overview](images/overview.png)

### Risk & Critical Machine Analysis

![Risk](images/Risk.png)

---

## 🔍 Key Insights

* High-risk machines are concentrated in specific operating conditions
* Tool wear and torque show strong variation across machines
* Certain failure types occur more frequently and require monitoring
* Critical machines can be identified early for preventive maintenance


---

## 🚀 How to Run

1. Load dataset into PostgreSQL
2. Run SQL scripts to create staging and mart tables
3. Open Power BI file
4. Connect to database and refresh data

---

## 🎯 Skills Demonstrated

* Data Pipeline Design (ETL)
* SQL Data Transformation
* Data Modeling (Fact / Aggregation)
* Dashboard Design (Power BI)
* Data Analysis & Insight Generation
