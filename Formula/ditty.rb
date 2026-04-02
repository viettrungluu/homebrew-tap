class Ditty < Formula
  desc "Convert line-interactive programs (REPLs, debuggers) into CLI programs"
  homepage "https://github.com/viettrungluu/ditty"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.4.0/ditty-darwin-arm64.tar.gz"
      sha256 "9c0b08afe3dce7f2e13c512190b3151b0a642e5b106d80a8d5938ffc25f15595"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.4.0/ditty-darwin-amd64.tar.gz"
      sha256 "3e5dd600e6793b18b3f226e95a837884b0906f1ab388cb8f592bc24e07dfd4d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.4.0/ditty-linux-arm64.tar.gz"
      sha256 "04856f88da4348ac7b6675b2f5c75f4f68826dd3f51d6f1a8f1fd60dbd742259"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.4.0/ditty-linux-amd64.tar.gz"
      sha256 "e65449d26b793cf0c56cb67fdbca87b64ef2c779f4f2042dbefcee19b5fa744d"
    end
  end

  def install
    bin.install "ditty"
  end

  test do
    assert_match "ditty", shell_output("#{bin}/ditty --help")
  end
end
