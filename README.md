# RPA Programming Best Practices

As companies increasingly realize the benefits of automation, the need for robotic process automation (RPA) developers will continue to rise.

There is already greater demand from business – currently more demand than supply – for developers trained in RPA programming. While expectations may differ from company to company, a handful of best practices are essential to the viability of the code. The following is a list of RPA programming best practices that should be applied both vigorously and flexibly by RPA developers.
- taken from https://www.cai.io/resources/thought-leadership/eight-best-practices-for-rpa-developers

## 1. Begin with a High-Level Framework
The most successful automation originates from good design. Before development begins, the developer should understand the specifics of the manual process. Make sure the process design document (PDD) captures the process at both the workflow and keystroke level. When a developer uses the PDD as a platform from which to design the automated solution, it guarantees all automation is created in a consistent and organized way. The framework begins with a high-level view and then allows developers to go deeper into the precise details of each process. Most processes follow a set of standard sequences, such as initialization, cleanup, processing, and error handling. These components should be included in the PDD to serve as a starting point for automating nearly all processes.

## 2. Break Down Processes into Specific Workflows
Some business processes are complex, containing many tasks, each with multiple steps. For example, when an accountant enters invoices into a web-based app, he or she must enter fields from five different invoices, each with different steps that accomplish a unit of work. When building automation, each separate task should have its own dedicated workflow. This enables independent testing of components and allows multiple RPA developers to work on a single process. Be mindful when choosing the layout of each component. Typically, the logic and flow of a process stay in a flowchart, while the navigation and data manipulation are in sequences.

## 3. Choose Activities Carefully
RPA developers must choose from a wide array of activities for handling the many process steps in automation. Picking the most appropriate activities has a big impact on the visual design and readability of a workflow. For other developers to be able to read, interpret, and follow the workflows created, a developer should strive to make the workflow as easy as possible to understand. This ensures a smooth transition of automation from one developer to another.

## 4. Increase Workflow Readability
Data comes in two forms: arguments and variables. Arguments are used to pass data from one workflow component to another and can be accessed throughout the workflow file. Variables can be used only inside a single workflow file and should be kept in the innermost scope to lessen clutter. To accurately define workflow files, activities, arguments, and variables, give the workflow files meaningful names – and use comments and annotations to describe in more detail what is going on in a section of the automation, such as what arguments are being passed in and out of invoked components. To avoid confusion, add comments only to describe sections of the code that are not intuitive.

## 5. Create Configurable Files
Automation should allow process owners to make changes to automation variables without an RPA developer's intervention. By putting change-prone settings inside a configurable file, the developer gives the process owner the flexibility to change these values as desired. A developer should always avoid hard coding external settings, such as file paths, URLs, document names, logins, and email recipients.

## 6. Store Reusable Components
Many processes share common steps, such as logins, emails, and data validation. These common workflows should be sharable between automation. Creating a library to store all reusable automation components will not only make your ongoing development faster but will also make it easier to support your automation in production in the future.

## 7. Add Logging into the Workflow
Logs are time-stamped files that contain informational events, error alerts, and warning messages relevant to the automation. The developer should add a logging step to the workflow intermittently to help document and tell a story of what the RPA bot has completed. A log should record what the bot did and why it did it as well as events that are vital to the workflow, such as log-in status, transition item number, ID numbers, applications opened or closed, and all errors and business exceptions. A log can be used for auditing purposes, it can be sent to a digital supervisor for analysis, and it can provide business-relevant data about the long-term impact of RPA.

## 8. Build in Error Handling
Errors like failed logins, nonexistence directories, or no more disk space can bring automation to a standstill. Exceptions like a timed-out application, bad data, or a new screen within the application also can stall automation. This is why workflows should contain error handling. Depending on what type of exception occurs – whether it is a business or application exception – an RPA programmer should code the automation to handle the exception and react accordingly. For example, if a business exception occurs on queue item
