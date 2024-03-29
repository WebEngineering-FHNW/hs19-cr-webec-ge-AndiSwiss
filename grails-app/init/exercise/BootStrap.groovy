package exercise

import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->

        // If you want to use relative dates, you can use this like the following:
        Date today = new Date().clearTime()
        // because of the .clearTime() - command, you can also calculate with the date, e.g.:
        Date yesterday = today - 1

        // Date-pattern for using the SimpleDateFormat(...).parse(...):
        def pattern = "yyyy-MM-dd"

        new Project(title: "Sudoku Solver",
                link: "https://github.com/AndiSwiss/Sudoku",
                description: "Before starting studying information technology at FHNW, I wanted to create a Sudoku " +
                        "solver. It works for most sudokus and get's the solution quite fast. The app does not have " +
                        "yet a GUI; terminal only.",
                technologies: "Java",
                date: new SimpleDateFormat(pattern).parse("2018-03-11").clearTime(),
                pictureName: "project_sudoku.png",
                cat_group_work: false,
                cat_individual_work: true,
                cat_ui_ux: false,
                cat_core_programming: true).save()

        new Project(title: "Project IP12 - Webshop",
                link: "https://web.fhnw.ch/technik/projekte/i/ip219vt/webshop_2/index.html",
                description: "This is main project in my studies at FHNW during my 1st and 2nd semester.",
                technologies: "PHP, JavaScript, Laravel, ...",
                date: new SimpleDateFormat(pattern).parse("2018-09-13").clearTime(),
                pictureName: "projekt_ip12_webshop.jpg",
                cat_group_work: true,
                cat_individual_work: false,
                cat_ui_ux: true,
                cat_core_programming: false).save()

        new Project(title: "Nonogram Solver",
                link: "https://github.com/AndiSwiss/Nonogram",
                description: "While studying information technology at FHNW, I also wanted to create a Nonogram " +
                        "solver. But this time including a GUI.",
                technologies: "Java, Processing 3",
                date: new SimpleDateFormat(pattern).parse("2018-12-09").clearTime(),
                pictureName: "project_nonogram.png",
                cat_group_work: false,
                cat_individual_work: true,
                cat_ui_ux: true,
                cat_core_programming: true).save()

        new Project(title: "ChatClient 'AChat'",
                link: "https://github.com/AndiSwiss/FHNW_OOP2_ChatClient",
                description: "In 'object oriented programming 2' at FHNW, I programmed this chat client, which could " +
                        "communicate with all other clients via a server which our teacher provided.",
                technologies: "Java, JavaFX",
                date: new SimpleDateFormat(pattern).parse("2019-06-16").clearTime(),
                pictureName: "project_chatclient.png",
                cat_group_work: false,
                cat_individual_work: true,
                cat_ui_ux: true,
                cat_core_programming: true).save()

        new Project(title: "Project IP34 - Jim",
                description: "This is main project in my studies at FHNW during my 3rd and 4th semester.",
                technologies: "Flutter, Dart, ...",
                date: new SimpleDateFormat(pattern).parse("2019-09-18").clearTime(),
                pictureName: "project_ip34_jim.png",
                cat_group_work: true,
                cat_individual_work: false,
                cat_ui_ux: true,
                cat_core_programming: true).save()

        // Or different way of defining a project:
        save(new Project(title: "webeC project",
                description: "This is a web project, which I realized in class at FHNW. With this project, I learned " +
                        "how to realize a web page based on the Grails-Framework, which uses a full MVC-structure" +
                        "and a database (full CRUD functionality).",
                technologies: "Grails, Groovy",
                link: "https://github.com/WebEngineering-FHNW/hs19-cr-webec-ge-AndiSwiss",
                date: new SimpleDateFormat(pattern).parse("2019-11-15").clearTime(),
                pictureName: "project_webec.png",
                cat_group_work: false,
                cat_individual_work: true,
                cat_ui_ux: true,
                cat_core_programming: true))


        // In production or test, this might already be in the DB
        Role adminRole = save(Role.findOrCreateWhere(authority: Role.ADMIN))
        User admin = save(new User(username: 'admin', password: 'admin'))
        UserRole.create(admin, adminRole, true)

        // Plausibility check
        assert Role.count() == 1
        assert User.count() == 1
        assert UserRole.count() == 1


    }

    static save(domainObject) {
        domainObject.save(failOnError: true, flush: true)
    }

    def destroy = {
    }
}
