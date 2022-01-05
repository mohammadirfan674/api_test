class ParticlesController < ApplicationController

  def index
    @particles =  Particle.all
  end

  def show
    @particle = Particle.find(params[:id])

  end

  def new
    @particle = Particle.new
  end

  def create
    @particle = Particle.new(particle_params)

    if @particle.save
      redirect_to @particle
    else
     render :new
    end
  end


  def edit
   @particle = Particle.find(params[:id])
  end

  def update
   @particle = Particle.find(params[:id])

   if @particle.update(particle_params)
      redirect_to @particle
   else
      render :edit
    end
  end

  def destroy
   @particle = Particle.find(params[:id])
   @particle.destroy
     redirect_to root_path
  end

  private
  def particle_params

   params.require(:particle).permit(:first_name,
                  :last_name, :gender, :email, :password, :mobile_number)
  end

end
