module PublicationsHelper


  def embed_payment(publication)
    if publication.payment_code.present?
      if publication.payment_method == 'tinypay.me'
        "<a href=\"http://tinypay.me/~#{publication.payment_code}\" style=\"display:inline-block;\"><img src=\"http://img.tinypay.me/btn/UGJ5Rbk\" border=\"0\" /></a>".html_safe
      else
        publication.payment_method
      end
    end
  end
end
