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

  def create
    @progress_entry = ProgressEntry.new(progress_entry_params)

    if @progress_entry.save
      redirect_to @progress_entry, notice: "Progress entry was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /progress_entries/1 or /progress_entries/1.json
  def update
    if @progress_entry.update(progress_entry_params)
      redirect_to @progress_entry, notice: "Progress entry was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /progress_entries/1 or /progress_entries/1.json
  def destroy
    @progress_entry.destroy!
    redirect_to progress_entries_path, notice: "Progress entry was successfully destroyed.", status: :see_other
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
