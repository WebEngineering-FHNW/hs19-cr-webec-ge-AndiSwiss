package exercise

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.OK
import static org.springframework.http.HttpStatus.CREATED
import grails.gorm.transactions.Transactional

@Secured("ROLE_ADMIN")
class ProjectController {

    static namespace = 'scaffolding'

    static allowedMethods = [save: 'POST', update: 'PUT', delete: 'DELETE']

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Project.list(params), model: [projectCount: Project.count()]
    }

    def show(Project project) {
        respond project
    }

    @SuppressWarnings(['FactoryMethodName', 'GrailsMassAssignment'])
    def create() {
        respond new Project(params)
    }

    @Transactional
    def save(Project project) {
        if (project == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        if (project.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond project.errors, view: 'create'
            return
        }
        project.save flush: true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'project.label',
                        default: 'Project'), project.id])
                redirect project
            }
            '*' { respond project, [status: CREATED] }
        }
    }

    def edit(Project project) {
        respond project
    }

    @Transactional
    def update(Project project) {
        if (project == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        if (project.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond project.errors, view: 'edit'
            return
        }
        project.save flush: true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'project.label',
                        default: 'Project'), project.id])
                redirect project
            }
            '*' { respond project, [status: OK] }
        }
    }

    @Transactional
    def delete(Project project) {
        if (project == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }
        project.delete flush: true
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'project.label',
                        default: 'Project'), project.id])
                redirect action: 'index', method: 'GET'
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label',
                        default: 'Project'), params.id])
            }
        }
    }
}
