class Kemforge < Formula
  desc "Kemforge CLI"
  homepage "https://github.com/ConnectingApps/kemforge"
  version "1.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-amd64.tar.gz"
    sha256 "551e8d5d11a86ee6f46d5e255a84f8ee83a4d4f1e04a3c22c5b843ae01ab921c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-arm64.tar.gz"
    sha256 "0e76677ba42551284f4e332295d9810e9d9747ea98e64a5a19260a893f250cf0"
  end

  def install
    bin.install "kemforge-darwin-#{Hardware::CPU.arch}" => "kemforge"
  end
end
