class Kemforge < Formula
  desc "Kemforge CLI"
  homepage "https://github.com/ConnectingApps/kemforge"
  version "1.3.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-amd64.tar.gz"
    sha256 "bbdfc4041eac0667eea6b762013b774c2ac064a70c6055548629c8894cff7587"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.3/kemforge-darwin-arm64.tar.gz"
    sha256 "772747189cf087ffd56c6a0f57f8ec2747cb824733e1be0b0af0e3763cb6f1bd"
  end

  def install
    bin.install "kemforge-darwin-#{Hardware::CPU.arch}" => "kemforge"
  end
end
