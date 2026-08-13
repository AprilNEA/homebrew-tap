class Mcplex < Formula
  desc "A local MCP multiplexer"
  homepage "https://github.com/AprilNEA/MCPlex"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-aarch64-apple-darwin.tar.xz"
      sha256 "63c727d3b05250d5b7a4ea23bc00ae783911fd257970ba3a1ce7e721f8138d83"
    end
    on_intel do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-x86_64-apple-darwin.tar.xz"
      sha256 "a195ee4df4c36f01d8c8de35824c050983be13682ca12dce85f523930a7f1025"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "84e31195b374350a59c5f4dafa783156ac092d0e5559694f9747e23e6137b2f4"
    end
  end

  def install
    bin.install "mcplex", "mcplex-daemon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcplex --version")
    assert_match version.to_s, shell_output("#{bin}/mcplex-daemon --version")
  end
end
