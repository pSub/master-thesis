master-thesis
=============

Quick-Start-Guide:

    1) Clone repository
    2) Install vampire and make sure it is in PATH
    3) Import project into Eclipse
    4) Build the project to make sure everything works
    5) Choose a type system from the folder specification
    6) Comment all lines after `rules'
    7) Click on `Generation' -> `Generate SDF'
    8) Build the project again
    9) Uncomment the lines after `rules'

Now you are ready to select actions from the `Typecheck' and
`Verification' menus, add new typing rules and conjectures. Changes in
the sections meta-variables, contexts and judgments require the
regeneration of the sdf file and a rebuild of the project.