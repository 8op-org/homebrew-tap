class Glitch < Formula
  desc "gl1tch workflow engine"
  homepage "https://8op.org"
  license "MIT"
  version "0.3.0"

  depends_on "babashka"

  on_macos do
    url "https://github.com/8op-org/gl1tch/releases/download/v0.3.0/glitch_0.3.0_darwin_arm64.tar.gz"
    sha256 "fe493878b3d32ddf28ea8f7b8804dd3d8a7963d2afb8393dfa3cd311be885f8c"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/8op-org/gl1tch/releases/download/v0.3.0/glitch_0.3.0_linux_arm64.tar.gz"
      sha256 "654c98189443599180dfa6438de2c45f89ac43e8cfaa5129db23f0e77aa0b909"
    else
      url "https://github.com/8op-org/gl1tch/releases/download/v0.3.0/glitch_0.3.0_linux_amd64.tar.gz"
      sha256 "654c98189443599180dfa6438de2c45f89ac43e8cfaa5129db23f0e77aa0b909"
    end
  end

  def install
    bin.install "glitch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glitch version")
  end
end
