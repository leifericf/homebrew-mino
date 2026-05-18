class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.323.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.323.0/mino_darwin_arm64_v0.323.0.tar.gz"
      sha256 "7c3cef69b196de875cfcdf42db00cd070f6a2459d94be0bca0cfe816623cd8d9"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.323.0/mino_darwin_amd64_v0.323.0.tar.gz"
      sha256 "ba4f2fa94af8ed3e4394279fc61c58d8d1351bd62822fd0628bec708d9790c2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.323.0/mino_linux_arm64_v0.323.0.tar.gz"
      sha256 "9ed71bc899adf5738f69b78677c069ebd2287583d6e5e7856c11363ebcce16d1"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.323.0/mino_linux_amd64_v0.323.0.tar.gz"
      sha256 "11aae4a5d7b2b9bebc62968868ca7f9b3b7135a16ea97689755501151d1a03fd"
    end
  end

  def install
    bin.install "mino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mino --version")
    assert_equal "3", shell_output("#{bin}/mino -e '(+ 1 2)'").strip
  end
end
