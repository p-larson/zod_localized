# frozen_string_literal: true
require 'json'

require "bundler/setup"
require "rails"
require "active_support/railtie"
require "action_view/railtie"

I18n.load_path += Dir["./config/locales/**/*.yml"]

module TranslationPlaceholderService
  def self.convert(obj)
    case obj
    when Hash
      obj.transform_values { |v| convert(v) }
    when String
      obj.gsub(/%\{(\w+)\}/, '{{\1}}')
    else
      obj
    end
  end
end
