class Kemforge < Formula
  desc "Kemforge CLI"
  homepage "https://github.com/ConnectingApps/kemforge"
  version "1.3.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.2/kemforge-darwin-amd64.tar.gz"
    sha256 "cd68309bb1b05d53e0690a3b53e73cc77e1c321e23c8870cabd7e7362a4d6b11"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.2/kemforge-darwin-arm64.tar.gz"
    sha256 "7a25ca4fc793cbdc32c96832e88e2662ee9c070d01502308307b8cfa715080da"
  end

  def install
    bin.install "kemforge-darwin-#{Hardware::CPU.arch}"
  end
end
