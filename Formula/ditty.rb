class Ditty < Formula
  desc "Convert line-interactive programs (REPLs, debuggers) into CLI programs"
  homepage "https://github.com/viettrungluu/ditty"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.0/ditty-darwin-arm64.tar.gz"
      sha256 "1eace938680bbc38d8a1905b2b6fd3a61c6af8cdf9bcae4354e33dc2b12434e4"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.0/ditty-darwin-amd64.tar.gz"
      sha256 "2b62312328bd337c1a3f245a998392862e0cc2b21fcd6e256fac7b193f5477e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.0/ditty-linux-arm64.tar.gz"
      sha256 "46b75a05d09dde625197f7eae4a9196f83f2774b54890996a46c8af2f918eb6c"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.0/ditty-linux-amd64.tar.gz"
      sha256 "1d5430d6d3ee48ac2571ca26d1529872c658b4bbc2982c0729acc9208108ee42"
    end
  end

  def install
    bin.install "ditty"
  end

  test do
    assert_match "ditty", shell_output("#{bin}/ditty --help")
  end
end
