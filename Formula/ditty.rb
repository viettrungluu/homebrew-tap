class Ditty < Formula
  desc "Convert line-interactive programs (REPLs, debuggers) into CLI programs"
  homepage "https://github.com/viettrungluu/ditty"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.2/ditty-darwin-arm64.tar.gz"
      sha256 "c8d235edb72f5a8e0a74866dc34ab5717e9e4bf88af116c7814a4da900884ddf"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.2/ditty-darwin-amd64.tar.gz"
      sha256 "a66c51451dcdd69230c2337a3f254b3e2712c1cf0d2a974e8ea74fcb7c7e2d02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.2/ditty-linux-arm64.tar.gz"
      sha256 "aed08a165abd70370fa9034069f6139a2bf30772ca4065df10d5b08cb4a3524f"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.2/ditty-linux-amd64.tar.gz"
      sha256 "941f9f8d1dfe2334cfd7175540bf7b81f686e3a020131009957774ff32f5ca42"
    end
  end

  def install
    bin.install "ditty"
  end

  test do
    assert_match "ditty", shell_output("#{bin}/ditty --help")
  end
end
