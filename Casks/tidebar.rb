cask "tidebar" do
  version "1.0.1"
  sha256 "e85c69ae156ad48f2afd15fa3e9f30090b6bb4a134ce9c34f450fce7ee128ef4"

  url "https://github.com/JustinFay01/Tidebar/releases/download/v#{version}/Tidebar-#{version}.zip"
  name "Tidebar"
  desc "Menu bar app showing live Dexcom glucose readings"
  homepage "https://github.com/JustinFay01/Tidebar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Tidebar.app"

  uninstall quit: "com.jnfcorp.Tidebar"

  zap trash: [
    "~/Library/Application Scripts/com.jnfcorp.Tidebar",
    "~/Library/Containers/com.jnfcorp.Tidebar",
  ]
end
