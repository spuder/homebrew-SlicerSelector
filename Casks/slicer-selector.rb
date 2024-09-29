cask "slicer-selector" do
    version "0.1.0-alpha4"
    sha256 "b2ffe048f48debced9981532b418e3305962c94bd56834496735f6a940042f88"
  
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
