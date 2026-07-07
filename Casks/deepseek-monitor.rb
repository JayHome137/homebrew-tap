cask "deepseek-monitor" do
  version "1.4.7"
  sha256 "7b1002d50f60873a61b25b7accf5077a9073fa71348c6e2107a45aa40fcbf5be"

  url "https://github.com/JayHome137/DeepSeekMonitor/releases/download/v#{version}/DeepSeekMonitor-v#{version}.dmg"
  name "DeepSeek Monitor"
  desc "Menu bar app for monitoring DeepSeek V4 Flash and Pro usage"
  homepage "https://github.com/JayHome137/DeepSeekMonitor"

  depends_on macos: :sonoma

  app "DeepSeekMonitor.app"

  zap trash: [
    "~/Library/Application Support/DeepSeekMonitor",
    "~/Library/Containers/com.deepseek.monitor.widget",
    "~/Library/Group Containers/N5YV5FV235.group.com.deepseek.monitor",
    "~/Library/Preferences/com.deepseek.monitor.plist",
  ]
end
