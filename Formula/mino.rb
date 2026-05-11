class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.144.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.144.5/mino_darwin_arm64_v0.144.5.tar.gz"
      sha256 "87670044554c44d24a4af89f11e9832eac7d283352ec9ccbe48ccc3abfb34506"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.144.5/mino_darwin_amd64_v0.144.5.tar.gz"
      sha256 "1ae1cd68da8c1083785385ca93a370cfd22bf1402eefc42523b8cf0954c6af29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.144.5/mino_linux_arm64_v0.144.5.tar.gz"
      sha256 "f04abf1b7448ec5a7ea06401dc0c6ede43c7e82e0819bbe1882eb585ef19a404"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.144.5/mino_linux_amd64_v0.144.5.tar.gz"
      sha256 "8ba2c12b8b774a47f0cff262e1905423184c8d811b185af9799bc9bb24787935"
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
