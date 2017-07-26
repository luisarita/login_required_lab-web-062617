class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].present?
            session[:name] = params[:name]
        elsif !logged_in?
            redirect_to login_path
        end
    end
    
    def destroy
        if logged_in?
            session[:name] = nil
        else
            session.delete 'destroy'
        end
        redirect_to login_path
    end
end
