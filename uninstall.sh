rm_if_link() {
  [ -L "$1" ] && rm -v "$1";
}
for DOT_FILE in `ls $PWD/dotfiles`
do
  rm_if_link $HOME/.$DOT_FILE
done
