globalias() {
   zle _expand_alias
   zle expand-word
   zle self-insert
}
zle -N globalias

# space to make a normal space
bindkey -M emacs "^ " globalias
bindkey -M viins "^ " globalias

# control-space expandsall aliases, including global
bindkey -M emacs " " magic-space
bindkey -M viins " " magic-space

# normal space during searches
bindkey -M isearch " " magic-space
