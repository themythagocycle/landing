class EmailsController < InheritedResources::Base

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)

    respond_to do |format|
      if @email.save
        format.html { redirect_to thankyou_path } #, "Thanks for signing up we'll send you an email when we go live!" }
      else
        format.html { render :new }
      end
    end
  end


  private

    def set_user
      @email = Email.find(params[:id])
    end

    def email_params
      params.require(:email).permit(:email, :ip)
    end
end
