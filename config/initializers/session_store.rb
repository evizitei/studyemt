# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_studyemt_session',
  :secret      => 'b741c0257a6845f7dcb53d2720c336ef591758c78616e2cab4837aaf3a6bb157e3dccb87f3a999452a2f3487119fc4f56c9812e7773de919427dc9e4b6f984e0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
