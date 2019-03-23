class LangdaoDict < Formula
  desc "Lang Dao Dictionary For Mac Dictionary App"
  homepage "https://github.com/ahuigo/homebrew-ahui"
  url "https://github.com/ahuigo/homebrew-ahui/releases/download/v1.0/langdao-5.0.tgz"
  sha256 "21cfe1c7f7f4924cdf15932e20721c70d5bb4616dbc86cce5f1c874a1d5f26b0"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize
    system "echo","mv","*",
        "~/Library/Dictionaries/"
  end

  test do
    system "false"
  end
end
