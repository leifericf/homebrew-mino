class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.423.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.423.5/mino_darwin_arm64_v0.423.5.tar.gz"
      sha256 "cc7cbd0a8c1e9a470ed92c7f092e1af976e021b52ef45e62fbc103883a1bca91"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.423.5/mino_darwin_amd64_v0.423.5.tar.gz"
      sha256 "56e61d96768f13590da12f45f2f620c0372c7326080512382c34b687cb434cd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.423.5/mino_linux_arm64_v0.423.5.tar.gz"
      sha256 "3d8d33456c048d098faec71932b079bc3bdc27bf928171b3d176bee4b3f9ab53"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.423.5/mino_linux_amd64_v0.423.5.tar.gz"
      sha256 "f26ad64f6f11707cc994a93bad6ebf3ba4b0f1a05abf03073149eddc513b5210"
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
