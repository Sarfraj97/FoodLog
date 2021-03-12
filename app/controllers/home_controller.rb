class HomeController < ApplicationController

  def index

	end	

  def show
   @entries = Entry.all
  end	

end
