class GuestUser
  def guest?
    true
  end

  def method_missing(name, ...)
    return false if name.to_s.end_with?('_role?')

    super
  end

  def respond_to_missing?(name, include_private)
    return true if name.to_s.end_with?('_role?')

    super
  end
end
