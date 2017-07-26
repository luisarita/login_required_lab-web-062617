class SecretsController < ApplicationController
    def show
        if !logged_in?
            redirect_to login_path
        else
            
        end
    end

    def create
        
    end
end
