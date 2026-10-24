---
layout: tilt-rotor
title: Allison Newman - Curriculum Vitae
permalink: /cv/
---

<style>
/* =========================================
   CV PAGE STYLING
   ========================================= */
/* Education formatting */

.cv-page .cv-degree-row {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  gap: 24px;
  margin-top: 18px;
}

.cv-page .cv-degree-title {
  color: #173a57;
  font-size: 16px;
  font-weight: 500;
  line-height: 1.5;
}

.cv-page .cv-degree-detail {
  color: #506274;
  font-size: 14px;
  margin-top: 5px;
}

.cv-page .cv-degree-row .cv-date {
  flex-shrink: 0;
}

@media (max-width: 700px) {
  .cv-page .cv-degree-row {
    flex-direction: column;
    gap: 4px;
  }

  .cv-page .cv-degree-row .cv-date {
    text-align: left;
  }
}
.cv-page .cv-section {
  margin: 52px 0;
}

.cv-page .cv-section h2 {
  color: #152334;
  font-size: 28px;
  margin: 8px 0 26px;
}

.cv-page .cv-entry {
  margin-bottom: 32px;
  padding-bottom: 28px;
  border-bottom: 1px solid #dce6ef;
}

.cv-page .cv-entry:last-child {
  border-bottom: none;
}

.cv-page .cv-entry-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  gap: 20px;
  margin-bottom: 12px;
}

.cv-page .cv-entry h3 {
  color: #173a57;
  font-size: 20px;
  line-height: 1.4;
  margin: 0;
}

.cv-page .cv-subtitle {
  color: #506274;
  font-size: 15px;
  margin-top: 4px;
}

.cv-page .cv-date {
  color: #657587;
  font-size: 14px;
  white-space: nowrap;
  text-align: right;
}

.cv-page .cv-entry ul {
  padding-left: 22px;
  margin-top: 14px;
}

.cv-page .cv-entry li {
  margin-bottom: 10px;
  line-height: 1.7;
}

.cv-page .cv-skills {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 18px;
}

.cv-page .cv-skill-card {
  padding: 22px;
  background: #f3f7fb;
  border: 1px solid #dce6ef;
  border-radius: 10px;
}

.cv-page .cv-skill-card h3 {
  color: #173a57;
  font-size: 17px;
  margin: 0 0 10px;
}

.cv-page .cv-skill-card p {
  color: #506274;
  margin: 0;
}

.cv-page .cv-contact {
  display: flex;
  flex-wrap: wrap;
  gap: 14px 26px;
  margin-top: 22px;
  color: #d3e0ed;
}

.cv-page .cv-contact a {
  color: #d3e0ed;
  text-decoration: none;
}

.cv-page .cv-contact a:hover {
  color: #ffffff;
  text-decoration: underline;
}

.cv-page .cv-download {
  margin-top: 28px;
}

.cv-page .cv-download a {
  display: inline-block;
  background: #2877a5;
  color: #ffffff;
  padding: 13px 22px;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
}

.cv-page .cv-download a:hover {
  background: #195b80;
  color: #ffffff;
}

.cv-page .cv-project-link {
  display: inline-block;
  color: #2877a5;
  font-weight: 600;
  text-decoration: none;
  margin-top: 8px;
}

.cv-page .cv-project-link:hover {
  text-decoration: underline;
}

@media (max-width: 700px) {
  .cv-page .cv-skills {
    grid-template-columns: 1fr;
  }

  .cv-page .cv-entry-header {
    flex-direction: column;
    gap: 6px;
  }

  .cv-page .cv-date {
    text-align: left;
    white-space: normal;
  }
}
</style>


<div class="tilt-rotor-page cv-page">
<div class="tr-project">

  <!-- HERO -->

  <header class="tr-hero">

    <div class="tr-eyebrow">
      MECHANICAL & AEROSPACE ENGINEERING
    </div>

    <h1>Allison Newman</h1>

    <p class="tr-lead">
      Mechanical and Aerospace Engineering undergraduate at
      Cornell University with experience in structural analysis,
      manufacturing engineering, aerospace systems, and
      mechanical design. Interested in structures and testing
      opportunities within the aerospace industry.
    </p>

    <div class="cv-contact">
      <a href="mailto:akn47@cornell.edu">
        akn47@cornell.edu
      </a>

      <span>(323) 807-3076</span>
    </div>

    <div class="cv-download">
      <a
        href="{{ '/assets/Allison_K_Newman_Resume.pdf' | relative_url }}"
        target="_blank"
        rel="noopener noreferrer"
      >
        Download Résumé
      </a>
    </div>

  </header>


  <!-- EDUCATION -->

 <!-- EDUCATION -->

<section class="cv-section">

  <div class="tr-kicker">01 / EDUCATION</div>
  <h2>Education</h2>

  <div class="cv-entry">

    <h3>Cornell University</h3>

    <!-- Bachelor's Degree -->
    <div class="cv-degree-row">
      <div>
        <div class="cv-degree-title">
          Bachelor of Science in Mechanical and Aerospace Engineering
        </div>
        <div class="cv-degree-detail">
          GPA: 3.93 / 4.00
        </div>
      </div>

      <div class="cv-date">
        Expected December 2027
      </div>
    </div>

    <!-- Master's Degree -->
    <div class="cv-degree-row">
      <div>
        <div class="cv-degree-title">
          Master of Engineering in Aerospace Engineering
        </div>
      </div>

      <div class="cv-date">
        Expected May 2028
      </div>
    </div>

  </div>

</section>


  <!-- TECHNICAL SKILLS -->

  <section class="cv-section">

    <div class="tr-kicker">02 / TECHNICAL EXPERTISE</div>
    <h2>Technical Skills</h2>

    <div class="cv-skills">

      <div class="cv-skill-card">
        <h3>Engineering Software</h3>
        <p>
          SolidWorks, CATIA, 3DEXPERIENCE, Ansys,
          STAR-CCM+, GrabCAD Print, Insight
        </p>
      </div>

      <div class="cv-skill-card">
        <h3>Programming</h3>
        <p>
          MATLAB, Java, C++
        </p>
      </div>

      <div class="cv-skill-card">
        <h3>Manufacturing</h3>
        <p>
          Composite Layups, CNC Routing,
          Milling, Turning, Woodworking
        </p>
      </div>

      <div class="cv-skill-card">
        <h3>Fabrication & Prototyping</h3>
        <p>
          3D Printing, Laser Cutting,
          Shaper Router, Rapid Prototyping
        </p>
      </div>

    </div>

  </section>


  <!-- PROFESSIONAL EXPERIENCE -->

  <section class="cv-section">

    <div class="tr-kicker">03 / PROFESSIONAL EXPERIENCE</div>
    <h2>Work Experience</h2>


    <!-- SIKORSKY -->

    <div class="cv-entry">

      <div class="cv-entry-header">

        <div>
          <h3>Lockheed Martin RMS – Sikorsky</h3>
          <div class="cv-subtitle">
            Manufacturing Engineering Intern |
            Assembly & Flight Operations
          </div>
        </div>

        <div class="cv-date">
          May 2026 – August 2026
        </div>

      </div>

      <ul>
        <li>
          Modeled inert-gas purging processes using
          STAR-CCM+ and Ansys to identify inefficiencies
          in the existing system and recommend
          improvements. Applied steady-state,
          transient, turbulent-flow, and passive-scalar
          modeling techniques.
        </li>

        <li>
          Sliced, printed, and packaged 26 scale-model
          components of the modernized Black Hawk nose
          for a trade show in under two weeks using
          three F900 3D printers.
        </li>

        <li>
          Designed manufacturing fixtures for part-number
          stamping, laser powder-bed fusion part removal,
          and welding-rod deposition.
        </li>

        <li>
          Conceptualized a hybrid VTOL propulsion system
          delivering 18 hp with a 20-minute hover
          capability. Conducted motor and engine trade
          studies, selected rotor and ESC components,
          and developed ground- and flight-test safety
          procedures. Awarded second place.
        </li>
      </ul>

    </div>


    <!-- FLUID MECHANICS TA -->

    <div class="cv-entry">

      <div class="cv-entry-header">

        <div>
          <h3>Cornell University – Mechanical Engineering Department</h3>
          <div class="cv-subtitle">
            Undergraduate Teaching Assistant, Fluid Mechanics
          </div>
        </div>

        <div class="cv-date">
          August 2026 – Present
        </div>

      </div>

      <ul>
        <li>
          Demonstrate fluid mechanics concepts through
          Schlieren imaging, forklift hydraulics,
          and engine dissections to three classes
          of approximately 20 third-year students
          per week.
        </li>
      </ul>

    </div>


    <!-- LINEAR ALGEBRA -->

    <div class="cv-entry">

      <div class="cv-entry-header">

        <div>
          <h3>Cornell Engineering – Office of Inclusive Excellence</h3>
          <div class="cv-subtitle">
            Academic Excellence Workshop Facilitator,
            Linear Algebra
          </div>
        </div>

        <div class="cv-date">
          August 2025 – May 2026
        </div>

      </div>

      <ul>
        <li>
          Developed and facilitated two-hour weekly
          workshops reinforcing linear algebra
          concepts through collaborative activities,
          worksheets, and problem-solving exercises.
        </li>

        <li>
          Collaborated with course teaching assistants
          and program staff to improve instructional
          materials and apply active-learning techniques.
        </li>
      </ul>

    </div>


    <!-- DEWEY SMART -->

    <div class="cv-entry">

      <div class="cv-entry-header">

        <div>
          <h3>Dewey Smart</h3>
          <div class="cv-subtitle">
            College Counselor & Academic Tutor
          </div>
        </div>

        <div class="cv-date">
          May 2025 – June 2026
        </div>

      </div>

      <ul>
        <li>
          Provided more than six hours of weekly
          academic tutoring in Calculus I, Calculus II,
          and SAT preparation.
        </li>

        <li>
          Helped students improve SAT scores by
          more than 200 points through individualized
          instruction and targeted practice.
        </li>

        <li>
          Developed college application plans for
          more than five clients, including school
          lists, personal statements, supplemental
          essays, and application timelines.
        </li>
      </ul>

    </div>

  </section>


  <!-- ENGINEERING PROJECTS -->

  <section class="cv-section">

    <div class="tr-kicker">04 / ENGINEERING PROJECTS</div>
    <h2>Selected Engineering Projects</h2>


    <!-- TILT ROTOR -->

    <div class="cv-entry">

      <h3>Tilt-Rotor Mechanism for a 35 lb eVTOL Aircraft</h3>

      <div class="cv-subtitle">
        CUAir | SUAS International Collegiate Competition
      </div>

      <ul>
        <li>
          Designed and sized a tilt-rotor mechanism
          providing 45 lb of horizontal thrust at
          25 m/s, supporting flight-mode transitions
          at 180°/s.
        </li>

        <li>
          Evaluated boom, clevis, and gear geometry
          for bending, bearing, buckling, and yield
          using first-principles statics and dynamics.
        </li>

        <li>
          Validated stiffness and deflection through
          Ansys static structural FEA and evaluated
          linkage-driven versus gear-driven actuation
          in SolidWorks.
        </li>

        <li>
          Performed crash-load analysis and designed
          a steel retaining plate to improve rigidity
          by approximately eight times and reduce
          the risk of gear disengagement.
        </li>
      </ul>

      <a
        class="cv-project-link"
        href="{{ '/projects/2026-tilt-rotor/' | relative_url }}"
      >
        View Full Project →
      </a>

    </div>


    <!-- ROBOT -->

    <div class="cv-entry">

      <h3>Autonomous Cube-Collecting Robot</h3>

      <div class="cv-subtitle">
        Mechatronics Design Competition
      </div>

      <ul>
        <li>
          Designed a custom acrylic robot chassis
          in SolidWorks using commercial and
          custom-fabricated components.
        </li>

        <li>
          Fabricated and assembled the robot using
          laser cutting, 3D printing, and hand tools.
        </li>

        <li>
          Programmed autonomous navigation using
          Arduino and C++, integrating three servos,
          two QTI sensors, and a color sensor during
          development.
        </li>

        <li>
          Ranked third among 60 teams in a
          cube-collection performance category,
          collecting up to 15 cubes in under one minute.
        </li>
      </ul>

      <a
        class="cv-project-link"
        href="{{ '/projects/2026-mechatronics-robot-project/' | relative_url }}"
      >
        View Full Project →
      </a>

    </div>


    <!-- DC MOTOR -->

    <div class="cv-entry">

      <h3>DIY Two-Phase DC Motor</h3>

      <div class="cv-subtitle">
        Independent Engineering Project
      </div>

      <ul>
        <li>
          Designed and fabricated a two-phase DC motor
          incorporating commutators, brushes, and
          recycled household materials.
        </li>

        <li>
          Rapidly prototyped four designs over three
          weeks using aluminum cans, reclaimed wood,
          and surplus hardware.
        </li>

        <li>
          Researched motor operation and developed
          designs independently using physics
          textbooks and online educational resources.
        </li>
      </ul>

    </div>

  </section>


  <!-- LEADERSHIP -->

  <section class="cv-section">

    <div class="tr-kicker">05 / LEADERSHIP & RECOGNITION</div>
    <h2>Leadership & Achievements</h2>

    <div class="cv-entry">

      <h3>Society of Women Engineers – Cornell University</h3>

      <p>
        Communications Director
      </p>

    </div>

    <div class="cv-entry">

      <h3>Awards & Recognition</h3>

      <ul>
        <li>
          Asian American Government Executives Network
          Annual Scholarship, 2025
        </li>

        <li>
          California State Seal of Civic Engagement, 2024
        </li>
      </ul>

    </div>

  </section>


  <!-- BOTTOM NAVIGATION -->

  <div class="tr-bottom-navigation">

    <a
      class="tr-nav-link"
      href="{{ '/projects/' | relative_url }}"
    >
      Explore Engineering Projects →
    </a>

  </div>

</div>
</div>