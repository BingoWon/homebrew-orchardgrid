cask "orchardgrid" do
  version "1.20.3"
  sha256 "7c600f2739ad19c012a1860053d05d72ecd6e5fca0c2628385b30b2f4e41dbc2"

  url "https://github.com/BingoWon/orchardgrid-apple/releases/download/v#{version}/OrchardGrid-v#{version}-macos.dmg",
      verified: "github.com/BingoWon/orchardgrid-apple/"
  name "OrchardGrid"
  desc "Share Apple Intelligence Anywhere"
  homepage "https://orchardgrid.com/"

  app "OrchardGrid.app"
  binary "#{appdir}/OrchardGrid.app/Contents/Resources/og"

  zap trash: [
    "~/.config/orchardgrid",
    "~/Library/Application Support/com.orchardgrid.app",
    "~/Library/Containers/com.orchardgrid.app",
    "~/Library/Group Containers/group.com.orchardgrid.shared",
  ]
end
