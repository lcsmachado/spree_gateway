module Spree
  class Gateway::Recebee < Gateway
    preference :access_token, :string

    def provider_class
      ActiveMerchant::Billing::RecebeeGateway
    end

    def auto_capture?
      byebug
      true
    end

    def cancel(response)
      void(response)
    end
  end
end
