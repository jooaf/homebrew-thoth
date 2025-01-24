class Thoth < Formula
  desc "A terminal scratchpad akin to Heynote"
  homepage "https://github.com/jooaf/thoth"
  version "0.1.76"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_amd64.tar.gz"
      sha256 "d0871afe00afe82ac21f119778ef4ce24b591fab3b2cebbe11f4237ac1e67c97"
    else
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_arm64.tar.gz"
      sha256 "96b7a719cbc0eb0c70f25d93aed12e6546b6cd90a127e96bbcf0c7c837e6072f"
    end
  end

  def install
    bin.install "thoth"
  end

  test do
    assert_match "thoth version #{version}", shell_output("#{bin}/thoth --version")
  end
end
