class Glitch < Formula
  desc "gl1tch — AI-native terminal task manager"
  homepage "https://github.com/8op-org/gl1tch"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/8op-org/gl1tch/releases/download/v0.3.0/glitch_v0.3.0_darwin_arm64.tar.gz"
      sha256 "41eedec95ccc86ffdf197add91a5e9ee25a671008525b94ce624290364901bdc"
    else
      url "https://github.com/8op-org/gl1tch/releases/download/v0.3.0/glitch_v0.3.0_darwin_arm64.tar.gz"
      sha256 "41eedec95ccc86ffdf197add91a5e9ee25a671008525b94ce624290364901bdc"
    end
  end

  def install
    bin.install "glitch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glitch --version")
  end
end
