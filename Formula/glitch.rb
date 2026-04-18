class Glitch < Formula
  desc "gl1tch — your GitHub co-pilot"
  homepage "https://8op.org"
  license "MIT"
  version "1.3.0"

  on_macos do
    url "https://github.com/8op-org/gl1tch/releases/download/v1.3.0/glitch_1.3.0_darwin_arm64.tar.gz"
    sha256 "784ec1cd33443845d25458d2b267fb4e2d9774dd3486b194b8c1d8b8933fdd07"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/8op-org/gl1tch/releases/download/v1.3.0/glitch_1.3.0_linux_arm64.tar.gz"
      sha256 "1efb0bbf3dbc59d1dffe511b1c0c7a4c8b87ecb6002eb7ed5101831d349ea6cc"
    else
      url "https://github.com/8op-org/gl1tch/releases/download/v1.3.0/glitch_1.3.0_linux_amd64.tar.gz"
      sha256 "a322825fec12f35754ae9877955bafc387d8f39b544e506a9a3bd77f43081679"
    end
  end

  def install
    bin.install "glitch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glitch --version")
  end
end
