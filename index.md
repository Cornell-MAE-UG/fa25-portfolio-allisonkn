---
layout: tilt-rotor
title: Allison Newman
---

<style>
/* =========================================
   ABOUT ME PAGE
   ========================================= */

.about-page {
  color: #152334;
}

/* INTRODUCTION */

.about-page .about-intro {
  display: grid;
  grid-template-columns: 1.2fr 0.8fr;
  align-items: center;
  gap: 60px;
  padding: 55px 0 70px;
}

.about-page .about-eyebrow {
  color: #2877a5;
  font-size: 13px;
  font-weight: 700;
  letter-spacing: 2px;
  text-transform: uppercase;
  margin-bottom: 18px;
}

.about-page .about-intro h1 {
  font-size: clamp(40px, 5vw, 64px);
  line-height: 1.1;
  color: #152334;
  margin: 0 0 28px;
}

.about-page .about-intro p {
  font-size: 17px;
  line-height: 1.85;
  color: #506274;
  margin-bottom: 18px;
}

/* PROFILE IMAGE */

.about-page .about-photo {
  position: relative;
}

.about-page .about-photo img {
  width: 100%;
  display: block;
  border-radius: 16px;
  object-fit: cover;
  max-height: 500px;
  box-shadow: 0 15px 35px rgba(21, 35, 52, 0.12);
}

.about-page .about-photo-caption {
  margin-top: 12px;
  font-size: 13px;
  color: #657587;
  text-align: center;
}

/* BUTTONS */

.about-page .about-buttons {
  display: flex;
  flex-wrap: wrap;
  gap: 14px;
  margin-top: 30px;
}

.about-page .about-button {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 13px 22px;
  border-radius: 8px;
  font-size: 14px;
  font-weight: 600;
  text-decoration: none;
  transition: 0.2s ease;
}

.about-page .about-button-primary {
  background: #152334;
  color: #ffffff;
}

.about-page .about-button-primary:hover {
  background: #2877a5;
  color: #ffffff;
}

.about-page .about-button-secondary {
  background: #edf4f9;
  color: #173a57;
  border: 1px solid #dce6ef;
}

.about-page .about-button-secondary:hover {
  background: #dceaf4;
  color: #173a57;
}

/* GENERAL SECTIONS */

.about-page .about-section {
  padding: 55px 0;
  border-top: 1px solid #dce6ef;
}

.about-page .about-section h2 {
  color: #152334;
  font-size: 30px;
  margin: 10px 0 22px;
}

.about-page .about-section > p {
  max-width: 800px;
  color: #506274;
  font-size: 16px;
  line-height: 1.85;
}

/* ENGINEERING INTEREST CARDS */

.about-page .about-interests {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  margin-top: 35px;
}

.about-page .about-interest-card {
  background: #f3f7fb;
  border: 1px solid #dce6ef;
  border-radius: 12px;
  padding: 28px;
}

.about-page .about-interest-number {
  font-size: 13px;
  font-weight: 700;
  color: #2877a5;
  letter-spacing: 1px;
  margin-bottom: 16px;
}

.about-page .about-interest-card h3 {
  color: #173a57;
  font-size: 19px;
  margin: 0 0 12px;
}

.about-page .about-interest-card p {
  color: #506274;
  font-size: 15px;
  line-height: 1.75;
  margin: 0;
}

/* PERSONAL SECTION */

.about-page .about-personal {
  display: grid;
  grid-template-columns: 1fr;
  gap: 30px;
}

.about-page .about-personal p {
  max-width: 800px;
  font-size: 16px;
  line-height: 1.85;
  color: #506274;
}

/* CLOSING */

.about-page .about-closing {
  background: #152334;
  border-radius: 16px;
  padding: 50px;
  margin: 45px 0 60px;
}

.about-page .about-closing h2 {
  color: #ffffff;
  font-size: 32px;
  margin: 0 0 16px;
}

.about-page .about-closing p {
  color: #d3e0ed;
  max-width: 650px;
  line-height: 1.8;
  font-size: 16px;
}

.about-page .about-closing .about-button-primary {
  background: #2877a5;
}

.about-page .about-closing .about-button-primary:hover {
  background: #3894c6;
}

/* MOBILE */

@media (max-width: 800px) {

  .about-page .about-intro {
    grid-template-columns: 1fr;
    gap: 35px;
    padding-top: 30px;
  }

  .about-page .about-photo {
    max-width: 450px;
  }

  .about-page .about-interests {
    grid-template-columns: 1fr;
  }

  .about-page .about-closing {
    padding: 30px;
  }

  .about-page .about-intro h1 {
    font-size: 42px;
  }

}
</style>


<div class="tilt-rotor-page about-page">
<div class="tr-project">

  <!-- INTRODUCTION -->

  <section class="about-intro">

    <div class="about-intro-text">

      <div class="about-eyebrow">
        ABOUT ME
      </div>

      <h1>Hi, I'm Allison.</h1>

      <p>
        I've always been a builder. Whether I'm repairing a
        sewing machine, woodworking, or designing hardware
        for an autonomous aircraft, I'm happiest when I'm
        figuring out how something works and how I can
        make it work better.
      </p>

      <p>
        I'm currently studying mechanical engineering at
        Cornell University, where I've found a way to combine
        my lifelong fascination with aerospace and my love
        for hands-on problem-solving.
      </p>

      <div class="about-buttons">

        <a
          class="about-button about-button-primary"
          href="{{ '/projects/' | relative_url }}"
        >
          Explore My Projects →
        </a>

        <a
          class="about-button about-button-secondary"
          href="{{ '/cv/' | relative_url }}"
        >
          View My CV →
        </a>

      </div>

    </div>

    <div class="about-photo">

      <img
        src="{{ '/assets/images/headshot.jpg' | relative_url }}"
        alt="Portrait of Allison Newman"
      >

    </div>

  </section>


  <!-- ENGINEERING APPROACH -->

  <section class="about-section">

    <div class="tr-kicker">
      01 / MY APPROACH
    </div>

    <h2>From Concept to Hardware</h2>

    <p>
      Growing up in Los Angeles in a hotbed of the aerospace
      industry is what inspired my interest in space systems. 
      I enjoy aspects of mechanical engineering where technical 
      concepts draw on the scrappiness and creativity of builders 
      like me.
    </p>

    <div class="about-interests">

      <div class="about-interest-card">

        <div class="about-interest-number">
          01
        </div>

        <h3>Design & Analysis</h3>

        <p>
          Understanding how mechanical systems behave
          through first-principles analysis, CAD,
          and simulation.
        </p>

      </div>

      <div class="about-interest-card">

        <div class="about-interest-number">
          02
        </div>

        <h3>Manufacturing</h3>

        <p>
          Turning ideas into physical hardware through
          machining, composites, fabrication,
          and rapid prototyping.
        </p>

      </div>

      <div class="about-interest-card">

        <div class="about-interest-number">
          03
        </div>

        <h3>Testing & Iteration</h3>

        <p>
          Learning from real-world performance,
          identifying design limitations, and
          improving systems through iteration.
        </p>

      </div>

    </div>

  </section>


  <!-- BEYOND ENGINEERING -->

  <section class="about-section">

    <div class="tr-kicker">
      02 / BEYOND ENGINEERING
    </div>

    <h2>Outside the Workshop</h2>

    <div class="about-personal">

      <p>
        When I'm not working on engineering projects,
        I enjoy spending time outdoors. I'm an avid
        hiker, fisher, and enthusiast of all things
        nature and plants.
      </p>

      <p>
        I also enjoy woodworking, repairing things,
        and finding opportunities to work with my hands.
        Whether I'm exploring a trail or troubleshooting
        a mechanical problem, curiosity is usually
        what keeps me going.
      </p>

    </div>

  </section>


  <!-- CLOSING -->

  <section class="about-closing">

    <h2>Let's connect!</h2>

    <p>
      I'm always interested in meeting people
      who share a passion for aerospace,
      manufacturing, and granny-hobbies.
      Feel free to reach out!
    </p>

    <div class="about-buttons">

      <a
        class="about-button about-button-primary"
        href="mailto:akn47@cornell.edu"
      >
        Get in Touch →
      </a>

      <a
        class="about-button about-button-secondary"
        href="{{ '/projects/' | relative_url }}"
      >
        View My Work →
      </a>

    </div>

  </section>

</div>
</div>