require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UniversitiesController do

  # This should return the minimal set of attributes required to create a valid
  # University. As you add validations to University, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all universities as @universities" do
      university = University.create! valid_attributes
      get :index
      assigns(:universities).should eq([university])
    end
  end

  describe "GET show" do
    it "assigns the requested university as @university" do
      university = University.create! valid_attributes
      get :show, :id => university.id.to_s
      assigns(:university).should eq(university)
    end
  end

  describe "GET new" do
    it "assigns a new university as @university" do
      get :new
      assigns(:university).should be_a_new(University)
    end
  end

  describe "GET edit" do
    it "assigns the requested university as @university" do
      university = University.create! valid_attributes
      get :edit, :id => university.id.to_s
      assigns(:university).should eq(university)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new University" do
        expect {
          post :create, :university => valid_attributes
        }.to change(University, :count).by(1)
      end

      it "assigns a newly created university as @university" do
        post :create, :university => valid_attributes
        assigns(:university).should be_a(University)
        assigns(:university).should be_persisted
      end

      it "redirects to the created university" do
        post :create, :university => valid_attributes
        response.should redirect_to(University.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved university as @university" do
        # Trigger the behavior that occurs when invalid params are submitted
        University.any_instance.stub(:save).and_return(false)
        post :create, :university => {}
        assigns(:university).should be_a_new(University)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        University.any_instance.stub(:save).and_return(false)
        post :create, :university => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested university" do
        university = University.create! valid_attributes
        # Assuming there are no other universities in the database, this
        # specifies that the University created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        University.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => university.id, :university => {'these' => 'params'}
      end

      it "assigns the requested university as @university" do
        university = University.create! valid_attributes
        put :update, :id => university.id, :university => valid_attributes
        assigns(:university).should eq(university)
      end

      it "redirects to the university" do
        university = University.create! valid_attributes
        put :update, :id => university.id, :university => valid_attributes
        response.should redirect_to(university)
      end
    end

    describe "with invalid params" do
      it "assigns the university as @university" do
        university = University.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        University.any_instance.stub(:save).and_return(false)
        put :update, :id => university.id.to_s, :university => {}
        assigns(:university).should eq(university)
      end

      it "re-renders the 'edit' template" do
        university = University.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        University.any_instance.stub(:save).and_return(false)
        put :update, :id => university.id.to_s, :university => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested university" do
      university = University.create! valid_attributes
      expect {
        delete :destroy, :id => university.id.to_s
      }.to change(University, :count).by(-1)
    end

    it "redirects to the universities list" do
      university = University.create! valid_attributes
      delete :destroy, :id => university.id.to_s
      response.should redirect_to(universities_url)
    end
  end

end
