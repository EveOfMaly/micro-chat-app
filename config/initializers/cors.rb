# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://johnkyeremeh.github.io/micro_chat_app_frontend'# what the website that we are allowing to make these request to the side 
               # in development we won't worry about security risk until production
               # if horuku change * to website.

    resource '*',  #routes that we have access to
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
