package exercise

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class ProjectSpec extends Specification implements DomainUnitTest<Project> {

    def setup() {
    }

    def cleanup() {
    }


    void 'test title cannot be blank'() {
        when:
        domain.title = ''

        then:
        !domain.validate(['title'])
    }


    void 'test title can have a maximum of 255 character'() {
        when: 'for a string of 256 characters'
        String str = 'a' * 256
        domain.title = str

        then: 'title validation should fail'
        !domain.validate(['title'])
        domain.errors['title'].code == 'maxSize.exceeded'

        when: 'for a string of 255 characters'
        str = 'a' * 255
        domain.title = str

        then: 'title validation should pass'
        domain.validate(['title'])
    }


    void 'test link can be null'() {
        when:
        domain.link = null

        then:
        domain.validate(['link'])
    }


    void 'test custom method getCategory'() {
        when: 'no category is set'
        domain.cat_group_work = false
        domain.cat_individual_work = false
        domain.cat_ui_ux = false
        domain.cat_core_programming = false

        then:
        domain.getCategory() == ""


        when: 'two categories are set'
        domain.cat_group_work = true
        domain.cat_individual_work = false
        domain.cat_ui_ux = false
        domain.cat_core_programming = true

        then:
        domain.getCategory() == " cat_group_work cat_core_programming"


        when: 'all categories are set'
        domain.cat_group_work = true
        domain.cat_individual_work = true
        domain.cat_ui_ux = true
        domain.cat_core_programming = true

        then:
        domain.getCategory() == " cat_group_work cat_individual_work cat_ui_ux cat_core_programming"
    }
}
