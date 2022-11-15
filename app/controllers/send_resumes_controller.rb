class SendResumesController < ApplicationController
  before_action :set_send_resume, only: %i[ show edit update destroy ]

  # GET /send_resumes or /send_resumes.json
  def index
    @send_resumes = SendResume.all
  end

  # GET /send_resumes/1 or /send_resumes/1.json
  def show
  end

  # GET /send_resumes/new
  def new
    @send_resume = SendResume.new
  end

  # GET /send_resumes/1/edit
  def edit
  end

  # POST /send_resumes or /send_resumes.json
  def create
    @send_resume = SendResume.new(send_resume_params)

    respond_to do |format|
      if @send_resume.save

        format.html { redirect_to send_resume_url(@send_resume), notice: "Send resume was successfully created." }
        format.json { render :show, status: :created, location: @send_resume }

        ResumeMailer.with(receiver: @receiver).sendresume.deliver_later
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @send_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /send_resumes/1 or /send_resumes/1.json
  def update
    respond_to do |format|
      if @send_resume.update(send_resume_params)
        format.html { redirect_to send_resume_url(@send_resume), notice: "Send resume was successfully updated." }
        format.json { render :show, status: :ok, location: @send_resume }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @send_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /send_resumes/1 or /send_resumes/1.json
  def destroy
    @send_resume.destroy

    respond_to do |format|
      format.html { redirect_to send_resumes_url, notice: "Send resume was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send_resume
      @send_resume = SendResume.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def send_resume_params
      params.require(:send_resume).permit(:sender, :receiver)
    end
end
