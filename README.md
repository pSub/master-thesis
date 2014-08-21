master-thesis
=============

Quick-Start-Guide:

    * Clone repository
    * Install vampire and make sure it is in PATH
    * Install Eclipse plugin Spoofax (http://download.spoofax.org/update/nightly)
    * Import project into Eclipse
    * Build the project to make sure everything works
    * Choose a type system from the folder specification
    * Comment all lines after `rules'
    * Click on `Generation' -> `Generate SDF'
    * Build the project again
    * Uncomment the lines after `rules'

Now you are ready to select actions from the `Typecheck' and
`Verification' menus, add new typing rules and conjectures. Changes in
the sections meta-variables, contexts and judgments require the
regeneration of the sdf file and a rebuild of the project.