require 'rake/testtask'

Rake::TestTask.new(:unittests) do |t|
  t.test_files = FileList['tests/tc_*.rb']
  t.verbose = false
end
                          
Rake::TestTask.new(:bugtests) do |t|
  t.test_files = FileList['tests/bug_*.rb']
  t.verbose = false
end

task :default => [:unittests]
