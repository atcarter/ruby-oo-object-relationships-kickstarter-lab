class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        arr = ProjectBacker.all.select {|pb| pb.backer == self}
        arr.map do |element|
            element.project
        end
    end
end