
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        pb1 = ProjectBacker.new(project, self)
    end

    def backed_projects
        array = []
        ProjectBacker.all.each do |project| 
            if project.backer == self
                array << project.project
            else
                next
            end
        end
        array
    end

    def project
        array = []
        ProjectBacker.all.each do |project|
            if project.backer == self
                array << project
            else
                next
            end
        end
        array
    end

end