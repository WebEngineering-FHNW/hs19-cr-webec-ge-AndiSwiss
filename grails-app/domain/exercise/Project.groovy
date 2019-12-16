package exercise

class Project {

    String title
    String description
    String link
    Date date
    String pictureName
    String technologies

    // todo: introduce a category enum -> which I can then use in the Portfolio front-end as a filter in
    //  data-filter=".gal_a"   (and .gal_b  and .gal_c)
    //  candidates:
    //     - group-project
    //     - individual work
    //     - UI/UX
    //     - core programming


    static constraints = {
        title(maxSize: 255)
        title(blank: false)
        link(url: true)
        pictureName(maxSize: 255)
        technologies(maxSize: 255)
    }

    @Override
    String toString() {
        return "$title ($description)"
    }
}
