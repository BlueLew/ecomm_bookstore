class SalesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book, except: :index

  def index
    @sales = current_user.sales
  end

  def new
    @sale = Sale.new
  end
  
  def create
    stripe_token = sale_params[:stripe_token]
    stripe_charge = StripeServices::CreateCharge.call(@book, current_user, stripe_token)
    Sale.create(book: @book, user: current_user, stripe_charge_id: stripe_charge.id)
    PurchaseMailer.with(user: current_user).thank_you.deliver_later
    redirect_to sales_path
  end

private

  def load_book
    @book = Book.find(params[:book_id])
  end

  def sale_params
    params.require(:sale).permit(:stripe_token)
  end
end
