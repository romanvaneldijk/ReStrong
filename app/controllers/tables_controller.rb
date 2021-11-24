class TablesController < ApplicationController
  def new
    @table = Table.new
  end

  def create
    @table = Table.new(table_params)
    if @table.save
      redirect_to root_path
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
    params.require(:table).permit(:table_number, :qr_code)
  end
end
