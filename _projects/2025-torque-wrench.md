---
layout: project
title: Torque Wrench Ansys
description: Mechanics of Materials Project
technologies: [SolidWorks, Ansys, MATLAB]
image: /assets/images/Torque-Wrench-Ansys.png
---
In my Mechanics of Materials Class, I was asked to analyze a baseline torque wrench design, modeled as a cantilever beam, in Ansys. I utilized MATLAB to perform some hand calculations to verify that the torque wrench maintained a safety factor of 4 against yield, 2 against crack growth, and 1.5 against fatigue when subjected to a 600 lbf torque. 

In my modified design, I changed the material to be a steel-chromium alloy, AISI H19, to meet the factor of safety. I also narrowed a region near the drive to increase strain gauge sensitivity for my selection: 1-DY11-6/350 from HBK. 

**1. CAD Model**

![Torque Wrench]({{ "assets/images/Torque-Wrench-CAD1.png" | relative_url }}){: class=".wrench-image"}

Figure 1: CAD model of the modified torque wrench design

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

**2. Material Used and its Relevant Mechanical Properties**
Material: Tool steel, chromium alloy, AISI H19

Description: 
Relevant material properties (using upper end values):
- E = 32 * 106 psi
- 𝜈 = 0.29
- 𝜎_o = 260 *103  psi
- KIC = 30.4 * 103 psi-in1/2
- 𝜎_fatigue = 78.3 *103 psi (for 106 cycles)

**3. Loads and Boundary Conditions in Ansys**

![Torque Wrench]({{ "assets/images/BoundaryConditions.png" | relative_url }}){: class=".wrench-image"}

Figure 2: Application of loads and boundary conditions in ANSYS

As shown in the diagram, the body corresponding to the top 0.4” of the drive is fixed. The force applied to the end is F = -36.14 lbf z. Since the torque applied at the drive must be 600 lbf-in, and the distance from the end to the drive shaft is 16.6 in, this yields a force with magnitude of 600/16.6 = 36.14.

**4. Normal strain contours (in the strain gauge direction) from FEM**

![Torque Wrench]({{ "assets/images/NormalElasticStrainContour.png" | relative_url }}){: class=".wrench-image"}

Figure 3a: Normal elastic strain contour, in the x-direction

![Torque Wrench]({{ "assets/images/ZoomedNormalElasticStrain.png" | relative_url }}){: class=".wrench-image"}

Figure 3b: Zoomed in on locations of maximum and minimum 𝜀xx (0.00109 and -0.00118, respectively)

**5. Contour plot of maximum principal stress from FEM**

![Torque Wrench]({{ "assets/images/MaxPrinStressCont.png" | relative_url }}){: class=".wrench-image"}

Figure 4a: Maximum principal stress contour

![Torque Wrench]({{ "assets/images/ZoomedPrinStress.png" | relative_url }}){: class=".wrench-image"}

Figure 4b: Zoomed in on locations of maximum and minimum principle stresses (61176 psi and -1676.3 psi, respectively)

**6. Summary of Results from FEM Calculation showing Maximum Normal Stress, Deflection, and Strains**

![Torque Wrench]({{ "assets/images/NormalStressContour.png" | relative_url }}){: class=".wrench-image"}

Figure 5a: Normal stress contour, in x-direction

![Torque Wrench]({{ "assets/images/ZoomMaxSigmaX.png" | relative_url }}){: class=".wrench-image"}

Figure 5b: Zoomed in on locations of maximum and minimum 𝜎x (33966 psi and -33003 psi, respectively)

![Torque Wrench]({{ "assets/images/TotalDefCont.png" | relative_url }}){: class=".wrench-image"}

Figure 6: Total deformation contour

![Torque Wrench]({{ "assets/images/StrainSummary.png" | relative_url }}){: class=".wrench-image"}

Figure 7: Strains measured at the strain gauge

Summary of Key Results: 
- Max normal stress 𝜎x = 33966 psi, located at or near the strain gauge
- Max deflection = 0.198 in, located at the point of load application
- 𝜀xx at strain gauge = 1.0054 * 10-3 in/in

**7. Torque wrench sensitivity in mV/V using strains from the FEM analysis**

To determine the torque wrench sensitivity, we set up a coordinate system located at the center of the strain gauge and probed the normal strain at that location. We found that the strain was 1.0054*10-3 in/in, meaning the torque wrench sensitivity is 1.0054 mV/V, meeting the requirement of having a sensitivity of at least 1.0 mV/V.

**8. Strain Gauge Selection** 
To select a strain gauge, we referenced the following catalogue from HBK: https://www.hbkworld.com/en/products/support-resources/support-hbm/downloads/product-literature/product-literature-sensors-transducers/product-literature-strain-gauges 

First, we selected the geometry of the strain gauge, which depends on the type of measurement being made, such as strain in 1D, determining shear stress, etc. Since we are modeling the torque wrench handle as a beam and using the max bending moment applied to the handle as the torque, the double linear strain gauge (DY1) is the most suitable. This geometry comprises two measuring grids arranged in parallel. From there, we chose the DY11, since its temperature response is matched to steel, which is the material that our torque wrench is made out of. This means that the coefficient of thermal expansion for the strain gauge matches that of the material, reducing error from differences in thermal expansion. Specifically, we chose the 1-DY11-6/350, with the following specs:

![Torque Wrench]({{ "assets/images/StrainGauge.png" | relative_url }}){: class=".wrench-image"}

The following sketch shows where the strain gauge would be placed to verify that there is enough room on the torque wrench for the strain gauge.

![Torque Wrench]({{ "assets/images/StrainGaugeLocation.png" | relative_url }}){: class=".wrench-image"}

**In Summary:**

![Torque Wrench]({{ "assets/images/SummaryTestValid.png" | relative_url }}){: class=".wrench-image"}

For more information, see the following document which includes FEA results.

[Download my Report]({{ "/assets/MAE 3270 Final Project.pdf" | relative_url }}) in PDF format.



