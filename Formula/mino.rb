class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.145.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.145.0/mino_darwin_arm64_v0.145.0.tar.gz"
      sha256 "26cb674896f4b076109cd92ffce631668d4e004ca154eb5add5713bcdf994a2e"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.145.0/mino_darwin_amd64_v0.145.0.tar.gz"
      sha256 "b995721ad0c0714f748435fd43364bf179c127c6e4930e06468042fe6771aee5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.145.0/mino_linux_arm64_v0.145.0.tar.gz"
      sha256 "924ba8bf28a02db2f506732d06b1b52c7a622993f0c2a1ec2759ae4fdbab4542"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.145.0/mino_linux_amd64_v0.145.0.tar.gz"
      sha256 "8493b32a585ffd92f659c2633a7dc9ed3b06b1a3c3881aafd7c879dbc0957bda"
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
