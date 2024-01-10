# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kconnect < Formula
  desc "Kubernetes Connection Manager CLI"
  homepage "https://github.com/fidelity/kconnect"
  version "0.5.15"

  depends_on "Azure/kubelogin/kubelogin"
  depends_on "aws-iam-authenticator"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.15/kconnect_macos_arm64.tar.gz"
      sha256 "935fcf10bd3f657c0966244969f1d4de58b724c2fe52db30500ea01e573d6fa2"

      def install
        bin.install "kconnect"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.15/kconnect_macos_amd64.tar.gz"
      sha256 "6bb1abffbeb5aa995cafb1e23f89ff89bfb3436767a4f6f4f43800b1214a67a0"

      def install
        bin.install "kconnect"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.15/kconnect_linux_arm64.tar.gz"
      sha256 "f469bcef15dd3dda383c997d37c9797628121b82a61b68e725a2538e48986d01"

      def install
        bin.install "kconnect"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.5.15/kconnect_linux_amd64.tar.gz"
      sha256 "d20af967095f68b87e0d88047baf8f1429ef6b8ecc49248e44e0760fb7cda79c"

      def install
        bin.install "kconnect"
      end
    end
  end
end
