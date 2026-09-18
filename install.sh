#!/bin/bash

# Mac用のセットアップ
# 作業環境をCodespaces上で完結させる前提の、ポータブル構成のため
# Mac上にはプログラミングに必要なツールセットは導入せず
# GUI系のユーティリティツールのみを導入する

# =====================================
# 1. Homebrewのセットアップ
# =====================================
# Macならsudo実行のため対話、codespaces中ではnon interactiveで実行
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# =====================================
# 2. パッケージのインストール
# =====================================
REPOS=(
vim # 魂なので入れざるを得ない
git # さすがに必要な時がある
sqlite # 一時的にDB作りたい場合に便利
)
CASK_REPOS=(
vorssaint # ツールセット。クリップボード、スクショ、一時メモなど
google-drive # ドライブのマウント
dbeaver-community # DB操作
another-redis-desktop-manager # Redis操作
)
MAS_IDS=(
1429033973 # RunCat
)
for v in ${REPOS[@]}; do
  brew reinstall $v
done
for v in ${CASK_REPOS[@]}; do
  brew reinstall --cask $v
done
brew reinstall mas
for v in ${MAS_IDS[@]}; do
  mas install $v
done

# =====================================
# 3. Mac固有設定
# =====================================
# Finderのキルを有効化
defaults write com.apple.Finder QuitMenuItem -boolean true

# Finderが.DS_sotreを作らない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Finderがデフォルトで隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true
