require 'rails_helper'

RSpec.describe "sessions/index", type: :view do
  before(:each) do
    assign(:sessions, [
      Session.create!(
        :facilitator => "",
        :kind => "Kind"
      ),
      Session.create!(
        :facilitator => "",
        :kind => "Kind"
      )
    ])
  end

  it "renders a list of sessions" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
  end
end
