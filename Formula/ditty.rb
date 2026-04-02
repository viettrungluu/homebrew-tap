class Ditty < Formula
  desc "Convert line-interactive programs (REPLs, debuggers) into CLI programs"
  homepage "https://github.com/viettrungluu/ditty"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.2.0/ditty-darwin-arm64.tar.gz"
      sha256 "d688c1089bd92f1d4d20a72d6692b7965c936655ec68c8a5b6ce017a337e9dab"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.2.0/ditty-darwin-amd64.tar.gz"
      sha256 "8418a46cf67f105f7295d00a1b3a7a604f2df30f0cb076c018654870c7ee7fcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.2.0/ditty-linux-arm64.tar.gz"
      sha256 "fab870bc0cf02efb843196354650e97afda9bea384038eaf34d1c3fa7f9473c3"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.2.0/ditty-linux-amd64.tar.gz"
      sha256 "58069bfddf325d0656dd9a2856aebb447a024287b2924d39eaa75a45f17b89aa"
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
