# Store the environment variables on the Rails.configuration object
Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_spsawyptMEfrTbneVtDQQ0yf'],
  secret_key: ENV['sk_test_3rJFSbI1jDmqJsCbXlRv0aUO']
}

# Set our app-stored secret key with Stripe
Stripe.api_key = Rails.configuration.stripe[:secret_key]
