class EmailsController < ApplicationController
  def index
    @all_emails = Email.all
  end
end
