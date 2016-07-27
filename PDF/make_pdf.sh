echo "Generating lowres pages:"
for f in ../originais/*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 1200 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/I*.lowres.jpg ../originais/C*.lowres.jpg ../originais/REF*.lowres.jpg Automação_de_Projetos_de_Sistemas_Digitais__Simulacao_em_Nivel_de_Portas_Logicas__Massola_1974.pdf
rm ../originais/*.lowres.jpg -f

echo "done."
