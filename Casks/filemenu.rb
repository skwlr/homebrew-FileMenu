cask "filemenu" do
  version "1.0.5"
  sha256 "2e4cb7edeee4623be6759037ea69553b12f42822e08b0bfffd4bb33e16d51f3e"

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
