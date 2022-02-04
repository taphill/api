# frozen_string_literal: true

module Api
  module V1
    class SheltersController < ApplicationController
      before_action :set_shelter, only: %i[show update destroy]

      # GET /shelters
      def index
        @shelters = Shelter.all

        render json: @shelters
      end

      # GET /shelters/1
      def show
        render json: @shelter
      end

      # POST /shelters
      def create
        @shelter = Shelter.new(shelter_params)

        if @shelter.save
          render json: @shelter, status: :created
        else
          render json: { errors: @shelter.errors }, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /shelters/1
      def update
        if @shelter.update(shelter_params)
          render json: @shelter
        else
          render json: @shelter.errors, status: :unprocessable_entity
        end
      end

      # DELETE /shelters/1
      def destroy
        @shelter.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_shelter
        @shelter = Shelter.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def shelter_params
        params.require(:shelter).permit(:name, :city, :state, :rank, :foster_program)
      end
    end
  end
end
