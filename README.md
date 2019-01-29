A Language for the Specification and Efficient Implementation of Type Systems
===

Abstract
---

Type systems are important tools to detect semantic inconsistencies,
to establish abstractions and to guide programmers in the development
process. However, there is currently a lack of established tools
supporting the development of type systems, tools like lexer and
parser generators but for type systems. We introduce a declarative
specification language for type systems that allows to specify type
systems in a natural deductive style. We generate two products out of
a type system specification: A first-order formula representation to
facilitate the use of automated theorem provers and a type
checker. The type checker generator uses results proven by automated
theorem provers to check the applicability of optimization strategies
and the first-order formula representation is also a reference
implementation. Both results aim to accelerate the development cycle
for type systems and to narrow the gap between theory and practice.

Quick-Start-Guide
---

    * Clone repository
    * Install vampire and make sure it is in PATH
    * Install Eclipse plugin Spoofax (https://www.metaborg.org/en/latest/source/install.html)
    * Import project into Eclipse
    * Build the project to make sure everything works
    * Restart Eclipse
    * Choose a type system from the folder syntax/specification/
    * Comment all lines after `rules`
    * Click on `Generation` -> `Generate SDF`
    * Build the project again
    * Uncomment the lines after `rules`

Now you are ready to select actions from the `Typecheck` and
`Verification` menus, add new typing rules and conjectures. Changes in
the sections meta-variables, contexts and judgments require the
regeneration of the sdf file and a rebuild of the project.

Documents
---

   * [Master thesis](https://users.pascal-wittmann.de/pascal/master-thesis/thesis.pdf)
   * [Slides of the defense](https://users.pascal-wittmann.de/pascal/master-thesis/slides-of-the-defense.pdf)
   * [Summary for SPLASH SRC application](https://users.pascal-wittmann.de/pascal/master-thesis/summary-for-splash-src-application.pdf)
   * [Slides for SRC at SPLASH](https://users.pascal-wittmann.de/pascal/master-thesis/slides-for-src-at-splash.pdf)
   * [Poster for SPLASH Poster Track](https://users.pascal-wittmann.de/pascal/master-thesis/poster-for-splash.pdf)
   * [Slides for the HessPL workshop](https://users.pascal-wittmann.de/pascal/master-thesis/slides-for-hesspl.pdf)
