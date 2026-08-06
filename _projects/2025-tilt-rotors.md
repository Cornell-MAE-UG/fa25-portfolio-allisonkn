---
layout: project
title: Tilt Rotors for eVTOL UAV
description: Cornell University Unmanned Air Systems Project
technologies: [SolidWorks, Ansys, MatLAB, 3D Printing, Carbon Fiber Composite, Sheet Metal Bending]
image: /assets/images/tiltrotor.jpg
---
I've been designing, manufacturing, and testing a tilt rotor mechanism for my project team CUAir to transition between horizontal and vertical flight. As of March 2026, the project is mechanically verified. 

**Motors: MAD V62 PRO Feathering propeller Autocenter eVTOL Drone Motor**

I began the project by selecting motors capable of providing enough thrust for takeoff (70lbf) while still enabling weight reduction from our previous aircraft models (55lbs to 35lbs). While choosing motors, I also had to ensure that the associated propellers' diameter was small enough to not induce a large gyroscopic moment. 

**Initial Mechanism: 1.6 Ratio Gear Train with Al5052 1.6mm thick Clevis and HiTec Servo**

I designed the mechanism to be actuated by the D955TW Servo from HiTec. This servo provides a maximum angular speed of 180 deg/s. Expected maximum transition speed: 30 deg/s.

**Testing: Version 1**

Initially, the mechanism passed ground testing with the previous expected transition speed. However, during flight testing, an unexpected yaw induced boom twisting, which created a gyroscopic precession. This induced moment led to an unexpected load on the initial clevis (about 50 Nm). The mechanism was not designed to this specification and led to deformation that pulled the gears apart.

**Final Mechanism: 1.6 Ratio Gear Train with Al5052 3mm thick Clevis with Steel Retaining Plate and HiTec Servo**

Introduced a steel retaining plate to prevent the gears from unmeshing. Also increased clevis thickness to limit deformation that may also cause gears to unmesh. 

**Testing: Version 2**

Performed a parametric sweep for throttles on front & back motors from 10-100%, with transition speeds on front motor at 30-180 deg/s. Passed mechanical ground tests without gears unmeshing.



