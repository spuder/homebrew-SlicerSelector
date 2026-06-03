cask "slicer-selector" do
    version "1.0.7"
    sha256 "9cfe6e05026ef779e288d9c23b31d89b849b67327dd6c929c42d2097d2a6053b"
  
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
