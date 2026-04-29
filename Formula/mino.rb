class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.94.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.94.1/mino_darwin_arm64_v0.94.1.tar.gz"
      sha256 "1aa26253e373229934c262e6f6e5328de60056c7721941bab7e7f858e76f9aac"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.94.1/mino_darwin_amd64_v0.94.1.tar.gz"
      sha256 "c89ca84638d8f2fee84b6a3c3be30e42f76b656424ac3363f4f3214a23611b70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.94.1/mino_linux_arm64_v0.94.1.tar.gz"
      sha256 "c3bf7ab3664032a83f3d8268ddbd90942728e6d868a9e79e6d63d7157ab86909"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.94.1/mino_linux_amd64_v0.94.1.tar.gz"
      sha256 "6b16cb2ea6d007d5be7f8c0991d9eb6b6f518073233334c59d03dd91b2a7b73b"
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
