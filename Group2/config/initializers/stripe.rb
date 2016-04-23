Rails.configuration.stripe = {
  :publishable_key => 'pk_test_wPOiyrpAmypC4Nz7vawsJALq',
  :secret_key      => 'sk_test_RJ0XpZXQE2tYe1o3Kw5DJxOu'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
