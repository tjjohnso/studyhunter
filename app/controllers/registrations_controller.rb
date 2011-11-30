class RegistrationsController < Devise::RegistrationsController
  def update
    params[:user][:role_ids] ||= []
    super
  end

  protected

  def after_sign_up_path_for(resource)  # Will need to change this whenever we add more roles.
    if resource.is_a? User
      if resource.role_names.include? "student"
        p "This User is a student."
        return new_student_path
      end
      "/"
    end
    "/"
  end

  def after_update_path_for(resource)
    after_sign_up_path_for(resource)
  end
end