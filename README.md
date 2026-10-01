# Irrigation Dam Dynamic Modeling

## 📌 About the Project
This project focuses on the dynamic modeling and simulation of an irrigation dam's water volume over time using MATLAB. It analyzes the system's behavior through mathematical equations, transfer functions, and closed-loop control principles to account for various environmental and structural factors.

## 🧮 Mathematical Modeling
The system is analyzed for both transient and steady-state responses.

* **Volume Simulation (Transient to Steady-State):** 
  The second-order transfer function for the system's filling behavior:
  
  $$G(s) = \frac{Y(s)}{U(s)} = \frac{b_0}{s^2 + a_1s + a_0}$$

* **Ground Absorption:**
  The water absorbed by the dam's ground decreases exponentially until saturation:
  
  $$y(t) = y(0)e^{-at} \implies Y(s) = \frac{y(0)}{s+a}$$

* **Gate Leakage (Internal Disturbance):**
  A constant 0.01 K m³ leakage modeled as:
  
  $$y(t) = y_0 - 0.01t$$

## ⚙️ Closed-Loop System Architecture
The following block diagram represents the complete closed-loop control system, integrating the main plant, controller, and all defined disturbances (absorption, leakage, and evaporation).

![Control System Block Diagram](block-diagram.png)

## 📊 Simulation Results

### 1. Dam Volume Behavior
Simulation of the volume increase over time, highlighting the transient response and eventual steady-state stabilization.
![Volume Graph](volume-sim.png)

### 2. Environmental Disturbances
Analysis of external and internal factors affecting the dam's water retention.

**Ground Absorption:**
![Absorption Graph](absorption.png)

**Evaporation (Mediterranean Climate):**
![Evaporation Graph](evaporation.png)

**Constant Gate Leakage:**
![Leakage Graph](leakage.png)

## 📂 Repository Contents
* `irrigation_dam_model.m`: MATLAB script containing the simulation code for the responses above.
* `Report 1.pdf`: Comprehensive project report including mathematical derivations and system analysis.

## 🚀 How to Run
1. Clone this repository or download the files.
2. Open `irrigation_dam_model.m` in **MATLAB**.
3. Run the script to generate the dynamic simulation graphs.
