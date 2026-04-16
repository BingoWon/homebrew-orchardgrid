cask "orchardgrid" do
  version "1.21.2"
  sha256 "aa82eed4145269c2b5ceac447a6fab813d838c84db561f8d170146cd0634e249"

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
