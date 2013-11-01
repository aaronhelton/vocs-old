# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_destroy_session',
  :secret      => '9e8f265333b72d0948698de16c7329d34ec0b40a86b0d8a87aa1c3b03c4c0bfaa80e04b7d4299b9852e8aed68b401ecf0658239c756d75ffff17e0d6706c8f2d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
