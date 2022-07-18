class ApplicationController < ActionController::API

    def show
        bird = Bird.find_by(id: params[:id])
        render json: bird
    end

    def create
        bird = Bird.create(name: param[:id], species: params[:species])
        render json: bird, status: :created
    end

end
