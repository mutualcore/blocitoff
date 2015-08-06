class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = @user.items.build(item_params)

    if @item.save
      flash[:notice] = "Item was saved"
    else
      flash[:error] = "There was an error saving the item."
    end

    redirect_to @user
  end

  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end
