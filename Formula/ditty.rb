class Ditty < Formula
  desc "Convert line-interactive programs (REPLs, debuggers) into CLI programs"
  homepage "https://github.com/viettrungluu/ditty"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.3.0/ditty-darwin-arm64.tar.gz"
      sha256 "807a3f1784bb5c6f580b2d7527efae3cb9a98437a1543d475ce5db36150feb23"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.3.0/ditty-darwin-amd64.tar.gz"
      sha256 "56f3917a3fb737afc679c53f9354fcad6451853eede14737e642fe1e7211eb68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.3.0/ditty-linux-arm64.tar.gz"
      sha256 "fe13a5f99a8bfe11491d15da5ace173addf6882ed2481af89a782057538f23a2"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.3.0/ditty-linux-amd64.tar.gz"
      sha256 "c4bc6d645dfdf1d96735ac28eba68dc76ff22c8259ca28468f469b1070e9f8a1"
    end
  end

  def install
    bin.install "ditty"
  end

  test do
    assert_match "ditty", shell_output("#{bin}/ditty --help")
  end
end
