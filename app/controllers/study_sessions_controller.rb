class StudySessionsController < ApplicationController
  # GET /study_sessions
  # GET /study_sessions.xml
  def index
    @study_sessions = StudySession.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @study_sessions }
    end
  end

  # GET /study_sessions/1
  # GET /study_sessions/1.xml
  def show
    @study_session = StudySession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @study_session }
    end
  end

  # GET /study_sessions/new
  # GET /study_sessions/new.xml
  def new
    @study_session = StudySession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @study_session }
    end
  end

  # GET /study_sessions/1/edit
  def edit
    @study_session = StudySession.find(params[:id])
  end

  # POST /study_sessions
  # POST /study_sessions.xml
  def create
    @study_session = StudySession.new(params[:study_session])

    respond_to do |format|
      if @study_session.save
        format.html { redirect_to(@study_session, :notice => 'Study session was successfully created.') }
        format.xml  { render :xml => @study_session, :status => :created, :location => @study_session }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @study_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /study_sessions/1
  # PUT /study_sessions/1.xml
  def update
    @study_session = StudySession.find(params[:id])

    respond_to do |format|
      if @study_session.update_attributes(params[:study_session])
        format.html { redirect_to(@study_session, :notice => 'Study session was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @study_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /study_sessions/1
  # DELETE /study_sessions/1.xml
  def destroy
    @study_session = StudySession.find(params[:id])
    @study_session.destroy

    respond_to do |format|
      format.html { redirect_to(study_sessions_url) }
      format.xml  { head :ok }
    end
  end
end
