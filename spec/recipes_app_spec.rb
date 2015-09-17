Capybara.default_driver = :poltergeist

Capybara.app_host = "http://localhost:3000"

describe "Recipes App" do
  it "displays Café Mocha when request parameter 'search' is mocha" do
    visit "?search=mocha"
    expect(page).to have_content 'Café Mocha Mint or Café Mandarin Mocha'  	
  end

  context "visit root" do
  	before { visit '/' }
    
    it "displays chocolate (default)" do
      expect(page).to have_content 'Chocolate'
    end

    it "displays table element that has a row with 3 columns" do
      expect(page).to have_selector(:xpath, "//table//tr[count(td)=3]")
    end

    it "column 1 should have the thumbnail inside img tag inside a link tag" do
      expect(page).to have_selector(:xpath, "//table//tr/td[1]//a//img")
    end

    it "title should be inside a second column inside a link tag" do
      expect(page).to have_selector(:xpath, "//table//tr/td[2]//a")
    end

  end

end
