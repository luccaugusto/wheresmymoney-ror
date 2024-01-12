class TransferController < ApplicationController
  def new
    @transfer = Transfer.new
  end

  def create
    @user = User.find(params[:user_id])
    @transfer = @user.transfer.create(transfer_params)
    redirect_to :new
  end

  private

  def transfer_params
    params.require(:transfer).permit(:value, :description, :hapenned_on)
  end
end
