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
    @project_instance = ProjectInstance.new

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
