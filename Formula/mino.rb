class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.149.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.149.1/mino_darwin_arm64_v0.149.1.tar.gz"
      sha256 "0bf625d7b36f1deeb694106b4fee10450c084267c3450f63be773ca9b0696f2c"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.149.1/mino_darwin_amd64_v0.149.1.tar.gz"
      sha256 "d43b0b5ef6a8678b7e4ed2b9f2d9eac7035168afba845c458f35a94e46a08a91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.149.1/mino_linux_arm64_v0.149.1.tar.gz"
      sha256 "02cd0dfd8caa6b0dca5008164979455976ab7627ddf29b7ff42ea36fd24ed712"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.149.1/mino_linux_amd64_v0.149.1.tar.gz"
      sha256 "011d78e68fbf65dc64aa343eb783a98779e673a680b3b31e32501aea8da9c6cf"
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
