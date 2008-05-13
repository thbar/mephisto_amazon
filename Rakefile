require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Test the mephisto_amazon plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end
