#My zsh theme


#Aesthetic formatting

BLUE_L(){
echo  "%{$FG[004]%B[%}%f"
}
BLUE_R(){
echo  "%{$FG[004]%B]%}%f"
}



#Git Plugin Themeing
ZSH_THEME_GIT_PROMPT_PREFIX="-"$(BLUE_L)
ZSH_THEME_GIT_PROMPT_SUFFIX=$(BLUE_R)
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN="✨"





PROMPT=$'%{\e[0;34m%}%B┌─$(BLUE_L)%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;34m%}%B$(BLUE_R)%b%{\e[0m%}-%b%{\e[0;34m%}%B[%b%{\e[1;37m%}%1~%{\e[0;34m%}%B]%b%{\e[0m%}$(git_prompt_info) 
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B]%{\e[0m%}%b '
RPROMPT='[%*]'

