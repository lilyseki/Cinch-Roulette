
# -*- encoding: utf-8 -*-
$LOAD_PATH.push('lib')
require 'cinch/plugins/roulette/version'

Gem::Specification.new do |s|
  s.name     = 'Cinch-Roulette'
  s.version  = Cinch::Roulette::VERSION.dup
  s.date     = '2016-02-28'
  s.summary  = 'Cinch plugin that adds russian roulette game'
  s.email    = 'lilian.jonsdottir@gmail.com'
  s.homepage = 'https://github.com/lilyseki/Cinch-Automode'
  s.authors  = ['Lily Jónsdóttir']
  s.license  = 'MIT'

  s.description = <<-EOF
Adds russian roulette game to your IRC bot. Take your chances!
EOF

  dependencies = []

  s.files         = Dir['**/*']
  s.test_files    = Dir['test/**/*'] + Dir['spec/**/*']
  s.executables   = Dir['bin/*'].map { |f| File.basename(f) }
  s.require_paths = ['lib']

  ## Make sure you can build the gem on older versions of RubyGems too:
  s.rubygems_version = '2.5.1'
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.specification_version = 3 if s.respond_to? :specification_version

  dependencies.each do |type, name, version|
    if s.respond_to?("add_#{type}_dependency")
      s.send("add_#{type}_dependency", name, version)
    else
      s.add_dependency(name, version)
    end
  end
end
