package exercise

class Project {

    String title
    String description
    String link
    Date date
    String pictureName
    String technologies

    // Categories for the front-end filter of the projects.
    // These are individual boolean values, since a multiple selection is possible
    Boolean cat_group_work
    Boolean cat_individual_work
    Boolean cat_ui_ux
    Boolean cat_core_programming



    static constraints = {
        title(maxSize: 255)
        title(blank: false)
        link(url: true)
        link(nullable: true)
        pictureName(maxSize: 255)
        technologies(maxSize: 255)
    }

    @Override
    String toString() {
        return "$title ($description)"
    }

    def getCategory() {
        StringBuilder sb = new StringBuilder()
        if (cat_group_work) sb.append(" cat_group_work")
        if (cat_individual_work) sb.append(" cat_individual_work")
        if (cat_ui_ux) sb.append(" cat_ui_ux")
        if (cat_core_programming) sb.append(" cat_core_programming")
        return sb.toString()
    }
}
