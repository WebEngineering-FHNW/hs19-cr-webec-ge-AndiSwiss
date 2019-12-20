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
`grailsw run-app` or `./grailsw run-app` respectively

Login available: 'admin' (pw: 'admin') -> let's you also see the back-end for full CRUD operations on the projects.

#### Test the project:  
`grailsw test-app` or `./grailsw test-app` respectively

#### Hand-written, static HTML (project description)
[./index.html](./index.html) in the root-folder

#### External contributions:
I used a free CSS template and adopted it to my needs. See full description, source and a full file list of the used template on the
header of [.grails-app/assets/stylesheets/style.css](https://github.com/WebEngineering-FHNW/hs19-cr-webec-ge-AndiSwiss/blob/master/grails-app/assets/stylesheets/style.css)
See also commit [03b7a39 "EXTERNAL resources marked as such:..."](https://github.com/WebEngineering-FHNW/hs19-cr-webec-ge-AndiSwiss/commit/03b7a39805f1721970e458a655b4b539598830dc)

#### I'm particular proud of:
Even though I could not implement some of the desired features of my commit proposal in the section "Possible Extensions (subject to change)", I was able to 
implement many features. It was very time consuming and difficult to integrate the CSS template to work with grails and to finally really show the projects.
But I'm very happy with the result, because the page feels right for me.
Most interesting was the part where I could finally get the category filter to work (the buttons where you can filter my projects by "Group work", "Indvidual work" and so on.
And also finally getting the whole security-features the way I really wanted to.

#### Other comments:
**Set Java level to 12!** If you use Java 1.8, there is a weird behaviour: each time when build.gradle is executed, 
your Java level is automatically set to 11, which is not really working. Side-note: when running the project with Java 12, then
some red Warning appear when starting the application. This was happening will all our grails-application; the application should still fully work.
However, in Java 1.8, those red warnings are not shown, but then you have the previously described weird behaviour. I personally prefer some red
warnings comparing to weird behaviour :smile:, so I stay with Java 12.

## Project grading 

Sometimes less is more: you included a lot of **CSS** dependencies, making their integration difficult. Anyway the result looks really good.
Side remark: I do NOT see where `public.gsp` layout could be used.

Kindly Refer to [GradedExercise.xlsx](GradedExercise.xlsx) for grading details.

Grade: **5.8**
