class Can < Formula
  desc "macOS command-line utility that provides an alternative to the rm command"
  homepage "https://tshaka.dev/x/can"
  url "https://github.com/tshakalekholoane/can/archive/refs/tags/0.1.1.tar.gz"
  sha256 "e281571c3a51fb2b4e2717cb2f6e9ef905c92a10fbc25bc1d9c1635223301897"
  license "ISC"

  def install
    system ENV.cc, "-framework", "Foundation", "-O3", "-o", "can", "src/main.c"
    bin.install "can"
  end
end
