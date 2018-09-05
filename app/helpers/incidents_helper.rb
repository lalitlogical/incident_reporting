module IncidentsHelper
  def options_for_incident_type
    ["Alcohol","Assault","Bullying","Hazing","Drugs","Graffiti","Injury","Suspicious activity","Trespassing","Vandalism","Weapons violation","Technology misuse","Other"]
  end

  def options_for_role
    ["student", "teacher", "other staff", "parent", "community member"]
  end

  def options_for_location
    ["On school campuses and grounds", "During transportation to and from school", "At school-sponsored events", "More details"]
  end
end
