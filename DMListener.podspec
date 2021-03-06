Pod::Spec.new do |s|
  s.name             = "DMListener"
  s.version          = "1.1.0"
  s.summary          = "Easily observe changes in objects. Like a delegate, just better."
  s.homepage         = "https://github.com/d-32/DMListener"
  s.license          = 'MIT'
  s.author           = { "Dylan Marriott" => "info@d-32.com" }
  s.source           = { :git => "https://github.com/d-32/DMListener.git", :tag => s.version.to_s }
  s.social_media_url = "https://twitter.com/dylan36032"
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.public_header_files = 'Pod/Classes/DMListener.h','Pod/Classes/DMListeners.h'
  s.resource_bundles = {
    'DMJobManager' => ['Pod/Assets/*.png']
  }
end

