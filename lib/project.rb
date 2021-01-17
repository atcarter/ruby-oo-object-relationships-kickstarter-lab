class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        arr = ProjectBacker.all.select {|pb| pb.project == self}
        arr.map do |element|
            element.backer
        end
    end
end
