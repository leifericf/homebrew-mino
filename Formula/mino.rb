class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.381.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.381.0/mino_darwin_arm64_v0.381.0.tar.gz"
      sha256 "9e75066713f656fabdcdb95c10420a6294a2e3b46f6db20f19c6364c3afd0c08"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.381.0/mino_darwin_amd64_v0.381.0.tar.gz"
      sha256 "2861901c275dfc7ed5e1ad9d96880fbdd750dc98edc6bc88f6ff2a9a6e2f5cb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.381.0/mino_linux_arm64_v0.381.0.tar.gz"
      sha256 "73cb3ab4de18ca7245085141cf919faa15becbccca93e5e3bccbd614a7fd13c6"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.381.0/mino_linux_amd64_v0.381.0.tar.gz"
      sha256 "dd2d3a3c3ece11596944b3326c05759115a63f3e477ab917cc1c3258c46d74b0"
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
