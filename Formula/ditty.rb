class Ditty < Formula
  desc "Convert line-interactive programs (REPLs, debuggers) into CLI programs"
  homepage "https://github.com/viettrungluu/ditty"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.1/ditty-darwin-arm64.tar.gz"
      sha256 "68e454da4b7c7028b50faa42ef0f865fa804800486c447e12840beecd5ac1390"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.1/ditty-darwin-amd64.tar.gz"
      sha256 "78099f38ff03a4c39e8464490512865bbd7791b8053a5ff06b33ed23fbc5041b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.1/ditty-linux-arm64.tar.gz"
      sha256 "9c1d50fa4e96c8e0171b93df8e102aa4bba9d6447e1215f986d57d5fa3aef303"
    end

    on_intel do
      url "https://github.com/viettrungluu/ditty/releases/download/v0.5.1/ditty-linux-amd64.tar.gz"
      sha256 "d678c9dcf50a85d1e2470959f838c7fd5f620042f4f4ebba2a60555d355650ea"
    end
  end

  def install
    bin.install "ditty"
  end

  test do
    assert_match "ditty", shell_output("#{bin}/ditty --help")
  end
end
