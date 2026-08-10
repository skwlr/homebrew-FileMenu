cask "filemenu" do
  version "1.0.3"
  sha256 "0ed7c6c795626ec6517ddf397d7dddfc39e592b96e042e0a727c005b7c49d280"

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
