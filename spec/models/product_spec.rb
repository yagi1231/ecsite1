# frozen_string_literal: true

require 'rails_helper'
RSpec.feature '課題２', type: :feature do
  let(:product) { create(:product) }

  scenario 'showページテスト' do
    visit potepan_product_path(product.id)
   
    expect(page).to have_css 'div.header'
    
    expect(page).to have_css 'div#footer'

    expect(page).to have_link 'HOME', href: potepan_index_path
    
    expect(page).to have_selector 'li', text: 'HOME'

    expect(page).to have_selector 'h2', text: product.name.to_s

    expect(page).to have_selector 'h3', text: product.display_price.to_s

    expect(page).to have_selector 'p', text: product.description.to_s
  end
end
