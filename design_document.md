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
