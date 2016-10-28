---
title: "Project: Sinap Editor"
author:
- Sheyne Anderson
- CJ Dimaano
- Dyllon Gagnier
- Daniel James
---


\newpage

# Executive Summary

## Problem Definition

Many concepts within computer science and without can be easily modeled as some number of objects (nodes) which are interconnected to one another through relations (edges). See figure 1 for an example of a graph. By modeling problems in this fashion using mathematical graphs, it becomes much easier to analyze the problem at hand due to the expressiveness of graphs from an analytical perspective as well as being able to have a pictorial representation. Unlike text, graphs need not represent flow through a system linearly and can instead model more complex flows much more easily that may have many paths.

![Example of a graph.](pictures/example_graph.pdf){ width=2.5in }

However, while there are countless tools for manipulating, analyzing, executing, and displaying textual data, there are much fewer tools for dealing with graphs despite their usefulness. Therefore, 2graphic will work to create a set of interrelated tools that will work together to provide an integrated development environment (IDE) for working with these graphs.

## SINAP Architecture

While Sinap does seek to be a general purpose IDE for manipulating and working with graphs, it is specifically focused upon education, and particularly on teaching various models of computing such as turing machines, push down automata, and state machines. Therefore, the formal languages and automata plugin (FLAP) will be a key series of components in the Sinap project. Additionally, 2graphic is planning on implementing a neural networks plugin that will serve both as an independently useful component as well as demonstrating the generality of Sinap in working with different kinds of graphs.

It is key to note that both plugins are indeed plugins to Sinap and that the core program merely provides functionality that plugins may utilize to design, manipulate, and analyze various kinds of graphs as defined by the plugins. The two primary components that will be controlled and supplied through plugins will be an interpreter for carrying out operations on the graphs as well as a meta language which will be used by the editor component of Sinap to render and manipulate the graph. The interpreter is invoked by the editor component which may be fed inputs as requested by the interpreter and will produce some output. See figure 2 for the flow of the architecture.

![Sinap architecture](pictures/architecture.pdf){ width=70% }

# Background
## Domain Specific Graphic-Based Languages

A domain specific graphic-based language (DSGL) is a programming language that can be described in terms of nodes and edges that is created to solve a problem in a specific domain. A DSGL consists of a grammer and an interpreter. The grammar is a description of valid programs for the interpreter and is written in the graph meta-language. The interpreter runs valid graphs by feeding them input and producing output.

For example, the traditional circuit drawings used in electrical engineering present one example of a DSGL. In this instance, the nodes would be the various electrical components such as resistors, capacitors, and inductors while the edges represent wires connecting the components. Some inputs that might be used in this system could be an input voltage/current in the case that the circuit being represented was part of a larger circuit. Operations that can be performed on circuits might be simply reporting a particular output voltage/current at particular points, evaluating the stability of the system, etc.

## Idea Space

Sinap bears a passing resemblance to such diverse products as [JFLAP](http://www.jflap.org) and [NI LabView](http://www.ni.com/labview/). LabView is a great example of a general purpose graph-based programming environment. Sinap will allow the creation and maniplation of graphs for laguages that are not applicable to general purpose programming and as such are able to more efficiently express ideas within their specific domains. Sinap will not be a direct competitior with LabView.

JFLAP is an environment in which users can create various formal machines, languages, and automata. It allows the user to step through the interpretation of these systems and convert between various classes of machines.

JFLAP provides an example of why Sinap is necessary. JFLAP is a great idea with some solid business logic, but is a nightmare for the end user. Sinap will allow the seperation of the core buisness logic of JFLAP from the tedius task of building a GUI to expose the creation and simulation of these machines. By providing all the boilerplate components for graph editing and input/output control, Sinap will allow for an implementation of JFLAP's core features in a way that is more maintainable by allowing the logic to be focused on a single task: interpretation of graphs.

In general Sinap will allow the creation of interpreters for graph-based languages in a generic way that keeps a strict separation of concerns with regards to execution and user input. It will make the design of graph specific laguage interpreters simpler, faster, and more robust. For the end user this means that they will experience a consisitant environment for developing programs in various DSGLs.

## Required Technology
We will take advantage of modern web technologies to create a cross-platform application. This will allow us to target all possible users without having three separate projects for UI code. Sinap will be a stand-alone and static application, requiring no backend features. We will leverage [Electron](http://electron.atom.io) or a similar project to bundle our application for all major operating systems. Another advantage of using Electron is the ability to access raw hardware and the filesystem. These features are not easily accessible in traditional web applications in the browser due to privacy concerns.

In order to create maintainable and readable code, we will use [Typescript](https://www.typescriptlang.org) for the majority of our project. Typescript is a super-set of Javascript with optional types and support for ES6 features. We will leverage [Angular 2](https://angular.io) to simplify UI development and help break the project up into modular components.

Sinap will be free and open source. Therefore, we have been careful to verify that the existing technologies we are using will have appropriate licencing.

## Software Requirements
Because Sinap will be developed using Electron, it will be bundled as an installation package for each major OS: macOS, Linux, and Windows. Users will only need to download and run the appropriate installer for their OS in order to be able to use Sinap.

# Requrements Analysis (2-3 pages)
> In this section of the document, you will define three things. 1) What are the major components of the software system (what is the software architecture)? 2) What component is each team member primarily responsible for. 3) What features will the software have.

## System Architecture
> A written description of each major software component that your system will have. This write-up should be a high-level description of the modules your system will include and explain how those components will function together. You should clearly indicate which modules you'll be developing yourselves and which modules will be pre-existing packages or programs. You may also wish to include a system design picture/diagram showing how these modules will communicate and be integrated.

## Personnel
> For each major software component in your system, indicate which person will be responsible for its completion and briefly describe why that person is qualified to be responsible for it (i.e., explain the relevant background that the person has which makes that person particularly well-suited to create that component). Everyone on the team should have responsibility for *at least* one component. If a component for which a student is responsible does not come to fruition, the grade for that individual will be lowered.

## System Features
> List the features and functionalities that you would like your system to have by the end of the semester. Rank each feature by its relative priority (see below). Note, features are related to components, but are more specific. For example, networking is a component, but the ability to transmit streaming video is a feature.

### Rank 1: Bare Essentials
> Without these features and functions, your system just wouldn't work at all. For example, for multi-person games, networking capabilities are essential.

> Failure to complete these would result in a non-working system with little to no functionality or worth to the user.

### Rank 2: Planned Features
> Features and functions that you expect your system to have by the final deliverable demonstration (in addition to the bare essentials).

> Completion of these features would result in a working (if minimal) system. Most companies would consider this somewhere between an Alpha and a Beta system.

### Rank 3: Bells and Whistles
> Features and functions that would be super cool and you would love to have in your system, but realistically you're not sure whether you'll have the time to get all of them done.

>Rank 1 features are required to get a passing grade on your project. Rank 2 features must be achieved to be considered for a B grade. Rank 3 features will enhance your grade further and put you into A grade territory. Please note these are only guidelines, and in order to receive an A grade your project must impress us and go well above and beyond the basic requirements.

> **Polished vs Feature-Rich**. At the end of the day, you may have to decide between producing a very polished project, with fewer features, or a feature rich project that is "ragged" around the edges. It is in your best interest to provide very clean, good looking, useful functionality, even if this results in less functionality.

# Software Engineering Tools and Techniques (1 page)
> Your document should list what software engineering tools and techniques you plan to use, (e.g., versioning, bug-tracking, video conferencing, agile, scrum, stand-up meetings, etc.).

# Timeline (1-2 pages)
> Create a schedule that lists the individual goals for each team member for each week of the semester. Create a matrix with one column per team member, and one row for each week in the semester. Inside each cell should be a specific description of what that person is expected to accomplish during that week. It may be helpful to list major benchmarks as well, where that makes sense (e.g., indicate when you expect the database to be fully functional).

> Most of you will feel as though you are guessing -- and that's ok! You will not be held to this exact schedule. But it is extremely useful to do your best to create a realistic schedule now to get experience in planning long-term projects. Equally important, creating this schedule will force you to think about (1) the order in which things need to be done, (2) how long you expect various phases to take, and (3) what you should expect to have accomplished at various points in the semester. This will serve as a guide to help you evaluate your progress during the semester and quickly recognize if things are going much slower or faster than you anticipated.

# Appendix A: UI Sketches
> A set of sketches showing the final projected look of the project, annotated with how the user will interact with the system.

# Appendix B: Use Cases

## Writing a Graph

A models of computation student will select a type of automata (such as a pushdown automata) and then will design a graph corresponding to this type of computation, the input functionality adapting depending on the type of graph selected.

### Steps

1. User selects to create a new graph type (such as a pushdown automata).
2. The editor populates with various graph type specific components (such as initial/final states).
3. User drags and drops components to create a computation graph.
4. Editor populates with the components as determined by the user.

## Adjusting Properties of Graph Elements

Graphs may have special properties associated with each node as specified by plugins. Users will be able to set and adjust these properties.

### Steps

1. User selects either a node or edge.
2. Sinap will display the current properties of the selected component.
3. User selects a property to adjust.
4. Sinap will present a specialized interface depending on the type of the property (i.e. things like date pickers and file dialogs).
5. User enters in desired input value.
6. Sinap validates type of input.
7. Plugin validates input for correctness and consistency.
8. Property is updated in graph for particular component.

### Setting the properties of an edge

## Running an Interpreter

A Sinap programmer will run an interpreter upon a computation graph that will accept some input and output some result (perhaps whether the input string is accepted by the language defined by the graph in the case of the formal languages and automata plugin (FLAP)).

### Steps

1. User opens/creates a graph in Sinap as covered in Use Case 1.
2. User selects to see which interpreters are available for the particular type of graph.
3. Sinap presents known interpreters associated with that particular type of graph.
4. User selects one of these to run on the current graph.
5. Sinap begins execution of the interpreter.
7. Interpreter requests Sinap to get input from user.
6. User is asked for input by Sinap to feed the interpreter.
7. User inputs desired input as interpreter to program.
8. Program executes given the context of the input and graph.
9. The result of the computation is displayed to the user.

## Feeding Images to a Graph

While editing certain kinds of graphs, a user will feed images to the graph. For this use case, a user already has a graph open and is in editing mode.

### Steps

1. User changes focus to the I/O view.
2. User selects the interpreter they would like to use for the graph (if multiple options are available)
3. User is presented with the expected input for the graph
    a. This may be images  *TODO, HOW DO WE EXPRESS THIS WELL?*
    b. if so, the user will input either an image or a list of images.
        - this depends on the interpreter
5. User presses the run button
6. Output is displayed *TODO, HOW DO WE EXPRESS THIS WELL?*

## Debugging a Program

A Sinap programmer will select some number of nodes (which represent program state) as debug points, begin running a program, and then the program will halt once that node is reached and the entire current program state will be displayed to the user.

### Steps

1. User selects the debug tool.
2. User clicks on a state.
3. That state becomes emphasized in the editor.
4. User selects and then runs a program in debug mode.
5. The program halts once the selected state is reached.
6. The program emits its state to the Sinap editor.
7. The entirety of the emitted state (such as a the stack for a pushdown automata) is displayed by the editor.

## Writing Graphs on a Projector

Teachers and professors will display a graph on a large display such as a project and will edit this graph in front of an audience. All critical elements of the graph should be visible to the audience.

### Steps

1. Professor launches Sinap initially in the regular use mode and selects to create a new graph.
2. Professor selects to enter presentation mode.
3. Sinap reconfigures itself, hiding most non-critical menus and bars to maximize screen real estate.
4. Professor lectures while editing graph.

## Export Graphs to Images

A user will create a graph and export it to an image format suitable for reports and presentations.

### Steps

1. User creates a new graph or opens an existing graph.
2. User selects to export graph as an image in Sinap.
3. User selects the options associated with exporting such as type of image and resolution.
4. User selects location to save the image.
5. Sinap saves the image according to the options selected in the specified file location.

## Customized Component Look and Feel

Plugin designers will write code to specify the look and feel of both nodes and edges through a simple declarative API.

### Steps

1. Designer reads Sinap plugin documentation.
2. Designer creates custom images for nodes.
3. Designer creates a file mapping these images to node types.
4. Sinap reads the file mapping and loads the custom component pictures for the plugin.

## Beautify Graph

Users of Sinap will select to beautify a graph. Sinap will then make a best effort to modify the layout of the graph to be as easy to read and aesthetically pleasing as possible.

### Steps

1. User selects to beautify graph on the current graph being edited in Sinap.
2. Sinap determines which priorities and rules (such as preferring horizontal and vertical edges) by reading a simple declarative file provided by the plugin.
    + If no file is provided, Sinap will use a default set of rules suitable for generic graphs.
3. Based on these rules, Sinap will try to find a layout of the graph that matches these rules with as minimal modifications to the existing graph as possible.
4. Sinap updates the graph layout visually as well as in the graph model.
    + The beautification will **not** be saved until the user specifies to do so.

## Composing Graphs

A user of Sinap will be able to design small sub graphs with defined inputs and outputs that can be composed together to create more complex graphs.

### Steps

1. User creates and saves a subgraph in a particular file.
2. User creates a new graph saved to a separate file.
3. User selects the file created in step 1 and selects to import it into the current graph.
4. Sinap imports the content of the previous into the current graph.
5. A single black box component is displayed for the imported component.
5. User connects input edges and output edges going to and from the subgraph.
6. User can now run interpreters on the graph just as they could for any other graph.

## Bootstrapping Sinap

A new user (likely a student) of Sinap will download, install, and configure Sinap.

### Steps

1. User visits Sinap's home page.
2. User downloads Sinap.
    + This should take less than 10 minutes assuming a reasonable internet connection.
3. User executes standard installation steps for their particular operating system.
4. User opens Sinap for the first time.
5. User will configure Sinap to have their desired plugins.
6. Sinap downloads and installs these plugins.

## Installing a Plugin

A user of Sinap will select and install a Sinap plugin from a git repository.

### Steps

1. Open Sinap
2. Select to install a plugin.
3. User inputs a path (which may be local or remote) to a git repository.
4. Sinap clones git repository if remote.
5. Sinap runs installation procedures for the plugin and then deletes the cloned repository (if the repository was not originally local).
