class PendingProjectsController < ApplicationController
  def create
  	@project = Project.find_by_name(params[:name])
  	@project_name = @project.name
  	@pending_project = PendingProject.create(:name => @project_name, :developer_id => params[:developer_id])
  	binding.pry
  end

  def destroy
  end

  def show
  end
end
