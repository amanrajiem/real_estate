class PagesController < ApplicationController
    def home
        @assets = (House.all + ComplexBuilding.all + CommecialUnit.all).sort_by(&:created_at)
    end

    def buy
      VeryLongTaskWorker.perform_async(params[:asset_type],params[:asset_id])
      render :json=> {:success=>true, :message=> "Buying in process.Will notify you by email once the processing completes.", meta: 200}
    end    
end
