class IntendanceMailer < ApplicationMailer
    default from: 'myusersender@yopmail.com'
   
    def new_event_email(intendance)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @intendance = intendance 
      @user = User.find(intendance.user_id)
      @event = Event.find(intendance.event_id)
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'myusersender@yopmail.com' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end
end
