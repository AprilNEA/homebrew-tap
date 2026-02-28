class Byokey < Formula
  desc "Bring Your Own Keys — AI subscription-to-API proxy gateway"
  homepage "https://github.com/AprilNEA/BYOKEY"
  version "0.5.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a2df7ddb007adb64b697f54f3a3b552b4195bf6dd4ad1f89ec51bc7b05ec368c"
    end
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "48537bcecae43ab79fea6bdebd829f9494fb847a384886456016dad42f380d14"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b1385c9c154a5385e79c1a9b3a3013226d99a048d280ffee13b69321ee67192"
    end
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a2970e336ca59ccb8e1b4c03f7b63a0b5e12c58695531929449bf4228799d1a2"
    end
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
