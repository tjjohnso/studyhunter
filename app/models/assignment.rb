class Assignment < ActiveRecord::Base
  inherits_from "ProjectClass"  # I used the singular form of the association, but the classify() method sometimes
                                # does not work because "project_class" ends with an 's'.
end
