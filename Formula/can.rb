class Can < Formula
  desc "macOS command-line utility that provides an alternative to the rm command"
  homepage "https://tshaka.dev/x/can"
  url "https://github.com/tshakalekholoane/can/archive/refs/tags/0.4.0.tar.gz"
  sha256 "d4df87c29617a6ffd1bda550e2f9e2e5c7d3ed2dfea8066e66163ed75b46bb5a"
  license "ISC"

  def install
    system ENV.cc, "-framework", "Foundation", "-O3", "-std=c2x", "-march=native",
      "-o", "can", "src/main.c"
    bin.install "can"
  end
end
