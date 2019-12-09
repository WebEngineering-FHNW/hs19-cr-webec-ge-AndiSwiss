package exercise

class Project {

    String title
    String description
    String link
    Date date


    static constraints = {
        title(maxSize: 255)
        title(blank: false)
        link(url: true)
    }

    @Override
    String toString() {
        return "$title ($description)"
    }
}
