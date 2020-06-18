class UsersController < ApplicationController

    def create
        user = User.create(user_params)

        render json: user
    end
    
    def show
        user = User.find(params[:id])

        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy

        render json: {message: 'Success'}
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
