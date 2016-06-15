class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :like]
  
    def like
      @product.liked_by current_user
      redirect_to :back
    end

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    
    # .by_category(params[:category_id])
    #                    .text_search(params[:query])
    #                    .by_price_range(session[:min], session[:max])
    #                    .sort_by(session[:sort_by])
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  def set_filter
    session[:min] = params[:min] if params[:min]
    session[:max] = params[:max] if params[:max]
    session[:sort_by] = params[:sort_by] || session[:sort_by] || 1
  end


end
