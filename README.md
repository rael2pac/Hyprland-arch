


<p align="center">
  <img src="https://github.com/user-attachments/assets/1c6ba649-7445-4d66-bd33-bfb989de6587" /> width="650" />
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
![rael001](https://github.com/user-attachments/assets/dfd0f3ff-89d6-4d75-a10a-95b110594cb3)

-----
![rael002](https://github.com/user-attachments/assets/a963e223-7f7d-4d35-bf88-05abac296b15)

----------
![rael003](https://github.com/user-attachments/assets/57f30fc7-01e5-457b-b568-73528d86511a)

-----
![rael004](https://github.com/user-attachments/assets/23415686-793b-4071-99d5-c42c4c783a1f)

-------
![rael005](https://github.com/user-attachments/assets/72ed5235-48e5-4639-abbb-9772d041cd8d)

---------    
## Licença

[GNU-GPL](https://github.com/rael2pac/Hyprland-arch/blob/main//LICENSE)




