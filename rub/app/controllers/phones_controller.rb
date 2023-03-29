class PhonesController < ApplicationController
    before_action :authenticate_user!
    def index
        @phone = Phone.all
    end
    def new 
        @phone = Phone.new
    end
    def show
        @phone =Phone.find(params[:id])
    end
    def edit
        @phone =Phone.find(params[:id])
    end
    def create
        @phone = Phone.new(phone_params)
        if @phone.save
            redirect_to phone_path(@phone)
        else
            render :new
        end

    end
    def update 
        @phone = Phone.find(params[:id])
        if @phone.update(phone_params)
            redirect_to phone_path(@phone)
        else
            render :edit
        end
    end
    private 
    def phone_params
        params.require(:phone).permit(:marca , :color, :modelo, :avatar)
    end

end
