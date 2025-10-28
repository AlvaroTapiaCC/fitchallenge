class NotificationsController < ApplicationController
  before_action :set_notification, only: %i[ show edit update destroy ]

  # GET /notifications or /notifications.json
  def index
    @notifications = Notification.all
  end

  # GET /notifications/1 or /notifications/1.json
  def show
  end

  # GET /notifications/new
  def new
    @notification = Notification.new
  end

  # GET /notifications/1/edit
  def edit
  end

  def create
    @notification = Notification.new(notification_params)

    if @notification.save
      redirect_to @notification, notice: "Notification was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notifications/1 or /notifications/1.json
  def update
    if @notification.update(notification_params)
      redirect_to @notification, notice: "Notification was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /notifications/1 or /notifications/1.json
  def destroy
    @notification.destroy!
    redirect_to notifications_path, notice: "Notification was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      @notification = Notification.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def notification_params
      params.fetch(:notification, {})
    end
end
