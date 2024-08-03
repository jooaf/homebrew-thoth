class Thoth < Formula
  desc "Description of your Thoth project"
  homepage "https://github.com/jooaf/thoth"
  url "https://github.com/jooaf/thoth/releases/download/v0.1.43/thoth_0.1.43_darwin_amd64.tar.gz"
  sha256 ""
  license "MIT"

  def install
    bin.install "thoth"
  end

  test do
    assert_match "thoth version 0.1.43", shell_output("#{bin}/thoth --version")
  end
end
