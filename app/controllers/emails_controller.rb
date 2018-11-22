class EmailsController < ApplicationController
  def index
    @all_emails = Email.all
  end

  def show
    @email = Email.find(params[:id]);
    respond_to do |format|
      format.html { puts "foobar"}
      format.js
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js
    end
  end
end
