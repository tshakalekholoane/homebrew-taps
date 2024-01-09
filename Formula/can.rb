class Can < Formula
  desc "macOS command-line utility that provides an alternative to the rm command"
  homepage "https://tshaka.dev/x/can"
  url "https://github.com/tshakalekholoane/can/archive/refs/tags/0.5.0.tar.gz"
  sha256 "d27c1083ea69174b633921dc19000e782edffd3f692c54726a091d4d9093d495"
  license "ISC"

  def install
    system "make", "native"
    bin.install "./bin/can"
  end
end
