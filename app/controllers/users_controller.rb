class UsersController < ApplicationController
    def login
        user = User.find_by(email: params[:email])

        if user and user.authenticate(params[:password])
            render json: { email: user.email, token: issue_token({id: user.id })}
        else 
            render json: {error: 'Email/ password combination is invalid'}, status: 401
        end
       
    end

    def validate 
        user = get_current_user 
        if user 
            render json: {email: user.email, token: issue_token({id: user.id})}
        else 
            render json: {error: 'Unable to validate user'}, status: 401
        end
    end

    def index 
        user = User.all 
        render json: user
    end 
end

  



