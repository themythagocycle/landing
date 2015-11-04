class UsersController < InheritedResources::Base

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to thankyou_path } #, "Thanks for signing up we'll send you an email when we go live!" }
      else
        format.html { render :new }
      end
    end
  end


  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :ip)
    end
end
