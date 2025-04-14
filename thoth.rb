class Thoth < Formula
  desc "A terminal scratchpad akin to Heynote"
  homepage "https://github.com/jooaf/thoth"
  version "0.1.82"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_amd64.tar.gz"
      sha256 "103e1729de4f95aab7b493ccf129e1a402a84c9490adcd27efe68cd77b5b8e0e"
    else
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_arm64.tar.gz"
      sha256 "9c1fdade9cadb5dd016e1363e197623944a0ff55727c0a9cdfcc773dbc9e9675"
    end
  end

  def install
    bin.install "thoth"
  end

  test do
    assert_match "thoth version #{version}", shell_output("#{bin}/thoth --version")
  end
end
