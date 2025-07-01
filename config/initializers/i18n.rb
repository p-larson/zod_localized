# config/initializers/i18n.rb

Rails.application.config.i18n.tap do |i18n|
  # Load all nested yml files from config/locales and subdirectories
  i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

  # List all available locales
  i18n.available_locales = [:en, :es]

  # Set default locale
  i18n.default_locale = :en

  # Optional: Raise error on missing translations
  # i18n.enforce_available_locales = true
end
