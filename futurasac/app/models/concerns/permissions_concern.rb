module PermissionsConcern
    extend ActiveSupport::Concern
    
    def is_passenger?
        self.permission_level >= 1
    end
    
    def is_driver?
        self.permission_level >= 2
    end
    
    def is_user?
        self.permission_level >= 3
    end
    
    def is_admin?
        self.permission_level >= 4
    end
end