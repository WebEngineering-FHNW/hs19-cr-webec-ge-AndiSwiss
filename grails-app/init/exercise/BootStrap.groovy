package exercise

import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->
        Date today = new Date().clearTime()
        def pattern = "yyyy-MM-dd"

        new Project(title: "Project 123", description: "Nice project", link: "https://andiswiss.ch/project1", date: today - 365).save()
        new Project(title: "Project 6", description: "hmm", link: "https://andiswiss.ch/project6", date: today - 20).save()

        // or different way of defining a project:
        save(new Project(title: "Project 2943", description: "Another project", link: "https://andiswiss.ch/project2", date: today - 200))
        save(new Project(title: "Project 3", description: "Yet another project", link: "https://andiswiss.ch/project3", date: today -2))
        Date project4Date = new SimpleDateFormat(pattern).parse("2017-03-26").clearTime()
        save(new Project(title: "Project 4", description: "another project", link: "https://andiswiss.ch/project4", date: project4Date))
        Date project5Date = new SimpleDateFormat(pattern).parse("2019-11-15").clearTime()
        save(new Project(title: "webeC project", description: "This is a web project, which I realized in class at FHNW. " +
                "This was a single person assignment, so all work you see here is from me. \n" +
                "We used the technologies Grails / Groovy for this project.",
                link: "https://github.com/WebEngineering-FHNW/hs19-cr-webec-ge-AndiSwiss",
                date: project5Date))
    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
