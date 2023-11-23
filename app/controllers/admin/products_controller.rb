class Admin::ProductsController < AdminController
    before_action :set_product, only: %i[show edit update destroy]

    def index
      @products = Product.all
    end

    def edit; end

    def new
      @product = Product.new
      # flash[:notice] = 'Você só pode cadastrar um produto se tiver uma categoria criada.'
      # redirect_to action: :index
    end

    def show; end

    def create
      @product = Product.new(product_params)

      if @product.save
        redirect_to admin_products_path(@product), notice: 'Product criado com sucesso.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @product.update(product_params)
        redirect_to admin_products_path(@product), notice: 'Produto criado com sucesso.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @product.destroy

      respond_to do |format|
        format.html { redirect_to admin_products_path, notice: 'Produto excluída com sucesso.' }
      end
    end

    private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :price, :publish, :category_id)
    end
  end