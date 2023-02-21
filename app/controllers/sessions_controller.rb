class SessionsController < ApplicationController
    
    def new
    end

    def create
        #check if the user exists
        @user = User.find_by({"email" => params["email"]})
        if @user
        #if they do, check that they know their password
            if BCrypt::Password.new(@user["password"]) == params["password"]
                #if they do, send them to..
                redirect_to "/companies"
            else 
                redirect_to "/sessions/new"
            end
        else
            redirect_to "/sessions/new"
        end
    end

end
