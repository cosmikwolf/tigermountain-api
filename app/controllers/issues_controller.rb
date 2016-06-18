class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :update, :destroy]

  # GET /issues
  def index
    @issues = Issue.all

    render json: @issues
  end

  # GET /issues/1
  def show
    render json: @issue
  end

  # POST /issues
  def create
    @issue = Issue.new(issue_params)

    if @issue.save
      render json: @issue, status: :created, location: @issue
    else
      render json: @issue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /issues/1
  def update
    if @issue.update(issue_params)
      render json: @issue
    else
      render json: @issue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /issues/1
  def destroy
    @issue.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      @issue = Issue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def issue_params
      params.require(:issue).permit(:companyid, :companyname, :sicdescription, :price, :sharesout, :sharesheld, :numholders, :industryid, :industry, :sectorid, :sector, :type, :querydate, :issuetitle, :isprimary, :activeonly, :ticker, :exchangeid, :exchange, :cik, :sic, :street1, :street2, :city, :state, :zip, :country, :phonecountrycode, :phoneareacode, :phonenumber, :sharesoutdate, :pricedate, :numbernewholders, :numbuyers, :numsellers, :numbersellouts)
    end
end
