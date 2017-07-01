class << Rails.application
  def domain
    "cryptobuzz.io"
  end
  def name
    "CryptoBuzz"
  end
end

Rails.application.routes.default_url_options[:host] = Rails.application.domain
