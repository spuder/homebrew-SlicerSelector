cask "slicer-selector" do
    version "0.8.0"
    sha256 "c31a1e7cb516fa579b39df1fff6167f28dda173ed05d56522a2055d6a9c29fdb"
  
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
