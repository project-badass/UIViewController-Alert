Pod::Spec.new do |s|
  s.name         = "UIViewcontroller+Alert"
  s.version      = "0.0.1"
  s.summary      = "Convenience class for displaying alerts and action sheets on both iOS7 and 8 (uses UIAlertController in iOS8)"
  s.homepage     = "https://github.com/project-badass/UIViewController-Alert"
  s.author             = { "Ameesh Kapoor" => "ameesh@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/project-badass/UIViewController-Alert.git", :tag => "0.0.1" }
  s.source_files  = "UIViewController+Alert/*.{h,m}"
  s.frameworks = "UIKit""

end
