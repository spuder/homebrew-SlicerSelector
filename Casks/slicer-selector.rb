cask "slicer-selector" do
    version "1.0.6"
    sha256 "7cf39d94e860a2814c443bac5dec259eab20f1236bc0c6d580531025df84b485"
  
    url "https://github.com/spuder/SlicerSelector/releases/download/v#{version}/SlicerSelector.app.zip"
    name "SlicerSelector"
    desc "Slicer Selector application"
    homepage "https://github.com/spuder/SlicerSelector"
  
    app "SlicerSelector.app"

    postflight do
        system_command "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "#{appdir}/SlicerSelector.app"]
    end
  
    zap trash: [
      "~/Library/Application Support/SlicerSelector",
      "~/Library/Preferences/com.yourdomain.SlicerSelector.plist",
    ]
end
