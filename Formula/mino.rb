class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "2026.08.08-alpha1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/2026.08.08-alpha1/mino_darwin_arm64_2026.08.08-alpha1.tar.gz"
      sha256 "bbe8955c870f0f39cc459e53255b2740f8d7a60b9eea400be65a8ffdac072693"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/2026.08.08-alpha1/mino_darwin_amd64_2026.08.08-alpha1.tar.gz"
      sha256 "f4035feb1f0e0067e11889be9f812858a78d8ba18d75312181b32192a6eba43d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/2026.08.08-alpha1/mino_linux_arm64_2026.08.08-alpha1.tar.gz"
      sha256 "4c5476f8ad90fa661fbea64d677080913a9f1a822af2de793c14808875cf68cd"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/2026.08.08-alpha1/mino_linux_amd64_2026.08.08-alpha1.tar.gz"
      sha256 "c894dfc91fd562c77b1a41d68a0f37509d8c6f00f9ce9d01f337425e948cbdf1"
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
