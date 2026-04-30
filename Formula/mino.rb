class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.97.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.97.5/mino_darwin_arm64_v0.97.5.tar.gz"
      sha256 "428f185b9148f304fbe7f95001ae87f31f3098a4ac3867c124d3a289f8722b80"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.97.5/mino_darwin_amd64_v0.97.5.tar.gz"
      sha256 "0f48c0e7b6069acfb223af1f4a6ffb9c53c41fe9b7dad70a3284517112b1345a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.97.5/mino_linux_arm64_v0.97.5.tar.gz"
      sha256 "f63e171ca91335c9727140f82b72dc1a2fe5df03d5eb8790c0648674333c182a"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.97.5/mino_linux_amd64_v0.97.5.tar.gz"
      sha256 "1136b1324c95f7075392c5f9fc6de7f218f9fb10aae5da664dd857c94ca80fb8"
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
