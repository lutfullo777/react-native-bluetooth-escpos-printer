require "json"
Pod::Spec.new do |s|
    package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
    s.name = 'RNBluetoothEscposPrinter'
    s.version = package['version']
    s.summary = package['description']
    s.author = 'januslo'
    s.homepage = 'https://github.com/januslo/react-native-bluetooth-escpos-printer&#8217;'
    s.license = package['license']
    s.platform = :ios, '9.0'
    s.source = { :git => 'https://github.com/januslo/react-native-bluetooth-escpos-printer&#8221;, :tag => “#{s.version}”'}
    s.source_files = "ios/**/*.{h,c,m,swift}"
    s.requires_arc = true
    s.dependency "React"
end