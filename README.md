# mac
Mac環境構築のためのセットアップスクリプト。  
作業環境は **ポータブル構成** （[Codespaces](https://github.com/codespaces)上で完結）のため、GUIユーティリティツールのみ導入する（vimやgitなど一部例外あり）

dotfilesはこちら <a href="https://github.com/serna37/dotfiles"><img src="http://img.shields.io/badge/serna37-dotfiles-1572B6.svg?logo=github&amp;logoColor=ffffff&amp;labelColor=696969&amp;style=flat"></a>

## Installation

- まず`Command Line Tools`を導入
```shell
xcode-select --install
```

- brew、ツールをインストール
- Mac固有の設定(Finderなど)を導入
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/serna37/mac/main/install.sh)"
```

> [!Note]
> **Chrome** はPC初期化時点で `手動で` 入れる想定。
