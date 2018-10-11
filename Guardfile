# frozen_string_literal: true

directories(%w[app lib spec]).select do |d|
  Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist")
end

guard :rspec, cmd: 'rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { 'spec' }
end

guard :rubocop do
  watch(%r{/.+\.rb$/})
  watch(%r{(?:.+/)?\.rubocop(?:_todo)?\.yml$}) { |m| File.dirname(m[0]) }
end
