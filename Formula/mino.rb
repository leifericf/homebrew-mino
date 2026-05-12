class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.144.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.144.6/mino_darwin_arm64_v0.144.6.tar.gz"
      sha256 "5267fefc841f9a81fd738d3d04b8f77f7393cf1546b8e7c1c02ebe6d0502de77"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.144.6/mino_darwin_amd64_v0.144.6.tar.gz"
      sha256 "a1706f9bec14b468b377a9cb219735eb22952935fa6be1a280a3539a27a3e60f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.144.6/mino_linux_arm64_v0.144.6.tar.gz"
      sha256 "025229a24dfc1507fe4a88c24b432ded19cf0ea40914be524be040062fb64251"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.144.6/mino_linux_amd64_v0.144.6.tar.gz"
      sha256 "8320d096219b3f6a5a43d0054f5f166d6a9d9a09fbca1c954d36d8eabde6d656"
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
