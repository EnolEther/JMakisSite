require 'spec_helper'

describe "static pages" do

  describe "Index page" do
    it "Should exist and be reachable" do
      visit root_path
    end
  end

  describe "Notes page" do
    it "Should exist and be reachable" do
      visit notes_path
    end
  end

  describe "About page" do
    it "Should exist and be reachable" do
      visit about_path
    end
  end

  describe "Contact page" do
    it "Should exist and be reachable" do
      visit contact_path
    end
  end

end

describe "Photography pages" do

  describe "Photography page" do
    it "Should exist and be reachable" do
      visit photography_path
    end
  end

  describe "a failing test" do
    it "should fail miserably" do
      visit leftPastNowhere_path
    end
  end

end

# Update TDD formats utilizing following tutorial URL
# http://ruby.railstutorial.org/chapters/filling-in-the-layout#sec-layout_links