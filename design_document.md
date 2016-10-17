# Project: Sinap Editor 
## Team: 2graphic  
- **Sheyne Anderson**
- **CJ Dimaano**
- **Dyllon Gagnier**
- **Daniel James**

# Table of Contents
1. Executive Summary
2. Background
3. Technical Requirements
4. Requirements Analysis
	a. System Architecture
	b. Personnel
	c. System Features
		i. Rank 1: Bare Essentials
		ii. Rank 2: Planned Features
		iii. Rank 3: Bells and Whistles
5. Software Engineering Tools and Techniques
6. Timeline
7. Appendix A: UI Sketches
8. Appendix B: Use Cases

# Executive Summary
> A description of your software system aimed at non-technical readers. This summary should explain the purpose of your system, who the intended users are, what it will do, and what is especially novel or interesting about it. Pictures, while not required, are encouraged and do not count against the page limit.

> The purpose of this introduction to your idea is to clearly and succinctly describe the final goal of the project. It should list key features and components and explain why the project is interesting and worthwhile.

> When "searching for funding/approval" you have very little time/space to capture the interest of the reader. You need to concisely describe what the project will do, what need it will address, who the users will be, and why a completed project with be of benefit. You also need to convey interest, enthusiasm, and determination. You want the reader coming away from this first page eager to know more and excited about the prospects.

> This section should be one page long.

# Background
> The background and technical requirements sections should be one to three pages long.

> The purpose of the background section is to show that you have thought about the requirements of the project. The background section should include the following subsections. Feel free to elaborate up to your page limit.

## Idea Space
SINAP bears a passing resembalance to such diverse products as [JFLAP](http://www.jflap.org) and [NI LabView](http://www.ni.com/labview/). LabView is a great example of a general purpose graph-based programming environment. It does this job well, and we do not intend to compete with it. 

JFLAP is an environment in which users can create various formal machines, languages, and automata. It allows the user to step through the execution of these systems and convert between various descriptions. 

JFLAP provides an example of why Sinap is necessary. JFLAP is a very cool idea with some solid business logic, but is a nightmare for the end user. Sinap will allow the seperation of the core buisness logic of JFLAP from the tedius task of building a GUI to expose the creation and simulation of these machines. By providing all the boilerplate components for graph editing and input/output control, Sinap will allow for an implementation of JFLAPS core features that is maintainble and has a single purpose. 

In general Sinap will allow the creation of interpreters for graph based languages in a generic way that keeps a strict separation of concerns with regards to execution and user input. It will make the design of graph specific laguages simpler, faster, and more robust. For the end user this means that they will experience a consisitant environment **write more here**. 

> Who would use it?



> Similar Ideas - List and describe other programs that do things like what you want to do. Why is your idea different or better?

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
> A set of use cases from both the user point of view and if necessary, the system point of view, detailing how the software will be used. These Use Cases should refer to the UI sketches where appropriate.
