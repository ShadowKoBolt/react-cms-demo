require 'rails_helper'

RSpec.describe "admin/pages/index", :type => :view do
  before(:each) do
    assign(:admin_pages, [
      Admin::Page.create!(
        :name => "Name",
        :parent_id => 1,
        :lft => 2,
        :rgt => 3,
        :depth => 4,
        :structure => "MyText"
      ),
      Admin::Page.create!(
        :name => "Name",
        :parent_id => 1,
        :lft => 2,
        :rgt => 3,
        :depth => 4,
        :structure => "MyText"
      )
    ])
  end

  it "renders a list of admin/pages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
