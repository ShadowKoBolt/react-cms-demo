require 'rails_helper'

RSpec.describe "admin/pages/new", :type => :view do
  before(:each) do
    assign(:admin_page, Admin::Page.new(
      :name => "MyString",
      :parent_id => 1,
      :lft => 1,
      :rgt => 1,
      :depth => 1,
      :structure => "MyText"
    ))
  end

  it "renders new admin_page form" do
    render

    assert_select "form[action=?][method=?]", admin_pages_path, "post" do

      assert_select "input#admin_page_name[name=?]", "admin_page[name]"

      assert_select "input#admin_page_parent_id[name=?]", "admin_page[parent_id]"

      assert_select "input#admin_page_lft[name=?]", "admin_page[lft]"

      assert_select "input#admin_page_rgt[name=?]", "admin_page[rgt]"

      assert_select "input#admin_page_depth[name=?]", "admin_page[depth]"

      assert_select "textarea#admin_page_structure[name=?]", "admin_page[structure]"
    end
  end
end
