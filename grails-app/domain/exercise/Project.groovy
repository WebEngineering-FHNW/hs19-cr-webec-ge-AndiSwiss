package exercise

class Project {

    String title
    String description
    String link
    Date date

    // todo: introduce a category enum -> which I can then use in the Portfolio front-end as a filter in
    //  data-filter=".gal_a"   (and .gal_b  and .gal_c)


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
