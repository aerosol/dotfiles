set statusline=
set statusline +=\ %{StatuslineTrailingSpaceWarning()}%*
set statusline +=\ %<%t%*
set statusline +=\ %#error#%m%* " modified flag
set statusline +=%=%* " separator
set statusline+=%{NearestMethodOrFunction()}
set statusline +=%=%* " separator
set statusline +=%{fugitive#head()}%*
set statusline +=\ %y%* " file type
set statusline +=\ %4l:%2c " line no/column, padded
