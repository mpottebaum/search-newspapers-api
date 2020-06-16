class PagesController < ApplicationController

    def index
        user = User.find(params[:user_id])

        render json: user.pages
    end

    def create
        user = User.find(params[:user_id])
        page = user.pages.create(page_params)

        render json: page
    end
    
    def show
        user = User.find(params[:user_id])
        page = mike.pages.find(params[:id])
    
        render json: page
    end

    def destroy
        user = User.find(params[:user_id])
        page = mike.pages.find(params[:id])
        page.destroy

        render json: {message: 'success'}
    end

    private

    def page_params
        params.require(:page).permit(
            :pdf,
            :date,
            :sequence,
            :title_normal,
            :start_year,
            :end_year,
            :city,
            :state,
            :frequency,
            :publisher,
            :note,
            :lccn
        )
    end
end
