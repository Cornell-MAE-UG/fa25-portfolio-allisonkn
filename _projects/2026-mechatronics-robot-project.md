---
layout: tilt-rotor
title: "Autonomous Cube-Collecting Robot"
permalink: /projects/2026-mechatronics-robot-project/
description: "Design and fabrication of an autonomous competition robot with a custom acrylic chassis and reactive navigation."
technologies: [SolidWorks, Arduino, C++, Laser Cutting, 3D Printing]
image: /assets/images/Robot-Final.jpg
order: 3
---

<div class="tilt-rotor-page">
<div class="tr-project">

  <!-- NAVIGATION -->

<nav class="tr-navigation">
  <a class="tr-nav-link" href="{{ '/projects/' | relative_url }}">
    ← All Projects
  </a>
</nav>


  <!-- HERO -->

  <header class="tr-hero">

    <div class="tr-eyebrow">
      MECHATRONICS · ROBOTICS · DESIGN & FABRICATION
    </div>

    <h1>Autonomous Cube-Collecting Robot</h1>

    <p class="tr-lead">
      Designed and fabricated an autonomous competition robot
      featuring a custom laser-cut acrylic chassis, a
      servo-driven collection mechanism, and sensor-based
      boundary avoidance. The robot advanced to the
      semifinals and finished third overall.
    </p>

    <div class="tr-stats">

      <div>
        <strong>3rd</strong>
        <span>Overall competition placement</span>
      </div>

      <div>
        <strong>7.5 × 6.5 × 5</strong>
        <span>Chassis dimensions (in)</span>
      </div>

      <div>
        <strong>$39.91</strong>
        <span>Reported materials cost</span>
      </div>

    </div>

  </header>


  <!-- FEATURED IMAGE -->

  <figure class="tr-figure">
    <img
      src="{{ '/assets/images/Robot-Final.jpg' | relative_url }}"
      alt="Completed autonomous cube-collecting robot"
    >
    <figcaption>
      Completed competition robot featuring a custom
      acrylic chassis and integrated drivetrain.
    </figcaption>
  </figure>


  <!-- SECTION 01 -->

  <section class="tr-section">

    <div class="tr-kicker">01 / DESIGN CHALLENGE</div>

    <h2>Designing Around the Collection Objective</h2>

    <p>
      The objective of the competition was to develop an
      autonomous robot capable of collecting cubes while
      navigating a bounded playing field and competing
      against other robots.
    </p>

    <p>
      Rather than relying on the provided metal Boe-Bot
      chassis, our team developed a custom structure
      optimized for collecting and retaining cubes.
    </p>

    <p>
      The standard chassis offered limited clearance
      for cube collection. Our design instead used an
      elevated enclosure with an open underside,
      allowing the robot to drive over cubes and
      retain them within its footprint.
    </p>

    <div class="tr-callout">
      <strong>Design Objective</strong>
      <p>
        Maximize cube collection through the mechanical
        geometry of the chassis while minimizing the
        complexity of the active collection mechanism.
      </p>
    </div>

  </section>


  <!-- SECTION 02 -->

  <section class="tr-section">

    <div class="tr-kicker">02 / MECHANICAL DESIGN</div>

    <h2>Custom Chassis & Collection Mechanism</h2>

    <p>
      The robot was built around a 7.5 × 6.5 × 5 inch
      laser-cut acrylic chassis. Two continuous-rotation
      servos drove the wheels, while a freely rolling
      rear ball provided additional support.
    </p>

    <p>
      The chassis geometry allowed cubes to enter
      beneath the robot and remain inside its
      surrounding panels.
    </p>

    <!-- CAD ASSEMBLY IMAGE -->

    <figure class="tr-figure">
      <img
        src="{{ '/assets/images/Robot-CAD.png' | relative_url }}"
        alt="CAD assembly of the autonomous robot"
      >
      <figcaption>
        CAD assembly showing the custom acrylic chassis,
        drivetrain, and cube-collection mechanism.
      </figcaption>
    </figure>

    <h3>Fabrication & Assembly</h3>

    <p>
      The chassis panels were laser-cut from acrylic,
      while custom components were 3D-printed to
      support the sensors and brush assembly.
    </p>

    <p>
      The robot incorporated a servo-driven rotating
      brush at its front opening. The brush was
      intended to sweep cubes into the chassis and
      prevent collected cubes from escaping.
    </p>

    <!-- TWO-COLUMN FABRICATION IMAGE GALLERY -->

    <!--
    <div class="tr-grid">

      <figure class="tr-figure">
        <img
          src="{{ '/assets/images/Robot-Chassis.png' | relative_url }}"
          alt="Custom laser-cut acrylic robot chassis"
        >
        <figcaption>
          Custom laser-cut acrylic chassis.
        </figcaption>
      </figure>

      <figure class="tr-figure">
        <img
          src="{{ '/assets/images/Robot-Brush.png' | relative_url }}"
          alt="Servo-driven rotating brush mechanism"
        >
        <figcaption>
          Servo-driven cube-collection mechanism.
        </figcaption>
      </figure>

    </div>
    -->

  </section>


  <!-- SECTION 03 -->

  <section class="tr-section">

    <div class="tr-kicker">03 / ELECTRICAL & CONTROL SYSTEMS</div>

    <h2>Autonomous Navigation & Sensor Integration</h2>

    <p>
      The robot's electrical system integrated three
      continuous-rotation servos and two QTI sensors.
      Two servos powered the drivetrain, while the
      third actuated the rotating brush.
    </p>

    <p>
      The QTI sensors were positioned on opposite
      sides of the chassis to detect the playing
      field boundary.
    </p>

    <!-- CIRCUIT DIAGRAM -->

    
    <figure class="tr-figure">
      <img
        src="{{ '/assets/images/Robot-Circuit.png' | relative_url }}"
        alt="Robot electrical circuit diagram"
      >
      <figcaption>
        Electrical circuit integrating the drive servos,
        brush servo, and QTI boundary sensors.
      </figcaption>
    </figure>
 
    <h3>Boundary-Avoidance Strategy</h3>

    <p>
      The robot used a reactive navigation strategy
      based on sensor readings:
    </p>

    <div class="tr-callout">
      <strong>Navigation Logic</strong>

      <p>
        <strong>Neither sensor detects black:</strong>
        Continue driving forward.
      </p>

      <p>
        <strong>Left sensor detects black:</strong>
        Turn right.
      </p>

      <p>
        <strong>Right sensor detects black:</strong>
        Turn left.
      </p>

      <p>
        <strong>Both sensors detect black:</strong>
        Reverse and turn away from the boundary.
      </p>
    </div>

    <p>
      Following an initial timed movement sequence,
      the robot transitioned into a reactive,
      Roomba-style navigation routine with
      randomized turning intervals.
    </p>

  </section>


  <!-- SECTION 04 -->

  <section class="tr-section">

    <div class="tr-kicker">04 / TESTING & ITERATION</div>

    <h2>Engineering Tradeoffs & Design Refinement</h2>

    <p>
      Testing revealed limitations in both the
      mechanical collection system and the original
      sensor-based navigation strategy.
    </p>

    <h3>Brush Torque Limitations</h3>

    <p>
      The rotating brush was originally intended
      to sweep cubes into the chassis. However,
      the selected servo did not provide sufficient
      torque to collect cubes reliably.
    </p>

    <p>
      Increasing the servo supply voltage from
      5 V to 6 V improved performance, but did
      not fully resolve the issue.
    </p>

    <p>
      Because the chassis had already been
      fabricated around the selected servo,
      replacing it with a larger motor was
      impractical. The brush ultimately served
      primarily as a retention mechanism.
    </p>

    <h3>Color Sensor Reliability</h3>

    <p>
      An early navigation concept relied on a
      color sensor to distinguish regions of
      the playing field.
    </p>

    <p>
      Testing showed that the sensor was sensitive
      to changing lighting conditions and scratches
      on the board, requiring repeated recalibration.
    </p>

    <p>
      The team simplified the control strategy
      by replacing this dependency with an
      initial timed movement sequence while
      retaining QTI-based boundary avoidance.
    </p>

    <div class="tr-callout">
      <strong>Engineering Takeaway</strong>
      <p>
        Testing demonstrated that mechanical simplicity
        and reliable sensor inputs were more valuable
        than adding complexity to the collection and
        navigation systems.
      </p>
    </div>

  </section>


  <!-- SECTION 05 -->

  <section class="tr-section">

    <div class="tr-kicker">05 / COMPETITION PERFORMANCE</div>

    <h2>Results & Lessons Learned</h2>

    <p>
      The completed robot advanced to the semifinals
      and placed fourth overall in the competition.
    </p>

    <p>
      Its custom chassis was a major advantage:
      the robot could collect cubes simply by
      driving over them, reducing the need for
      precise alignment with an intake mechanism.
    </p>

    <p>
      The lightweight chassis also introduced
      a disadvantage during physical interactions
      with opposing robots. Heavier robots could
      push it off the playing field, sometimes
      causing collected cubes to escape.
    </p>

    <!-- COMPETITION PHOTO -->

    <!--
    <figure class="tr-figure">
      <img
        src="{{ '/assets/images/Robot-Competition.jpg' | relative_url }}"
        alt="Autonomous robot during competition"
      >
      <figcaption>
        Autonomous robot operating during the
        final competition.
      </figcaption>
    </figure>
    -->

    <div class="tr-callout">
      <strong>Future Improvements</strong>
      <p>
        Future iterations would prioritize improved
        cube retention, earlier testing of the brush
        mechanism, and greater resistance to
        contact with opposing robots.
      </p>
    </div>

  </section>


  <!-- SECTION 06 -->

  <section class="tr-section">

    <div class="tr-kicker">06 / TECHNICAL DOCUMENTATION</div>

    <h2>Final Design Report</h2>

    <p>
      The full report includes the mechanical CAD
      assembly, fabrication drawings, circuit
      diagram, control-system flowchart,
      bill of materials, and embedded control code.
    </p>

    <a
      class="tr-code-link"
      href="{{ '/assets/Robot%20Final%20Report.pdf' | relative_url }}"
      target="_blank"
      rel="noopener noreferrer"
    >
      View Full Technical Report
    </a>

    <p>
      <small>
        Team 26 — Meggie Chen, Allison Newman, Andrea Wang.
      </small>
    </p>

  </section>


  <!-- BOTTOM NAVIGATION -->

  <div class="tr-bottom-navigation">
  <a class="tr-nav-link" href="{{ '/projects/' | relative_url }}">
    ← Back to All Projects
  </a>
</div>

</div>
</div>