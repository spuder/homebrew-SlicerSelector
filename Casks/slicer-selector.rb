cask "slicer-selector" do
    version "0.5.0"
    sha256 "9e58eb7b85056e0c8e49f3f16645cf0ddcf0536eee3fdab6a8aefe61298fd2d3"
  
    url "https://github.com/spuder/SlicerSelector/releases/download/v#{version}/SlicerSelector.app.zip"
    name "SlicerSelector"
    desc "Slicer Selector application"
    homepage "https://github.com/spuder/SlicerSelector"
  
    app "SlicerSelector.app"
  
    zap trash: [
      "~/Library/Application Support/SlicerSelector",
      "~/Library/Preferences/com.yourdomain.SlicerSelector.plist",
    ]
end
