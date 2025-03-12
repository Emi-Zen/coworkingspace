def create
  @monument = Monument.new(monument_params)

  respond_to do |format|
    if @monument.save
      format.html { redirect_to monument_path(@monument) }
      format.json
    else
      format.html { render "monuments/new", status: :unprocessable_entity }
      format.json
    end
  end
end
