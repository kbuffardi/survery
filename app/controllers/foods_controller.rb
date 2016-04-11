class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    if current_user.admin_enabled
      @food = Food.new
    end
  end

  def edit
    if current_user.admin_enabled
      @food = Food.find(params[:id])
    end
  end

  def create
    if current_user.admin_enabled
      @food = Food.new(food_params)

      respond_to do |format|
        if @food.save
          format.html { redirect_to @food, notice: 'Food was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end
  end

  def update
    if current_user.admin_enabled
      respond_to do |format|
        if @food.update(food_params)
          format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end
  end

  def destroy
    if current_user.admin_enabled
      @food.destroy
      respond_to do |format|
        format.html { redirect_to foods_url, notice: 'Food was successfully destroyed.' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:name, :category_id)
    end
end