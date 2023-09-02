class Can < Formula
  desc "macOS command-line utility that provides an alternative to the rm command"
  homepage "https://tshaka.dev/x/can"
  url "https://github.com/tshakalekholoane/can/archive/refs/tags/0.3.0.tar.gz"
  sha256 "4313ac6eb9ea6cd419ede856037ab3e0da17772dce935cd148f4555a61785112"
  license "ISC"

  def install
    system ENV.cc, "-framework", "Foundation", "-O3", "-march=native", "-o", "can", "src/main.c"
    bin.install "can"
  end
end
