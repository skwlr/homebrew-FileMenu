cask "filemenu" do
  version "1.0.4"
  sha256 "985ac6a267acb0adfc52da8cfc3e3c8a25bd0c13835dc75fc842d744bd204606"

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
