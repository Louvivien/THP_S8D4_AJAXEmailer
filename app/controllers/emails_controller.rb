class EmailsController < ApplicationController
  def index
    @all_emails = Email.all.order("id ASC")
  end

  def show
    @email = Email.find(params[:id])
    @email.update(read: true);
    respond_to do |format|
      format.html { }
      format.js
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email_id = @email.id
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js
    end
  end

  def unread
    puts "$"*60
    puts "on est dans le unread"
    puts "$"*60
    @email = Email.find(params[:id])
    status = @email.read
    @email.update(read: !status)
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js
    end
  end
end
