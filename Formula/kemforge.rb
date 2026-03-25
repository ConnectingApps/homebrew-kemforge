class Kemforge < Formula
  desc "Kemforge CLI"
  homepage "https://github.com/ConnectingApps/kemforge"
  version "1.3.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.2/kemforge-darwin-amd64.tar.gz"
    sha256 "b1a82d72732c2a540aadda76b3d6361320cb409eb7fa821e4b2861f61e681b64"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ConnectingApps/homebrew-kemforge/releases/download/v1.3.2/kemforge-darwin-arm64.tar.gz"
    sha256 "1dc97137498da05c0ca38bfc8f3e0adce48c9e31f538a3b1febb5a7816305c3f"
  end

  def install
    bin.install "kemforge-darwin-#{Hardware::CPU.arch}"
  end
end
