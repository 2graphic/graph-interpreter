# Planned Features
- Plugin API
  - Plugin Description (rank 1)
    - Plugin Name
    - Plugin Group/Category (e.g. FLAP)
    - Brief Description (rank 2)
    - Version (rank 2)
    - Author (rank 3)
    - Etc. (rank 4)
  - Graph Description (rank 1)
    - Graph Type (rank 2)
    - Node Types (rank 1)
      - General Properties (rank 1)
      - Visual Properties (rank 2)
        + included in meta (rank 3)
      - Private Properties (rank 4)
    - Edge Types (see above)
      - General Properties
      - Visual Properties
      - Private Properties?
  - Interpreter (rank 1)
    - Init Function
      - Can be minimal
    - Run Function [Optional] \(rank 2)
      - Step function can be used in place of this
    - Step Function
    - Reverse Step Function [Optional] \(rank 2)
    - Debug [Optional] \(rank 2)
  - Menu Hooks [Optional] \(rank 2)
  - Import/Export Behavior [Optional] \(rank 3)
    - Primarily for JFLAP
    - Can also be used for .dot files?
- Graph Editor (rank 1)
  - Load graph from file 
  - Draws nodes and edges
  - Captures Mouse Input 
    - Consider capturing stylus input as well (rank 3)
  - Supports modes (rank we need to discuss this further)
    - Selection 
      - Selected component will bring up properties panel
      - Support for selecting multiple components?
    - Edit
      - Adds nodes/edges to graph
    - Zoom
    - Pan
- Main Menu (rank 1)
  - File 
    - New 
    - Open File
    - Open Directory/Folder (rank 2)
    - Open Recent
    - Save File
    - Save File As
    - Save All
    - Preferences (rank 3)
      - User Preferences
      - Workspace Preferences
    - Import (rank 3)
    - Export (rank 3)
    - Revert File (rank 3)
    - Close File
    - Close Folder
    - Exit
  - Edit
    - Undo/Redo (rank 1.5)
    - Cut/Copy/Paste (rank 1.5)
    - Select All (rank 2)
    - Delete Selected (rank 1.5)
    - Auto Arrange? (rank 3)
  - Graph (rank 1)
    - Run
    - Step
    - Debug
    - Test
    - [Menu Hook Items from Plugin] \(rank 2)
  - View (rank 2.5)
    - Files Panel
    - Components Panel
    - Properties Panel
    - Input/Output Panel
    - Unit Test Panel
    - Debug Panel
    - Zoom In/Out
    - Reset Zoom
    - Center Graph
  - Help (rank 2)
    - About
    - Documentation
- Document Panel (rank 2)
  - Contains tabs for open documents
    - Each open document will contain a Graph Editor component
  - Can be split to show multiple open documents
  - Tabs/Files from Files Panel can be dragged and dropped to one of the edges to enable split view
- Files/Project Directory Panel (rank 2)
  - Groups files into what is available in the directory and what is actively open
  - Can create files and directories from the panel
  - Shows which files have pending changes to be saved (rank 1)
- Components Panel (rank 1)
  - Groups components into nodes and edges
    - Components can be dragged and dropped onto the graph editor
      - The previously dragged component will be set as the active component for Edit Mode (rank 2)
        - A single node and a single edge can both be simultaneously active (rank 2)
  - "General" groupings (we're still arguing about this)
    - Selector for selecting components on the editor
    - Eraser for deleting components with the mouse (can also select components and use delete key)
    - Pen for freehand
      - Circle gesture for drawing nodes (actively selected node will be drawn; popup to set active node will show in case it is unset)
      - Line gesture from node to node will draw edge (line gestures must begin and end at a node)
    - Magnifying Glass for Zoom
    - Hand for pan
- Properties Panel (rank 1)
  - Displays general component properties defined by loaded plugin
    - Be sure to include component type (so it can be changed from here) (rank 1)
  - Displays visual properties (rank 2)
- Input/Output Panel (rank 0)
  - REPL flow
- Unit Testing Panel (rank 2)
  - Inputs
  - Expected Outputs
  - Result
- Debug Panel (rank 2.2)
  - What?
- JS API (rank 2)
- CLI (rank 3)
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