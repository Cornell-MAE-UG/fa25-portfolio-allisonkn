
---
layout: tilt-rotor
title: "Torque Wrench | Structural Analysis & Strain Gauge Design"
description: "Finite element analysis, material selection, and strain gauge integration for a torque wrench designed to meet structural and measurement requirements."
technologies: [SolidWorks, Ansys, MATLAB]
image: /assets/images/Torque-Wrench-Ansys.png
---

<link rel="stylesheet" href="{{ '/assets/css/tilt-rotor.css' | relative_url }}">

<div class="tilt-rotor-page">
<div class="tr-project">

  <!-- NAVIGATION -->
  <nav class="tr-navigation">
    <a class="tr-nav-link" href="{{ '/' | relative_url }}">← Home</a>
    <a class="tr-nav-link" href="{{ '/projects/' | relative_url }}">← All Projects</a>
  </nav>

  <!-- HERO -->
  <header class="tr-hero">
    <p class="tr-eyebrow">MECHANICS OF MATERIALS · FEA · INSTRUMENTATION</p>
    <h1>Torque Wrench Design & Structural Optimization</h1>
    <p>
      Redesigning a torque wrench to withstand a 600 lbf·in applied torque
      while maintaining structural safety and achieving the strain
      sensitivity required for accurate torque measurement.
    </p>
    <p><strong>Tools:</strong> SolidWorks · Ansys Mechanical · MATLAB</p>
  </header>

  <!-- KEY RESULTS -->
  <div class="tw-metrics">
    <div class="tw-metric">
      <strong>600</strong>
      <span>lbf·in design torque</span>
    </div>
    <div class="tw-metric">
      <strong>1.0054</strong>
      <span>mV/V calculated sensitivity</span>
    </div>
    <div class="tw-metric">
      <strong>0.198</strong>
      <span>in maximum deflection</span>
    </div>
    <div class="tw-metric">
      <strong>33,966</strong>
      <span>psi maximum normal stress</span>
    </div>
  </div>

  <!-- 01 OVERVIEW -->
  <section class="tw-section">
    <p class="tw-section-number">01 / PROJECT OVERVIEW</p>
    <h2>Engineering Challenge</h2>

    <p>
      For my Mechanics of Materials course, I analyzed and modified
      a baseline torque wrench design, modeled as a cantilever beam.
      The objective was to develop a design that satisfied structural
      safety requirements while producing a sufficiently strong
      strain-gauge signal for torque measurement.
    </p>

    <p>
      Using MATLAB calculations and finite element analysis in Ansys,
      I evaluated the wrench against three design requirements:
    </p>

    <div class="tw-requirements">
      <div><strong>4.0</strong><span>Required factor of safety against yielding</span></div>
      <div><strong>2.0</strong><span>Required factor of safety against crack growth</span></div>
      <div><strong>1.5</strong><span>Required factor of safety against fatigue</span></div>
    </div>

    <p>
      My modified design used AISI H19 chromium-alloy tool steel
      and a locally narrowed handle section to increase bending
      strain at the strain gauge location.
    </p>
  </section>

  <!-- 02 CAD -->
  <section class="tw-section">
    <p class="tw-section-number">02 / MECHANICAL DESIGN</p>
    <h2>CAD Geometry & Design Modifications</h2>

    <p>
      I modified the torque wrench geometry to balance two competing
      objectives: maintaining sufficient strength under the design
      load and increasing the measurable strain in the handle.
      A narrowed region near the drive concentrates bending strain
      where the strain gauge is installed.
    </p>

    <figure class="tw-figure">
      <img src="{{ '/assets/images/Torque-Wrench-CAD1.png' | relative_url }}"
           alt="CAD model of modified torque wrench">
      <figcaption>Figure 1. CAD model of the modified torque wrench.</figcaption>
    </figure>

    <h3>Key Dimensions</h3>

    <div class="tw-table-wrap">
      <table class="tw-table">
        <thead>
          <tr><th>Feature</th><th>Dimension</th></tr>
        </thead>
        <tbody>
          <tr><td>Total handle length</td><td>17.20 in</td></tr>
          <tr><td>Effective moment arm</td><td>16.60 in</td></tr>
          <tr><td>Handle height</td><td>0.50 in</td></tr>
          <tr><td>Maximum handle width</td><td>0.75 in</td></tr>
          <tr><td>Width at strain gauge</td><td>0.45 in</td></tr>
          <tr><td>Distance from drive to strain gauge</td><td>1.60 in</td></tr>
          <tr><td>Drive cross-section</td><td>3/8 × 3/8 in</td></tr>
          <tr><td>Clamped drive height</td><td>0.40 in</td></tr>
          <tr><td>Fillet radius</td><td>0.10 in</td></tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- 03 MATERIAL -->
  <section class="tw-section">
    <p class="tw-section-number">03 / MATERIAL SELECTION</p>
    <h2>High-Strength Tool Steel</h2>

    <p>
      I selected AISI H19 chromium-alloy tool steel for its
      mechanical properties and suitability for the specified
      structural safety requirements.
    </p>

    <div class="tw-table-wrap">
      <table class="tw-table">
        <thead>
          <tr><th>Material Property</th><th>Value Used</th></tr>
        </thead>
        <tbody>
          <tr><td>Young's modulus</td><td>32 × 10⁶ psi</td></tr>
          <tr><td>Poisson's ratio</td><td>0.29</td></tr>
          <tr><td>Yield strength</td><td>260,000 psi</td></tr>
          <tr><td>Fracture toughness, K<sub>IC</sub></td><td>30.4 × 10³ psi√in</td></tr>
          <tr><td>Fatigue strength at 10⁶ cycles</td><td>78,300 psi</td></tr>
        </tbody>
      </table>
    </div>

    <p class="tw-note">
      Material properties shown are the upper-end values used
      in the original project analysis.
    </p>
  </section>

  <!-- 04 FEA -->
  <section class="tw-section">
    <p class="tw-section-number">04 / STRUCTURAL ANALYSIS</p>
    <h2>Finite Element Modeling in Ansys</h2>

    <p>
      I modeled the torque wrench as a cantilever beam with
      a fixed support applied to the upper 0.40 inches of the
      drive. A downward force was applied at the free end of
      the handle to produce the required torque about the drive.
    </p>

    <div class="tw-equation">
      F = T / L = 600 / 16.6 = 36.14 lbf
    </div>

    <figure class="tw-figure">
      <img src="{{ '/assets/images/BoundaryConditions.png' | relative_url }}"
           alt="Ansys loading and boundary conditions">
      <figcaption>Figure 2. Fixed support and applied load in the finite element model.</figcaption>
    </figure>

    <h3>Normal Elastic Strain</h3>
    <p>
      I examined the normal strain in the handle's longitudinal
      direction, with particular attention to the narrowed
      section where the strain gauge would be mounted.
    </p>

    <div class="tw-gallery">
      <figure class="tw-figure">
        <img src="{{ '/assets/images/NormalElasticStrainContour.png' | relative_url }}"
             alt="Normal elastic strain contour">
        <figcaption>Figure 3a. Longitudinal normal elastic strain.</figcaption>
      </figure>
      <figure class="tw-figure">
        <img src="{{ '/assets/images/ZoomedNormalElasticStrain.png' | relative_url }}"
             alt="Zoomed normal elastic strain contour">
        <figcaption>Figure 3b. Local strain extrema: +0.00109 and −0.00118.</figcaption>
      </figure>
    </div>

    <h3>Maximum Principal Stress</h3>
    <p>
      Principal stress contours were used to identify highly
      loaded regions and examine local stress concentrations.
    </p>

    <div class="tw-gallery">
      <figure class="tw-figure">
        <img src="{{ '/assets/images/MaxPrinStressCont.png' | relative_url }}"
             alt="Maximum principal stress contour">
        <figcaption>Figure 4a. Maximum principal stress distribution.</figcaption>
      </figure>
      <figure class="tw-figure">
        <img src="{{ '/assets/images/ZoomedPrinStress.png' | relative_url }}"
             alt="Zoomed principal stress contour">
        <figcaption>Figure 4b. Reported extrema: 61,176 psi and −1,676.3 psi.</figcaption>
      </figure>
    </div>

    <h3>Normal Stress & Deformation</h3>
    <p>
      The longitudinal normal stress reached approximately
      33,966 psi near the strain gauge region. The maximum
      predicted displacement was 0.198 inches at the
      point of load application.
    </p>

    <div class="tw-gallery">
      <figure class="tw-figure">
        <img src="{{ '/assets/images/NormalStressContour.png' | relative_url }}"
             alt="Normal stress contour">
        <figcaption>Figure 5a. Longitudinal normal stress.</figcaption>
      </figure>
      <figure class="tw-figure">
        <img src="{{ '/assets/images/ZoomMaxSigmaX.png' | relative_url }}"
             alt="Zoomed normal stress contour">
        <figcaption>Figure 5b. Local normal stress extrema: +33,966 and −33,003 psi.</figcaption>
      </figure>
      <figure class="tw-figure">
        <img src="{{ '/assets/images/TotalDefCont.png' | relative_url }}"
             alt="Total deformation contour">
        <figcaption>Figure 6. Total deformation under the design load.</figcaption>
      </figure>
      <figure class="tw-figure">
        <img src="{{ '/assets/images/StrainSummary.png' | relative_url }}"
             alt="Strain gauge location strain summary">
        <figcaption>Figure 7. Strain measurements extracted at the gauge location.</figcaption>
      </figure>
    </div>
  </section>

  <!-- 05 STRAIN GAUGE -->
  <section class="tw-section">
    <p class="tw-section-number">05 / INSTRUMENTATION</p>
    <h2>Strain Gauge Selection & Sensitivity</h2>

    <p>
      To estimate measurement sensitivity, I established a
      local coordinate system at the center of the proposed
      strain gauge and probed the longitudinal normal strain
      from the finite element solution.
    </p>

    <div class="tw-result">
      <span>Predicted strain at gauge location</span>
      <strong>1.0054 × 10⁻³ in/in</strong>
      <span>Calculated torque wrench sensitivity</span>
      <strong>1.0054 mV/V</strong>
    </div>

    <p>
      The calculated sensitivity exceeded the minimum
      requirement of 1.0 mV/V.
    </p>

    <h3>HBK 1-DY11-6/350</h3>

    <p>
      I selected an HBK double-linear strain gauge with
      two parallel measuring grids, suited to the
      bending-strain measurement approach used in this design.
      The DY11 variant provides temperature compensation
      matched to steel, helping reduce measurement error
      associated with differences in thermal expansion.
    </p>

    <div class="tw-gallery">
      <figure class="tw-figure">
        <img src="{{ '/assets/images/StrainGauge.png' | relative_url }}"
             alt="HBK strain gauge specifications">
        <figcaption>Figure 8. Selected HBK strain gauge specifications.</figcaption>
      </figure>
      <figure class="tw-figure">
        <img src="{{ '/assets/images/StrainGaugeLocation.png' | relative_url }}"
             alt="Strain gauge placement on torque wrench">
        <figcaption>Figure 9. Proposed gauge placement and available mounting space.</figcaption>
      </figure>
    </div>

    <p>
      <a href="https://www.hbkworld.com/en/products/support-resources/support-hbm/downloads/product-literature/product-literature-sensors-transducers/product-literature-strain-gauges"
         target="_blank" rel="noopener noreferrer">
        View HBK strain gauge documentation ↗
      </a>
    </p>
  </section>

  <!-- 06 RESULTS -->
  <section class="tw-section">
    <p class="tw-section-number">06 / RESULTS & TAKEAWAYS</p>
    <h2>Design Validation & Engineering Takeaways</h2>

    <p>
      The final design combined a high-strength steel alloy
      with a locally reduced handle cross-section to
      improve strain gauge sensitivity while addressing
      the project's structural requirements.
    </p>

    <div class="tw-table-wrap">
      <table class="tw-table">
        <thead>
          <tr><th>Result</th><th>Calculated Value</th></tr>
        </thead>
        <tbody>
          <tr><td>Applied torque</td><td>600 lbf·in</td></tr>
          <tr><td>Maximum normal stress</td><td>33,966 psi</td></tr>
          <tr><td>Maximum deflection</td><td>0.198 in</td></tr>
          <tr><td>Strain at gauge</td><td>1.0054 × 10⁻³ in/in</td></tr>
          <tr><td>Calculated sensitivity</td><td>1.0054 mV/V</td></tr>
          <tr><td>Required sensitivity</td><td>≥ 1.0 mV/V</td></tr>
        </tbody>
      </table>
    </div>

    <figure class="tw-figure">
      <img src="{{ '/assets/images/SummaryTestValid.png' | relative_url }}"
           alt="Summary of design validation results">
      <figcaption>Figure 10. Summary of the original design verification results.</figcaption>
    </figure>

    <p>
      This project strengthened my experience with
      translating analytical mechanics into finite element
      models, interpreting stress and strain distributions,
      and designing mechanical components for both
      structural performance and measurement capability.
    </p>

    <p class="tw-note">
      The reported strain and sensitivity values are based
      on simulation rather than physical strain gauge testing.
    </p>
  </section>

  <!-- REPORT -->
  <section class="tw-section">
    <h2>Full Technical Report</h2>
    <p>
      The complete report includes the detailed calculations,
      FEA results, material selection, and design verification.
    </p>
    <a class="tr-nav-link"
       href="{{ '/assets/MAE 3270 Final Project.pdf' | relative_url }}"
       target="_blank" rel="noopener noreferrer">
      View Full Project Report ↗
    </a>
  </section>

  <!-- FOOTER NAVIGATION -->
  <nav class="tr-navigation">
    <a class="tr-nav-link" href="{{ '/projects/' | relative_url }}">← All Projects</a>
    <a class="tr-nav-link" href="{{ '/' | relative_url }}">Home</a>
  </nav>

</div>
</div>
