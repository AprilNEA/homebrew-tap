cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.2"
  sha256 arm:   "e14d059473e978936df85474a669a98b7b35690c4115d763d73e77bfd30fe9fc",
         intel: "1c6510f5bd63b551fe77363a0f4f3bd63540f0b03155f6b65ba1e6eead5cc1bb"

  url "https://github.com/AprilNEA/OpenLogi/releases/download/v#{version}/OpenLogi-v#{version}-macos-#{arch}.dmg"
  name "OpenLogi"
  desc "Lightweight, local-first companion for Logitech HID++ peripherals"
  homepage "https://github.com/AprilNEA/OpenLogi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
