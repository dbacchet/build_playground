build_playground
================
playground to experiment with different build systems

With each build system we want to understand how:
* create debug/release builds
* import external dependencies
* support code generators
* creation of redistributable packages


# Bazel

The project webpage is at this [link](https://www.bazel.build)
To build: 
```
bazel build //...
bazel test //...
```

## notes
Bazel defines packages, that are collections of targets defined in the same BUILD file. Visibility level can be 
specified at either the package or target level.
Other packages can be referenced as dependencies, using either the relative path or the full path from the root of the 
project.

Subprojects can be fetched automatically, using specific functions in the main WORKSPACE file (like `http_archive`).

## custom toolchain - cross-compilation
Using a custom toolchain (for either host or cross-compilation), is extremely tedious, and documented
[here](https://docs.bazel.build/versions/master/tutorial/crosstool.html) and
[here](https://github.com/bazelbuild/bazel/wiki/Building-with-a-custom-toolchain)
A great example of how to define a BUILD/CROSSTOOL for a custom clang toolchain can be found [here](https://github.com/vsco/bazel-toolchains)

## debugging
There is a knwon bug that prevents proper debugging on MacOS (info [here](https://github.com/bazelbuild/bazel/issues/6327)).
A workaround is to compile disabling the sandbox for debug builds:
```
bazel build --compilation_mode=dbg --spawn_strategy=standalone //...

```
(run it from a clean build - --spawn_strategy wont affect artifacts that are already been built)

# Meson

The project webpage is at this [link](https://mesonbuild.com/index.html)
To build:
```
meson . meson-build
cd meson-build
ninja
ninja test
```

## notes
In meson all targets (libraries, executables, generic dependencies) have to be associated to variables (meson objects)
to be referenced across targets. Variables scope is global, and this can produce name clashes.
Since dependency information is passed using variables, they need to be declared before they're used, thus the order 
in which the directories are parsed through the "subdir('dirname')" command is relevant.

Subprojects in Meson can be fetched automatically, and the "wrap" definition must be placed inside a "subprojects"
folder in the repo root.

Every file needs to be declared _explicitly_ in the rules; the main reason is to reduce the dependency on slow OS 
operation and improve speed.
Better explanation and a possible workaround [here](https://mesonbuild.com/FAQ.html#why-cant-i-specify-target-files-with-a-wildcard).

# CMake

The project webpage is at this [link](https://cmake.org)
To build:
```
mkdir cmake-build
cd cmake-build
cmake .. -GNinja
ninja
ninja test
```

A good intro can be found at this [link](https://cliutils.gitlab.io/modern-cmake)

## notes
CMake defines targets of different types, and identifies them by name. The name must be unique and and error id thrown 
in case of collision within the project.
The tool evolved _a lot_ in the last few years, and versions >3.10 have a much cleaner syntax and a more structured
set of functionalities. For this comparison I used version 3.12.3.

Subprojects can be fetched automatically (see the `CMakeLists.txt` file in the `subprojects` folder) using the `Fetch`
module. The side effect of that is that the modules are downloaded in the build folder (during the configuration), and
replicated for each variant, or downloaded again in case the folder is wiped and the project configured again.
A `ninja clean` (or `make clean`, depending on which generator has been chosen) will not force to download the package 
again, that is good.
