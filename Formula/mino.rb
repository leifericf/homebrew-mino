class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.101.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.101.1/mino_darwin_arm64_v0.101.1.tar.gz"
      sha256 "0f76d09a37d874d1edc163b700e96dd41cd06dfb02426fae1d675ae6755dbd7e"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.101.1/mino_darwin_amd64_v0.101.1.tar.gz"
      sha256 "777a744c557758895d33931acbd2055a8c34b974cf273e667a7f21ae4a149fbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.101.1/mino_linux_arm64_v0.101.1.tar.gz"
      sha256 "6fa1e432ba9990d2f9c5b965c358f1ebdf433f3e0f02acfb0760f4fab9efc39b"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.101.1/mino_linux_amd64_v0.101.1.tar.gz"
      sha256 "19781841f9c81454d05a3460fb4c4f6547ce37f8b4dc94bce86f63e0b5196ead"
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
