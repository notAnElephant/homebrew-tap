class GraphqlUnused < Formula
  desc "Detect unused GraphQL operations and fragments"
  homepage "https://github.com/notAnElephant/graphql-unused-plugin"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/notAnElephant/graphql-unused-plugin/releases/download/v0.1.0/graphql-unused-0.1.0-darwin-arm64.zip"
      sha256 "d79382f15170e2879c4447f45dffcad6e40f4354e9d8f552dc8e3eee3838cfde"
    end

    on_intel do
      url "https://github.com/notAnElephant/graphql-unused-plugin/releases/download/v0.1.0/graphql-unused-0.1.0-darwin-x64.zip"
      sha256 "d79382f15170e2879c4447f45dffcad6e40f4354e9d8f552dc8e3eee3838cfde"
    end
  end

  on_linux do
    url "https://github.com/notAnElephant/graphql-unused-plugin/releases/download/v0.1.0/graphql-unused-0.1.0-linux-x64.zip"
    sha256 "d79382f15170e2879c4447f45dffcad6e40f4354e9d8f552dc8e3eee3838cfde"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/graphql-unused"
  end

  test do
    output = shell_output("#{bin}/graphql-unused help", 2)
    assert_match "Usage:", output
  end
end
