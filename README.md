# **Work Buddy**
## **Capstone Project by Arielle Gironza**

[**Link to GitHub**](https://github.com/akgironza/capstone-work-buddy) 
[**Link to Deployed Site**](https://capstone-work-buddy.vercel.app/) 
[**Link to Trello**](https://trello.com/b/H5RhqRA5/capstone-ga-seir)

## Project Description
An app for users to efficiently track their tasks at work to improve productivity and track value add of their work. Users log and track the status of weekly to-dos, follow-ups, unplanned asks, and weekly accomplishments. 

## Technologies Used
HTML, CSS, JavaScript, TypeScript, Next.js, Prisma, tRPC, PostgreSQL, PlanetScale

## Entity-Relationship Diagram
![Picture of ERD](/CAPSTONE-files/data_model_v2_ga-seir.png)

## List of Backend API Routes

### ROUTES
|ENDPOINT|METHOD|PURPOSE|
|--------|------|-------|
|/thing|GET|Index - Show all things|


## List of Endpoints/Routes
|PATH|METHOD|PURPOSE|
|--------|------|-------|
|/thing|GET|Index - Show all things|
|/thing|GET|New - Render form to create a new thing|
|/thing/:id|DELETE|Destroy - Delete a thing|
|/thing/:id|PUT|Update - Update a thing|
|/thing|POST|Create - Create a new thing|
|/thing/:id|GET|Edit - Render form to update a thing|
|/thing/:id|GET|Show - Show one thing|


## Mockup of User Interface
### **Desktop Views**
![Desktop view of Index page]()
![Desktop view of Show page]()

### **Mobile Views**
![Mobile view of Index page]()
![Mobile view of Show page]()