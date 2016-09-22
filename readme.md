# Graph Interpreter

It is common in CS to represent a workflow/process/algorithm as a picture. Tools such as [JFLAP](http://www.jflap.org) allow us to run those pictures. What I propose we build is a tool that can run anything from DFAs, to Turing Machines, to Neural Networks in a way that can teach about how the underlying model works and is easy to extend. All of these models have strong graphical iterpretations. 

The project would consist of three main systems. A pluggable graph drawing tool, a modular interpreter for running graphs, and a viewer for the results.

![](http://i.imgur.com/lAA1cKl.png)

We considered augmenting the existing JFLAP codebase, but after investigating the source we think it is better to start from scratch because the JFLAP codebase isn't particularly clean and we would be limited to Java. 

## Formal Systems Module

When studying formal systems, students come across various "machines", "flowchats", and "automata". At their heart these are all ways or describing a process in pictures. 

At their inception, many of these machines seemed like they most logical approach to describing computation. They were created before programming languages. They're also simple enough to reason about for the purposes of writing proofs. There exist tools to simulate Turing Machines, Finite Automata, and the like such as JFLAP. The problem is that they are clunky, not useful for TA automated tests, and are fairly ugly. 

I propose building an application (web/desktop) that can simulate these models. It would address all of the above issues, but what would set it apart is that the "interpreter" component, that is the part that executes the graph would be visible to the user and editable. 

Suppose you are learning about Turing Machines, assuming you've already loaded the graph, the following code will simulate a non-deterministic turing machine:

    class Tape(object):
        def __init__(self, src):
            ...

        def head(self):
            return self.data[self.h]

        def update(self, nv, dir):
            self.data[self.h] = nv
            self.h += -1 if dir == 'L' else 1
            if self.h == len(self.data):
                self.data.append(BLANK)
            if self.h == -1:
                self.h = 0
                self.data.insert(0, BLANK)

        def copy(self):

...

    def simulateTuring(transitions, state, accepts, tape):
        if state in accepts:
            return True

        validTransitions = (t for t in transitions if t.src == state and t.read == tape.head())
        
        for t in validTransitions:
            tape_ = tape.copy()
            tape_.update(t.write, t.move)
            if simulateTuring(transitions, t.dst, accepts, tape_):
                return True
        
        return False

Note that this is a portion of the code I wrote for 3100 to prove JFLAP had a bug.


![](http://i.imgur.com/alca96J.png)

*Example showing how a DFA module might work*

## Machine Learning

Many machine learning algorithms have nice graphical representations. Modules could be created such that people could edit the graphical representation rather than building out the model in code. 

![](http://i.imgur.com/b52MnUP.png)

*Example showing how a neural network module might work*