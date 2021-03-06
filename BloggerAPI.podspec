Pod::Spec.new do |s|
  s.name = 'BloggerAPI'
  s.version = '0.1.1'
  s.license = 'Apache 2'
  s.summary = 'Blogger API client in Swift'
  s.homepage = 'https://github.com/coodly/BloggerAPI'
  s.authors = { 'Jaanus Siim' => 'jaanus@coodly.com' }
  s.source = { :git => 'git@github.com:coodly/BloggerAPI.git', :tag => s.version }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/BloggerAPI/*.swift'

  s.requires_arc = true
end
