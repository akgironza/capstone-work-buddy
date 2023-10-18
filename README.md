# **Work Buddy**
## **Capstone Project by Arielle Gironza**

[**Link to GitHub**](https://github.com/akgironza/capstone-work-buddy) 

[**Link to Deployed Site**](https://capstone-work-buddy.vercel.app/) 

[**Link to Trello**](https://trello.com/b/H5RhqRA5/capstone-ga-seir)

## Project Description
An app for users to efficiently track their tasks at work to improve productivity and track value add of their work. Users log and track the status of weekly to-dos, follow-ups, unplanned asks, and accomplishments. Within these categories, users can also assign priorities and progress status to organize their work more efficiently, as well as the value add of their work to reflect on relevance, and for later reference to quantify their contributions at their workplace.


## Technologies Used
HTML, CSS, JavaScript, TypeScript, Next.js, React, Prisma, tRPC, PostgreSQL, Neon, Tailwind, Vercel, create-t3-app
[Prisma docs](https://www.prisma.io/docs/getting-started)
[tRPC docs](https://trpc.io/docs)
[tailwindcss docs](https://tailwindcss.com/docs/installation)
[create-t3-app docs](https://create.t3.gg/en/introduction)

## Entity-Relationship Diagram
![Picture of ERD](/CAPSTONE-files/data_model_v3_ga-seir.png)


## List of Backend Routes/Endpoints
|PATH|METHOD|PURPOSE|
|--------|------|-------|
|/weeklytasks|GET|Index - Show all tasks of all types for one week|
|/weeklytasks/:group|GET|Index - Show all tasks of one type|
|/weeklytasks/:id|DELETE|Destroy - Delete a task|
|/weeklytasks/:id|PUT|Update - Update a task|
|/weeklytasks|POST|Create - Create a new task|
|/weeklytasks/:id|GET|Show - Show one task|


## List of React Routes
|PATH|METHOD|PURPOSE|
|--------|------|-------|
|/weeklytasks|GET|Index - Show all tasks of all types for one week|
|/weeklytasks/:group|GET|Index - Show all tasks of one type|
|/weeklytasks|GET|New - Render form to create a new task|
|/weeklytasks/:id|DELETE|Destroy - Delete a task|
|/weeklytasks/:id|PUT|Update - Update a task|
|/weeklytasks|POST|Create - Create a new task|
|/weeklytasks/:id|GET|Edit - Render form to update a task|
|/weeklytasks/:id|GET|Show - Show one task|


## Wireframe of User Interface
![Desktop view of Index pages](/CAPSTONE-files/capstone-wireframe-v1.png)