class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.94.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.94.3/mino_darwin_arm64_v0.94.3.tar.gz"
      sha256 "5d719a09f73c075f942888ee97727c1bb468fc3c3cf2dbcf0942c40f305927a6"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.94.3/mino_darwin_amd64_v0.94.3.tar.gz"
      sha256 "a630250365781d25313c293397fed52f961b3a6a4e2215ce05a7be3476e5f8f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.94.3/mino_linux_arm64_v0.94.3.tar.gz"
      sha256 "314cfc87d79085387dceef7d40a637f85238d91140084cb3c71ae05824201183"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.94.3/mino_linux_amd64_v0.94.3.tar.gz"
      sha256 "fb3b032f53204645a7d7c98dd6a9ca869b0f75af77996e92e58e6c18cb179569"
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
