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
(NOTE: after running 'build.gradle', reset the java-version to 1.8 (because somehow, IntelliJ IDEA sets the java version to 11.0.3 (IntelliJ OpenJDK), and that 
produces a ton of errors. And it doesn't even recognize any Java-Syntax in the .groovy files (not even 'String'!!))

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
**Weird behaviour (other colleagues have as well):** Every time I run build.gradle, IntelliJ IDEA sets the java version to 11.0.3 (IntelliJ OpenJDK). Then I have to manually set it back to Java 1.8, otherwise I have a ton
of errors. And it doesn't even recognize any Java-Syntax in the .groovy files (not even 'String'!!). I tried many things, no success at all:
[https://stackoverflow.com/questions/27861658/how-specify-the-required-java-version-in-a-gradle-build/27861773](https://stackoverflow.com/questions/27861658/how-specify-the-required-java-version-in-a-gradle-build/27861773)
[https://discuss.gradle.org/t/how-does-gradle-determine-which-jdk-to-use/19896](https://discuss.gradle.org/t/how-does-gradle-determine-which-jdk-to-use/19896)
[https://discuss.gradle.org/t/gradle-is-not-using-correct-java-compiler/1794](https://discuss.gradle.org/t/gradle-is-not-using-correct-java-compiler/1794)
[https://discuss.gradle.org/t/how-does-gradle-determine-which-jdk-to-use/19896](https://discuss.gradle.org/t/how-does-gradle-determine-which-jdk-to-use/19896)
[https://discuss.gradle.org/t/how-to-specify-java-version-when-running-gradle-build/17489](https://discuss.gradle.org/t/how-to-specify-java-version-when-running-gradle-build/17489)


## Project grading 

< to be filled by lecturer>
