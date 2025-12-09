---
layout: project
title: Torque Wrench Ansys
description: Mechanics of Materials Project
technologies: [SolidWorks, Ansys, MATLAB]
image: /assets/images/Torque-Wrench-Ansys.png
---
In my Mechancis of Materials Class, I was asked to analyze a baseline torque wrench design, modeled as a cantilever beam, in Ansys. I utilized MATLAB to perform some hand calculations to verify that the torque wrench maintained a safety factor of 4 against yield, 2 against crack growth, and 1.5 against fatigue when subjected to a 600 lbf torque. 

In my modified design, I changed the material to be a steel-chromium alloy, AISI H19, to meet the factor of safety. I also narrowed a region near the drive to increase strain gauge sensitivity for my selection: 1-DY11-6/350 from HBK. 

**1. CAD Model**

![Torque Wrench]({{ "assets/images/Torque-Wrench-CAD1.png" | relative_url }}){: class="profile-image"}

Relevant dimensions:
Drive
- Total height = 0.50 in.
- Height of clamped region = 0.40 in.
- Cross-section = ⅜ in. x ⅜ in. 
- Fillet radius (at connection to handle and at 4 edges) = 0.10 in.

Handle
- Total length  = 17.20 in.
- Distance between (center of) strain gauge and free end = 15.00 in.
- Distance between (right end of) drive and free end (L) = 16.60 in.
- Distance between drive and strain gauge (c) = 16.60 - 15.00 = 1.6 in.
- Height (b) = 0.50 in.
- Width at widest point (h2) = 0.75 in.
- Width at strain gauge, i.e. width at narrowest point (h1) = 0.45 in


For more information, see the following document which includes FEA results.

[Download my Report]({{ "/assets/MAE 3270 Final Project.pdf" | relative_url }}) in PDF format.



