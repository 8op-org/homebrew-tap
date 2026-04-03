class Gl1tchMud < Formula
  desc "gl1tch MUD game world engine"
  homepage "https://github.com/adam-stokes/gl1tch-mud"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adam-stokes/gl1tch-mud/releases/download/v0.1.0/gl1tch-mud_v0.1.0_darwin_arm64.tar.gz"
      sha256 "fefd32c60cf986c9b601b744e28acd3a78e6db4b59abbbfba1d9b21471115f65"
    else
      url "https://github.com/adam-stokes/gl1tch-mud/releases/download/v0.1.0/gl1tch-mud_v0.1.0_darwin_arm64.tar.gz"
      sha256 "fefd32c60cf986c9b601b744e28acd3a78e6db4b59abbbfba1d9b21471115f65"
    end
  end

  def install
    bin.install "gl1tch-mud"
  end

  test do
    assert_predicate bin/"gl1tch-mud", :exist?
  end
end
