class ProjectInstancesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  # GET /project_instances
  # GET /project_instances.xml
  def index
    @project_instances = ProjectInstance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_instances }
    end
  end

  # GET /project_instances/1
  # GET /project_instances/1.xml
  def show
    @project_instance = ProjectInstance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_instance }
    end
  end

  # GET /project_instances/new
  # GET /project_instances/new.xml
  def new
    if !params[:project_class_id].nil?
      @project_instance = ProjectInstance.new

      # Build and initialize project_class association.
      @project_instance.build_project_class
      project_class = ProjectClass.find params[:project_class_id]
      @project_instance.project_class = project_class

      # Get default attributes from the project_class.
      inherited_attributes = { :name => project_class.name, :description => project_class.description  }
      inherited_attributes[:end_date] = project_class.end_date unless project_class.end_date.nil?
      @project_instance.attributes = inherited_attributes

      flash.now[:notice] = "The fields have been prepopulated for you.
                           Feel free to edit the details for your particular instance."
    else
      initialized_end_date = week_from_now
      @project_instance = ProjectInstance.new(:end_date => initialized_end_date)
    end
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_instance }
    end
  end

  # GET /project_instances/1/edit
  def edit
    @project_instance = ProjectInstance.find(params[:id])
  end

  # POST /project_instances
  # POST /project_instances.xml
  def create
    params[:project_instance][:owner_id] = current_user.id
    @project_instance = ProjectInstance.new(params[:project_instance])

    respond_to do |format|
      if @project_instance.save
        format.html { redirect_to(@project_instance, :notice => 'Project instance was successfully created.') }
        format.xml  { render :xml => @project_instance, :status => :created, :location => @project_instance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_instance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_instances/1
  # PUT /project_instances/1.xml
  def update
    @project_instance = ProjectInstance.find(params[:id])

    respond_to do |format|
      if @project_instance.update_attributes(params[:project_instance])
        format.html { redirect_to(@project_instance, :notice => 'Project instance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_instance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_instances/1
  # DELETE /project_instances/1.xml
  def destroy
    @project_instance = ProjectInstance.find(params[:id])
    @project_instance.destroy

    respond_to do |format|
      format.html { redirect_to(project_instances_url) }
      format.xml  { head :ok }
    end
  end
end
