class ProfilesController < ApplicationController
    def new
        @user = User.find( params[:user_id] )
        @profile = Profile.new
    end
    
    def create
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile(profile_params)
        if @profile.save
          redirect_to user_path( params[:user_id] )
          flash[:success] = "Profile Created"
        else 
          render action: :new 
        end
    end
    
    
    
    private
     def profile_params
      params.require(:profile).permit(:first_name, :last_name, :hometown, :relationship_status, :description)
     end
end