require 'puppetlabs_spec_helper/module_spec_helper'

require 'rspec-puppet'

RSpec.configure do |c|
		c.module_path = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
end

