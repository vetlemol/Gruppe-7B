include image
include color
include tables
import tables as t
include shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

C = "center"
w = circle(45, "solid", "transparent")
bl = overlay-align(C, C, circle(5, "solid", "Black"), w)
r = underlay-align(C,C, overlay-align(C, C, circle(15, "solid", "red"), w), bl)
blu = underlay-align(C,C, overlay-align(C, C, circle(35, "solid", "Blue"), w), bl)
gre =underlay-align(C, C, overlay-align(C, C, circle(25, "solid", "green"), w),bl)
oran = underlay-align(C, C, overlay-align(C, C, circle(45, "solid", "orange"), w), bl)


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
Nytabell = [list: "Kontroll", "Hva"]
select-columns(Kontroller, Nytabell)

var a = [array: 0, 0, 0, 0]
var back = [array: 0, 0, 0, 0]




var red-Ar = a.get-now(0)
var green-Ar = a.get-now(1)
var Blue-Ar = a.get-now(2)
var Orange-Ar = a.get-now(3)




fun rod(x) :
  x1 = num-round(x)
  
  if (a.get-now(1) == 300) and (a.get-now(2) == 300) and (a.get-now(3) == 300) and (a.get-now(0) == 150) and (x1 == 1) :
    "Du vant!"
  else if (a.get-now(1) == 300) and (a.get-now(2) == 300) and (a.get-now(3) == 300) and (a.get-now(0) == 0) and (x1 == 2):
      "Du vant!" 
    else if (a.get-now(0) == 150) :
    block:
      if (x1 < -1) or (x1 > 1) :
        "ugyldig trekk"
      else: 
        block:
          if (x1 < -2) or (x1 > 2) :
            "ugyldig trekk"
          else:
            y1 = a.get-now(0) + (x1 * 150)
            nm = array-set-now(a, 0, y1)
            play()
          end
        end
      end
    end

  else if (a.get-now(0) == 0) :
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
          else if (a.get-now(0) == 1500) and (x == -1):
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
          else if ((a.get-now(0) == 1500) and (x1 == -1)) or ((a.get-now(1) == 0) and (x1 == -2)):
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
          else if ((a.get-now(0) == 1500) and (x1 == -1)) or ((a.get-now(1) == 0) and (x1 == -2)) or ((a.get-now(2) == 0) and (x1 == -2)):
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
