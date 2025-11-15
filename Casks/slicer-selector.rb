cask "slicer-selector" do
    version "0.11.2"
    sha256 "d5a42db5089dca81ad2024f7f92a2feb8fabd03d91459737f06a574de45539d3"
  
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
