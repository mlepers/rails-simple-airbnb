class FlatsController < ApplicationController
    
    before_action :set_flat, only: [:show, :edit, :update, :destroy]
    
    def index
        @flats = Flat.all
    end

    def new
        @flat = Flat.new
    end

    def create
        @flat = Flat.new(params[:restaurant])
        if @flat.save
            redirect_to @flat, notice: 'Flat was successfully created.'
          else
            render :new
          end
    end

    def show
    end

    def edit
    end


    def destroy
        @flat.destroy
        redirect_to flats_path
    end

    private

    def set_flat
        @flat = Flat.find(params[:id])
    end
    
end
