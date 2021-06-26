# frozen_string_literal: true

require 'rails_helper'
RSpec.feature '課題２', type: :feature do
  # productのサンプル
  let(:product) { create(:product) }

  scenario 'showページテスト' do
    # productの詳細ページに遷移
    visit potepan_product_path(product.id)
    # ヘッダーが表示されていること
    expect(page).to have_css 'div.header'

    # footerが表示されていること
    expect(page).to have_css 'div#footer'

    # ヘッダー,light sectionの文字がホームへのリンクになっていること
    expect(page).to have_link 'HOME', href: potepan_index_path

    # light sectionのリストの文字がHOME / productの名前になっていること
    expect(page).to have_selector 'li', text: 'HOME'

    # productの名前が表示されていること
    expect(page).to have_selector 'h2', text: product.name.to_s

    # productの金額が表示されていること
    expect(page).to have_selector 'h3', text: product.display_price.to_s

    # 金額の下にproductの説明があること
    expect(page).to have_selector 'p', text: product.description.to_s

  
  end
end
