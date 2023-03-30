class HeroPowersController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create 
        heropow = HeroPower.create!(heropow_params)
        render json: heropow.hero, include_powers: true, status: :created
    end


    private 
    def heropow_params 
        params.permit(:strength, :hero_id, :power_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
