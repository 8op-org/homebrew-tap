class GlitchNotify < Formula
  desc "gl1tch system tray notification daemon"
  homepage "https://github.com/adam-stokes/gl1tch-notify"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adam-stokes/gl1tch-notify/releases/download/v0.1.0/glitch-notify_v0.1.0_darwin_arm64.tar.gz"
      sha256 "bc27d84c389db019d20ec8366d678cbf34f1848c25c7be118c9590a865ebfbc6"
    else
      url "https://github.com/adam-stokes/gl1tch-notify/releases/download/v0.1.0/glitch-notify_v0.1.0_darwin_amd64.tar.gz"
      sha256 "bc27d84c389db019d20ec8366d678cbf34f1848c25c7be118c9590a865ebfbc6"
    end
  end

  def install
    prefix.install "glitch-notify.app"
    bin.write_exec_script prefix/"glitch-notify.app/Contents/MacOS/glitch-notify"
  end

  test do
    assert_predicate bin/"glitch-notify", :exist?
  end
end
