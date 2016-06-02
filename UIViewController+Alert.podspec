Pod::Spec.new do |s|
  s.name         = "UIViewController+Alert"
  s.version      = "0.0.5"
  s.license	 = { :type => "MIT" }
  s.summary      = "Convenience class for displaying alerts and action sheets on iOS 8 and above (using UIAlertController)"
  s.homepage     = "https://github.com/project-badass/UIViewController-Alert"
  s.authors            = { "Ameesh Kapoor" => "ameesh@gmail.com",
                           "Jim Cervone" => "jimcervone@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/project-badass/UIViewController-Alert.git", :tag => "0.0.4" }
  s.source_files  = "UIViewController+Alert.{h,m}"
  s.frameworks = "UIKit"
end
