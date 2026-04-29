class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.94.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.94.5/mino_darwin_arm64_v0.94.5.tar.gz"
      sha256 "913b5e2045b213100bb7e20ad486c23a55ee2c80617011547d42f78c5a25dd46"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.94.5/mino_darwin_amd64_v0.94.5.tar.gz"
      sha256 "a4c1e18c8bb712670b328867c692cf2bce34b52121fc8d7e02ff1f8f18badb06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.94.5/mino_linux_arm64_v0.94.5.tar.gz"
      sha256 "882c920a9e1e469a62c8952bb650aa24e44205a79ef08b8a42c6c78fb9dc63ec"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.94.5/mino_linux_amd64_v0.94.5.tar.gz"
      sha256 "4cb0d72b6ad853713fad862bb32fe39a194642add56836365ebe5df58be8ef32"
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
