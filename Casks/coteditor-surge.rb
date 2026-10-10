cask "coteditor-surge" do
  version "0.1.0"
  sha256 "8e48b58342aa043c47cea4c57dd2162d581a549c5bcdc68821f9c6284d6bdfa8"

  url "https://github.com/AprilNEA/coteditor-surge/releases/download/v#{version}/coteditor-surge-#{version}.tar.gz"
  name "Surge for CotEditor"
  desc "Surge syntax highlighting, outlines, and offline diagnostics for CotEditor"
  homepage "https://github.com/AprilNEA/coteditor-surge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  installer script: {
    executable: "/bin/sh",
    args:       ["#{staged_path}/coteditor-surge-#{version}/install.sh"],
    sudo:       false,
  }

  uninstall trash: [
    "~/Library/Application Scripts/com.coteditor.CotEditor/Surge",
    "~/Library/Containers/com.coteditor.CotEditor/Data/Library/Application Support/CotEditor/Syntaxes/Surge.cotsyntax",
  ]

  caveats <<~EOS
    Install CotEditor 7 or later in /Applications before installing this cask.
    Diagnostics also require Surge Mac 6.10.0 or later in /Applications.
    Back up and move any existing manual Surge syntax and scripts before installing.
    In CotEditor Settings > Format, use Reload All Syntaxes from the actions menu.
  EOS
end
