class Thoth < Formula
  desc "A terminal scratchpad akin to Heynote"
  homepage "https://github.com/jooaf/thoth"
  version "0.1.89"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_amd64.tar.gz"
      sha256 "c237a5c8792722f1234f2d60465b78286b32d61842d4c3092c4771d01734ea63"
    else
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_arm64.tar.gz"
      sha256 "332c38b1c3da0c283f49fc426e36335af36f07e3f5c60468f9c1639563a9a038"
    end
  end

  def install
    bin.install "thoth"
  end

  test do
    assert_match "thoth version #{version}", shell_output("#{bin}/thoth --version")
  end
end
