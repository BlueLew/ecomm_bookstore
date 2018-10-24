require "stripe"
Stripe.api_key = EcommBookstore::Application.credentials.stripe[:secret_key]
