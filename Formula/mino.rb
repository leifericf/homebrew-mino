class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.104.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.104.0/mino_darwin_arm64_v0.104.0.tar.gz"
      sha256 "7f3bf4f6724c421cd76dedf10bc40526b4d0435e9189fdb90434d55ecd147296"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.104.0/mino_darwin_amd64_v0.104.0.tar.gz"
      sha256 "25e61a29312811d1aa774b85c7a8fb0ccf3dd4fdf4f0d7571f5a090848039343"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.104.0/mino_linux_arm64_v0.104.0.tar.gz"
      sha256 "aa64d99d88b85f2f1d76290261ac9b7d1b9488a4fa6caad7aa8a06077ace867c"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.104.0/mino_linux_amd64_v0.104.0.tar.gz"
      sha256 "05f79c80feb5b0c5cafc5aa3cd237bf32a746ee3d68036bade5e642e770c2e50"
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
