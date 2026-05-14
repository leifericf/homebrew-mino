class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.163.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.163.0/mino_darwin_arm64_v0.163.0.tar.gz"
      sha256 "856edf2d1848c88d68d1eec0ab0d704a8e71c6da9eb57234fe5f68abf503347b"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.163.0/mino_darwin_amd64_v0.163.0.tar.gz"
      sha256 "d141e32593a5ef203b0825f832fdbd310ac599162b87f4b2ec7cbe7b775bad86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.163.0/mino_linux_arm64_v0.163.0.tar.gz"
      sha256 "f990899b1a206f13260ac91523ef742406b2012d12fb5fd937ffe6aca691ee7f"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.163.0/mino_linux_amd64_v0.163.0.tar.gz"
      sha256 "6ccbb5c5903ccbe3fa7bb7f102caf3e999f271f5e96dfbb1b861b1be7517f547"
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
