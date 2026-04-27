class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.74.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.74.3/mino_darwin_arm64_v0.74.3.tar.gz"
      sha256 "8a1cc57d7a21569c7f86904f2c1737b5a53fa9d7bda324a75360ddcf7dc8d06d"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.74.3/mino_darwin_amd64_v0.74.3.tar.gz"
      sha256 "1ea4b1c7e23d4179ce0b7cb0e3cd924c30d4eeb878ec2b13f7fc000d83838eba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.74.3/mino_linux_arm64_v0.74.3.tar.gz"
      sha256 "62d0b78d0afd3b16a88e502d185f95a6e7a1e3b217d0e32a715769ddd12f3721"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.74.3/mino_linux_amd64_v0.74.3.tar.gz"
      sha256 "3050bedb6c4167aab9e38c486e1775e21dc0f3f2c1ca9f32c7e338e68266c154"
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
