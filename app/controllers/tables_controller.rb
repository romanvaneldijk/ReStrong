class TablesController < ApplicationController
  def new
    @table = Table.new
  end

  def create
    @table = Table.new(table_params)
    @table.qr_code = "https://restrong-734.herokuapp.com/tables/#{@table.id}/dinners/new"
    if @table.save
      $table = @table
      redirect_to owner_qr_path(@table)
    else
      render :new
    end
  end

  def show
  @table = Table.find(params[:id])
  @qr_code = RQRCode::QRCode.new(@table.qr_code)
  @svg = @qr_code.as_svg(
    offset: 0,
    color: '000',
    shape_rendering: 'crispEdges',
    standalone: true
  )
  end


  private
  def table_params
    params.require(:table).permit(:table_number)
  end
end
