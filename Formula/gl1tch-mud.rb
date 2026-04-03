class Gl1tchMud < Formula
  desc "gl1tch MUD game world engine"
  homepage "https://github.com/adam-stokes/gl1tch-mud"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adam-stokes/gl1tch-mud/releases/download/v0.1.0/gl1tch-mud_v0.1.0_darwin_arm64.tar.gz"
      sha256 "eb362c8c3000b039662895b71d725bc8827c8d5b34ebdae15f25a41865ad27f8"
    else
      url "https://github.com/adam-stokes/gl1tch-mud/releases/download/v0.1.0/gl1tch-mud_v0.1.0_darwin_arm64.tar.gz"
      sha256 "eb362c8c3000b039662895b71d725bc8827c8d5b34ebdae15f25a41865ad27f8"
    end
  end

  def install
    bin.install "gl1tch-mud"
  end

  test do
    assert_predicate bin/"gl1tch-mud", :exist?
  end
end
