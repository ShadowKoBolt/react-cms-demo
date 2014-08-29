class PagesController < ApplicationController
  def show
    @page = Admin::Page.find(params[:id])
    render @page.template
  end
end
