class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "2026.06.30-alpha1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/2026.06.30-alpha1/mino_darwin_arm64_2026.06.30-alpha1.tar.gz"
      sha256 "4fa7c635f2bdfffd25c3930880fe4f609eb872027ed8f390bb9c6d66fd3f5d43"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/2026.06.30-alpha1/mino_darwin_amd64_2026.06.30-alpha1.tar.gz"
      sha256 "011c3414b3ef12bc384e5ffc9e69e0c2330810029d5b4afb1cade5f153f65565"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/2026.06.30-alpha1/mino_linux_arm64_2026.06.30-alpha1.tar.gz"
      sha256 "166e1434d8c2ccd72d55e7d06d1bc70e43582ebdec3d44fa987be0c3073ad1c3"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/2026.06.30-alpha1/mino_linux_amd64_2026.06.30-alpha1.tar.gz"
      sha256 "b3c3a9e2e35aa1f24021f2661d7fbe56a0050b852066c7e48d6307fdae1f1860"
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
