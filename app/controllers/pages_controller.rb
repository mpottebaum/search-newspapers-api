class PagesController < ApplicationController

    def index
        user = User.find(params[:user_id])

        render json: user.pages, :include => [:languages]
    end

    def create
        user = User.find(params[:user_id])
        # byebug
        page = user.pages.create(page_params)
        params[:languages_attributes].each {|lang_att| page.languages.find_or_create_by(name: lang_att[:name])}

        render json: page, :include => [:languages]
    end
    
    def show
        user = User.find(params[:user_id])
        page = mike.pages.find(params[:id])
    
        render json: page, :include => [:languages]
    end

    def destroy
        user = User.find(params[:user_id])
        params[:page_ids].each do |id|
            page = user.pages.find(id)
            page.destroy
        end

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
            :lccn,
            :name,
            {:languages_attributes => [:name]},
            :page_ids => []
        )
    end
end
