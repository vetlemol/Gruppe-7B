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
  row: "play()", 12, "for å starte spillet"
  row: "rod()", 12, "rod() er rød sirkel. Put et nummer mellom parantesen for spesifisere hvilken pinne den skal på, tall man kan bruke: 0, 1, 2"
  row: "gronn()", 12, "gronn() er grønn sirkel. Put et nummer mellom parantesen for spesifisere hvilken pinne den skal på, tall man kan bruke: 0, 1, 2"
  row: "blaa()", 12, "blaa() er Blå sirkel. Put et nummer mellom parantesen for spesifisere hvilken pinne den skal på, tall man kan bruke: 0, 1, 2"
  row: "oranj()", 12, "oransj() er oransj sirkel. Put et nummer mellom parantesen for spesifisere hvilken pinne den skal på, tall man kan bruke: 0, 1, 2"
  row: "reset-Ar0()", 12, "Skriv inn alle disse for å resete hanoi tårnet"
  row: "reset-Ar1()", 12, "Skriv inn alle disse for å resete hanoi tårnet"
  row: "reset-Ar2()", 12, "Skriv inn alle disse for å resete hanoi tårnet"
  row: "reset-Ar3()", 12, "Skriv inn alle disse for å resete hanoi tårnet"
end
Kontroller

a = [array: 0, 0, 0, 0]



fun
  reset-Ar0() :
  array-set-now(a, 0, 0)
  
end
fun
  reset-Ar1() :
  array-set-now(a, 1, 0)

end
fun
  reset-Ar2() :
  array-set-now(a, 2, 0)

end
fun
  reset-Ar3() :
  array-set-now(a, 3, 0)

end

red-Ar = a.get-now(0)
green-Ar = a.get-now(1)
Blue-Ar = a.get-now(2)
Orange-Ar = a.get-now(3)




fun rod(x) :
  x1 = red-Ar 
  y1 = x1 + (x * 150)
  nm = array-set-now(a, 0, y1)
  play()
end


fun gronn(x) :
  x1 = green-Ar 
  y1 = x1 + (x * 150)
  nm = array-set-now(a, 1, y1)
  play()
  
end



fun blaa(x) :
  x1 = Blue-Ar 
  y1 = x1 + (x * 150)
  nm = array-set-now(a, 2, y1)
  play()
end

fun oransj(x) :
  
  x1 = Orange-Ar 
  y1 = x1 + (x * 150)
  nm = array-set-now(a, 3, y1)
  play()
  
end


fun play() :
  Spillmove = overlay-xy(
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
    bl)
  Spillmove
end


