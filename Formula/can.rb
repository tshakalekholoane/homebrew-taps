class Can < Formula
  desc     "macOS command-line utility that provides an alternative to the rm command"
  homepage "https://tshaka.dev/x/can"
  url      "https://github.com/tshakalekholoane/can/archive/refs/tags/0.1.0.tar.gz"
  sha256   "a7dc249ba3c7b53810abfec27f63691dd23f9ab649cf4170d3fe3c37314121ec"
  license  "ISC"

  head "https://github.com/tshakalekholoane/can.git", branch: "main"

  depends_on :macos

  def install
    system "make", "BUILD=#{version} (Homebrew)" if build.stable?
    system "make" if build.head?
    bin.install "bin/can"
  end

  test do
    system "bin/can", "-V"
  end
end
