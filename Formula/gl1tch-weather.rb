class Gl1tchWeather < Formula
  desc "gl1tch weather widget"
  homepage "https://github.com/adam-stokes/gl1tch-weather"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adam-stokes/gl1tch-weather/releases/download/v0.1.0/gl1tch-weather_v0.1.0_darwin_arm64.tar.gz"
      sha256 "0b9c7d491277f04154048c4fdaaed20617a5cbdf017a5dadd253d59d63dd2123"
    else
      url "https://github.com/adam-stokes/gl1tch-weather/releases/download/v0.1.0/gl1tch-weather_v0.1.0_darwin_arm64.tar.gz"
      sha256 "0b9c7d491277f04154048c4fdaaed20617a5cbdf017a5dadd253d59d63dd2123"
    end
  end

  def install
    bin.install "gl1tch-weather"
  end

  test do
    assert_predicate bin/"gl1tch-weather", :exist?
  end
end
