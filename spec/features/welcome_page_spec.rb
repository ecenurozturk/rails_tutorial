require 'rails_helper'
RSpec.describe 'welcome_page',type: :feature do
  describe '#index' do
    before {visit '/'}
    hello_text = 'hello'
    it "should h1 tag" do
      expect(page).to have_selector('h1', text: hello_text)
    end
    it "should length eq text" do
      #hello_text uzunluğu kadar text olsun sadece diye dinamik olarak hesaplıyor
      text_lenght = page.find(:css,'h1').text.length
      expect(text_lenght).to eq hello_text.length
      #expect(page).to have_content('hello')
      #expect(page).not_to have_selector('h1',text('hello'))
    end
  end
end
