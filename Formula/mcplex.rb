class Mcplex < Formula
  desc "A local MCP multiplexer"
  homepage "https://github.com/AprilNEA/MCPlex"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-aarch64-apple-darwin.tar.xz"
      sha256 "15b93d5c6c843914b9619fa01f48ac914e3eccddb6745516371363871ccb9598"
    end
    on_intel do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-x86_64-apple-darwin.tar.xz"
      sha256 "c87e60ddd499857bb37a11a102b56856a4d8eeb7dd59008024c75ef278990c22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "bbf65c588fb855605bb0094433a7aa0f5f222f97742dad21908693b431dbe523"
    end
  end

  def install
    bin.install "mcplex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcplex --version")
  end
end
