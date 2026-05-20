class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.381.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.381.1/mino_darwin_arm64_v0.381.1.tar.gz"
      sha256 "8152aa57a424b96c5ba85a19fbad51a6908ffc8d374b3f84b0c9012f2d1413f4"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.381.1/mino_darwin_amd64_v0.381.1.tar.gz"
      sha256 "d9d78d866b0575c34dd382411d89a7f32c03b71a7460142d5a565610a4f67d82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.381.1/mino_linux_arm64_v0.381.1.tar.gz"
      sha256 "42765da6f10385f478aa35389080a8865608f605ad8c080355aa8654245f5928"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.381.1/mino_linux_amd64_v0.381.1.tar.gz"
      sha256 "ebf83bc1f837163dc6c16734fd2979b646adae1e4275c23036089750f34ed7a4"
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
