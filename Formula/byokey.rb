class Byokey < Formula
  desc "Bring Your Own Keys — AI subscription-to-API proxy gateway"
  homepage "https://github.com/AprilNEA/BYOKEY"
  version "0.9.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bd2304ae760db370be6458356ed5aff32de2b269e59d7a2f8f18ea03a387dd9d"
    end
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d0133ff61fef0d577b3ee320f53c96a167c4b08e4fbe786d61852f5d33b4a24f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49e9235a5bd1c42e3a0b36650717cbb7b2bc3f0f0d701bb6ae8c716bfe23ca8d"
    end
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36a9398601bdda67ab4869049533945bbee85a2197ecfe603c7bf3786d4d344e"
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
