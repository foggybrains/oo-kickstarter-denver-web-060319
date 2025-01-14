require 'pry'

class Backer
    attr_reader :name
    attr_accessor :backed_projects

    @@all = []

    def initialize(name)
        @name = name
        @backed_projects = []
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        project.backers << self
        self.backed_projects << project
    end

end