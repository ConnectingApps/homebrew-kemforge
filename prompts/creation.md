Create a complete GitHub Actions workflow for the repository:

https://github.com/ConnectingApps/homebrew-kemforge

This repository is a Homebrew tap and is responsible for building and publishing the CLI from:

https://github.com/ConnectingApps/kemforge

GOAL:
Fully automated pipeline that builds, releases, publishes to Homebrew, and verifies installation.

REQUIREMENTS:

SOURCE:

* Clone:
  https://github.com/ConnectingApps/kemforge

VERSION:

* Fetch tags:
  git fetch --tags
* Determine latest semantic version tag:
  git tag --sort=-v:refname | head -n 1
* Store as LATEST_TAG
* Extract VERSION without leading "v"

BUILD:

* Use Go 1.26

* Build static binaries:
  CGO_ENABLED=0

* Targets:
  darwin/amd64
  darwin/arm64

* Output binaries:
  kemforge-darwin-amd64
  kemforge-darwin-arm64

PACKAGING:

* Create archives:
  kemforge-darwin-amd64.tar.gz
  kemforge-darwin-arm64.tar.gz

CHECKSUMS:

* Compute SHA256:
  shasum -a 256 *.tar.gz
* Capture values into variables
* Print them in logs

RELEASE:

* Create GitHub release in THIS repository
* Tag = LATEST_TAG
* Upload both tar.gz files as assets

OUTPUT:

* Print full URLs of uploaded assets

FORMULA:

* Ensure directory exists:
  Formula/

* Create/update:
  Formula/kemforge.rb

* Ruby class:
  class Kemforge < Formula

* Fields:
  desc "Kemforge CLI"
  homepage "https://github.com/ConnectingApps/kemforge"
  version "<VERSION>"

* Architecture blocks:

  if OS.mac? && Hardware::CPU.intel?
  url "<RELEASE_URL_AMD64>"
  sha256 "<SHA256_AMD64>"
  end

  if OS.mac? && Hardware::CPU.arm?
  url "<RELEASE_URL_ARM64>"
  sha256 "<SHA256_ARM64>"
  end

* Install:
  def install
  bin.install "kemforge-darwin-#{Hardware::CPU.arch}"
  end

COMMIT:

* Commit updated formula
* Push to main branch

BREW TEST:

* Install Homebrew if missing
* Run:
  brew tap ConnectingApps/kemforge
  brew install kemforge

TEST:

* Execute:
  `kemforge --help` and `kemforge -I https://www.google.com`
* Fail workflow if commands fails

DELIVERABLE:

* Provide a single complete GitHub Actions YAML file
* Fully working end-to-end pipeline
* No placeholders
