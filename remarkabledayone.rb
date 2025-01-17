# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Remarkabledayone < Formula
  desc "A utility to sync pages from a Remarkable 2 tablet to Day One"
  homepage "https://github.com/jaredallard/remarkabledayone"
  version "0.1.8"
  license "AGPL-3.0"

  depends_on "imagemagick" if OS.mac?

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jaredallard/remarkabledayone/releases/download/v0.1.8/remarkabledayone_0.1.8_darwin_amd64.tar.gz"
      sha256 "781a069c1db1f73023c8467683935651c96531cf011b2102710c388a7a0f3297"

      def install
        bin.install "remarkabledayone"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jaredallard/remarkabledayone/releases/download/v0.1.8/remarkabledayone_0.1.8_darwin_arm64.tar.gz"
      sha256 "57d06ee8ee705d6e4018fc2a79c311729531eddd28451a860da41425e20828f8"

      def install
        bin.install "remarkabledayone"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jaredallard/remarkabledayone/releases/download/v0.1.8/remarkabledayone_0.1.8_linux_amd64.tar.gz"
        sha256 "5ffbf18998f40dc9ac682313b92373b70973ddd9ee469c7146625ace0d0ba85d"

        def install
          bin.install "remarkabledayone"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jaredallard/remarkabledayone/releases/download/v0.1.8/remarkabledayone_0.1.8_linux_arm64.tar.gz"
        sha256 "9bbbaf24f957dafaca653356c6e7140bd0e7febce88e0ff78bac031414514985"

        def install
          bin.install "remarkabledayone"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Dayone must be installed manually from the app store.
      Inkscape must be installed manually via `brew install --cask inkscape`.
      rmc must be installed manually. Recommend path is to use `uv` to
      install it:

        brew install uv
        uv tool install rmc
    EOS
  end
end
