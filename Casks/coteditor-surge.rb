cask "coteditor-surge" do
  version "0.1.0"
  sha256 "6047e2a5cd7ce15532a670d9d94e3de19c83bbab478b22fdae6b7f166a61e469"

  url "https://github.com/AprilNEA/coteditor-surge/releases/download/v#{version}/coteditor-surge-#{version}.tar.gz"
  name "Surge for CotEditor"
  desc "Surge syntax highlighting, outlines, and offline diagnostics for CotEditor"
  homepage "https://github.com/AprilNEA/coteditor-surge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "python@3.14"
  depends_on macos: :sequoia

  installer script: {
    executable: "#{HOMEBREW_PREFIX}/opt/python@3.14/bin/python3.14",
    args:       ["#{staged_path}/coteditor-surge-#{version}/install.py"],
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
