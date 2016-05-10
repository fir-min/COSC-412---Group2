class ChargesController < ApplicationController
	$amount
	def new

	end

	def create
	  # Amount in cents
	  #@amount = 500

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )
		total = Integer ($amount*100)
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
