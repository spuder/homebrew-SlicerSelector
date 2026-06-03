cask "slicer-selector" do
    version "1.0.5"
    sha256 "b18e4468d010376018f577cbb512177231e7222abb213026da05cc18fab09269"
  
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
