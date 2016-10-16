---
title: Executive Summary of SINAP
author: Dyllon Gagnier
---
# Executive Summary

## Problem Definition

Many concepts within computer science and without can be easily modeled as some number of objects (nodes) that are interconnected to one another through relations (edges). By modeling problems in this fashion using mathematical graphs, it becomes much easier to analyze the problem at hand due to the expressiveness of graphs from an analytical perspective as well as being able to have a graphical (in the pictorial sense) representation. Unlike text, graphs need not represent flow through a system linearly and can instead model more complex flows much more easily.

However, while there are countless tools for manipulating, analyzing, executing, and displaying textual data, there are much fewer tools for dealing with graphs despite their usefulness. Therefore, 2graphic will work to create a set of interrelated tools that will work together to provide an integrated development environment (IDE) for working with domain specific graphical languages (DSGLs).

### Domain Specific Graphical Languages

A DSGL is almost exactly what was described above except that instead of just having a graph as a visual representation, a DSGL defines both the type of valid graphs in the language (such as undirected vs directed, whether the graph has different types of nodes such as start nodes or final nodes in automata, etc.) as well as having some set of operations that can be performed on the graph, potentially with some external input and producing some output.

For example, the traditional circuit drawings used in electrical engineering present one example of a DSGL. In this instance, the nodes would be the various electrical components such as resistors, capacitors, and inductors while the edges represent wires connecting the components. Some inputs that might be used in this system could be an input voltage/current in the case that the circuit being represented was part of a larger circuit. Operations that can be performed on circuits might be simply reporting a particular output voltage/current at particular points, evaluating the stability of the system, etc.

## SINAP Architecture

While SINAP does seek to be a general purpose IDE for manipulating and working with DSGLs, it is specifically focused upon education, and particularly on teaching various models of computing such as turing machines, push down automata, and state machines. Therefore, the formal languages and automata plugin (FLAP) will be a key series of components in the SINAP project. Additionally, 2graphic is planning on implementing a neural networks plugin that will serve both as an independently useful component as well las demonstrating the generality of SINAP.

It is key to note that both plugins are indeed plugins to SINAP and that the core program merely provides functionality that plugins may utilize to design, manipulate, and analyze various kinds of graphs as defined by the plugins. The two primary components that will be controlled and supplied through plugins will be an interpreter for carrying out operations on the graphs as well as a meta language which will be used by the editor component of SINAP to render and manipulate the graph. The interpreter is invoked by the editor component which may be fed inputs as requested by the interpreter and will produce some output.
