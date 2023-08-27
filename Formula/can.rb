class Can < Formula
  desc "macOS command-line utility that provides an alternative to the rm command"
  homepage "https://tshaka.dev/x/can"
  url "https://github.com/tshakalekholoane/can/archive/refs/tags/0.2.0.tar.gz"
  sha256 "040739d75c024e848297bc8a17c85a265a10467cd4633ac4dc627e20c39ba34d"
  license "ISC"

  def install
    system ENV.cc, "-framework", "Foundation", "-O3", "-march=native", "-o", "can", "src/main.c"
    bin.install "can"
  end
end
