sudo pacman -Ss kde games > games.txt &&
line_count=$(wc -l games.txt | cut -d " " -f1)
for ((i=1; i<$line_count; i++));do sed -n $((i++))p games.txt >> remove.txt ;done &&
line_count_two=$(wc -l remove.txt | cut -d " " -f1) 
cat remove.txt | cut -d "/" -f2 | cut -d " " -f1 > games.txt ; rm remove.txt &&
sudo pacman -Rc $(<games.txt) &&
rm games.txt


