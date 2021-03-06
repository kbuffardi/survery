class CategoriesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    if current_user.admin_enabled
      @category = Category.new
    end
  end

  def edit
    if current_user.admin_enabled
      @category = Category.find(params[:id])
    end
  end

  def create
    if current_user.admin_enabled
      @category = Category.new(category_params)

      respond_to do |format|
        if @category.save
          format.html { redirect_to @category, notice: 'Category was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end
  end

  def update
    if current_user.admin_enabled
      respond_to do |format|
        if @category.update(category_params)
          format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end
  end

  def destroy
    if current_user.admin_enabled
      @category.destroy
      respond_to do |format|
        format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      end
    end
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, name:[])
    end
end
