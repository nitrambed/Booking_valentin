module UserHelper
  def avatar_user(args)
    if current_user.photo.attached?
      cl_image_tag(current_user.photo.key, args)
    else
      image_tag("val.png", args)
    end
  end
end
