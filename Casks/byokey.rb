cask "byokey" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "0616df363c423ca833988d23540136acb3c23518678599cd9018f98a21128ff7",
         intel: "7fca9674d85e47724c829d00228ff610164b157ec228e9dd98eb8ef4eeaf6520"

  url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/Byokey-v#{version}-#{arch}.dmg"
  name "Byokey"
  desc "Bring Your Own Keys — AI subscription-to-API proxy gateway"
  homepage "https://github.com/AprilNEA/BYOKEY"

  deprecate! date: "2026-09-23", because: :discontinued, replacement_formula: "byokey"
  disable! date: "2027-09-23", because: :discontinued, replacement_formula: "byokey"

  depends_on macos: :sequoia

  app "Byokey.app"

  # ~/.byokey is left alone: the byokey formula keeps its tokens and config there.
  zap trash: [
    "~/Library/Application Support/Byokey",
    "~/Library/Caches/io.byokey.desktop",
    "~/Library/Logs/Byokey",
    "~/Library/Preferences/io.byokey.desktop.plist",
  ]
end
