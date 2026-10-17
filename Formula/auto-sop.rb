class AutoSop < Formula
  desc "Make Claude Code self-improving — auto-detect mistakes, write CLAUDE.md directives"
  homepage "https://auto-sop.com"
  url "https://registry.npmjs.org/auto-sop/-/auto-sop-0.1.32.tgz"
  sha256 "a460a90daf932f9c84687eda54d74c8f7824b53b19f6b4a9be2180c229a2b488"
  license "Elastic-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/auto-sop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto-sop --version")
  end
end
