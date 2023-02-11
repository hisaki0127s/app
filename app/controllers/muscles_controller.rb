class MusclesController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]

    
    def men5
        @muscles = Muscle.where(name: 'あ', name2: 'い')
    end
    
    def men6
        @muscles = Muscle.where("name=あ").where("name2=あ")
    end

    def women5
        @muscles = Muscle.where("name=い").where("name2=い")
    end

    def women6
        @muscles = Muscle.where("name=い").where("name2=あ")
    end
    
    def index
        @muscles = Muscle.all
    end

    def new
        @muscles = Muscle.new
    end
    
    def create
        muscle = Muscle.new(muscle_params)
        muscle.user_id = current_user.id
        if muscle.save!
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @muscle = Muscle.find(params[:id])

        
    end

    def edit
        @muscle = Muscle.find(params[:id])
    end

    def update
        muscle = Muscle.find(params[:id])
        if muscle.update(muscle_params)
          redirect_to :action => "show", :id => muscle.id
        else
          redirect_to :action => "new"
        end
    end

    def destroy
        muscle = Muscle.find(params[:id])
        muscle.destroy
        redirect_to action: :index
    end

   
    
    
    private
    def muscle_params
      params.require(:muscle).permit(:menu, :site, :about, :name, :name2, :time, :interval, :image, :youtube_url, tag_ids: [])
    end
end
