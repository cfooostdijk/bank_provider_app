class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[ show edit update destroy ]

  def index
    @suppliers = Supplier.all
  end

  def show
  end

  def new
    @supplier = Supplier.new
    # @banks = Bank.all
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)

    if @supplier.save
      redirect_to suppliers_path, notice: I18n.t('suppliers.notices.supplier_created')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @supplier.update(supplier_params)
      redirect_to suppliers_path, notice: I18n.t('suppliers.notices.supplier_updated')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @supplier.destroy
    redirect_to suppliers_path, notice: I18n.t('suppliers.notices.supplier_destroyed')
  end

  private

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name, :nit, :contact_name, :contact_phone, :account_number, :bank_id)
  end
end
