require 'rake'
require 'rubygems/package_task'

Gem::Specification.new do |s|
  # basic information
  s.name        = "rake-compiler"
  s.version     = "1.0.4"
  s.platform    = Gem::Platform::RUBY

  # description and details
  s.summary     = 'Rake-based Ruby Extension (C, Java) task generator.'
  s.description = "Provide a standard and simplified way to build and package\nRuby extensions (C, Java) using Rake as glue."

  # requirements
  s.required_ruby_version = ">= 1.8.7"
  s.required_rubygems_version = ">= 1.8.23"

  # dependencies
  s.add_dependency  'rake', '~> 10.5.0'

  # development dependencies
  s.add_development_dependency 'rspec', '~> 2.8.0'
  s.add_development_dependency 'cucumber', '~> 1.1.4'

  # components, files and paths
  s.files = FileList["features/**/*.{feature,rb}", "bin/rake-compiler",
                      "lib/**/*.rb", "spec/spec.opts", "spec/**/*.rb",
                      "tasks/**/*.rake", "Rakefile", "Gemfile",
                      "*.{rdoc,txt,yml}"]

  s.bindir      = 'bin'
  s.executables = ['rake-compiler']

  s.require_path = 'lib'

  # documentation
  s.rdoc_options << '--main'  << 'README.rdoc' << '--title' << 'rake-compiler -- Documentation'

  s.extra_rdoc_files = %w(README.rdoc LICENSE.txt History.txt)

  # project information
  s.homepage          = 'https://github.com/rake-compiler/rake-compiler'
  s.rubyforge_project = 'rake-compiler'
  s.licenses          = ['MIT']

  # author and contributors
  s.authors     = ['Kouhei Sutou', 'Luis Lavena']
  s.email       = ['kou@cozmixng.org', 'luislavena@gmail.com']
end

