class Kemforge < Formula
  desc "Kemforge CLI"
  homepage "https://github.com/ConnectingApps/kemforge"
  version "1.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-amd64.tar.gz"
    sha256 "9625b91a02e80fc26ded2d60495ecca2f420feb46fc31e49bfbf84f8889e671d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-arm64.tar.gz"
    sha256 "730c787219d906465fb5235dbbf6f34c7061b94eb474aeb64ab826d2577a2642"
  end

  def install
    bin.install "kemforge-darwin-#{Hardware::CPU.arch}" => "kemforge"
  end
end
