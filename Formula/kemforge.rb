class Kemforge < Formula
  desc "Kemforge CLI"
  homepage "https://github.com/ConnectingApps/kemforge"
  version "1.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-amd64.tar.gz"
    sha256 "c403c3e20594884c6195bccfc12211d3595d6f0b74e4f70af849080a64a50d0d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-arm64.tar.gz"
    sha256 "2ecdeedac9f9db48112f6fcacf3df42a92a8363e5ce8894c549ad6690b1b12f2"
  end

  def install
    bin.install "kemforge-darwin-#{Hardware::CPU.arch}" => "kemforge"
  end
end
