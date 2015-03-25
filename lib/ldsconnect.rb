require "oauth2"

class LdsConnect
  attr_reader :client
  attr_accessor :options

  SITE_URL      = "https://ldsconnect.org"
  AUTHORIZE_URL = "#{SITE_URL}/dialog/authorize"

  def initialize(client_id, client_secret, options={})
    # make sure all options for the OAuth module and faraday
    # pass all the way down
    client_options = options.dup
    client_options[:site] = SITE_URL
    client_options[:authorize_url] = AUTHORIZE_URL

    @options = client_options

    @client = OAuth2::Client.new(client_id, client_secret, client_options)
  end

  def authorize_url
    redirect_uri ||= @options[:redirect_uri]
    @client.auth_code.authorize_url(redirect_uri: redirect_uri)
  end

  def get_token(code)
    @client.auth_code.get_token(code)
  end

  def get_profile(token)
    OAuth2::AccessToken.new(@client, token).get("/api/ldsconnect/me")
  end

  def get_resource(token, path)
    OAuth2::AccessToken.new(@client, token).get("/api/ldsconnect/#{path}")
  end

end
