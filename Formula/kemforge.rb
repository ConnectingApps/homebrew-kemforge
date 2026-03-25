class Kemforge < Formula
  desc "Kemforge CLI"
  homepage "https://github.com/ConnectingApps/kemforge"
  version "1.3.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.2/kemforge-darwin-amd64.tar.gz"
    sha256 "5d6532a6ae45a13eece0b507a53733208f076e5bfb93b7b2489f62da34c9a434"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.2/kemforge-darwin-arm64.tar.gz"
    sha256 "ae868f689616a25e0b5c56a38aefa2e01a3fd044b264f95f3127dbb9fc4d953e"
  end

  def install
    bin.install "kemforge-darwin-#{Hardware::CPU.arch}" => "kemforge"
  end
end
