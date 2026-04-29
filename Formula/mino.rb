class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.94.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.94.4/mino_darwin_arm64_v0.94.4.tar.gz"
      sha256 "b0347135f5b1f47ee3a8401063dd34cf0733ca1ef82e361f00f2f4fc7a8eff5d"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.94.4/mino_darwin_amd64_v0.94.4.tar.gz"
      sha256 "5d76c25c178a8abb3109e0df8a98f257b1cfb23e176304b75578b31620943480"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.94.4/mino_linux_arm64_v0.94.4.tar.gz"
      sha256 "416f2a2f11c4175ed5e3241b9c7d6cee812c80b6ac3fbf1376efee3a95312a95"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.94.4/mino_linux_amd64_v0.94.4.tar.gz"
      sha256 "3cf286b3d7fe1fb5a0e351671aff45f91efc5672d84aa1620413769cef544876"
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
