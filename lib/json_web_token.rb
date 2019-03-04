class JsonWebToken
  class << self
    def encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.credentials.secret_key_base)
    end

    def decode(token)
      secret_key_base = ENV['SECRET_KEY_BASE'] || Rails.application.credentials.secret_key_base
      body = JWT.decode(token, secret_key_base)[0]
      HashWithIndifferentAccess.new body
    rescue
      nil
    end
  end
end