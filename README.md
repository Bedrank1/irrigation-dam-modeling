# Irrigation Dam Dynamic Modeling

## 📌 About the Project
This project focuses on the dynamic modeling and simulation of an irrigation dam's water volume over time using MATLAB. It analyzes the system's behavior through mathematical equations, transfer functions, and closed-loop control principles to account for various environmental and structural factors.

## 🚀 Key Features
* **Volume Simulation:** Modeling the transient and steady-state responses of the dam's water level over a 12-month period.
* **Mathematical Modeling of Uncertainties:**
  * **Absorption:** Simulating the ground's water absorption capacity until saturation.
  * **Evaporation:** Modeling Mediterranean climate evaporation behaviors (peaking in July).
  * **Leakage:** Accounting for constant internal leakage from the dam gates.
* **Transfer Functions:** Deriving 1st and 2nd-order transfer functions (G(s)) using Laplace transforms.
* **Control System:** Designing a closed-loop block diagram integrating the controller, plant, and internal/external uncertainties.

## 🛠️ Technologies & Tools
* **MATLAB:** For scripting, data visualization, and plotting simulations.
* **Control Systems Theory:** Laplace transforms, transient/steady-state analysis, and block diagrams.

## 📂 Files in this Repository
* `report1.m`: MATLAB script containing the simulation code for plotting dam volume, absorption, and evaporation.
* `Report 1.pdf`: Comprehensive project report including mathematical derivations, Laplace transforms, and the closed-loop system diagram.

## ⚙️ How to Run
1. Clone this repository or download the files.
2. Open `report1.m` in **MATLAB**.
3. Run the script to generate the dynamic simulation graphs.
