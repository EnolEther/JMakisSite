require 'spec_helper'

describe MarkdownPagesController do

  describe "GET 'myNotes'" do
    it "returns http success" do
      get 'myNotes'
      response.should be_success
    end
  end

end
