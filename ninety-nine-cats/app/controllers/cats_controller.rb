class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render :index

    end

    def show
        @cat = Cat.find_by(id: params[:id])

        if @user
            render :show
        else 
            redirect_to cats_url
        end

    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            redirect_to cat_url
        else
            redirect_to new_cat_url
            render :new

        end
    end

    def new
        @cat = Cat.new #convention
        render :new

    end


    def edit
        @cat = Cat.find_by(id: params[:id])
        render :edit

    end

    def update
        @cat = Cat.find_by(id: params[:id])
        if @cat.update(cat_params)
            redirect_to cat_url(@cat)
        else
            render json: cat.errors.full_messages, status: 422
        end

    end

    private 

    def cat_params
        params.requoire(:cat).permit(:birth_date, :color, :name, :sex, :description)
    end

end