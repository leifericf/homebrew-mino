class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.151.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.151.0/mino_darwin_arm64_v0.151.0.tar.gz"
      sha256 "73ed65c151438a298508a9372c42cdf6ed6654d431f8cbb9138a40dc98484d87"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.151.0/mino_darwin_amd64_v0.151.0.tar.gz"
      sha256 "fce2717e1e76e97d922572ea17bc4f3916b05aad269b0bd766d2643f8f4467a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.151.0/mino_linux_arm64_v0.151.0.tar.gz"
      sha256 "14c67b03fec1c15ad996ddd9af6dc24420a7649e1b2eca5348b109950b5809d9"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.151.0/mino_linux_amd64_v0.151.0.tar.gz"
      sha256 "d71b6afb01bf0e50bbc430a31e479329d793c25f7fb51d874d84e61e7c107a55"
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
