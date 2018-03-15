# Selenium Sample

## 概要

- MacでSeleniumを使ってChromeを自動操作するサンプルです。

## 動作環境

- OS: macOS 10.13.3
- Homebrew: 1.5.10
- Ruby: 2.4.3p205
- Chrome: 65.0.3325.162

## 準備

```
$ gem install selenium-webdriver
$ brew install chromedriver
```

## 実装内容

```
# -*- coding: utf-8 -*-
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome  # ドライバ選択
driver.navigate.to "http://google.com"    # 移動サイト指定

element = driver.find_element(:name, 'q') # 検索ボックスの指定
element.send_keys "Hello Selenium"        # 検索キーワードの入力
element.submit                            # 検索ボタンのクリック

sleep 10    # 10秒スリープ
driver.quit # ブラウザを閉じる
```
