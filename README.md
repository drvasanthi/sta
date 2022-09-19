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
  2. [OCV based hold timing analysis]
  3. [Setup timing analysis after pessimism removal]
  4. [Hold timing analysis after pessimism removal]
 
VII. Conclusion
  
   
<h1 align="center">STATIC TIMING ANALYSIS - II</h1>
  
## TABLE OF CONTENT

<h1 align="center">STATIC TIMING ANALYSIS - I</h1>
  
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
  
   Slew is the transition time of a signal, the time it takes for a signal to change between two specific levels.
  
   ![image](https://user-images.githubusercontent.com/67214592/190871423-53847fb9-30ca-4f18-a9d3-da521624fe68.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190871466-f669634d-de9a-48d8-a5be-33133e0c1b7e.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190871546-f90b9cd2-308a-4bf9-8c37-362ebe22625d.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190871612-d1c107ac-6102-42c5-b5ac-2922832da1c0.png)
   
   Skew is the difference in the arrival of the clock at two consecutive clock pins of sequential elements.
   
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
   
   > Jitter : Clock jitter refers to the temporal variation of the clock period at a given point — that is, the clock period can reduce or expand on a cycle-by-cycle basis.  
   > Clock Uncertainty :Clock uncertainty is the deviation of the actual arrival time of the clock edge with respect to ideal arrival time. The deviation happens mainly due to jitter and noise.
   
 ## **IV. Textual timing reports and hold analysis**  
   
  ### **1. Setup & Hold Analysis - graphical to textual representation**
  
   ![image](https://user-images.githubusercontent.com/67214592/190875711-d69ddf6e-0c9d-4436-b8da-aca4b95cc872.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190875730-2a44925c-878e-47ab-a8a4-505cbce88de6.png)
   
   > net delay is b1/a & cell delay is b1/y
   
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
  
   ![image](https://user-images.githubusercontent.com/67214592/190888486-d9e4866b-81b3-4642-9fef-4c9d4073b5f7.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190888496-d3992490-4600-45f8-819e-434136d1e9a0.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190888516-13173baa-6bc3-40b9-baa6-708c79485caf.png)
   
   ![image](https://user-images.githubusercontent.com/67214592/190888528-ba2e42c3-02ec-44e7-b4b8-569cde47d612.png)
   
   
 ## **VII. Conclusion**
 
   The below concept has done the analysis for reg2reg,  
   
  ![image](https://user-images.githubusercontent.com/67214592/191010686-deab9346-53ae-4c6d-9aaf-3a61a818b05b.png)
  
  The process remains same for various analysis, accept the checks will be different.
  
  ![image](https://user-images.githubusercontent.com/67214592/191011052-a25e14a0-e36d-4a62-8c5d-4d9367be462c.png)
  
  * Slew/Transition analysis is performed with library setup and hold time.
  
  * Clock analysis is highly dependent on OCV and pessimism removal
 
 
 <h1 align="center">STATIC TIMING ANALYSIS - II</h1>
 
 ## **I. Introduction to STA 2 and OpenTimer Installation Guidance**
 
 ## System Requirements

OpenTimer is very self-contained and has very few dependencies.
To compile OpenTimer, you need a [C++17][C++17] compiler. 
We currently support:

+ GNU C++ Compiler v7.3 with -std=c++1z
+ Clang C++ Compiler v6.0 with -std=c++17

In addition, you need a tcl shell interpreter:

+ [tclsh](https://www.tcl.tk/about/language.html) 
(most Unix/Linux/OSX distributions already include tclsh)

OpenTimer has been tested to run well on Linux distributions and MAC OSX.

## Build through CMake

We use [CMake](https://cmake.org/) to manage the source and tests.
We recommend using out-of-source build.

```bash
~$ git clone https://github.com/OpenTimer/OpenTimer.git
~$ cd OpenTimer
~$ mkdir build
~$ cd build
~$ cmake ../
~$ make 
```

After successful build, you can find binaries and libraries in the folders `bin` and `lib`, respectively.

## Launch Opentimer

![image](https://user-images.githubusercontent.com/67214592/191012910-e421b706-8cc4-431c-8fad-7732288db7ec.png)

## **II. Constraints creation commands for OpenTimer**

 ### **1. Clock creation and clock arrival time definition**
 
 > ![image](https://user-images.githubusercontent.com/67214592/191017072-8021d57e-2280-4857-acb9-20a1cee96fa4.png)
 
 > `Clock constrains`    
 **clock clk 1000 50**    
 clock - Keyword for opentimer  
 clk - net/port name.  
 1000 - clock period is 1000ps/1ns  
 50 - duty cycle   

  ![image](https://user-images.githubusercontent.com/67214592/191015610-2b441877-044c-40f4-a060-87a41887caf1.png)
  
 > `Arrival Time for the Clock Port`  
 **at clk 0 500 0 500**  
 at - Keyword for opentimer  
 clk - net/port name.  
 0 - Early Rise Arrival time.  
 500 - Early Fall Arrival time.  
 0 - Late Rise Arrival time.  
 500 - Late Fall Arrival time.
  
  ![image](https://user-images.githubusercontent.com/67214592/191015640-ad92eee9-c15e-48ec-89a9-6becb9943a20.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/191024091-505ebc57-1442-4a0d-afc2-301ecd8897e0.png)
  
 ### **2.Input delay constraints for interface setup/hold analysis**
  
 > `Arrival Time for the Input Port`  
 **at in 53 34 121 125**  
 at - Keyword for opentimer  
 in - net/port name.  
 53 - Early Rise Arrival time.  
 34 - Early Fall Arrival time.  
 121 - Late Rise Arrival time.  
 125 - Late Fall Arrival time.  
 
  ![image](https://user-images.githubusercontent.com/67214592/191024721-71cc96dc-e1b4-49ce-bd04-6f3c261d829c.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/191026653-dc2f51d7-795d-477e-b647-b15cfe98dc1f.png)
  
 ### **3. Clock slew and data slew constraints**
 
  >`Slew analysis for Clock port`  
  **slew clk 70 50 70 50**  
  slew - Keyword for opentimer   
  clk - net/port name.  
  70 - Early Rise Slew.  
  50 - Early Fall Slew.  
  70 - Late Rise Slew.  
  50 - Late Fall Slew.
  
  ![image](https://user-images.githubusercontent.com/67214592/191028404-08fc7540-fc2f-40ed-a0ac-d18d8dd5baa2.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/191028838-0c390893-428e-4e43-abb7-0fc0f8bb317e.png)
  
  >`Slew analysis for Input port`  
  **slew clk 150 100 150 100**  
  slew - Keyword for opentimer   
  in - net/port name.  
  150 - Early Rise Slew.  
  100 - Early Fall Slew.  
  150 - Late Rise Slew.  
  100 - Late Fall Slew.
  
  ![image](https://user-images.githubusercontent.com/67214592/191029200-a5bb1746-f7ec-4c8b-975d-e70feeab7123.png)
  
  ![image](https://user-images.githubusercontent.com/67214592/191029463-739ae6ca-02a1-418c-b2f4-be3f9f7f6590.png)
  
  ### **4.Output load and output delay constraints**
  
   > `load out 40`    
   load : Keyword  
   out : net/port name.  
   40 : load is 40fF.
   
   ![image](https://user-images.githubusercontent.com/67214592/191029932-74852f62-6ee2-4e9a-a5e3-b8f0eaf7f80b.png)
   
   > `rat out 160 160 180 180`   
   rat - Keyword  
   out - net/port name.  
   160 - Early Rise Required Arrival Time.  
   160 - Early Fall Required Arrival Time.  
   180 - Late Rise Required Arrival Time.  
   180 - Late Fall Required Arrival Time.
   
   ![image](https://user-images.githubusercontent.com/67214592/191030241-0e820be7-334f-4e5c-a6ba-c51b69cd5358.png)
   
 ## **III. Full reg2reg analysis using OpenTimer tool**  

  ### **1. AAT and RAT calculation basics**
  
  `Slack Analysis Report for below design`
  
   ![image](https://user-images.githubusercontent.com/67214592/191031149-303bb779-7e26-451c-96ff-64bf0f09a46d.png)
   
   * d pin of flop2   // provides only the worst path
   * u6 cell of input a
   * u6 cell of input b
   * u5 cell of input a  // provides worst slack or less positive than other
   * u5 cell of input b
   
   
   `Slack = RT-AT  
   Slack = 1010.5-392.75 = 617.74`
   
   AT is: 
   
   
   RT is:
   
   * AT at clock pin
   * 
   
   
   
  
  
  
  
  
  
 
 

   
   
  

   
   
  
   
  
  


   
   
  

  
  
  
 




 

  
