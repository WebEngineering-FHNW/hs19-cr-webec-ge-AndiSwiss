package exercise

import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        if (Environment.current == Environment.PRODUCTION) {
            return
        }

        // TODO: .clearTime() is not compiling (as seen in FHNW_webeC_RoomReservation-project
//        Date today = new Date().clearTime()
        Date today = new Date()

        // TODO: also the minus is not working, maybe also because of the missing .clearTime()
//        save(new Project(title: "Project 1", description: "Nice project", link: "https://andiswiss.ch/project1", date: today - 365))
        save(new Project(title: "Project 1", description: "Nice project", link: "https://andiswiss.ch/project1", date: today))
        save(new Project(title: "Project 2", description: "Another project", link: "https://andiswiss.ch/project2", date: today))
        save(new Project(title: "Project 3", description: "Yet another project", link: "https://andiswiss.ch/project3", date: today))
    }

    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
