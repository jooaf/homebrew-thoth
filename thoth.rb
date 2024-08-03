class Thoth < Formula
  desc "A terminal scratchpad akin to Heynote"
  homepage "https://github.com/jooaf/thoth"
  url "https://github.com/jooaf/thoth/releases/download/v0.1.45/thoth_0.1.45_darwin_amd64.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jooaf/thoth/releases/download/v0.1.45/thoth_0.1.45_darwin_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "thoth"
  end

  test do
    assert_match "thoth version 0.1.45", shell_output("#{bin}/thoth --version")
  end
end
