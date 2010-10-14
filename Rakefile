begin
  require "load_multi_rails_rake_tasks"

desc "Run all the tests for every database adapter" 
task "test_all" do
  ['mysql', 'postgresql', 'sqlite3'].each do |adapter|
    ENV['DB'] = adapter
    ENV['PRODUCTION'] = nil
    $stderr.puts "#{'='*80}\nDevelopment mode for #{adapter}\n#{'='*80}"
    system("rake test:multi_rails:all")

    ENV['PRODUCTION'] = '1'
    $stderr.puts "#{'='*80}\nProduction mode for #{adapter}\n#{'='*80}"
    system("rake test:multi_rails:all")
  end
end

rescue LoadError
  $stderr.puts "You should install the multi_rails-gem"
  $stderr.puts ''
  $stderr.puts "  gem install multi_rails"
  $stderr.puts ''
end
