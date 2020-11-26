# This file was generated by GoReleaser. DO NOT EDIT.
class Kconnect < Formula
  desc "The Kubernetes Connection Manager CLI"
  homepage "https://github.com/fidelity/kconnect"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/fidelity/kconnect/releases/download/0.3.1/kconnect_macos_amd64.tar.gz"
    sha256 "33f807a024e53a1aa773eaeefdcde7e831917c9594686d26435bdb51bcff3873"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fidelity/kconnect/releases/download/0.3.1/kconnect_linux_amd64.tar.gz"
    sha256 "44feedf7c30c426f7a1b8116d48703ad633b1e7f49abb568825d4d803a38e23c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/fidelity/kconnect/releases/download/0.3.1/kconnect_linux_arm.tar.gz"
    sha256 "e1f1bcfc053a0910d2cbe0d638f5f5c61a36e66617dfe998c0e236adae57b9cc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/fidelity/kconnect/releases/download/0.3.1/kconnect_linux_arm64.tar.gz"
    sha256 "a151db4935c7e8406ee66f76f1d9dd4c314084d318b36b2954bd57f4293f1376"
  end
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "kconnect"
  end
end
