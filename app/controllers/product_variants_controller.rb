class ProductVariantsController < ApplicationController

  def index
    product = ProductVariant.all
    render json: product, status:200
  end

  def show
    brand_name = params[:brand_name]
    
    if brand_name.present?
      products = Product.where('name LIKE ?', "#{brand_name}")
      render json: products
    else
      render json: { error: 'Please provide a product name for the search' }
    end
  end

  def create
    
    if  params[:user_type] == "vendor"
      product = Product.find(params[:product_id])
      product_variant = product.product_variants.create(product_variant_params)
  
      if product_variant.save
        render json: product_variant, status: :created
      else
        render json: { errors: product_variant.errors.full_messages }
      end
    else
      render json: { error: 'Only vendors are allowed to create product variants' }
    end
  end

  def update
    if params[:product_id] && params[:user_type]
      if params[:user_type] == "customer"
        render json: { error: 'Customers are not allowed to create products' }
        return
      else
        product = ProductVariant.find_by(id: params[:id])
        
        if product
         product.update(product_variant_params)
          render json: product, status: 200
        else
          render json: {error: "product variant Not Found"}
        end
      end
    end
  end

  def destroy
    product = ProductVariant.find_by( params[:id])
    if product
      product.destroy
      render json: product , status: 204
    else
      render json: "Product variant not found"
    end
  end
  
  private
  
  def product_variant_params
    params.require(:product_variant).permit(:length, :width, :product_id, :user_type)
  end
end
  