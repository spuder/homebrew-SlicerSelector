cask "slicer-selector" do
    version "1.0.9"
    sha256 "a23a418b41bb3e2ab20e07bf32e93d0e98ef493261ce1e590a9d5d203b8e76df"
  
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
