Pod::Spec.new do |s|
  s.name             = 'PutKit'
  s.version          = '1.0.0'
  s.summary          = 'Objective-C bindings for the Put.io API'
  s.homepage         = 'https://github.com/mourke/PutKit'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
    MIT License
    Copyright (c) 2018 Mark Bourke
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
    LICENSE
  }
  s.author           = { 'Mark Bourke' => 'markkbourke@gmail.com' }
  s.requires_arc = true
  s.source   = { :http => "https://github.com/mourke/PutKit/releases/download/#{s.version}/PutKit.framework.zip" }

  s.ios.vendored_frameworks = 'Carthage/Build/iOS/PutKit.framework'
  s.ios.source_files        = 'Carthage/Build/iOS/PutKit.framework/Headers/*.h'
  s.ios.public_header_files = 'Carthage/Build/iOS/PutKit.framework/Headers/*.h'

  s.tvos.vendored_frameworks = 'Carthage/Build/tvOS/PutKit.framework'
  s.tvos.source_files        = 'Carthage/Build/tvOS/PutKit.framework/Headers/*.h'
  s.tvos.public_header_files = 'Carthage/Build/tvOS/PutKit.framework/Headers/*.h'

  s.osx.vendored_frameworks = 'Carthage/Build/Mac/PutKit.framework'
  s.osx.source_files        = 'Carthage/Build/Mac/PutKit.framework/Versions/A/Headers/*.h'
  s.osx.public_header_files = 'Carthage/Build/Mac/PutKit.framework/Versions/A/Headers/*.h'

  s.watchos.vendored_frameworks = 'Carthage/Build/watchOS/PutKit.framework'
  s.watchos.source_files        = 'Carthage/Build/watchOS/PutKit.framework/Headers/*.h'
  s.watchos.public_header_files = 'Carthage/Build/watchOS/PutKit.framework/Headers/*.h'

  s.ios.deployment_target     = '8.0'
  s.osx.deployment_target     = '10.10'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target    = '9.0'

end
