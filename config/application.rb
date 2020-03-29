require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FriendHour
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # hack for foreign key constraint issue
    # per: https://github.com/rails/rails/issues/23422#issuecomment-519091828
    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
      hacker = Module.new do
        def options_for_migration
          ar = Rails.application.config.generators.active_record
          return super unless %i[belongs_to references].include?(type) && \
                              ar[:primary_key_type] == :uuid

          { type: :uuid }.merge(super)
        end
      end
      require 'rails/generators/generated_attribute'
      Rails::Generators::GeneratedAttribute.prepend hacker
    end

  end
end
