class ApplicationPubisher
  def self.call(*args)
    new(*args).call
  end
end
