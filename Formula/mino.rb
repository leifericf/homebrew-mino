class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "2026.08.07-alpha1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/2026.08.07-alpha1/mino_darwin_arm64_2026.08.07-alpha1.tar.gz"
      sha256 "3aea7ecb5313f521b7d14e06c7da0a3f5b3c7ab215e0e97028a2780ae5e21848"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/2026.08.07-alpha1/mino_darwin_amd64_2026.08.07-alpha1.tar.gz"
      sha256 "6adf2b23271a094b64cafa36f6e63684d53a04592ccdcee75c33f35f71a28591"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/2026.08.07-alpha1/mino_linux_arm64_2026.08.07-alpha1.tar.gz"
      sha256 "5a17fde460de5ad6ef25f244f3d2fa0ff3252011ec7ad8ac6b6bc7173a3f95de"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/2026.08.07-alpha1/mino_linux_amd64_2026.08.07-alpha1.tar.gz"
      sha256 "1667f045febf8e2c5e06998f1fc5bf126e98aa4f9e41d9f9f50877eb3e31322f"
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
