
class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        pb1 = ProjectBacker.new(self, backer)
    end
    
    def backers
        array = []
        ProjectBacker.all.each do |project|
            if project.project == self
                array << project.backer
            else
                next
            end
        end
        array
    end

end