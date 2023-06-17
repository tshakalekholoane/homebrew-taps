class Can < Formula
  desc "macOS command-line utility that provides an alternative to the rm command"
  homepage "https://tshaka.dev/x/can"
  url "https://github.com/tshakalekholoane/can/archive/refs/tags/0.1.0.tar.gz"
  sha256 "c81a316b4483a5cb90b9b6bbb1f6b331a2ee5f45fc4a815512f1775f980c79db"
  license "ISC"

  def install
    system ENV.cc, "-framework", "Foundation", "-O3", "-o", "can", "src/main.c"
    bin.install "can"
  end
end
