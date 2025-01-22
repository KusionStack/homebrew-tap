# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kusion < Formula
  desc "Codify and deliver intentions to Kubernetes and Clouds"
  homepage "https://github.com/KusionStack/kusion"
  version "0.14.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/kusion/releases/download/v0.14.0/kusion_0.14.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d9e3afe610f86028f8ea5c22f409cde4e879f6ec0296839186db46053d1487bf"

      def install
        bin.install "kusion"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/kusion/releases/download/v0.14.0/kusion_0.14.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "74f01e973202148428d748a33b4ff2ced286fb88fd989b72fee148786604c185"

      def install
        bin.install "kusion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/KusionStack/kusion/releases/download/v0.14.0/kusion_0.14.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "38521d3b258a3e1443018f9f1a3d61e5f65a89599fb4b1f4eb1bbc97109e6379"

        def install
          bin.install "kusion"
        end
      end
    end
  end

  test do
    system "#{bin}/kusion version"
  end
end
