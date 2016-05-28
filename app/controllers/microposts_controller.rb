class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      redirect_to root_path
    else
      render 'welcome#index'
    end
  end

  def destroy
    @micropost.destroy
    redirect_back_or root_path
  end

  private

    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end

    def micropost_params
      
      params.require(:micropost).permit(:content)
    
    end
end
