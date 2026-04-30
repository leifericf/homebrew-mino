class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.98.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.98.6/mino_darwin_arm64_v0.98.6.tar.gz"
      sha256 "b701e0620115c72f085d8b8fcfecbaf08eaa088d62ae0845ad5c868300743c17"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.98.6/mino_darwin_amd64_v0.98.6.tar.gz"
      sha256 "fb9ca61c4b05ae93f530ab37be939c6eadea219d5e841323c66fbf84732bfc4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.98.6/mino_linux_arm64_v0.98.6.tar.gz"
      sha256 "c280a5cf68a1a7c43b9217f879b677cb586eef6273c19cf7cd274a05b5fad63c"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.98.6/mino_linux_amd64_v0.98.6.tar.gz"
      sha256 "1c07a38156556872bb0910474c3354c2abdb51870908276e2f9e994187adf74c"
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
