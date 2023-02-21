# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
secret = "tacos123"
# 2. prepare encrypted string for testing
encrypted_string = BCrypt::Password.create(secret)
puts encrypted_string
# 3. test secret against prepared encrypted string
login_secret = "tacos123"
result = BCrypt::Password.new(encrypted_string) == login_secret
puts result