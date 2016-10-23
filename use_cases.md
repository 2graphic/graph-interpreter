---
title: Use Cases
---
# Full Workflow

- Open App
- Create new of type
- Make a graph
- Make some test cases
- Run those test cases

# Testing Use Case

- Able to write a test for a formal model
- Input for uploading file

# Multiple Run

- Classify many different images
- Can also just be outputting true or false if pass test

# Step by Step Use Case

- Should be able to go back and forth
- IDE should support back step, but not necessarily FLAP

# Debugging Break Points

- Should be able to set a break point on a state
- May or may not have more complicated conditions
- Edges?

# Subgraphs

- Should be able to create files which can be combined as subgraphs

# Writing Tests

- Not necessarily a string
- More just a set of expected inputs and outputs
- Inputs and outputs are strongly typed

# Import Export

- Should be defined at both the plugin level and the global level
- JFLAP
- Powerpoint

# Package Management

- Plugins are hierarchical
- Collections of plugins make more sense than dependency manager
- Interpreters should be able to interop
- Plugin repo is rank 3

# Plugin Components

- Plugin metadata
    1. Name
    2. Kind of plugin (FLAP)
- Metalanguage Description
    1. Describes file type handled
    2. Interpreter
    3. Menu/toolbar hooks
- Interpreter
    1. "Runs" the graph
    2. Only have one
    3. Defines what inputs/outputs it does as well as the types of operations