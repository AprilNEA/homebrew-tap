cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.4"
  sha256 arm:   "9e9731270a2e74ebea72cd9c860442786c8a74239719ebf6d5fcee6ad9d263fa",
         intel: "ba6716bbbe17b54611df26697019800caf5da7df8132f60ac06fbc0db62dffba"

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
