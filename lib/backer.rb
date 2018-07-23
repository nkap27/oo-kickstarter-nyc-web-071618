class Backer
  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name, backed_projects = [])
    @name = name
    @backed_projects = backed_projects
  end

  def back_project(project)
    self.backed_projects << project
    project.backers << self
  end
end
# kuki = Backer.new("Kuki")
# sharknado = Project.new("sharknado")
# kuki.back_project(sharknado)
# kuki.backed_projects == sharknado
# sharknado.backers == kuki
