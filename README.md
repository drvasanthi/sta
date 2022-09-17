<h1 align="center">STATIC TIMING ANALYSIS - I</h1>

## TABLE OF CONTENT

I. [**Introduction**]
  1. Introduction to timing path and arrival time
  2. Introduction to required time and slcak 
  3. Introduction to basic categories of setup and hold analysis, data checks and latch timing
  4. Introduction to slew, load and clock checks

II. [**Introduction to Timing Graph**]
  1. [Convert logic gates into nodes] 
  2. [Compute actual arrival time]
  3. [Compute required arrival time]
  4. [Compute slack and introduction to GBA-PBA analysis]  
  5. [Compute pins to nodes and compute AAT,RAT and slack]  

III. [**Clock-to-q delay, library setup, hold time and jitter**]  
  1. [Introduction to transistor level circuit for flops]  
  2. [Negative and positive latch transistor level operation]  
  3. [Library setup time calculation]  
  4. [Clock-to-q delay calculation]  
  5. [Steps to create eye diagram for jitter analysis]  
  6. [Jitter extraction and accounting setup timing analysis]  

IV. [**Textual timing report and hold analysis**]  
  1. [Setup & Hold Analysis - graphical to textual representation]  
 
V. [**On-chip Variation**]  
  1. [Sources of variation - etching]  
  2. [Sources of variation - oxide thickness]  
  3. [Relation between resistance, drain current and delay]  

VI. [**OCV timing and Pessimism removal**]
  1. [OCV based setup timing analysis]  
  2. [Setup timing analysis after pessimism removal]
  3. [OCV based hold timing analysis]
  4. [Hold timing analysis after pessimism removal]
  
   
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
   
## **II. Introduction to Timing Graph**

  ### **1. Convert logic gates into nodes**
  
   ![image](https://user-images.githubusercontent.com/67214592/190871819-08cc8871-284d-4a01-959b-65aaccb27ff0.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190872171-b672dd3c-2e02-46d6-9aa8-c6bc65158ea1.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190872306-a3b5d708-242d-442e-8868-6ebb5385f639.png)
   
  ### **2. Compute actual arrival time**
    
   ![image](https://user-images.githubusercontent.com/67214592/190872479-4ac85c07-72d8-4aa1-9932-bed2e2f5204a.png)
  
  ### **3. Compute required arrival time**
  
   ![image](https://user-images.githubusercontent.com/67214592/190872604-064e7b09-dc8f-43ba-a469-58ade1dacb64.png)
   
 ### **4. Compute slack and introduction to GBA-PBA analysis**  
 
  ![image](https://user-images.githubusercontent.com/67214592/190872911-c16ab88b-d55b-478a-a832-293528270aaf.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/190872899-5f7e48c1-85d2-4e67-b60c-5c6b64507cfc.png)
  
 ### **5. Compute pins to nodes and compute AAT,RAT and slack**
   
  ![image](https://user-images.githubusercontent.com/67214592/190872963-d80bd0f3-6dba-450c-976d-6fd7eb1aa744.png)
  
  AAT
  
  ![image](https://user-images.githubusercontent.com/67214592/190873003-20b13c8c-22cc-45d4-821a-457b41c55204.png)
  
  RAT
  
  ![image](https://user-images.githubusercontent.com/67214592/190873020-0a53910f-f5c7-460b-adab-8e88e3071875.png)
  
  Slack
  
  ![image](https://user-images.githubusercontent.com/67214592/190873038-71e4e273-e746-4c1f-88ad-d2ee0b5ede74.png)
  
  
 ## **III. Clock-to-q delay, library setup, hold time and jitter**  
 
  ### **1. Introduction to transistor level circuit for flops**
  
   ![image](https://user-images.githubusercontent.com/67214592/190873841-23678159-691f-443f-8b6c-d4a41c7aaeb9.png)
  
  ### **2. Negative and positive latch transistor level operation**
  
   ![image](https://user-images.githubusercontent.com/67214592/190874008-d1024a08-3e13-489a-8677-d2d2b29e4e13.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190874057-4988429b-3b52-4524-8d61-fb327bfb75a8.png)
   
  ### **3. Library setup time calculation**
  
   ![image](https://user-images.githubusercontent.com/67214592/190874223-0850f803-51eb-4500-9293-8ba3bfdf7787.png)
   
  ### **4. Clk-q delay calculation**
  
   ![image](https://user-images.githubusercontent.com/67214592/190874476-9b1b2eeb-b257-4b3f-81ae-9cfdc81e3ab6.png)
   
  ### **5. Steps to create eye diagram for jitter analysis**
  
   ![image](https://user-images.githubusercontent.com/67214592/190875544-06f7a983-18d7-40bc-8135-c3a07e5b8d97.png) 
   
   ![image](https://user-images.githubusercontent.com/67214592/190875581-76559d21-8b98-480a-b742-042220a410fd.png)
   
  ### **6. Jitter extraction and accounting in setup timing analysis**
  
   ![image](https://user-images.githubusercontent.com/67214592/190875591-17c28e09-d1fa-47ce-9a62-4c44902ce1ed.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190875644-88e875b6-721f-4eef-832f-3013954ad872.png)
   
 ## **IV. Textual timing reports and hold analysis**  
   
  ### **1. Setup & Hold Analysis - graphical to textual representation**
  
   ![image](https://user-images.githubusercontent.com/67214592/190875711-d69ddf6e-0c9d-4436-b8da-aca4b95cc872.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190875730-2a44925c-878e-47ab-a8a4-505cbce88de6.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190875744-85736261-871c-48fe-b4a4-decea1071c89.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190875766-073bafaa-0e7b-4b11-9fcb-6cd7e943d8fa.png)
   
 ## **V. On-chip Variation**
 
  ### **1. Sources of variation - etching** 
  
   ![image](https://user-images.githubusercontent.com/67214592/190875903-f5aec7c5-4bf4-470d-84d9-bc1788f21754.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190875914-392997a3-9389-4a65-9d14-8593df918fd7.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190875924-037f9ff1-66aa-4f3e-8fc7-c1f56726b9e8.png)
  
  ### **2. Sources of variation - oxide thickness**
  
   ![image](https://user-images.githubusercontent.com/67214592/190875932-be9d9196-1c7d-44d1-b8c4-51203d51383c.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190875945-eff2ba45-20db-4f83-bd7a-e346831dcab9.png)  
  
  ### **3. Relation between resistance, drain current and delay**
  
   ![image](https://user-images.githubusercontent.com/67214592/190875956-26bb6f33-18f9-48a1-aa05-56e9ef505563.png)
   
 ## **VI. OCV timing and Pessimism removal**
  

   
   
  
   
  
  


   
   
  

  
  
  
 




 

  
