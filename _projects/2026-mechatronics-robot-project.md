---
layout: tilt-rotor
title: "Autonomous Cube-Collecting Robot"
permalink: /projects/2026-mechatronics-robot-project/
description: "Design and fabrication of an autonomous competition robot featuring a custom acrylic chassis, reactive navigation, and an integrated cube-collection mechanism."
technologies: [SolidWorks, Arduino, C++, Laser Cutting, 3D Printing]
order: 3
---
.robot-case .robot-image {
  margin: 36px 0;
  padding: 16px;
  background: #f3f7fa;
  border: 1px solid #e1e8ee;
  border-radius: 15px;
  overflow: hidden;
}

.robot-case .robot-image img {
  display: block;
  width: 100%;
  height: auto;
  max-height: 520px;
  object-fit: contain;
  border-radius: 9px;
}

.robot-case .robot-image .robot-caption {
  margin: 14px 4px 2px;
}
<style>
.robot-case {
  --robot-ink: #172333;
  --robot-muted: #617083;
  --robot-accent: #256b8e;
  --robot-line: #e1e8ee;
  --robot-bg: #f3f7fa;
  max-width: 1100px;
  margin: 0 auto;
  color: var(--robot-ink);
  font-family: inherit;
  line-height: 1.75;
}

.robot-case * {
  box-sizing: border-box;
}

.robot-case .robot-eyebrow {
  text-transform: uppercase;
  letter-spacing: 0.16em;
  font-size: 0.76rem;
  font-weight: 700;
  color: var(--robot-accent);
}

.robot-case h1 {
  font-size: clamp(2.4rem, 5vw, 4rem);
  line-height: 1.12;
  letter-spacing: -0.035em;
  margin: 14px 0 24px;
}

.robot-case h2 {
  font-size: clamp(1.65rem, 3vw, 2.25rem);
  line-height: 1.25;
  letter-spacing: -0.025em;
  margin: 0 0 22px;
}

.robot-case h3 {
  font-size: 1.15rem;
  margin: 0 0 12px;
}

.robot-case p {
  margin: 0 0 20px;
}

.robot-case .robot-lead {
  font-size: 1.18rem;
  line-height: 1.8;
  color: #44576a;
  max-width: 850px;
}

.robot-case .robot-hero {
  padding: 60px 0 48px;
  border-bottom: 1px solid var(--robot-line);
}

.robot-case .robot-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 9px;
  margin: 28px 0;
}

.robot-case .robot-tag {
  padding: 7px 13px;
  border: 1px solid #d6e2ea;
  border-radius: 999px;
  font-size: 0.8rem;
  color: #3f5b70;
  background: #f8fbfd;
}

.robot-case .robot-stats {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 14px;
  margin-top: 36px;
}

.robot-case .robot-stat {
  padding: 25px 18px;
  background: var(--robot-bg);
  border: 1px solid var(--robot-line);
  border-radius: 14px;
}

.robot-case .robot-stat strong {
  display: block;
  font-size: 1.8rem;
  line-height: 1.2;
  color: var(--robot-accent);
  margin-bottom: 8px;
}

.robot-case .robot-stat span {
  display: block;
  font-size: 0.8rem;
  color: var(--robot-muted);
}

.robot-case .robot-section {
  padding: 68px 0;
  border-bottom: 1px solid var(--robot-line);
}

.robot-case .robot-section-number {
  color: var(--robot-accent);
  font-size: 0.78rem;
  font-weight: 700;
  letter-spacing: 0.15em;
  margin-bottom: 14px;
}

.robot-case .robot-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 28px;
}

.robot-case .robot-card {
  background: var(--robot-bg);
  border: 1px solid var(--robot-line);
  border-radius: 15px;
  padding: 28px;
}

.robot-case .robot-card p:last-child {
  margin-bottom: 0;
}

.robot-case .robot-highlight {
  padding: 30px 34px;
  background: #eaf3f8;
  border-left: 4px solid var(--robot-accent);
  border-radius: 0 12px 12px 0;
  margin: 30px 0;
}

.robot-case .robot-highlight p:last-child {
  margin-bottom: 0;
}

.robot-case .robot-step {
  display: grid;
  grid-template-columns: 65px 1fr;
  gap: 18px;
  padding: 22px 0;
  border-bottom: 1px solid var(--robot-line);
}

.robot-case .robot-step:last-child {
  border-bottom: 0;
}

.robot-case .robot-step-number {
  font-size: 1.6rem;
  font-weight: 700;
  color: var(--robot-accent);
}

.robot-case .robot-step p {
  margin-bottom: 0;
}

.robot-case .robot-document {
  border: 1px solid var(--robot-line);
  border-radius: 15px;
  overflow: hidden;
  background: #fff;
  margin-top: 25px;
}

.robot-case .robot-document iframe {
  width: 100%;
  height: 620px;
  border: 0;
  display: block;
}

.robot-case .robot-button {
  display: inline-block;
  background: var(--robot-accent);
  color: white !important;
  text-decoration: none;
  padding: 13px 22px;
  border-radius: 8px;
  font-weight: 600;
  margin-top: 12px;
}

.robot-case .robot-button:hover {
  background: #194d68;
  text-decoration: none;
}

.robot-case .robot-caption {
  font-size: 0.85rem;
  color: var(--robot-muted);
  margin-top: 12px;
}

@media (max-width: 760px) {
  .robot-case .robot-stats {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }

  .robot-case .robot-grid {
    grid-template-columns: 1fr;
  }

  .robot-case .robot-section {
    padding: 45px 0;
  }

  .robot-case .robot-document iframe {
    height: 420px;
  }
}
</style>

<div class="tilt-rotor-page">
<div class="tr-project">
<div class="robot-case">

  <!-- HERO -->

  <header class="robot-hero">

    <div class="robot-eyebrow">
      Mechatronics · Robotics · Design & Fabrication
    </div>

    <h1>Autonomous Cube-Collecting Robot</h1>

    <p class="robot-lead">
      Designed and built an autonomous competition robot around a
      custom laser-cut acrylic chassis, using mechanical geometry
      and simple reactive controls to maximize cube collection.
      The robot advanced to the semifinals and finished
      <strong>4th overall</strong>.
    </p>

    <div class="robot-tags">
      <span class="robot-tag">Mechanical Design</span>
      <span class="robot-tag">SolidWorks</span>
      <span class="robot-tag">Laser Cutting</span>
      <span class="robot-tag">3D Printing</span>
      <span class="robot-tag">Embedded C++</span>
      <span class="robot-tag">Sensor Integration</span>
    </div>
    
    <div class="robot-image">
  <img
    src="{{ '/assets/images/Robot-Final.jpg' | relative_url }}"
    alt="Completed autonomous cube-collecting robot"
  >
  <p class="robot-caption">
    Final autonomous robot featuring a custom acrylic chassis.
  </p>
</div>
    <div class="robot-stats">

      <div class="robot-stat">
        <strong>4th</strong>
        <span>Overall competition placement</span>
      </div>

      <div class="robot-stat">
        <strong>7.5 × 6.5 × 5</strong>
        <span>Custom chassis dimensions (in)</span>
      </div>

      <div class="robot-stat">
        <strong>2</strong>
        <span>QTI boundary sensors</span>
      </div>

      <div class="robot-stat">
        <strong>$39.91</strong>
        <span>Reported materials cost</span>
      </div>

    </div>

  </header>


  <!-- SECTION 1 -->

  <section class="robot-section" id="challenge">

    <div class="robot-section-number">01 / DESIGN CHALLENGE</div>

    <h2>Designing for Collection, Not Just Movement</h2>

    <p>
      The competition required an autonomous robot capable of
      collecting cubes while navigating a bounded playing field
      and competing against other robots.
    </p>

    <p>
      Rather than building around the provided metal Boe-Bot
      chassis, our team identified an opportunity to redesign
      the robot's mechanical architecture around the competition
      objective itself.
    </p>

    <p>
      The standard chassis sat relatively low to the ground,
      limiting the space available for collecting cubes.
      We instead designed a larger, elevated acrylic frame
      that could drive over cubes and retain them within
      its footprint.
    </p>

    <div class="robot-highlight">
      <h3>Core Design Principle</h3>
      <p>
        Use the geometry of the chassis as the primary
        collection mechanism, reducing dependence on
        additional moving parts.
      </p>
    </div>

  </section>


  <!-- SECTION 2 -->

  <section class="robot-section" id="mechanical">

    <div class="robot-section-number">02 / MECHANICAL DESIGN</div>

    <h2>A Custom Chassis Built Around the Objective</h2>

    <p>
      The robot featured a 7.5 × 6.5 × 5 inch acrylic
      frame, two driven wheels, and a freely rolling
      rear ball support.
    </p>

    <p>
      Its open underside allowed the robot to move over
      cubes while the surrounding panels helped keep
      collected cubes inside the chassis.
    </p>

    <div class="robot-image">
  <img
    src="{{ '/assets/images/Robot-CAD.png' | relative_url }}"
    alt="CAD assembly of the custom robot chassis"
  >
  <p class="robot-caption">
    CAD assembly showing the chassis, drivetrain, and collection mechanism.
  </p>
</div>

    <div class="robot-grid">

      <div class="robot-card">
        <h3>Laser-Cut Acrylic Frame</h3>
        <p>
          Designed custom panels to create a lightweight,
          spacious enclosure with a substantially larger
          collection area than the supplied chassis.
        </p>
      </div>

      <div class="robot-card">
        <h3>Custom 3D-Printed Components</h3>
        <p>
          Developed mounts for the QTI sensors and a
          shaft connector for the brush assembly,
          integrating electronics and moving components
          into the custom structure.
        </p>
      </div>

      <div class="robot-card">
        <h3>Rotating Brush Mechanism</h3>
        <p>
          Integrated a servo-driven shaft with brush
          attachments at the front of the robot,
          intended to sweep cubes inward and help
          prevent them from escaping.
        </p>
      </div>

      <div class="robot-card">
        <h3>Two-Wheel Drive</h3>
        <p>
          Used two continuous-rotation servos for
          differential steering, with a free-rolling
          ball supporting the rear of the chassis.
        </p>
      </div>

    </div>

    <p class="robot-caption">
      The complete CAD assembly and individual fabricated
      components are documented in Appendix C of the report below.
    </p>

  </section>


  <!-- SECTION 3 -->

  <section class="robot-section" id="controls">

    <div class="robot-section-number">03 / ELECTRICAL & CONTROL SYSTEMS</div>

    <h2>Simple, Reactive Autonomous Navigation</h2>

    <p>
      The control system combined three continuous-rotation
      servos with two QTI sensors mounted on opposite
      sides of the chassis.
    </p>

    <p>
      The wheel servos controlled forward motion and
      turning, while the third servo powered the
      rotating brush. The servos were connected to
      the breadboard's 6 V rail.
    </p>

    <div class="robot-image">
  <img
    src="{{ '/assets/images/Robot-Circuit.png' | relative_url }}"
    alt="Electrical circuit diagram of the autonomous robot"
  >
  <p class="robot-caption">
    Electrical architecture integrating the drive servos and QTI sensors.
  </p>
</div>

    <h3>Boundary-Avoidance Logic</h3>

    <div class="robot-step">
      <div class="robot-step-number">01</div>
      <div>
        <h3>Neither Sensor Detects Black</h3>
        <p>
          Continue driving forward to traverse the
          board and collect cubes.
        </p>
      </div>
    </div>

    <div class="robot-step">
      <div class="robot-step-number">02</div>
      <div>
        <h3>Left Sensor Detects Black</h3>
        <p>
          Turn right to steer away from the boundary.
        </p>
      </div>
    </div>

    <div class="robot-step">
      <div class="robot-step-number">03</div>
      <div>
        <h3>Right Sensor Detects Black</h3>
        <p>
          Turn left to return toward the playing area.
        </p>
      </div>
    </div>

    <div class="robot-step">
      <div class="robot-step-number">04</div>
      <div>
        <h3>Both Sensors Detect Black</h3>
        <p>
          Reverse and turn away from the edge before
          resuming forward motion.
        </p>
      </div>
    </div>

    <div class="robot-highlight">
      <h3>Control Strategy</h3>
      <p>
        After an initial timed movement sequence,
        the robot transitioned into a reactive,
        Roomba-style navigation routine with
        randomized turning intervals.
      </p>
    </div>

  </section>


  <!-- SECTION 4 -->

  <section class="robot-section" id="iteration">

    <div class="robot-section-number">04 / TESTING & ITERATION</div>

    <h2>Adapting the Design When Testing Exposed Limitations</h2>

    <p>
      Integrating the mechanical and electrical systems
      revealed two important limitations that influenced
      the final competition design.
    </p>

    <div class="robot-grid">

      <div class="robot-card">

        <h3>Challenge 01 — Insufficient Brush Torque</h3>

        <p>
          The original brush mechanism was intended to
          actively sweep cubes into the robot. However,
          the selected servo could not generate enough
          torque to perform this task reliably.
        </p>

        <p>
          Increasing the servo supply from 5 V to 6 V
          improved its output, but did not fully
          resolve the issue.
        </p>

        <p>
          Because the acrylic panel was already cut
          for the selected servo, replacing it with
          a larger motor was impractical. The brush
          remained useful primarily for retaining
          cubes already inside the frame.
        </p>

      </div>

      <div class="robot-card">

        <h3>Challenge 02 — Unreliable Color Detection</h3>

        <p>
          An early navigation concept used a color
          sensor to identify a boundary between
          colored regions of the playing field.
        </p>

        <p>
          Testing revealed that readings changed
          with lighting conditions and scratches
          on the board, requiring repeated
          recalibration.
        </p>

        <p>
          The team removed this dependency and
          replaced the initial positioning behavior
          with a timed movement sequence, while
          retaining QTI-based boundary avoidance.
        </p>

      </div>

    </div>

    <div class="robot-highlight">

      <h3>Engineering Takeaway</h3>

      <p>
        Simplifying the robot improved the reliability
        of its overall behavior. Instead of relying
        on multiple complex mechanisms, the final
        strategy exploited the custom chassis geometry
        and a small number of dependable sensor inputs.
      </p>

    </div>

  </section>


  <!-- SECTION 5 -->

  <section class="robot-section" id="results">

    <div class="robot-section-number">05 / COMPETITION RESULTS</div>

    <h2>Fourth Place Through Mechanical Simplicity</h2>

    <p>
      The robot advanced to the semifinals and
      finished fourth overall.
    </p>

    <p>
      Its primary advantage was the custom enclosure:
      cubes could be collected simply by driving
      over them, rather than requiring precise
      alignment with a narrow intake mechanism.
    </p>

    <p>
      The two-sensor navigation strategy also
      performed its essential task of keeping
      the robot on the board during autonomous
      operation.
    </p>

    <p>
      The main weakness was the lightweight chassis.
      Heavier opposing robots could push it off the
      playing field, sometimes causing previously
      collected cubes to escape.
    </p>

    <div class="robot-highlight">

      <h3>What I Would Improve</h3>

      <p>
        Future iterations would benefit from earlier
        mechanical integration, more thorough brush
        testing, improved cube retention, and a
        chassis designed to better withstand contact
        with opposing robots.
      </p>

    </div>

  </section>


  <!-- SECTION 6 -->

  <section class="robot-section" id="documentation">

    <div class="robot-section-number">06 / TECHNICAL DOCUMENTATION</div>

    <h2>CAD, Circuit Design & Source Code</h2>

    <p>
      The final report contains the mechanical CAD
      assembly, individual laser-cut and 3D-printed
      component drawings, circuit diagram,
      control-system flowchart, bill of materials,
      and embedded control code.
    </p>

    <a
      class="robot-button"
      href="{{ '/assets/Robot%20Final%20Report.pdf' | relative_url }}"
      target="_blank"
      rel="noopener noreferrer"
    >
      View Full Technical Report ↗
    </a>

    <div class="robot-document">

      <iframe
        src="{{ '/assets/Robot%20Final%20Report.pdf' | relative_url }}#page=1"
        title="Robot Final Technical Report"
        loading="lazy">
      </iframe>

    </div>

    <p class="robot-caption">
      Team 26 — Meggie Chen, Allison Newman, Andrea Wang.
      Project information and technical details are drawn
      from the team's final report.
    </p>

  </section>

</div>
</div>
</div>