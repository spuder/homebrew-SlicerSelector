cask "slicer-selector" do
    version "1.0.4"
    sha256 "dd59e7e68784c72d8272db86fbce739ccfbbab1ec3b7ea45a96a32f269026d84"
  
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
