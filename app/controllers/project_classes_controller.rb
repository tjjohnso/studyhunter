class ProjectClassesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  # GET /project_classes
  # GET /project_classes.xml
  def index
    @project_classes = ProjectClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_classes }
    end
  end

  # GET /project_classes/1
  # GET /project_classes/1.xml
  def show
    @project_class = ProjectClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_class }
    end
  end

  # GET /project_classes/new
  # GET /project_classes/new.xml
  def new
    initialized_end_date = week_from_now
    @project_class = ProjectClass.new(:end_date => initialized_end_date)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_class }
    end
  end

  # GET /project_classes/1/edit
  def edit
    @project_class = ProjectClass.find(params[:id])
  end

  # POST /project_classes
  # POST /project_classes.xml
  def create
    params[:project_class][:creator_id] = current_user.id
    @project_class = ProjectClass.new(params[:project_class])

    respond_to do |format|
      if @project_class.save
        format.html { redirect_to(@project_class, :notice => 'Project was successfully created.') }
        format.xml  { render :xml => @project_class, :status => :created, :location => @project_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_classes/1
  # PUT /project_classes/1.xml
  def update
    @project_class = ProjectClass.find(params[:id])

    respond_to do |format|
      if @project_class.update_attributes(params[:project_class])
        format.html { redirect_to(@project_class, :notice => 'Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_classes/1
  # DELETE /project_classes/1.xml
  def destroy
    @project_class = ProjectClass.find(params[:id])
    @project_class.destroy

    respond_to do |format|
      format.html { redirect_to(project_classes_url) }
      format.xml  { head :ok }
    end
  end
end
