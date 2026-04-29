class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.93.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.93.0/mino_darwin_arm64_v0.93.0.tar.gz"
      sha256 "dbc85bd9add1326273c79112338cd59deaaf43539bc11ec46a475f770068de23"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.93.0/mino_darwin_amd64_v0.93.0.tar.gz"
      sha256 "18b96eb785d01539a56a6d9a5b160ea6e2bf079b8bfb37a95a80c701c2e0af41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.93.0/mino_linux_arm64_v0.93.0.tar.gz"
      sha256 "68a01946002b08122c82c4c48fdd8538e9cb3be0cb58949563c12ecd7ed6c91f"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.93.0/mino_linux_amd64_v0.93.0.tar.gz"
      sha256 "dd431c7de0efa3135e03092b8d0756f788eda6800a0da430201f725622d0d2eb"
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
