class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.422.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.422.1/mino_darwin_arm64_v0.422.1.tar.gz"
      sha256 "5302ee43a5008bba4eca9463a18cd5afdff3ce8bf60a57f47229ff37923926f5"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.422.1/mino_darwin_amd64_v0.422.1.tar.gz"
      sha256 "4cd448e9fc74560fb21a8fe4b0e03ef5ef15840e0741544dd45dfbb49bfa2ac1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.422.1/mino_linux_arm64_v0.422.1.tar.gz"
      sha256 "f09add464213e575f50ae856c239cd73356e38873b33479886eefd06b58a3a61"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.422.1/mino_linux_amd64_v0.422.1.tar.gz"
      sha256 "9dc62f90e916134910291c108f4cbae564c5b985683393a2b110ebac22f12b9b"
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
