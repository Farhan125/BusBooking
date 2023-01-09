class CompaniesController < ApplicationController
  def new
    @company=Company.new
  end

  def create
    @company=Company.new(company_params)
    if @company.save
      flash.alert="Company Added"
      redirect_to '/welcome/adminhome'
    else
      flash.alert="Company is not Added"
      redirect_to companies_path
    end
  end

  def show
    @company=Company.all
  end

  def update
  end

  def destroy
    @company = Company.find(params[:id])
    if @company.present?
      @company.destroy
      flash.alert= "Company is successfully deleted." 
    end
    redirect_to '/welcome/adminhome'
  end
end

private
def company_params
  params.require(:company).permit(:name)
end
