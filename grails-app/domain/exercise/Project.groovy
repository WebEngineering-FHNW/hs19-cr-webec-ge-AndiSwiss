package exercise

class Project {

    String title
    String description


    static constraints = {
        title(maxSize: 255)
        title(blank: false)
    }

    @Override
    String toString() {
        return "$title ($description)"
    }
}
