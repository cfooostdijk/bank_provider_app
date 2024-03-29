class BanksController < ApplicationController
  before_action :set_bank, only: %i[ show edit update destroy ]

  def index
    @banks = Bank.all
  end

  def show
  end

  def new
    @bank = Bank.new
  end

  def edit
  end

  def create
    @bank = Bank.new(bank_params)

    if @bank.save
      redirect_to banks_path, notice: I18n.t('banks.notices.bank_created')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @bank.update(bank_params)
      redirect_to banks_path, notice: I18n.t('banks.notices.bank_updated')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bank.destroy
    redirect_to banks_path, notice: I18n.t('banks.notices.bank_destroyed')
  end

  private

  def set_bank
    @bank = Bank.find(params[:id])
  end

  def bank_params
    params.require(:bank).permit(:name)
  end
end
