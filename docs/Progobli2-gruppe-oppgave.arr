include image
include color
include tables
import tables as t
include shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
# Definerer alle sirkler, i tilleg til at alle sirkler inneholder en underlay-align() med en gjennomsiktig sirkel som gjør at alle sirkler holder seg sentrert og på samme sted i y-aksen. 
C = "center"
w = circle(45, "solid", "transparent")
bl = overlay-align(C, C, circle(5, "solid", "Black"), w)
r = underlay-align(C,C, overlay-align(C, C, circle(15, "solid", "red"), w), bl)
blu = underlay-align(C,C, overlay-align(C, C, circle(35, "solid", "Blue"), w), bl)
gre =underlay-align(C, C, overlay-align(C, C, circle(25, "solid", "green"), w),bl)
oran = underlay-align(C, C, overlay-align(C, C, circle(45, "solid", "orange"), w), bl)

#Dette er en tabell som viser hvilken funksjoner spiller kan gjøre plus en liten beskrivelse av hva hver funksjon gjør
Kontroller = table: Kontroll :: String, age :: Number, Hva :: String
  row: "Eksempel", 12, "rod(1) gjør at rød sirkel flytter seg en pinne til høyre, rod(-1) gjør at den rød sirkelen flytter seg en ppinne til venstre."
    row: "Eksempel", 12, "rod(2) gjør at rød sirkel flytter seg 2 pinner til høyre rod(-2) gjør at den rød sirkelen flytter seg 2 pinner til venstre "
  row: "play()", 12, "for å starte spillet"
  row: "rod()", 12, "rod() er rød sirkel. Put et nummer mellom parantesen for spesifisere hvilken pinne den skal på, tall man kan bruke: -2, -1, 1, 2"
  row: "gronn()", 12, "gronn() er grønn sirkel. Put et nummer mellom parantesen for spesifisere hvilken pinne den skal på, tall man kan bruke: -2, -1, 1, 2"
  row: "blaa()", 12, "blaa() er Blå sirkel. Put et nummer mellom parantesen for spesifisere hvilken pinne den skal på, tall man kan bruke: -2, -1, 1, 2"
  row: "oranj()", 12, "oransj() er oransj sirkel. Put et nummer mellom parantesen for spesifisere hvilken pinne den skal på, tall man kan bruke: -2, -1, 1, 2"
  row: "reset0()", 12, "reset tårnet" 
end
# Vi fikk ikke til å lage en tabell med kun 2 colums så vi valgte å lage den som er default i "dcic-2021" og heller bruke liste funksjonen for å lage en tabell med 2 kolonner
Nytabell = [list: "Kontroll", "Hva"]
select-columns(Kontroller, Nytabell)


# Vi valgte å bruke arrays for å bestemme verdien i x-aksen til hver eneste sirkel. Plass 0 i tabellen er x-verdien til den rød sirkelen. Plass 1 i tabellen er x-verdien til den grønn sirkelen osv.
var a = [array: 0, 0, 0, 0]



#setter nye definisjoner for å ha litt mindre tekst senere. a.get-now(0) henter verdien i arrayet "a" på plass nummer 0
var red-Ar = a.get-now(0)
var green-Ar = a.get-now(1)
var Blue-Ar = a.get-now(2)
var Orange-Ar = a.get-now(3)



#Dette er en funksjon for den røs sirkelen
fun rod(x) :
  #Gjør om desimal tall til hele tall slik at spillet ikke blir ødelagt
  x1 = num-round(x)
  #Dette tester om spilleren har vunnet når den rød sirkelen er på midterste pinne
  if (a.get-now(1) == 300) and (a.get-now(2) == 300) and (a.get-now(3) == 300) and (a.get-now(0) == 150) and (x1 == 1) :
    "Du vant!"
    #Dette tester om spilleren har vunnet når den rød sirkelen er på pinnen helt til venstre
  else if (a.get-now(1) == 300) and (a.get-now(2) == 300) and (a.get-now(3) == 300) and (a.get-now(0) == 0) and (x1 == 2):
      "Du vant!" 
    else if (a.get-now(0) == 150) :
    #Her gjøres tester for når den rød sirkelen er på den miderste pinnen
    block:
      #Dette tester om x verdien som brukeren puttet inn er innen for spillets rammer
      if (x1 < -1) or (x1 > 1) :
        "ugyldig trekk"
      else: 
        block:
          #Dette tester om x verdien som brukeren puttet inn er innen for spillets rammer
          if (x1 < -2) or (x1 > 2) :
            "ugyldig trekk"
          else:
            #Hvis inputen til brukeren har passert alle if-testene ovenfor så vil den oppdateret arrayet med ny x verdi for den rød sirkelen i plass nummer 0 i arrayet, og utføre funksjonen play() som viser et visuelt bilde i interaksjonsvinduet 
            y1 = a.get-now(0) + (x1 * 150)
            #Pinnen ligger 150 unna hverandre så da må x verdien ganges med 150 slik at sirkelene flytter på seg til riktig plass
            nm = array-set-now(a, 0, y1)
            #array-set-now() putter inn en egendefinert verdi inn i plass nummer 0 i arrayet "a". Her er den egendefinerte verdien y1
            play()
          end
        end
      end
    end

  else if (a.get-now(0) == 0) :
    #Her gjøres samme if-tester som tidligere men for når den rød sirkelen er på første pinne
    block:
      if (x1 < 0) or (x1 > 2) :
        "ugyldig trekk"
      else:
        y1 = a.get-now(0) + (x1 * 150)
        nm = array-set-now(a, 0, y1)
        play()
      end
    end


  else if (a.get-now(0) == 300) :
    #Her gjøres samme if-tester som tidligere men for når den rød sirkelen er på siste pinne
    block:
      if (x1 < -2) or (x1 > 0) :
        "ugyldig trekk"
      else:
        y1 = a.get-now(0) + (x1 * 150)
        nm = array-set-now(a, 0, y1)
        play()
      end
    end
  end
end






fun gronn(x) :
  x1 = num-round(x)
  if (a.get-now(0) == a.get-now(1)):
    #En regel i Hanoitårnet er at hvis det er en sirkel oppå den du vil flytte så kan du ikke flytte den. Denne sjekker om den rød sirkelen er "over" den grønne ved å sjekke om de har samme x-verdi i arrayet. Hvis de har samme x-verdi så betyr det den rød er "over" den grønne. Den grønne sirkelen trenger bare å sjekke for den rød etter som at den rød sirkelen er den eneste kan være over den grønne. Dette vet vi på grunn av en annen regel i Hanoitårnet som sier at en større sirkel ikke kan flyttes oppå en en mindre sirkel. 
    
    block:
      "ugyldig trekk"
    end

  else if (a.get-now(1) == 150) :
    block:
      if (x1 < -1) or (x1 > 1) :
        "ugyldig trekk"
      else: 
        block:
          if (x1 < -2) or (x1 > 2) :
            "ugyldig trekk"
          else:
            block:
              if (a.get-now(0) == 0) and (x1 == -1) :
                "ugyldig trekk"
              else if (a.get-now(0) == 300) and (x1 == 1):
                "ugyldig trekk"
              else:  
                y1 = a.get-now(1) + (x1 * 150)
                nm = array-set-now(a, 1, y1)
                play()
              end
            end
          end
        end
      end
    end

  else if (a.get-now(1) == 0) :
    block:
      if (x1 < 0) or (x1 > 2) :
        "ugyldig trekk"
      else:
        block:
          if (a.get-now(0) == 150) and (x1 == 1) :
            "ugyldig trekk"
          else if (a.get-now(0) == 300) and (x1 == 2):
            "ugyldig trekk"
          else:  
            y1 = a.get-now(1) + (x1 * 150)
            nm = array-set-now(a, 1, y1)
            play()
          end
        end
      end
    end


  else if (a.get-now(1) == 300) :
    block:
      if (x < -2) or (x > 0) :
        "ugyldig trekk"
      else:
        block:
          if (a.get-now(0) == 0) and (x == -2) :
            "ugyldig trekk"
          else if (a.get-now(0) == 150) and (x == -1):
            "ugyldig trekk"
          else:  
            y1 = a.get-now(1) + (x * 150)
            nm = array-set-now(a, 1, y1)
            play()
          end
        end
      end
    end
  end
end




fun blaa(x) :
  x1 = num-round(x)
  if (a.get-now(2) == a.get-now(1)) or (a.get-now(2) == a.get-now(0)) :
    #Siden den blå kan ha 2 sirkler over seg må vi sjekke om både den grønne sirkelen eller den rød sirkelen er over. Da bruker vi samme if test som før, men at vi har "or" sånn at vi sjekker om den rød eller grønne er over den blå.
    block:
      "ugyldig trekk"
    end

      else if (a.get-now(2) == 150) :
    block:
      if (x1 < -1) or (x1 > 1) :
        "ugyldig trekk"
      else: 
        block:
          if (x1 < -2) or (x1 > 2) :
            "ugyldig trekk"
          else:
            block:
              if ((a.get-now(0) == 0) and (x1 == -1)) or ((a.get-now(1) == 0) and (x1 == -1)):
                #Her putter vi også en "or" slik at Vi sjekker om det neste trekker fører den blå sirkelen oppå en rød eller grønn sirkel, som er ulovlig.
                "ugyldig trekk"
              else if ((a.get-now(0) == 300) and (x1 == 1)) or ((a.get-now(1) == 300) and (x1 == 1)):
                "ugyldig trekk"
              else:  
                y1 = a.get-now(2) + (x1 * 150)
                nm = array-set-now(a, 2, y1)
                play()
              end
            end
          end
        end
      end
    end

      else if (a.get-now(2) == 0) :
    block:
      if (x1 < 0) or (x1 > 2) :
        "ugyldig trekk"
      else:
        block:
          if ((a.get-now(0) == 150) and (x1 == 1)) or ((a.get-now(1) == 150) and (x1 == 1)) :
            "ugyldig trekk"
          else if ((a.get-now(0) == 300) and (x1 == 2)) or ((a.get-now(1) == 300) and (x1 == 2)) :
            "ugyldig trekk"
          else:  
            y1 = a.get-now(2) + (x1 * 150)
            nm = array-set-now(a, 2, y1)
            play()
          end
        end
      end
    end


      else if (a.get-now(2) == 300) :
    block:
      if (x1 < -2) or (x1 > 0) :
        "ugyldig trekk"
      else:
        block:
          if ((a.get-now(0) == 0) and (x1 == -2)) or ((a.get-now(1) == 0) and (x1 == -2)) :
            "ugyldig trekk"
          else if ((a.get-now(0) == 150) and (x1 == -1)) or ((a.get-now(1) == 150) and (x1 == -2)):
            "ugyldig trekk"
          else:  
            y1 = a.get-now(2) + (x1 * 150)
            nm = array-set-now(a, 2, y1)
            play()
          end
        end
      end
    end
  end
end

fun oransj(x) :
  x1 = num-round(x)
  if (a.get-now(3) == a.get-now(1)) or (a.get-now(3) == a.get-now(0)) or (a.get-now(3) == a.get-now(2)) :
    #Samme som på den grønne sirkelen, men vi har 2 "or" fordi den oransje sirkelen må sjekke for 3 sirkler som kan være over seg
    block:
      "ugyldig trekk"
    end

  else if (a.get-now(3) == 150) :
    block:
      if (x1 < -1) or (x1 > 1) :
        "ugyldig trekk"
      else: 
        block:
          if (x1 < -2) or (x1 > 2) :
            "ugyldig trekk"
          else:
            block:
              if ((a.get-now(0) == 0) and (x1 == -1)) or ((a.get-now(1) == 0) and (x1 == -1)) or ((a.get-now(2) == 0) and (x1 == -1)):
                #Her putter vi også 2 "or" slik at vi sjekker om det neste trekker fører den oransje sirkelen oppå den rød, grønne eller blå sirkelen, som er ulovlig.
                "ugyldig trekk"
              else if ((a.get-now(0) == 300) and (x1 == 1)) or ((a.get-now(1) == 300) and (x1 == 1)) or ((a.get-now(2) == 300) and (x1 == 1)):
                "ugyldig trekk"
              else:  
                y1 = a.get-now(3) + (x1 * 150)
                nm = array-set-now(a, 3, y1)
                play()
              end
            end
          end
        end
      end
    end

  else if (a.get-now(3) == 0) :
    block:
      if (x1 < 0) or (x1 > 2) :
        "ugyldig trekk"
      else:
        block:
          if ((a.get-now(0) == 150) and (x1 == 1)) or ((a.get-now(1) == 150) and (x1 == 1)) or ((a.get-now(2) == 150) and (x1 == 1)) :
            "ugyldig trekk"
          else if ((a.get-now(0) == 300) and (x1 == 2)) or ((a.get-now(1) == 300) and (x1 == 2)) or ((a.get-now(2) == 300) and (x1 == 2)):
            "ugyldig trekk"
          else:  
            y1 = a.get-now(3) + (x1 * 150)
            nm = array-set-now(a, 3, y1)
            play()
          end
        end
      end
    end


  else if (a.get-now(3) == 300) :
    block:
      if (x1 < -2) or (x1 > 0) :
        "ugyldig trekk"
      else:
        block:
          if ((a.get-now(0) == 0) and (x1 == -2)) or ((a.get-now(1) == 0) and (x1 == -2)) or ((a.get-now(2) == 0) and (x1 == -2)):
            "ugyldig trekk"
          else if ((a.get-now(0) == 150) and (x1 == -1)) or ((a.get-now(1) == 0) and (x1 == -2)) or ((a.get-now(2) == 0) and (x1 == -2)):
            "ugyldig trekk"
          else:  
            y1 = a.get-now(3) + (x1 * 150)
            nm = array-set-now(a, 3, y1)
            play()
          end
        end
      end
    end
  end
end


#Denne funksjonen visualiserer spillet i interaksjonsvinduet, alle sirkelen er satt i forhold til en gjennomsiktig sirkel som er på første pinne. x verdien til hver sirkel kommer ann på verdiene i arrayet "a"
fun play() :
  Spillmove = overlay-xy(
    overlay-xy(
      overlay-xy(
        underlay-xy(
          underlay-xy(
            underlay-xy(
              underlay-xy(
                w, 
                a.get-now(3),
                0,
                oran),
              a.get-now(2), 
              0, 
              blu), 
            a.get-now(1), 
            0, 
            gre), 
          a.get-now(0),
          0, 
          r), 
        150,
        0, 
        bl), 
      300, 
      0, 
      bl),
    0,
    0,
    bl)
  Spillmove
end

#Denne funksjonen resetter verdien i plass nummer 0 til verdien 0 i arrayet og kjører neste funksjon som resetter verdien i plass nummer 1 i arrayet til verdien 0 osv.
fun reset() :
  y1 = (a.get-now(0) * 0)
  nm = array-set-now(a, 0, y1)
  reset2()
end

fun reset2() :
  y1 = (a.get-now(1) * 0)
  b = array-set-now(a, 1, y1)
  reset3()
end

fun reset3() :
  y1 = (a.get-now(2) * 0)
  c = array-set-now(a, 2, y1)
  reset4()
end

fun reset4() :
  y1 = (a.get-now(3) * 0)
  array-set-now(a, 3, y1)

end
