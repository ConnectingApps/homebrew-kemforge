class Kemforge < Formula
  desc "Kemforge CLI"
  homepage "https://github.com/ConnectingApps/kemforge"
  version "1.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-amd64.tar.gz"
    sha256 "cea26e8509b2bfc0dd452247af2fd3da062eb9ca3f0a26726407f3f4223be5ad"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-arm64.tar.gz"
    sha256 "1db0ee341bf73727254920708b52565583ccd0d3e9a0797907b6bf77d07077e3"
  end

  def install
    bin.install "kemforge-darwin-#{Hardware::CPU.arch}" => "kemforge"
  end
end
