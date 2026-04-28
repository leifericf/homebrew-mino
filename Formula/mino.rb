class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.92.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.92.1/mino_darwin_arm64_v0.92.1.tar.gz"
      sha256 "5130cebc4d89fce3883da58d6b2fc63946b2a39867203074e812b1500c286221"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.92.1/mino_darwin_amd64_v0.92.1.tar.gz"
      sha256 "c555d93dc42a14a24f3ae0f55e7302aafc80405ae05489abc564f5926859e7e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.92.1/mino_linux_arm64_v0.92.1.tar.gz"
      sha256 "d5a365e7b3b9b6268ad421df2498ee0c9489efef8cbd6102786fed0fbc233e75"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.92.1/mino_linux_amd64_v0.92.1.tar.gz"
      sha256 "55840651f3ffb93cb0459655d3ea1c797361ca16c10fc8c0f1e47c02b25d4681"
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
