class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :destroy]
    def index
        @documents = current_user.documents.order(id: :desc).page(params[:page]).per(15)
    end

  def show
  end

  def new
    @document = Document.new
  end


  def create
    @document = Document.new(document_params)
    @document.user = current_user

    respond_to do |format|
      if @document.save
        format.html { redirect_to document_url(@document), notice: "Document was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @document.destroy

    respond_to do |format|
      format.html { redirect_to documents_url, notice: "Document was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_document
      @document = Document.find(params[:id])
    end

    def document_params
      params.require(:document).permit(:name, :description, :attachment)
    end
end
