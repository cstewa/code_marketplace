class DevelopersController < ApplicationController
  # GET /developers
  # GET /developers.json
  def index
    @developers = Developer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @developers }
    end
  end

  # GET /developers/1
  # GET /developers/1.json
  def show
    @developer = Developer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @developer }
    end
  end

  # GET /developers/new
  # GET /developers/new.json
  def new
    @developer = Developer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @developer }
    end
  end

  # GET /developers/1/edit
  def edit
    @developer = Developer.find(params[:id])
  end

  # POST /developers
  # POST /developers.json
  def create
    @developer = Developer.new(params[:developer])

    respond_to do |format|
      if @developer.save
        @language = Language.find_or_create_by_name(params[:language_name])
        @developer.languages << @language
        @language1 = Language.find_or_create_by_name(params[:language_name1])
        @developer.languages << @language1
        @language2 = Language.find_or_create_by_name(params[:language_name2])
        @developer.languages << @language2
        @language3 = Language.find_or_create_by_name(params[:language_name3])
        @developer.languages << @language3
        session[:user_name] = @developer.name
        format.html { redirect_to @developer, notice: "Woo! You're an official user." }
        format.json { render json: @developer, status: :created, location: @developer }
      else
        format.html { render action: "new" }
        format.json { render json: @developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /developers/1
  # PUT /developers/1.json
  def update
    @developer = Developer.find(params[:id])

    respond_to do |format|
      if @developer.update_attributes(params[:developer])
        @developer.languages[0].update_attribute(:name, params[:language_name]) 
        @developer.languages[1].update_attribute(:name, params[:language_name1]) 
        @developer.languages[2].update_attribute(:name, params[:language_name2]) 
        @developer.languages[3].update_attribute(:name, params[:language_name3]) 
        format.html { redirect_to @developer, notice: 'Profile updated :)' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @developer.errors, status: :unprocessable_entity }
      end
    end
  end

   def accept_developer
    @developer = Developer.find(params[:id])
    @project_name = params[:project_name]
    @project = Project.find_by_name(@project_name)
    @project.developers << @developer
    @pending_proj_to_delete = PendingProject.where(:developer_id => @developer.id, :name => @project.name)
    @pending_proj_to_delete.destroy_all
    @pending_developer = PendingDeveloper.where(:name => @developer.name, :project_id => @project.id)
    @pending_developer.destroy_all
    redirect_to @project  
  end

  # DELETE /developers/1
  # DELETE /developers/1.json
  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy

    respond_to do |format|
      format.html { redirect_to developers_url }
      format.json { head :no_content }
    end
  end
end
