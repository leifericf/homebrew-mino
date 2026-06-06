class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.423.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.423.4/mino_darwin_arm64_v0.423.4.tar.gz"
      sha256 "cbf832d97ce77f07f5691d25fa1fb3eb67f0a704becd50cbff9737d39b15de78"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.423.4/mino_darwin_amd64_v0.423.4.tar.gz"
      sha256 "289add6c16dbf0ac2b126fc08191127fb0a6fb2599128b3f7e7ccc0c548ab783"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.423.4/mino_linux_arm64_v0.423.4.tar.gz"
      sha256 "32e55ddbd4130647696359a6977f914b9871ff9e87015879741cb74701077528"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.423.4/mino_linux_amd64_v0.423.4.tar.gz"
      sha256 "2e8c6818c983a5f5aed8557f954826b1952ebe7da88e1692e77f4d434cc92548"
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
