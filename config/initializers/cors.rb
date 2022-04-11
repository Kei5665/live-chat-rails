# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
## ======= 👇 ここから変更する=======
    origins '*'
## ====== 👆 ここまで変更する=======

    resource '*',
      headers: :any,
## ======= 👇 ここから追加する=======
      expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
## ====== 👆 ここまで追加する=======

      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
