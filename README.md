


<p align="center">
  <img src="https://github.com/rael2pac/Hyprland-arch/blob/main/assets/logo_rael-git.png" width="650" />
</p>  
  &nbsp  

# Hyprdots para instalação com base do Archlinux.  


Script com minha Dotfiles p/Hyprland com Archlinux.  

Dotfiles cleans , agrádavel e funcional tentando manter a simplicidade e elgancia do sistema.
Feito com 95% nativo do Hyprland, mantendo a estabilidade e funcionalidade do conjunto Hyprland + Archlinux.

## 🖥️ Instalação

```
📢Atenção recomendamos que faça uma instalação do archlinux com xorg !!!!

Após a instalação faça o chroot e instale o:

pacman -S git nano 

sudo nano /etc/makepkg.conf

(procurar a linha)

#MAKEFLAGS="-j2" tirar o comentario (#) do inicio dessa linha,
 e aonde está j2, mudar p/MAKEFLAGS="-j$(nproc)".

sudo nano /etc/pacman.conf 

Descomentar a linha #color deixando apena color
em # Misc options colocar no final da linha ILoveCandy 

exit

reboot

Após reiniciar faça login

Após isso baixe  o script 

git clone https://github.com/rael2pac/Hyprland-arch.git

cd Hyprland-arch

chmod +x hypr-git.sh 

./hypr-git.sh

```
# Informações


`(Assista o video explicativo) link:` em breve

<!-- video 1 [utilização do script](https://youtu.be/6KrKxNsAdYo) -->

<!-- video 2 [utilização do script](https://youtu.be/ezOm_47syUM^) -->

Video tutorial pode ser encontrado no [canal Rbgames](https://www.youtube.com/@RBGameslinux) 

## Erros
Erros e sugestões podem ser colocadas em [Issues](https://github.com/rael2pac/Hyprland-arch/issues/new). Quem souber a solução ou souber como fazer a sugestão crie um [pull requests](https://github.com/rael2pac/Hyprland-arch/pulls)

## 📢 Capturas

--------
![image](https://github.com/rael2pac/Hyprland-arch/blob/main/assets/rael001.jpg)

-----
![image](https://github.com/rael2pac/Hyprland-arch/blob/main/assets/rael002.jpg)

----------
![image](https://github.com/rael2pac/Hyprland-arch/blob/main/assets/rael003.jpg)

-----
![image](https://github.com/rael2pac/Hyprland-arch/blob/main/assets/rael004.jpg)

-------
![image](https://github.com/rael2pac/Hyprland-arch/blob/main/assets/rael005.jpg)


---------    
## Licença

[GNU-GPL](https://github.com/rael2pac/Hyprland-arch/blob/main//LICENSE)




