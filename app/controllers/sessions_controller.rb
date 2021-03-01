class SessionsController < ApplicationController

    # skip_before_action :require_login, only: [:new, :create]

   

    def new
    end

    def create
        return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to controller: 'secrets', action: 'show' 
        
    end
    
    def show
    end
    
    def destroy
        session.delete :name
        # binding.pry
        redirect_to login_path
    end

    # private

    # def require_login
    #     return head(:forbidden) unless session.include? :name
    # end

end
