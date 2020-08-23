require "rails_helper"

describe "navigate" do
  describe "index" do
    before do
      visit posts_path
    end

    it "can be reached successfully" do
      expect(page.status_code).to eq(200)
    end

    it "has title of Posts" do
      expect(page).to have_content(/Posts/)
    end

    xit "has a list of posts" do
      post1 = FactoryBot.build_stubbed(:post)
      post1 = FactoryBot.build_stubbed(:second_post)
      visit posts_path
      expect(page).to have_content(/Rationale|content/)
    end
  end

  describe "new" do
    xit "has a link from the homepage" do
      visit root_path

      click_link("new_post_from_nav")
      expect(page.status_code).to eq(200)
    end
  end

  describe "delete" do
    xit "can be deleted" do
      @post = FactoryBot.create(:post)
      visit posts_path

      click_link("delete_post_#{@post.id}_from_index")
      expect(page.status_code).to eq(200)
    end
  end

  describe "creation" do
    before do
      visit new_post_path
    end

    xit "has a new form that can be reached" do
      expect(page.status_code).to eq(200)
    end

    xit "can be created from new form page" do
      fill_in "post[date]", with: Date.today
      fill_in "post[rationale]", with: "Some rationale"
      click_on "Save"

      expect(page).to have_content("Some rationale")
    end

    xit "can not create a post with missing date" do
      post = Post.new(date: nil)
      post.valid?
      expect(post.errors[:date]).to include("can't be blank")
      visit new_post_path
    end
  end

  describe "edit" do
    before do
      @post = FactoryBot.create(:post)
    end

    xit "can be reached by clicking edit on index page" do
      visit posts_path

      click_link("edit_#{@post.id}")
      expect(page.status_code).to eq(200)
    end

    xit "can be edited" do
      visit edit_post_path(@post)

      fill_in "post[date]", with: Date.today
      fill_in "post[rationale]", with: "Edited content"
      click_on "Save"

      expect(page).to have_content("Edited content")

    end
  end
end
