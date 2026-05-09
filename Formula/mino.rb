class Mino < Formula
  desc "Tiny, embeddable Lisp in pure ANSI C"
  homepage "https://mino-lang.org"
  version "0.100.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.100.20/mino_darwin_arm64_v0.100.20.tar.gz"
      sha256 "9d1f213cd3c2a1e90787f1ab3ee8807d05a3d14fe2ef71c1754f8641674f5141"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.100.20/mino_darwin_amd64_v0.100.20.tar.gz"
      sha256 "f4431caf9e70839257513598fceef04287c3d12d178ef4e003ca17d75408d6ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leifericf/mino/releases/download/v0.100.20/mino_linux_arm64_v0.100.20.tar.gz"
      sha256 "d3f4c01ed983723530a2582c9b5dd8092fafa1a85ff5391a6ef21e017b73babc"
    end
    on_intel do
      url "https://github.com/leifericf/mino/releases/download/v0.100.20/mino_linux_amd64_v0.100.20.tar.gz"
      sha256 "91612fadbe8f8da9b2e40261d599b63748e197c0255ac3a9fda524d1eebad306"
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
