# choose kernel to boot in grub2
answer=$(grep ^menuentry /boot/grub2/grub.cfg | cut -d "'" -f2 |  zenity --list --title "Kernels"  --text "Choose a OS" --column "Operating Systems")
if [ "$answer" ] 
  then
	grub2-set-default "$answer"
	grub2-editenv list
	grub2-mkconfig -o /boot/grub2/grub.cfg
fi
