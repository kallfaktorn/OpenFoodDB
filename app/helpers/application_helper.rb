module ApplicationHelper

  def user_signed_in
    if current_user
      print "wohoooooooooooooooooooooooooooooooo"
      print "wohoooooooooooooooooooooooooooooooo"
      print "wohooooooooooooooooooooooooooooooow"
      print current_user.name
      return true
    else
      print "blooooooooooooooooooooooooooooooooo"
      print "blhoooooooooooooooooooooooooooooooo"
      print "bloooooooooooooooooooooooooooooooow"
      print current_user.name
      return false
    end
  end
end