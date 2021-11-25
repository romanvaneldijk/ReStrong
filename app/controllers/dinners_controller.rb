class DinnersController < ApplicationController
  def new
    @dinner = Dinner.new
    @dinner.user = current_user
    @table = Table.find(params[:table_id])
    @dinner.table = @table
    @dinner.payment_status = false
    @dinner.save
    redirect_to root_path
  end
   private
  def table_params
    params.require(:table).permit(:table_number)
  end
end
