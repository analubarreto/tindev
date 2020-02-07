module Api
    module V1
        class ProgrammingLanguagesController < ApplicationController
            def index
                render json: ProgrammingLanguages.all
            end
            
            def show
                render json: ProgrammingLanguages.find(params[:id])
            end

            def create
                programming_language = ProgrammingLanguages.new(programming_languages_params)

                if programming_language.save
                    render json: programming_language, status: :created #201 
                else
                    render json: { errors: programming_language.errors.full_messages }, status: :bad_request #400
                end
            end

            def update
                programming_language = ProgrammingLanguages.find(params[:id])

                if programming_language.update(programming_languages_params)
                    render json: programming_language, status: :accepted #202 
                else
                    render json: { errors: programming_language.errors.full_messages }, status: :bad_request #400
                end
            end

            def destroy
                programming_language = ProgrammingLanguages.find(params[:id])

                if programming_language.destroy
                    render json: programming_language, status: :accepted #202 
                else
                    render json: { errors: programming_language.errors.full_messages }, status: :bad_request #400
                end
            end

            private
            # Strong parameter
            def programming_languages_params
                params.require(:programming_language).permit(:name, :creator, :release_year)
            end
        end
    end
end