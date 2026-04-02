class Ditty < Formula
  desc "Convert line-interactive programs (REPLs, debuggers) into CLI programs"
  homepage "https://github.com/viettrungluu/ditty"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.1.1/ditty-darwin-arm64.tar.gz"
      sha256 "65006d951cda5f464e75d57bd6933c5f2d24fd9e935744c990ad9e47a513dc02"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.1.1/ditty-darwin-amd64.tar.gz"
      sha256 "c00007751462608f8be8fb09e30d5ffeafaf3e0371f6540d967d1026076d5e10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.1.1/ditty-linux-arm64.tar.gz"
      sha256 "3b133df6bacef07665ec0274fb97411fbdc749cd25de9853f9b156e0924c0e62"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.1.1/ditty-linux-amd64.tar.gz"
      sha256 "2c35b7279a60603ac6ad43f5e3c4dfff9e018d02a1b4a991cae7ac0a2680c3b7"
    end
  end

  def install
    # Homebrew strips the single top-level directory from the tarball,
    # so the binary is directly available as "ditty".
    bin.install "ditty"
  end

  test do
    assert_match "ditty", shell_output("#{bin}/ditty --help")
  end
end
