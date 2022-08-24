# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kconnect < Formula
  desc "Kubernetes Connection Manager CLI"
  homepage "https://github.com/fidelity/kconnect"
  version "0.5.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.9/kconnect_macos_amd64.tar.gz"
      sha256 "0f080ffda9a84c06bc19e75aa5cfe915197007a2444ddfd505923d8ab2cc9a2a"

      def install
        bin.install "kconnect"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.9/kconnect_macos_arm64.tar.gz"
      sha256 "5a2c2095d89956b5df23e64b335d07119272c87c4d4208cf9453b1b130a69dc0"

      def install
        bin.install "kconnect"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.9/kconnect_linux_amd64.tar.gz"
      sha256 "0b9ee1cf5ffc7ff15302d868f91d32ef715f5e3fcf1d46081612dc7871ab16c0"

      def install
        bin.install "kconnect"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.9/kconnect_linux_arm64.tar.gz"
      sha256 "bce66de61d1d3b90b29bf58d6cc3275a2627521409ad3da6f4ab62c80dac6a17"

      def install
        bin.install "kconnect"
      end
    end
  end

  depends_on "aws-iam-authenticator"
  depends_on "Azure/kubelogin/kubelogin"
  depends_on "kubernetes-cli"
end
