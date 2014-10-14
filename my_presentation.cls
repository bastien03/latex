\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_presentation}[2014/10/12 Presentation template]

\renewcommand{\normalsize}{\fontsize{10}{12}\selectfont}

\usepackage[
  paperwidth=100mm, 
  paperheight=100mm, 
  vmargin=2mm, 
  hmargin=5mm,
  headheight=8mm,
  footskip=6mm,
  includeheadfoot
]{geometry}
\usepackage{fancyhdr}
\usepackage[usenames,dvipsnames]{color}


\newcommand{\firstpage}[1]{
  \thispagestyle{empty} #1 \newpage
}

\pagestyle{fancy}
\lhead{\color{Gray} left header}
\rhead{right header}
\cfoot{left footer}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}