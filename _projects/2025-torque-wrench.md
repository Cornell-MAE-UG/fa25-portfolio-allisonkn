---
layout: project
title: Torque Wrench Ansys
description: Mechanics of Materials Project
technologies: [SolidWorks, Ansys, MATLAB]
image: /assets/images/Torque Wrench Ansys.png
---
In my Mechancis of Materials Class, I was asked to analyze a baseline torque wrench design, modeled as a cantilever beam, in Ansys. I utilized MATLAB to perform some hand calculations to verify that the torque wrench maintained a safety factor of 4 against yield, 2 against crack growth, and 1.5 against fatigue when subjected to a 600 lbf torque. 

In my modified design, I changed the material to be a steel-chromium alloy, AISI H19, to meet the factor of safety. I also narrowed a region near the drive to increase strain gauge sensitivity for my selection: 1-DY11-6/350 from HBK. 

**1. CAD Model**
<p align="center">
  <img src="/assets/css/images/Torque-Wrench-Ansys.png" width="300" />
  <img src="/assets/css/images/Torque-Wrench-CAD1.png" width="300" />
</p>

For more information, see the following document which includes FEA results.

[Download my Report]({{ "/assets/MAE 3270 Final Project.pdf" | relative_url }}) in PDF format.



