class Byokey < Formula
  desc "Bring Your Own Keys — AI subscription-to-API proxy gateway"
  homepage "https://github.com/AprilNEA/BYOKEY"
  version "byokey-daemon-v0.5.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
  end

  on_linux do
  end

  def install
    bin.install "byokey"
  end

  service do
    run [opt_bin/"byokey", "serve"]
    keep_alive true
    working_dir var/"byokey"
    log_path var/"log/byokey.log"
    error_log_path var/"log/byokey.log"
  end

  test do
    assert_match "byokey", shell_output("#{bin}/byokey --help")
  end
end
