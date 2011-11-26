class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.is_a? User
      if resource.role_names.include? "student"
        p "This User is a student."
        return new_student_path
      end
    end

    "/"
  end
end