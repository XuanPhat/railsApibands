class Api::V1::MembersController < ApplicationController
  before_action :set_band_and_member, only: [:index,:show]
  def index
  end

  def show
    render json: @detail_band_and_member
  end

  private

  def set_band_and_member
    @detail_band_and_member = Member.find_by(band_id: params[:band_id],id: params[:id])
  end

  def member_params
    params.require(:members).permit(:name)
  end
end
