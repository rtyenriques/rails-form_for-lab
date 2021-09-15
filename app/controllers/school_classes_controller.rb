class SchoolClassesController < ApplicationController


    def index
        @schoolclass = SchoolClass.all

    end

    def show
        @sc = SchoolClass.find(params[:id])
        
    end
    def new

    end


    def create
        @sc = SchoolClass.new(school_class_params(:title, :room_number))
        @sc.save
        redirect_to school_class_path(@sc)
    end

    def edit 
        @school_class = SchoolClass.find(params[:id])
       
        # redirect_to school_class_path(@school_class)

    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
       

    end

    private

    def school_class_params(*args)
        params.require(:school_class).permit(*args)


    end
end