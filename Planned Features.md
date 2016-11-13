# Planned Features
- Plugin API
  - Plugin Description
    - Plugin Name
    - Plugin Group/Category (e.g. FLAP)
    - Brief Description
    - Version
    - Author
    - Etc.
  - Graph Description
    - Graph Type
    - Node Types
      - General Properties
      - Visual Properties
      - Private Properties?
    - Edge Types
      - General Properties
      - Visual Properties
      - Private Properties?
  - Interpreter
    - Init Function
      - Can be minimal
    - Run Function [Optional]
      - Step function can be used in place of this
    - Step Function
    - Reverse Step Function [Optional]
    - Debug [Optional]
  - Menu Hooks [Optional]
  - Import/Export Behavior [Optional]
    - Primarily for JFLAP
    - Can also be used for .dot files?
- Graph Editor
  - Load graph from file
  - Draws nodes and edges
  - Captures Mouse Input
    - Consider capturing stylus input as well
  - Supports modes
    - Selection
      - Selected component will bring up properties panel
      - Support for selecting multiple components?
    - Edit
      - Adds nodes/edges to graph
    - Zoom
    - Pan
- Main Menu
  - File
    - New
    - Open File
    - Open Directory/Folder
    - Open Recent
    - Save File
    - Save File As
    - Save All
    - Preferences
      - User Preferences
      - Workspace Preferences
    - Import
    - Export
    - Revert File
    - Close File
    - Close Folder
    - Exit
  - Edit
    - Undo/Redo
    - Cut/Copy/Paste
    - Select All
    - Delete Selected
    - Auto Arrange?
  - Graph
    - Run
    - Step
    - Debug
    - Test
    - [Menu Hook Items from Plugin]
  - View
    - Files Panel
    - Components Panel
    - Properties Panel
    - Input/Output Panel
    - Unit Test Panel
    - Debug Panel
    - Zoom In/Out
    - Reset Zoom
    - Center Graph
  - Help
    - About
    - Documentation
- Document Panel
  - Contains tabs for open documents
    - Each open document will contain a Graph Editor component
  - Can be split to show multiple open documents
  - Tabs/Files from Files Panel can be dragged and dropped to one of the edges to enable split view
- Files/Project Directory Panel
  - Groups files into what is available in the directory and what is actively open
  - Can create files and directories from the panel
  - Shows which files have pending changes to be saved
- Components Panel
  - Groups components into nodes and edges
    - Components can be dragged and dropped onto the graph editor
      - The previously dragged component will be set as the active component for Edit Mode
        - A single node and a single edge can both be simultaneously active
  - "General" groupings
    - Selector for selecting components on the editor
    - Eraser for deleting components with the mouse (can also select components and use delete key)
    - Pen for freehand
      - Circle gesture for drawing nodes (actively selected node will be drawn; popup to set active node will show in case it is unset)
      - Line gesture from node to node will draw edge (line gestures must begin and end at a node)
    - Magnifying Glass for Zoom
    - Hand for pan
- Properties Panel
  - Displays general component properties defined by loaded plugin
    - Be sure to include component type (so it can be changed from here)
  - Displays visual properties
- Input/Output Panel
  - REPL flow
- Unit Testing Panel
  - Inputs
  - Expected Outputs
  - Result
- Debug Panel
  - What?
- CLI
  - Yes.



# Prototype

## MVP

- Graph editor
    + Ability to draw nodes and edges.
    + Edges connect between nearest point on nodes.
    + Should be able to delete nodes and edges.
- Properties
    + Able to edit properties of nodes and edges by selecting them.
    + Set start/end for nodes.
    + Set expected input for node.
- Interpreter
    + Interpret a DFA
    + Ask user for input and pop up true or false if accepted.
    + Able to handle binary strings of 1s and 0s.

## Optional Features

- Ability to move nodes after placement.
- Saving and loading graph from file.
- Detect when a new node is given as the start node and remove previous node's start property.
- Ability to handle non-binary strings.
- Structure IO as REPL.