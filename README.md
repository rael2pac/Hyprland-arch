


<p align="center">
  <img src="https://github.com/user-attachments/assets/50327725-01ce-41d3-8c34-9489849a7f9e" /> width="650" />
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


## Assista o video explicativo:

 video 1 [Projeto](https://www.youtube.com/watch?v=7RMm95WwOgo)

 video 2 [Instalação](https://www.youtube.com/watch?v=sBcflXohl9k)

  video 2 [Dicas](https://www.youtube.com/watch?v=gEqxdm7WG-A)

Video tutorial pode ser encontrado no [canal Rbgames](https://www.youtube.com/@RBGameslinux) 

## Erros
Erros e sugestões podem ser colocadas em [Issues](https://github.com/rael2pac/Hyprland-arch/issues/new). Quem souber a solução ou souber como fazer a sugestão crie um [pull requests](https://github.com/rael2pac/Hyprland-arch/pulls)

## 📢 Capturas

--------
![rael001](https://github.com/user-attachments/assets/15a26f1c-16b6-4c5b-86b3-e50bb0528b9f)


-----
![rael002](https://github.com/user-attachments/assets/76bc7347-4f9b-4712-a358-cd2e8be08a03)



----------
![rael003](https://github.com/user-attachments/assets/d2bfa7f5-488a-4b06-8b62-acc4606e78eb)


-----
![rael004](https://github.com/user-attachments/assets/6bb5fe93-0bfb-474e-b579-1ffa88f7e8e8)


-------
![rael005](https://github.com/user-attachments/assets/2803d86b-3d36-4f65-bd5c-64deef4b799f)



---------    
## Licença

[GNU-GPL](https://github.com/rael2pac/Hyprland-arch/blob/main//LICENSE)




