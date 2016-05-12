class ChargesController < ApplicationController
	before_filter :authenticate_user!
	$amount
	$cart
	def new

	end

	def create
	  # Amount in cents
	  #@amount = 500

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )
		total = Integer ($amount.round(2)*100)
		purchase = Purchase.new(:user_id => current_user.id, :total => $amount.round(2))
		purchase.save
		$cart.each do |id, quantity|
			purchase.receipts.create(:product_id => id, :quantity => quantity)
		end


	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => total,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end

	def charge_params
    params[:total]*100
  end
end
