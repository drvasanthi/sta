<h1 align="center">STATIC TIMING ANALYSIS - I</h1>

## TABLE OF CONTENT

I. [**Introduction**]
  1. Introduction to timing path and arrival time
  2. Introduction to required time and slcak 
  3. Introduction to basic categories of setup and hold analysis, data checks and latch timing
  4. Introduction to slew, load and clock checks

II. [**RTL Design and Synthesis**](https://github.com/drvasanthi/iiitb_cg#ii-rtl-design-and-synthesis)  
  1. [Icarus Verilog (iverilog) & Yosys Installation on Ubuntu](https://github.com/drvasanthi/iiitb_cg#1-icarus-verilog-iverilog--yosys-installation-on-ubuntu)  
  2. [RTL Pre-Simulation](https://github.com/drvasanthi/iiitb_cg#rtl-pre-simulation)  
  3. [Synthesis](https://github.com/drvasanthi/iiitb_cg#icg---synthesis)  
  4. [GLS Post-simulation](https://github.com/drvasanthi/iiitb_cg#gls-post-simulation)  

III. [**Physical Design from Netlist to GDSII**](https://github.com/drvasanthi/iiitb_cg#iii-physical-design-from-netlist-to-gdsii)  
  1. [Invoke OpenLane](https://github.com/drvasanthi/iiitb_cg#1-invoke-openlane)  
  2. [To Build Inverter Standard Cell Design](https://github.com/drvasanthi/iiitb_cg#2-to-build-inverter-standard-cell-design)  
  3. [Synthesis](https://github.com/drvasanthi/iiitb_cg#3-synthesis)      
  4. [Floorplan](https://github.com/drvasanthi/iiitb_cg#4-floorplan)
  
  
  
  
<h1 align="center">STATIC TIMING ANALYSIS - II</h1>
  
## TABLE OF CONTENT
  
  
  
## **I. Introduction**
  
  ### **1. Introduction to timing path and arrival time**   
  
   > Timing Path  
    ![image](https://user-images.githubusercontent.com/67214592/190869464-2f22ff65-0dc3-4d4b-b9ee-16faf0712c4f.png)  
      Example: 
      ![image](https://user-images.githubusercontent.com/67214592/190869485-af1e286f-d022-4487-902d-e3b373b3abbd.png)
      
   Different timing path -
   
   ![image](https://user-images.githubusercontent.com/67214592/190869612-0a11f323-0067-47eb-9450-68b87635f1ce.png)
   
   `Arrival Time` - The time required for the signal to reach from start point to end point.
   
   ![image](https://user-images.githubusercontent.com/67214592/190869813-275e07ed-9bb8-44d6-ac5a-be01aec64bb6.png)
      
  ### **2. Introduction to required time and slack**   
  
   `Required Time` - Defines the system specification.  
  
   ![image](https://user-images.githubusercontent.com/67214592/190869879-6262d39b-dba8-4a7a-91b9-8d66ed8b3afa.png)
  
   ![image](https://user-images.githubusercontent.com/67214592/190869846-0b4bf86e-fe01-4283-95c1-c1d81f697d66.png)
   
   `Slack`- Difference between arrival time and required time.
   
   ![image](https://user-images.githubusercontent.com/67214592/190869942-2ab8e582-68ec-4603-b6fe-b77a160467ef.png)

 Example 1 - Launch Flop
  
  ![image](https://user-images.githubusercontent.com/67214592/190870001-275a5935-1191-4c79-b224-b73ee4f0c885.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190870210-df0fa5c5-7a93-4900-af46-8d5c1dde467e.png)
  
 Example 2 - Capture Flop
  
  ![image](https://user-images.githubusercontent.com/67214592/190870287-52265092-a2c5-4b6c-bd43-622cd14e4d2e.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190870434-9a96754d-3b1e-40f6-ba41-da52c109281d.png)

 > Min Slack also known as setup slack/setup timing/setup analysis  
 > Max Slack also known as hold slack/hold timing/hold analysis  

 ### **3. Introduction to basic categories of setup and hold analysis, data checks and latch timing**
 
  ![image](https://user-images.githubusercontent.com/67214592/190870583-5d260f5d-defd-4efb-9e66-2a4c766c3b8a.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190870618-c75b915a-9560-474c-9f13-85526987821f.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190870634-fb0298d1-6c4b-4cbf-aee6-175f5dc1d69c.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190870732-2be09d2b-b23c-472a-aff4-c2092622c92e.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190870805-a4da67a0-74de-4cc5-aaf6-36db16dbb530.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190870936-16626f1d-5ee4-4a03-8287-b8b078a62364.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190871195-05cc3a62-a41c-4062-af99-f4bec62c5093.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190871310-79028ee5-6144-48f2-8556-9c46c33dd9ff.png)
  
  ### **4. Introduction to slew, load and clock checks**
  
   ![image](https://user-images.githubusercontent.com/67214592/190871423-53847fb9-30ca-4f18-a9d3-da521624fe68.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190871466-f669634d-de9a-48d8-a5be-33133e0c1b7e.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190871546-f90b9cd2-308a-4bf9-8c37-362ebe22625d.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190871612-d1c107ac-6102-42c5-b5ac-2922832da1c0.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190871691-45254e6e-6977-4a5e-8cee-b95b2010feba.png)
   
   
  
  
  
 




 

  
