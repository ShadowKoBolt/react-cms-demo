require 'rails_helper'

RSpec.describe "admin/pages/show", :type => :view do
  before(:each) do
    @admin_page = assign(:admin_page, Admin::Page.create!(
      :name => "Name",
      :parent_id => 1,
      :lft => 2,
      :rgt => 3,
      :depth => 4,
      :structure => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/MyText/)
  end
end
