class PagesController < ApplicationController
  def contact
  end

  def about
  end

  def home
    @projects = Project.all.limit(5)
  end

  def error
  end
end
