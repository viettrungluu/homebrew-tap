class Ditty < Formula
  desc "Convert line-interactive programs (REPLs, debuggers) into CLI programs"
  homepage "https://github.com/viettrungluu/ditty"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.1.0/ditty-darwin-arm64.tar.gz"
      sha256 "f1103d7983fffd0cae03eadeee35c5bf295e0d0f72a14f34ba1a086c71cb242a"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.1.0/ditty-darwin-amd64.tar.gz"
      sha256 "cf218625d66fe4daa71ac56acde01c077e9b23dde93f6b516fe464440bc4d248"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.1.0/ditty-linux-arm64.tar.gz"
      sha256 "3a806dc65ef963ec4be35565134d58169e505143fc451a59ad28edff12a82760"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.1.0/ditty-linux-amd64.tar.gz"
      sha256 "ebb2a177b0f0dabf4eeca65b35fcc0ead319de4f3731548def4c278595a081a3"
    end
  end

  def install
    # The tarball extracts to ditty-OS-ARCH/ditty.
    bin.install Dir["ditty-*/ditty"].first
  end

  test do
    assert_match "ditty", shell_output("#{bin}/ditty --help")
  end
end
