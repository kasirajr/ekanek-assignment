# frozen_string_literal: true

class SecureBlobsController < ActiveStorage::BaseController
  include ActiveStorage::SetBlob

  def show
    expires_in ActiveStorage.service_urls_expire_in
    document = @blob.attachments.first.record
    if document.is_a?(Document) && (document.is_public? || document.user == current_user)
      redirect_to @blob.url(disposition: params[:disposition])
    else
      head :unauthorized
    end
  end
end
