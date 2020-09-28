# This file was generated by GoReleaser. DO NOT EDIT.
class Kconnect < Formula
  desc "The Kubernetes Connection Manager CLI"
  homepage "https://github.com/fidelity/kconnect"
  version "0.1.0-rc.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/fidelity/kconnect/releases/download/0.1.0-rc.4/kconnect_macos_64-bit.tar.gz"
    sha256 "bbffe9dcbe51628d18f2c9121f69a3ad8e14af6ff7a9b5b40f35f6f01855dccb"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/fidelity/kconnect/releases/download/0.1.0-rc.4/kconnect_linux_64-bit.tar.gz"
      sha256 "eb1ee89c6761c5493840bb1aa90e8b286b6206ce368be85be4259aeeb5cee2e0"
    end
  end
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "kconnect"
  end
end
