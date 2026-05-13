class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.151.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.151.1/mino_darwin_arm64_v0.151.1.tar.gz"
      sha256 "a92cf1104c77088dbb3f56ee2310a224d35dd5bda1c53595c74b821392073367"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.151.1/mino_darwin_amd64_v0.151.1.tar.gz"
      sha256 "c7814fd591f36f9aa9ebf6011a4f742b8ac96b6871601d13ec5658ff3ac9a5c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.151.1/mino_linux_arm64_v0.151.1.tar.gz"
      sha256 "fd46a37a187617345cf77baa3b9a5192e8472ad9676263f7dc843e096cfaf2f7"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.151.1/mino_linux_amd64_v0.151.1.tar.gz"
      sha256 "f0c2de38c3dd849d556062919e27c60dbe40af41fe57da793f2bc629b56aa97e"
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
