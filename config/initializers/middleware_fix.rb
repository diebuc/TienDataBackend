# Fix for ActionDispatch::Static middleware initialization issue in Rails 5.2
Rails.application.config.middleware.delete ActionDispatch::Static
Rails.application.config.middleware.use ActionDispatch::Static, Rails.application.paths["public"].first