# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
 Rails.application.config.assets.paths << "#{Rails.root}/app/assets/images"
 Rails.application.config.assets.paths << "#{Rails.root}/app/assets/fonts"

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
 Rails.application.config.assets.precompile += %w( booking.css )
 Rails.application.config.assets.precompile += %w( camera.css )
 Rails.application.config.assets.precompile += %w( owl.carousel.css )
 Rails.application.config.assets.precompile += %w( style.css )
 Rails.application.config.assets.precompile += %w( style_sistema.css )
 Rails.application.config.assets.precompile += %w( jquery.js )
 Rails.application.config.assets.precompile += %w( jquery-migrate-1.2.1.js )
 Rails.application.config.assets.precompile += %w( script.js )
 Rails.application.config.assets.precompile += %w( superfish.js )
 Rails.application.config.assets.precompile += %w( jquery.ui.totop.js )
 Rails.application.config.assets.precompile += %w( jquery.equalheights.js )
 Rails.application.config.assets.precompile += %w( jquery.mobilemenu.js )
 Rails.application.config.assets.precompile += %w( jquery.easing.1.3.js )
 Rails.application.config.assets.precompile += %w( owl.carousel.js )
 Rails.application.config.assets.precompile += %w( camera.js )
 Rails.application.config.assets.precompile += %w( jquery.mobile.customized.min.js )
 Rails.application.config.assets.precompile += %w( booking.js )
