class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.255.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.255.29/mino_darwin_arm64_v0.255.29.tar.gz"
      sha256 "17f1013c6a971b057b848d05ec140b4483fb8cbf58aef90a95a57887c8bcd31a"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.255.29/mino_darwin_amd64_v0.255.29.tar.gz"
      sha256 "da6542a624308f9d2af88a03002387bac879a587376eabb724656b3b889fc83f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.255.29/mino_linux_arm64_v0.255.29.tar.gz"
      sha256 "3ad277da1624bc4562345e21cdd769a5e9821ed6ef87d15642a346edfd3bfa07"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.255.29/mino_linux_amd64_v0.255.29.tar.gz"
      sha256 "beff4060cf424376e955f94c6d648285c95c7b79c5ee8fb298138995aab23771"
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
