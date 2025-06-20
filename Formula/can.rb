class Can < Formula
  desc     "macOS command-line utility that provides an alternative to the rm command"
  homepage "https://tshaka.dev/x/can"
  url      "https://github.com/tshakalekholoane/can/archive/refs/tags/0.1.0.tar.gz"
  sha256   "2585354d55ff9cc1da0a9cf003d5220b7e85f113161ac3f5c88a277ee6807f9c"
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
