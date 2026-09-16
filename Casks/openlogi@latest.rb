cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.5"
  sha256 arm:   "b1ee45bfa752712e9aecd90f8c1b8154b73a361c4813e211585ebcbf6331dda3",
         intel: "017bc378e359f5c07a745054f223f2e21cee533a57ccac02643d94ad817769aa"

  url "https://github.com/AprilNEA/OpenLogi/releases/download/v#{version}/OpenLogi-v#{version}-macos-#{arch}.dmg"
  name "OpenLogi"
  desc "Lightweight, local-first companion for Logitech HID++ peripherals"
  homepage "https://github.com/AprilNEA/OpenLogi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "openlogi"
  depends_on macos: :ventura

  app "OpenLogi.app"

  zap trash: [
    "~/.config/openlogi",
    "~/.local/share/openlogi",
    "~/Library/Caches/org.openlogi.openlogi",
    "~/Library/Preferences/org.openlogi.openlogi.plist",
    "~/Library/Saved Application State/org.openlogi.openlogi.savedState",
  ]
end
