class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

  def full_name
   self.first_name + " " + self.last_name
  end

  def list_roles
    my_roles = []
    characters.all.each do |character|
      if character.actor_id == self.id
        character = "#{character.name} - #{character.show.name}"
      end
      my_roles << character
    end
    return my_roles
  end

end