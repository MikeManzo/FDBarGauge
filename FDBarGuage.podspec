Pod::Spec.new do |s|
  s.name = 'FDBarGuage'
  s.version = '3.0.0'
  s.license = 'MIT'
  s.summary = 'A view controller for chess boards'
  s.homepage = 'https://github.com/fulldecent/FDBarGuage'
  s.authors = { 'William Entriken' => 'github.com@phor.net' }
  s.source = { :git => 'https://github.com/fulldecent/FDBarGuage.git', :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Source/*.swift'
end
