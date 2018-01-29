module Crema
  class OAuth < Base
    def self.token
      response = connection.post(
        '/oauth/token',
        grant_type: 'client_credentials'.freeze,
        client_id: Crema.config.app_id,
        client_secret: Crema.config.secret
      )
      return nil unless response.success?
      JSON.parse(response.body).dig('access_token')
    end
  end
end
