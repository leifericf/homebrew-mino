class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.388.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.388.0/mino_darwin_arm64_v0.388.0.tar.gz"
      sha256 "5137f8dd1eda6c35d42e23a8f03f21d6a8a5c00599285ed05b668c84b0614653"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.388.0/mino_darwin_amd64_v0.388.0.tar.gz"
      sha256 "ae43c473af0bb3bc7e4289beb621661810f086d0fb1c7be90df0d337efe10e47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.388.0/mino_linux_arm64_v0.388.0.tar.gz"
      sha256 "f282f3444036256927ac5c4e41e59892a70d2c778bc60ca980ea2fa238ecf7f3"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.388.0/mino_linux_amd64_v0.388.0.tar.gz"
      sha256 "e52128e62c4c1ca4aa3a7cd3b9b53e058efcbbcf1ac95f69f6bd338dab33e275"
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
