class Glitch < Formula
  desc "gl1tch workflow engine"
  homepage "https://8op.org"
  license "MIT"
  version "0.4.0"

  depends_on "babashka"

  url "https://github.com/8op-org/gl1tch/releases/download/v0.4.0/glitch_0.4.0.tar.gz"
  sha256 "83c0b4ff41cd67cbf45b55aa2081bbc61f95a0aa6c8f9c3a92d9ad4c09c93994"

  def install
    mkdir_p share/"glitch/src/glitch"
    cp_r Dir["src/glitch/*"], share/"glitch/src/glitch/"
    (share/"glitch/providers").install Dir["providers/*.clj"]
    (share/"glitch").install "ast-grep-rules"

    (bin/"glitch").write <<~SH
      #!/bin/bash
      exec bb -cp "#{share}/glitch/src" -m glitch.main "$@"
    SH
  end

  def post_install
    provider_dir = etc/"glitch/providers"
    provider_dir.mkpath
    (share/"glitch/providers").each_child do |f|
      provider_dir.install_symlink f unless (provider_dir/f.basename).exist?
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glitch version")
  end
end
