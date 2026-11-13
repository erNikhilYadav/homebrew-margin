cask "margin" do
  version "1.0.0"
  sha256 "275db238278b2834ac03ef029d866c8f52f11e623bbea97b7876646fecaadfa4"

  url "https://github.com/erNikhilYadav/Margin/releases/download/v#{version}/Margin-#{version}.dmg"
  name "Margin"
  desc "Menu bar Git client with GitHub PRs and GitLab MRs"
  homepage "https://github.com/erNikhilYadav/Margin"

  depends_on arch: :arm64
  depends_on :macos

  app "Margin.app"

  caveats <<~EOS
    Margin is not notarized. If macOS blocks it on first launch, run:
      xattr -dr com.apple.quarantine /Applications/Margin.app
  EOS
end
