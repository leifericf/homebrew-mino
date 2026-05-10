class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.101.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.101.0/mino_darwin_arm64_v0.101.0.tar.gz"
      sha256 "c93b1b44b6292553d7de14ff5205a26d5070a3fd351d353526a78b8c345b2db1"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.101.0/mino_darwin_amd64_v0.101.0.tar.gz"
      sha256 "e75873c01cb98cc6d58f822d5ac664e3f5d24f308b3816a9fa135fc6355f084c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.101.0/mino_linux_arm64_v0.101.0.tar.gz"
      sha256 "367c288a55cea11aa45d37c85e058dbf232263baf5c3bd6dbeae891c2b5575d4"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.101.0/mino_linux_amd64_v0.101.0.tar.gz"
      sha256 "e5c20a902ca2d5dedfbabed841f26a4caf9a0bb3bf3a68a62d706b2bf14395c0"
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
