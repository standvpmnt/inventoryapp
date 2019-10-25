class CobasReagentsController < ApplicationController

	def start

	end

	def check
		params_breakup
	end

	private

	def params_breakup
		if params[:bcode].length == 98		
			@reagent = CobasReagent.new
			@reagent.test_code = params[:bcode][5...8]
			@reagent.reagent_bottle = params[:bcode][8].to_i
			@reagent.test_short_name = params[:bcode][9...14]
			@reagent.reagent_name = params[:bcode][52...82].rstrip
			@reagent.test_nos = params[:bcode][43...46].to_i
			@reagent.expiry_month = params[:bcode][14...16].to_i
			@reagent.expiry_year = ('20'+params[:bcode][16...18]).to_i
			@reagent.lot_no = params[:bcode][28...36]
			@reagent.unique_identifier = params[:bcode][82...98]
			if @reagent.valid?
				@reagent.save
			else
				flash[:notice] = @reagent.errors.full_messages
				redirect_to cobas_reagent_path
			end
		else 
			flash[:danger] = "This barcode does not seem to be of c111 reagent"
			redirect_to cobas_reagent_path
		end
	end

	def scan_params
		params.require(:bcode).permit(:bcode)
	end
	
end