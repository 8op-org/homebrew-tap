class Gl1tchMud < Formula
  desc "gl1tch MUD game world engine"
  homepage "https://github.com/adam-stokes/gl1tch-mud"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adam-stokes/gl1tch-mud/releases/download/v0.2.0/gl1tch-mud_0.2.0_darwin_arm64.tar.gz"
      sha256 "940866d556328d501875a998921a5bb4bd7b4e41baff6797a03966a1af86fcb2"
    else
      url "https://github.com/adam-stokes/gl1tch-mud/releases/download/v0.2.0/gl1tch-mud_0.2.0_darwin_amd64.tar.gz"
      sha256 "9e632500788f94f294f9762243db22b798ae8cc0e90165977e447612e06214a9"
    end
  end

  def install
    bin.install "gl1tch-mud"
  end

  test do
    assert_predicate bin/"gl1tch-mud", :exist?
  end
end
