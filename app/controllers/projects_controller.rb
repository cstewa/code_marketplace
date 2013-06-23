class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @founder = Founder.find_or_create_by_name(params[:founder_name]) 
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save 
        @founder.projects << @project 
        @language = Language.find_or_create_by_name(params[:language_name])
        @project.languages << @language
        @language1 = Language.find_or_create_by_name(params[:language_name1])
        @project.languages << @language1
        @language2 = Language.find_or_create_by_name(params[:language_name2])
        @project.languages << @language2
        @language3 = Language.find_or_create_by_name(params[:language_name3])
        @project.languages << @language3
        format.html { redirect_to @project, notice: "Awesome! You created a project." }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        @project.languages[0].update_attribute(:name, params[:language_name]) 
        @project.languages[1].update_attribute(:name, params[:language_name1]) 
        @project.languages[2].update_attribute(:name, params[:language_name2]) 
        @project.languages[3].update_attribute(:name, params[:language_name3]) 
        @project.founder.update_attribute(:name, params[:founder_name])
        format.html { redirect_to @project, notice: "Project updated :)" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
end
