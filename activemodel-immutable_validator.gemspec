file = File.open(File.expand_path('../lib/immutable_validator/version.rb', __FILE__))
version = file.read.scan(/\d+\.\d+\.\d+/).first
file.close

Gem::Specification.new do |spec|
  spec.name            = 'activemodel-immutable_validator'
  spec.version         = version
  spec.authors         = ['Yuku Takahashi']
  spec.email           = ['taka849u@gmail.com']
  spec.summary         = 'A Rails validator for immutable attributes.'
  spec.homepage        = 'https://github.com/yuku-t/activemodel-immutable_validator'
  spec.license         = 'MIT'

  spec.files           = `git ls-files -z`.split("\x0")
  spec.require_paths   = ['lib']

  spec.add_dependency 'activemodel'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
