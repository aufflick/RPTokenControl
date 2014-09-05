Pod::Spec.new do |s|
  s.name         = "RPTokenControl"
  s.version      = "0.0.1"
  s.summary      = "Improved NSTokenField"

  s.description  = <<-DESC
                   An improved NSTokenField which can also be a Tag Cloud. Also 
                   supports bindings and various cosmetic customizations.
                   DESC

  s.homepage     = "https://github.com/vhbit/RPTokenControl"
  s.license      = { :type => "MIT" }

  s.author       = ["Robert Poynton", "Jerry Krinock", "Valerii Hiora"]

  s.platform     = :osx, "10.7"
  s.source       = { :git => "https://github.com/vhbit/RPTokenControl.git", 
                     :tag => "0.0.1", 
                     :submodules => true }
  
  # A dirty workaround: it seems CocoaPods doesn't checkout submodules on install
  # (while doing it correctly on linting), so I have to force submodule update
  # to get corresponding files installed
  s.prepare_command = <<-CMD
                    git submodule update --init
                    CMD
                    
  s.source_files  = "deps/CategoriesObjC/NSView+FocusRing.{h,m}", 
                    "deps/CategoriesObjC/NSObject+SSYBindingsHelp.{h,m}", 
                    "deps/CategoriesObjc/SSY+Countability.{h,m}",
                    "RPTokenControlKit/*.{h,m}"
  
  s.requires_arc = false
end
