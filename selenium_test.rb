# -*- coding: utf-8 -*-
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome  #ドライバ選択
driver.navigate.to "http://google.com"    #移動サイト指定

element = driver.find_element(:name, 'q') # 検索ボックスの指定
element.send_keys "Hello Selenium"        # 検索キーワードの入力
element.submit                            # 検索ボタンのクリック

sleep 10    # 10秒スリープ
driver.quit #ブラウザを閉じる
