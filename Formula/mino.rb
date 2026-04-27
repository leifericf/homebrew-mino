class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.74.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.74.2/mino_darwin_arm64_v0.74.2.tar.gz"
      sha256 "2a5bc31948726c664ce8efa518f32c1614b2519c55362dc9956349b741c13ea3"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.74.2/mino_darwin_amd64_v0.74.2.tar.gz"
      sha256 "35c6e4e519bde51fc9ee005ff6d62a4a6fc33103d6a49f961036aa2ce36cf213"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.74.2/mino_linux_arm64_v0.74.2.tar.gz"
      sha256 "41a72e7b15910ef2361dabfe1b8c17d8b7359978f635b1de478c180c18cfca7d"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.74.2/mino_linux_amd64_v0.74.2.tar.gz"
      sha256 "848a9c125e60237f1b1516423552d76f8c8492483f52a6ddcf808ffdfed9a847"
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
