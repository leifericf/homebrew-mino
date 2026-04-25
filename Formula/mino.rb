class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.72.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.72.0/mino_darwin_arm64_v0.72.0.tar.gz"
      sha256 "9d2ff3bd6da8bc4caebf8e115b5d5363b301cb3f8588edad3dd619c0aeabfa9a"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.72.0/mino_darwin_amd64_v0.72.0.tar.gz"
      sha256 "f81b457eb379041bbc78e43c045ee02fd1efa31ec5640d1df4703b8dfbe01692"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.72.0/mino_linux_arm64_v0.72.0.tar.gz"
      sha256 "adb86230aad6a9a9017886041c9efeed933e5a77a893288fe25358952e9cdb3b"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.72.0/mino_linux_amd64_v0.72.0.tar.gz"
      sha256 "bf257351857ac4b48f39b52cd4c68fed2a6da8628436a9f57626326f3cca4b69"
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
