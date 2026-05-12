class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.148.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.148.0/mino_darwin_arm64_v0.148.0.tar.gz"
      sha256 "e0d89fa61a6aeb8dc861ffd9498f86c902cb5cd401526527eda1cea8cd7f695b"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.148.0/mino_darwin_amd64_v0.148.0.tar.gz"
      sha256 "0cf6d1d8a0271d923e89865c398f85346c0a2ed8998f9b55c15d8615a7261c97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.148.0/mino_linux_arm64_v0.148.0.tar.gz"
      sha256 "7d74417bb282f556773482713306a38553af4254d376f08fad8e61a75e0c141f"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.148.0/mino_linux_amd64_v0.148.0.tar.gz"
      sha256 "42369de7f5a9c5067a8828ffcaeed53b00b7dd63932e5e6c80e6d462ed465e6e"
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
