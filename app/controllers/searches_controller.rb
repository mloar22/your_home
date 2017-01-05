class SearchesController < ApplicationController

    def new
      @search = Search.new
      @categories = Home.uniq.pluck(:category)
      @makes = Home.uniq.pluck(:make)
      @models = Home.uniq.pluck(:model)
      @owners = Home.uniq.pluck(:owner)
    end

    def create
      @search = Search.create(search_params)
      redirect_to @search
    end

    def show
      @search = Search.find(params[:id])
    end


    private

    def search_params
      params.require(:search).permit(:keywords, :category, :min_price, :max_price, :make, :year, :model, :owner)
    end



end
