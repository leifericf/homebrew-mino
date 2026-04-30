class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.96.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.96.9/mino_darwin_arm64_v0.96.9.tar.gz"
      sha256 "0390e9387a2c79c9ec73ef74db034d06a54d265bbe16b4f84763c5c1e745cef9"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.96.9/mino_darwin_amd64_v0.96.9.tar.gz"
      sha256 "742501619202e753ea1ec28ebb5e44626adcd0492d6e6f99bab9344d96b9ef3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.96.9/mino_linux_arm64_v0.96.9.tar.gz"
      sha256 "fe977d83d8404d8547f7c0442a22e02469e43063712367975b8d4e8bea78520a"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.96.9/mino_linux_amd64_v0.96.9.tar.gz"
      sha256 "ba3246b9a1dce778173bd4da7742541a702d57f6339dee31b3d718e118eaf31e"
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
