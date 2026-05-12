class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.149.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.149.0/mino_darwin_arm64_v0.149.0.tar.gz"
      sha256 "a33f16ddb3a83c9e96d764bb8ec4df4fe0edcd2369605922f75e4ba8b56f87b9"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.149.0/mino_darwin_amd64_v0.149.0.tar.gz"
      sha256 "b1c4fd9f2b6ff029043f1b67823d9a676a397bbdba5142c39ba9dc3d4cf4e28c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.149.0/mino_linux_arm64_v0.149.0.tar.gz"
      sha256 "1e91679285f299e5b6d3e56ee9aa81d0ad4f1ea37699f5721b505c9aa64c4efd"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.149.0/mino_linux_amd64_v0.149.0.tar.gz"
      sha256 "3a933646daf26bdf2ca47def8a60c924985ae0ccd903715b198497d66a19bd5b"
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
