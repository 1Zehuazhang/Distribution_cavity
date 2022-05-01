set encoding iso_8859_1
set term post eps color solid enh
set output 'Binding-affinity-landscape_v5.eps'
set xtics font "Times-Roman,10"
set ytics font "Times-Roman,10"
set key font "Times-Roman,6" 

set xrange[-10:16]
set yrange[-10:16]
set ytics -10,2,16
set xtics -10,2,16

set palette model HSV defined ( 0 0 1 1, 1 1 1 1 ) negative
set colorbox vertical user origin 0.78,0.55 size .03,.3

plot "cavity-center.txt" using 1:2 with points ps 5 pt 7 notitle,\
"mutations-cavity.txt" using 1:2:(($3+10)/10):($5) with points ps variable pt 7 palette notitle,\
        "cavity-center.txt" using ($1+0.5):($2+1):3 with labels font "Times-Roman,10" notitle,\
          "mutations-cavity.txt" using ($1+0.5):($2+1):6 with labels font "Times-Roman,10" notitle

