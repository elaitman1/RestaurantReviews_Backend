class Api::V1::RestaurantsController < ApplicationController
  # before_action :find_restaurant, only: [:update]

    def index
      # @restaurants = Restaurant.all
      page = params[:page].to_i

      page = 1 if page == 0

        limit = page * params[:limit].to_i

        start = limit - params[:limit].to_i

        @restaurants = Restaurant.all[start...limit]



      # if params[:limit]
      # @restaurants = Restaurant.first(params[:limit].to_i)
      # end
      if @restaurants
        render json: @restaurants
      else
        render json: {error: "Page beyond limit"}
      end
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      render json: @restaurant
    end

    def create
      @restaurant = Restaurant.create(restaurant_params)
      render json: @restaurant
    end

    def update
      @restaurant = Restaurant.find(params[:id])
      @restaurant.update(restaurant_params)
      render json: @restaurant
    end

    def destroy
      @restaurant = Restaurant.find(params[:id])
      @restaurant.delete
      render json: {restaurantId: @restaurant.id}
    end

    private
    def restaurant_params
      params.require(:restaurant).permit(:name, :food_type, :bar, :location, :image)
    end

    # def beef
    #   #code
    # end

    # def update
    #   @restaurant.update(restaurant_params)
    #   if @restaurant.save
    #     render json: @restaurant, status: :accepted
    #   else
    #     render json: { errors: @restaurant.errors.full_messages }, status: :unprocessible_entity
    #   end
    # end

    # private
    #
    # def note_params
    #   params.permit(:title, :content)
    # end
    #
    # def find_restaurant
    #   @restaurant = Restaurant.find(params[:id])
    # end
  end
