class WeeksController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    week = Week.page(params[:page]).order(created_at: :desc)
    render json: week, methods: ['total_pages'], include: ['recipes']
  end

  def index_all
    weeks = Week.all
    render json: weeks
  end

  def create
    week = Week.create!(week_params)
    if week
      render json: week
    else
      render json: week.errors
    end
  end

  def show
    if week
      render json: week
    else
      render json: week.errors
    end
  end

  def destroy
    week&.destroy
    render json: { message: 'Week deleted!' }
  end

  def last
    week = Week.last
    render json: week
  end

  private

  def week_params
    params.permit(:name, :number)
  end

  def week
    @week ||= Week.find(params[:id])
  end
end
