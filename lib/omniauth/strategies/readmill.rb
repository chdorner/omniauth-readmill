require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Readmill < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'http://api.readmill.com',
        :authorize_url => 'http://readmill.com/oauth/authorize',
        :token_url => 'http://readmill.com/oauth/token'
      }

      uid { raw_info['id'] }

      info do
        {
          'name' => raw_info['fullname'],
          'email' => raw_info['email'],
          'nickname' => raw_info['username'],
          'first_name' => raw_info['firstname'],
          'last_name' => raw_info['lastname'],
          'location' => raw_info['city'],
          'description' => raw_info['description'],
          'image' => raw_info['avatar_url'],
          'urls' => {
            'Readmill' => raw_info['permalink_url'],
            'Website' => raw_info['website']
          },
        }
      end
      
      extra do
        {
          'books_interesting' => raw_info['books_interesting'],
          'books_open' => raw_info['books_open'],
          'books_finished' => raw_info['books_finished'],
          'books_abandoned' => raw_info['books_abandoned'],
          'followers' => raw_info['followers'],
          'followings' => raw_info['followings']
        }
      end

      def raw_info
        access_token.options[:mode] = :query
        @raw_info ||= access_token.get("/v2/me?access_token=#{access_token.token}").parsed['user']
      end
    end
  end
end
