class ProgressEntriesController < ApplicationController
  before_action :set_progress_entry, only: %i[ show edit update destroy ]

  # GET /progress_entries or /progress_entries.json
  def index
    @progress_entries = ProgressEntry.all
  end

  # GET /progress_entries/1 or /progress_entries/1.json
  def show
  end

  # GET /progress_entries/new
  def new
    @progress_entry = ProgressEntry.new
  end

  # GET /progress_entries/1/edit
  def edit
  end

  # POST /progress_entries or /progress_entries.json
  def create
    @progress_entry = ProgressEntry.new(progress_entry_params)

    respond_to do |format|
      if @progress_entry.save
        format.html { redirect_to @progress_entry, notice: "Progress entry was successfully created." }
        format.json { render :show, status: :created, location: @progress_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @progress_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progress_entries/1 or /progress_entries/1.json
  def update
    respond_to do |format|
      if @progress_entry.update(progress_entry_params)
        format.html { redirect_to @progress_entry, notice: "Progress entry was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @progress_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @progress_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progress_entries/1 or /progress_entries/1.json
  def destroy
    @progress_entry.destroy!

    respond_to do |format|
      format.html { redirect_to progress_entries_path, notice: "Progress entry was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progress_entry
      @progress_entry = ProgressEntry.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def progress_entry_params
      params.fetch(:progress_entry, {})
    end
end
