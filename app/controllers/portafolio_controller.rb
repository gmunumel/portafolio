class PortafolioController < ApplicationController
  def index
    @projects = Project.all
  end
end
