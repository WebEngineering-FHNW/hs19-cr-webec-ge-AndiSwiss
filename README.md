# WebEngineering Module, Graded Exercise

## Commit Proposal

#### Project Idea Short Description: 

This project is about creating a portfolio page for my personal website. It will be realized as a CMS-system in Grails, where I (or possibly other users) can log in online and add new projects to be displayed in the portfolio page.

#### Planned Core Functionality:

- Database, which will contain the objects "project"
- Initially, each project contains the two following elements
  - title
  - description
- Front-End: Shows the project (initially the title and description of each project in the database)
- Back-End: The owner of the CMS can log in and edit/add/delete projects

#### Possible Extensions (subject to change):

- Expand object "project" with:
  - Link (clickable)
  - Project picture (including picture-upload)
  - Other (maybe optional) fields
  - Multiple project pictures, with gallery functionality in the front-end
- Include services:
  - If the provided link is a GitHub-Link, automatically show the last commits. API: https://developer.github.com/v3/repos/commits/
  - Generate PDF-function:
    - Generates a PDF per project (or all projects). Evaluate best API from https://rapidapi.com/blog/top-pdf-apis-life-easier/ or other source
    - Including a generated QR-Code printed on the PDF containing the link back to this page, e.g. with the following API: http://goqr.me/api/


## Project confirmation

I said _short description_... :wink:. You might start.

## Project delivery <to be filled by student>

#### Start the project: 
`grailsw run-app`
Logins available:
user (pw: user) -> let's you see just the front-end
admin (pw: admin) -> let's you see the front-end and the back-end 
(with the red 'BACK-END'-button in the menu)

#### Test the project:  
`grailsw test-app`

#### Hand-written, static HTML (project description)
[./index.html](./index.html) in the root-folder

#### External contributions:
I used a free CSS template and adopted it to my needs. See full description, source and a full file list of the used template on the
header of [.grails-app/assets/stylesheets/style.css](https://github.com/WebEngineering-FHNW/hs19-cr-webec-ge-AndiSwiss/blob/master/grails-app/assets/stylesheets/style.css)
See also commit [03b7a39 "EXTERNAL resources marked as such:..."](https://github.com/WebEngineering-FHNW/hs19-cr-webec-ge-AndiSwiss/commit/03b7a39805f1721970e458a655b4b539598830dc)

#### I'm particular proud of:
Even though I could not implement many of the desired features of my commit proposal in the section "Possible Extensions (subject to change)", I was able to 
implement many features. It was very time consuming and difficult to integrate the CSS template to work with grails and to finally really show the projects.
Most interesting was the part where I could finally get the category filter to work (the buttons where you can filter my projects by "Group work", "Indvidual work" and so on.

#### Other comments:
**Set Java level to 12.xxx** If you use Java 1.8, there is a weird behaviour: each time when build.gradle is executed, 
your Java level is automatically set to 11, which is not really working. 

**Security** I tried to NOT secure the front end (the main page), meaning you can access without a login. Only the back-end (where you can CRUD the projects) should
be secured for admin-access. After more than 1-2 hours of trying, I give up; I could not find any possible solution.
However, if I would want this project to be my actual homepage, this for sure would have to work.

## Project grading 

< to be filled by lecturer>
