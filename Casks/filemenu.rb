cask "filemenu" do
  version "1.0.1"
  sha256 "c592edcfb5f2a6d3dad280b4cbc5e5aab20ebe0eba972e7dfddd749a29542199"

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
