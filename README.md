build_playground
================
playground to experiment with different build systems

With each build system we want to understand how:
* create debug/release builds
* import external dependencies
* support code generators
* creation of redistributable packages


# Bazel
comments about bazel here

# Meson

in meson all targets (libraries, executables, generic dependencies) have to be associated to variables (meson objects)
to be referenced across targets. Variables scope is global, and this can produce name clashes.
Since dependency information is passed using variables, they need to be declared before they're used, thus the order 
in which the directories are parsed through the "subdir('dirname')" command is relevant.

Subprojects in Meson can be fetched automatically, and the "wrap" definition must be placed inside a "subprojects"
folder in the repo root.
