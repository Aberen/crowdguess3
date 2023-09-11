class PrizesController < ApplicationController
    before_action :set_prize, only: [:show, :edit, :update, :destroy]

    def index
        @prizes = Prize.all
    end

    def show
    end

    def new
        @prize = Prize.new
    end

    def create
        @prize = Prize.new(prize_params)

        @prize.answer = random_answer

        if @prize.save
            redirect_to @prize
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @prize.update(prize_params)
            redirect_to @prize
        else
            render 'edit'
        end
    end

    def destroy
        @prize.destroy

        redirect_to prizes_path
    end

    private
        def prize_params
            params.require(:prize).permit(:name, :answer, :won_by, :date_won, :key)
        end

        def set_prize
            @prize = Prize.find(params[:id])
        end

        def random_answer
            random_number = rand(1..999999)
            return random_number
        end
end
