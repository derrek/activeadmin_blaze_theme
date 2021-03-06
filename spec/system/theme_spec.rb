# frozen_string_literal: true

RSpec.describe 'Theme', type: :system do
  it 'applies the theme styles' do
    visit '/admin/posts'

    expect(page).to have_css('body.active_admin', style: { 'font-size': '12px' })
    expect(page).to have_css('body.active_admin a', text: /new post/i, style: { 'background-image': 'none' })
    expect(page).to have_css('body.active_admin #header', style: { 'background-image': 'none' })
    expect(page).to have_css('body.active_admin #title_bar', style: { 'box-shadow': 'none' })
    expect(page).to have_css('body.active_admin #main_content', style: { 'padding': '25px 20px' })
    expect(page).to have_css('body.active_admin #active_admin_content', style: { 'display': 'flex' })
    expect(page).to have_css('body.active_admin #footer', style: { 'position': 'absolute' })
  end
end
