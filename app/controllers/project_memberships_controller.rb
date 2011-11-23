class ProjectMembershipsController < ApplicationController
  # GET /project_memberships
  # GET /project_memberships.xml
  def index
    @project_memberships = ProjectMembership.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_memberships }
    end
  end

  # GET /project_memberships/1
  # GET /project_memberships/1.xml
  def show
    @project_membership = ProjectMembership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_membership }
    end
  end

  # GET /project_memberships/new
  # GET /project_memberships/new.xml
  def new
    @project_membership = ProjectMembership.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_membership }
    end
  end

  # GET /project_memberships/1/edit
  def edit
    @project_membership = ProjectMembership.find(params[:id])
  end

  # POST /project_memberships
  # POST /project_memberships.xml
  def create
    @project_membership = ProjectMembership.new(params[:project_membership])

    respond_to do |format|
      if @project_membership.save
        format.html { redirect_to(@project_membership, :notice => 'Project membership was successfully created.') }
        format.xml  { render :xml => @project_membership, :status => :created, :location => @project_membership }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_membership.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_memberships/1
  # PUT /project_memberships/1.xml
  def update
    @project_membership = ProjectMembership.find(params[:id])

    respond_to do |format|
      if @project_membership.update_attributes(params[:project_membership])
        format.html { redirect_to(@project_membership, :notice => 'Project membership was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_membership.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_memberships/1
  # DELETE /project_memberships/1.xml
  def destroy
    @project_membership = ProjectMembership.find(params[:id])
    @project_membership.destroy

    respond_to do |format|
      format.html { redirect_to(project_memberships_url) }
      format.xml  { head :ok }
    end
  end
end
