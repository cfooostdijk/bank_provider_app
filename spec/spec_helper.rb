require 'factory_bot_rails'
require 'shoulda-matchers'

RSpec.configure do |config|
	# Include Shoulda Matchers
	config.include Shoulda::Matchers::ActiveModel, type: :model

	# Include Factory Bot
	config.include FactoryBot::Syntax::Methods

	config.expect_with :rspec do |expectations|
	  expectations.include_chain_clauses_in_custom_matcher_descriptions = true
	end

	config.mock_with :rspec do |mocks|
	  mocks.verify_partial_doubles = true
	end

	config.shared_context_metadata_behavior = :apply_to_host_groups

	if config.files_to_run.one?
	  config.default_formatter = "doc"
	end

	config.profile_examples = 10

	config.order = :random

	Kernel.srand config.seed
end
