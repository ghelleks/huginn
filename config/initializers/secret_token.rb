# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
<<<<<<< HEAD
<<<<<<< HEAD
=======

# start with the configured secret token
>>>>>>> 98fedc4c3a631a63ffd2b03d585ce6ae998caf2b
Huginn::Application.config.secret_token = ENV['APP_SECRET_TOKEN']

# ...but use the OpenShift secret generator if that's available
if (defined?(ENV['OPENSHIFT_APP_NAME']))
  require File.join(Rails.root,'lib','openshift_secret_generator.rb')
  Huginn::Application.config.secret_token = initialize_secret(
    :token,
    '335a4e365ef2daeea969640d74e18f0e3cd9fae1abd8f4125691a880774ea6d456a29c0831aa6921bf86a710fe555e916f0673f5657619ec9df22e0409bec345'
  )
end
