class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.150.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.150.0/mino_darwin_arm64_v0.150.0.tar.gz"
      sha256 "753e3fdff81d7c602f5764dad2ae851b39bb5e672183da9c0e374ddf8c3ea545"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.150.0/mino_darwin_amd64_v0.150.0.tar.gz"
      sha256 "229e7ec647e1569a8076c535555c85c27838af3c24595f14ad3b154afd66df04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.150.0/mino_linux_arm64_v0.150.0.tar.gz"
      sha256 "a8c7d26fd4938d8c51749ea4676aad738348503386532fe111429c9d57d13de0"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.150.0/mino_linux_amd64_v0.150.0.tar.gz"
      sha256 "260220e698f036ef43024b70cde5606e175311d32684d9bf887df203de8839d9"
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
