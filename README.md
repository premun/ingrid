# Ingrid
Ingrid is a plugin for the JetBrains MPS language workbench that allows users to easily import an ANTLR v4 grammar into MPS and to create an MPS language out of it.

The name **Ingrid** comes from a mix of an abbreviation of *Interactive Grammar Import* and a Scandinavian name of a Norse valkyrie, who was bringing dead warriors to Valhalla (as a parallel of bringing a language into MPS).

**[Here](https://github.com/premun/diploma-thesis/blob/master/Grammar%20to%20JetBrains%20MPS%20Convertor.pdf) is a full diploma thesis describing the plugin.**

## Requirements
- MPS 2017.1 and higher
- Running the MPS using Java 8 (JDK 1.8)
- JDK 1.8 for IntelliJ IDEA (needed when building the plugin)

## How to import a language to the current project

1. Download the required zip-file from [`here`](/out/) (binary releases), or follow the steps below to build it from sources.
2. Open `File` > `Settings`.
3. Go to the `Plugins` section.
4. Click `Install plugin from disk...`
5. Locate the plugin file `premun.mps.ingrid.<version>.zip`.
6. Restart MPS.
7. `Tools` -> `Import ANTLR v4 grammar`
8. Add some `.g4` file. Either you can use any from the `grammars` directory or take a look at this [grammar repository](https://github.com/antlr/grammars-v4).
9. Click `Import`.

## How to build the plugin

1. Download/clone the whole repository.
2. Open the MPS project located in `plugin/mps`.
3. Set the path variable `INGRID_HOME` to the root of the ingrid repository (contains the plugin directory). This is not the root directory of the MPS project, but **the whole repository**.
4. Restart MPS.
5. Open the `Ingrid` build inside of the `Ingrid.build` solution. In the `macros` section, set the **mps_home** macro to point to the root directory of your MPS installation. Unfortunately, a relative path starting in the home directory of the Ingrid MPS project must be used.
6. Build solutions **one-by-one** in this order:
  - `org.antlr`
  - `premun.mps.ingrid.model`
  - `premun.mps.ingrid.parser`
  - `premun.mps.ingrid.library`
  - `premun.mps.ingrid.importer`
  - `premun.mps.ingrid.plugin`
  - `Ingrid.build`
7. Run the `Ingrid` build, this will produce the `premun.mps.ingrid.zip` plugin file in `plugin/mps/build/artifacts/Ingrid`. Alternatively, you can open terminal, go to the `plugin/mps` folder and call `ant clean && ant`.

## How to develop/change the plugin

The project has two main parts - an **MPS project** (`plugin/mps`) and an **IDEA Java project** (`plugin/idea`).
In case you would like to contribute to the project, change the code, or just build the plugin yourself, you need to set up the MPS and IDEA projects correctly.
IntelliJ IDEA is only necessary when you need to change the Java code.
Otherwise, MPS will be sufficient on its own.
Setting up dependencies correctly presents the only problematic part.

The IDEA project requires to set a path variable `MPS_HOME` to point to a directory where MPS is installed.
This is required, so that the library module of the IDEA project can use the MPS API.
After setting this variable, it is recommended to restart the IDE.

## Plugin architecture

Both projects (MPS and IDEA) maintain the same structure, so it is very easy to find your way around the code base.
Furthermore, both projects were split up into several modules and, apart from one library module, they were all developed inside the IDEA project in plain Java.

![alt text](/doc/plugin_architecture.png "Plugin architecture")

Each colored box in the picture represents a module (or a library).
Black solid arrows represent dependency relationships between modules.
This relationship is, of course, transitive, but inside MPS it means that all dependencies of dependencies need to be explicitly referenced as well.
Using the gray dotted lines, we have expressed references between MPS modules and their IDEA counterparts (dotted gray lines).
All MPS modules that are pictured as light yellow do not contain any BaseLanguage code and only import Java code from the IDEA project into MPS.

### The Model module

The Model module holds no logic, only a set of Rule classes that are used across the whole plugin.
These are the classes, in which we represent the grammar after we parse the ANTLR AST.

The Java code of this module is referenced by the **premun.mps.ingrid.model** solution, which is the MPS counterpart of this module.

### The Parser module

First, the Parser module contains a parser of the ANTLR v4 notation that was automatically generated using the ANTLR library.
Then, together with the ANTLR library, it is able to read an ANTLR v4 grammar file and construct its AST.
Second, the module contains some logic that will translate the ANTLR AST into our own data structure, using Rule classes from the Model module.
During this process, it simplifies the structure and throws away some parts of the ANTLR v4 grammar that we do not need.

The Java code of this module is referenced by the **premun.mps.ingrid.parser** solution, which is the MPS counterpart of this module.

### The Library module

The Library module is not written and maintained in IDEA but is written in BaseLanguage and developed inside MPS.
As stated above, usage of the MPS API is practically only possible using BaseLanguage.
The Library module contains absolute minimum necessary to access this API.
Basically, it contains a set of helper classes that make an adapter (or a facade) of the MPS API for our Java code.

Upon compilation of the Library module inside MPS, Java code is produced (in the picture labeled as "Library out"), but it is a computer generated and not human readable code.
We can, however, call methods of this Java code from the Importer module, which is everything we need.

### The Importer module

The Importer module is by far the most interesting and complex one.
It contains logic for generation of the final MPS language.
It uses the Parser module to mine the grammar representation and then, using helper classes from the Library module, it constructs all the elements (concepts and aspects) of the MPS language.
The module also contains the initial import form, which the user is shown at the beginning of the import process.

The import process is further divided into several import steps and that is also the way, in which the code of this module is organized.
The Java code of this module is referenced by the **premun.mps.ingrid.importer** solution, which is the MPS counterpart of this module.

### The Plugin module

The Plugin module is the final piece that enables us to add a menu item inside MPS and run the code.
It is a special kind of an MPS solution --- a plugin solution --- and can be found under the name **premun.mps.ingrid.plugin**.
It adds a menu item called *Import ANTLRv4 Grammar* and places it inside the *Tools* menu.
Upon clicking, it only calls the Importer module and begins the import process.
It supplies the Import module with important handlers so that the module can later create language inside the currently opened MPS project.

### External dependencies

- **ANTLR.jar** - An external library, the ANTLR parser, that allows us to build and walk the AST of any ANTLR v4 grammar.
- **Java Swing** - Swing was used for creating the initial import form, which the user is shown at the beginning of the import process.
- **MPS libraries** - The Library module is using the MPS API to create language elements. The Java code that is generated out of the Library BaseLanguage code can be also compiled inside IDEA, but a set of MPS libraries needs to be referenced from within the IDEA module.

### The Build solution

The MPS project also contains a *Build solution*, which enables us to transform the plugin into an installable package.
The output of this build process is a package in the form of a zip archive, containing all dependencies.
This archive can then be permanently installed inside any MPS instance.

### Tests

There are also some unit tests, supplied together with the IDEA project.
They mostly test parsing of the grammar file, flattening lexer rules and constructing regular expressions.

There are no tests needed for the Model module since there is no logic to test.
It was not possible to write tests for the Importer module because a very extensive mocking of MPS API libraries would be needed.
This presents a space for improvement since it is possible to write tests inside MPS, but the author of this thesis hadn't known that and early structure of the plugin code wasn't even enabling testing.
This early plugin structure was much different from the final one.
The plugin was heavily refactored in the final stage so that setting up the development environment is easier and building of the IDEA plugin is possible.
