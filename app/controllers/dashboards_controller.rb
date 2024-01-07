class DashboardsController < ApplicationController
  def index
    @banks_count = Bank.count
    @suppliers_count = Supplier.count
  end
end
