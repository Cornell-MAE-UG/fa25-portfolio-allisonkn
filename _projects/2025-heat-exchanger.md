---
layout: project
title: Heat Exchanger Lab
description: Thermodynamics Analysis
technologies: [Pumps, Heat Exchanger]
image: /assets/images/Heat Exchanger Parallel Flow Setup.png
---

A heat exchanger is a ubiquitous device used in many applications: pharmaceuticals, pasteurization, regeneration, automobiles, power plants, etc. It takes a hot fluid and a cold fluid and runs them in parallel or counterflow to raise the temperature of the cold fluid and lower the temperature of the hot fluid all without the fluids mixing. 

I decided to analyze a heat exchanger to determine the total area of the heat exchanger interior plates may be based on the inlet and outlet temperatures of the hot and cold fluids.

**The Setup**
Counterflow

![Heat Exchanger]({{ "/assets/images/Heat Exchanger Counterflow Setup.png" | relative_url }}){: class=".wrench-image"}

Parallel

![Heat Exchanger]({{ "/assets/images/Heat Exchanger Parallel Flow Setup.png" | relative_url }}){: class=".wrench-image"}


The basic values: 

**Given**

- mass flow rate (mdot) = 0.14 kg/s (from Vivosun Aquapump Specs.)
- specific heat of water = 4184 J/kgK

**Counterflow**

- Hot Water In: 42.5 degrees C
- Cold Water In: 7.0 degrees C
- Hot Water Out: 23.7 degrees C
- Cold Water Out: 24.4 degrees C

**Parallel Flow**

- Hot Water In: 35.4 degrees C
- Cold Water In: 5.2 degrees C
- Hot Water Out: 19.8 degrees C
- Cold Water Out: 16.4 degrees C

The governing equations:

![Heat Exchanger]({{ "assets/images/GoverningEquations.png" | relative_url }}){: class=".wrench-image"}

With these values and a few properties of the fluid, I was able to figure out how much heat transfer occurred and also the total surface area of the panels inside of the heat exchanger. 

**Heat Transfer Calculations**

*For Counterflow:*

Heat transfer from hot fluid = 0.14 * 4184 * (23.7 - 42.5) = -11012 J

Heat transfer from cold fluid = 0.14 * 4184 * (24.4 - 7.0) = 10192 J 

Average absolute heat transfer = 10602 J

These values are relatively close to each other, with the difference only about 7.7% off from the average value.

*For Parallel Flow:*

Heat transfer from hot fluid = 0.14 * 4184 * (19.8 - 35.4) = -9138 J

Heat transfer from cold fluid = 0.14 * 4184 * (16.4 - 5.2) = 6560 J 

Average absolute heat transfer = 7849 J

These values are not as close to each other, with a precent difference of about 32.8%. The heat transfer in counterflow, according to these calculations, is thus more effective.

**Area Calculations**

*For simplicity, this calculation will only use values obtained from counterflow as I determined the heat transfer through that method saw the most similarity between hot and cold values.*

- Log mean temperature difference = 28.4 K
- Overall thermal resistance, Rtot = Tlm / Qdot = 0.003 K/W

We can also calculate Rtot another way using the convective properties of the heat exchanger:

- Convective heat transfer coefficient (hot) hi~ 700 W/m^2K
- Convective heat transfer coefficient (cold) ho~ 1300 W/m^2K
- Interior and exterior fouling factors Rf~ 0.0002 m^2K/W

- Rtot = 1/Area * (2 * Rf + 1/hi + 1/ho ) = 1/A * 0.00260 Km^2/W

So now we can finally calculate the area:

**A = 0.87 m^2**

Thus, the total interior area of the heat exchanger plates is approximately 0.87 square meters.

**Important Assumptions**

- No heat transfer to exterior
- KE and PE changes are negligible
- Convective heat transfer coefficients were for pure water, with the hot and cold values estimated 
- Fouling factor estimated equal for interior and exterior
- Heat transfer rate averaged between hot and cold values

**Conclusion**

- This experiment helped us model an ideal scenario of heat transfer between hot and cold fluids, both in parallel and counterflow
- In real life, heat is transferred to the surroundings, but we chose to ignore this and so our area estimate may be somewhat off
- We are pretty much operating at steady state since the pumps are running at constant power and the inlet and outlet have equal areas
- In real life, kinetic energy changes because of viscosity, so the area estimate is also off due to this assumption

