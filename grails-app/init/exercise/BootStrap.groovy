package exercise

import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->
        Date today = new Date().clearTime()
        def pattern = "yyyy-MM-dd"
        Date aDate = new SimpleDateFormat(pattern).parse("2017-03-26").clearTime()

        new Project(title: "Project 123", description: "Nice project", link: "https://andiswiss.ch/project1", date: today - 365).save()
        new Project(title: "Project 6", description: "hmm", link: "https://andiswiss.ch/project6", date: today - 20).save()

        // or different way of defining a project:
        save(new Project(title: "Project 2943", description: "Another project", link: "https://andiswiss.ch/project2", date: today - 200))
        save(new Project(title: "Project 3", description: "Yet another project", link: "https://andiswiss.ch/project3", date: today -2))
        save(new Project(title: "Project 4", description: "another project", link: "https://andiswiss.ch/project4", date: aDate))
    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
