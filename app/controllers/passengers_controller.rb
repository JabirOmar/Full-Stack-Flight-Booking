class PassengersController < ApplicationController

    def index
        passengers = Passenger.all
        render json: passengers, except: [:created_at, :updated_at]
    end

    def show
        passengers = Passenger.find_by(id: params[:id])
        if passengers
            render json: passengers, except: [:created_at, :updated_at]
        else
            render json: { error: "passerger not found" }, status: 404
        end
    end

    def create
        passenger = Passenger.create(passenger_params)
        render json: passenger, status: :created
    end

     def destroy
        passenger = Passenger.find_by(id: params[:id])
        if passenger
            passenger.destroy
            head 204
        else
            render json: { error: " content is not founded" }, status: 404
        end
    end

    private

    def passenger_params
        params.permit(:from, :to, :firstName, :middleName, :lastName, :nationality, :gender, :title, :age, :depDate, :retrnDate)
    end

end
