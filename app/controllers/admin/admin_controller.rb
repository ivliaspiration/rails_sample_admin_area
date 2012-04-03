class Admin::AdminController < ApplicationController
	layout 'admin'
	before_filter :authenticate
	
  def index
  end
end