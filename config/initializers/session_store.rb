# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: '_cape-cod_session'
CapeCod::Application.config.session_store :redis_store, servers: ["#{ENV.fetch('REDIS_URL')}/0/session"]
