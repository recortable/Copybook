
class Chapter < Publication

  def to_param
    position.to_s
  end
end