class PlotPlantsController < ApplicationController
  def destroy
    plot = Plot.find(params[:plot_id])
    plant = Plant.find(params[:plant_id])
    plotplant = PlotPlant.find_by(plot: plot.id, plant: plant.id)
    plotplant.destroy
    redirect_to '/plots'
  end
end
