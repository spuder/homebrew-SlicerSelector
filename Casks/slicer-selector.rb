cask "slicer-selector" do
    version "0.12.0"
    sha256 "63d06bdd1f1ff45b7be7d96eae7c44dd82f4867e51ba74e1bff30961cee3a5c2"
  
    url "https://github.com/spuder/SlicerSelector/releases/download/v#{version}/SlicerSelector.app.zip"
    name "SlicerSelector"
    desc "Slicer Selector application"
    homepage "https://github.com/spuder/SlicerSelector"
  
    app "SlicerSelector.app"

  no_quarantine
  
    zap trash: [
      "~/Library/Application Support/SlicerSelector",
      "~/Library/Preferences/com.yourdomain.SlicerSelector.plist",
    ]
end
