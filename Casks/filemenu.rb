cask "filemenu" do
  version "1.0.0"
  sha256 "97060a52417db59e569a9b435911b7886a5c7f27e383578c8af83678a27261b2"

  url "https://github.com/skwlr/FileMenu/releases/download/v#{version}/FileMenu-#{version}-macos.zip"
  name "File Menu"
  desc "Finder extension to create new files from the context menu"
  homepage "https://github.com/skwlr/FileMenu"

  app "FileMenu.app"

  caveats <<~EOS
    This build may be ad-hoc signed. If Gatekeeper blocks it, right-click
    the app and choose Open.

    Enable the Finder extension under System Settings → General →
    Login Items & Extensions → File Providers (wording varies by macOS).
  EOS

  zap trash: [
    "~/Library/Application Support/FileMenu",
  ]
end
