\LoadClass{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mypresentation}[2014/10/12 Presentation template]

% ----------------------------------------------------------------
% Packages
% --------

\usepackage[
  paperwidth=128mm, 
  paperheight=96mm,
  vmargin=2mm, 
  hmargin=5mm,
  headheight=8mm,
  footskip=8mm,
  includefoot
]{geometry} % needed for defining the format of the pdf
\usepackage{fancyhdr}% needed for the headers and footers
\usepackage[
	usenames,
	dvipsnames
]{color}
\usepackage{datetime}
\usepackage[dvipsnames]{xcolor}
\usepackage{mdframed}
\usepackage{bookman}
\usepackage{bookmark}

% ----------------------------------------------------------------
% Commands
% --------

\newcommand{\changefont}[3]{
  \fontfamily{#1} 
  \fontseries{#2} 
  \fontshape{#3} 
  \selectfont
}

% The firstpage command has 1 param:
%   - the title of the page
\newcommand{\firstpage}[2]{%
  \thispagestyle{firststyle}%
  \clearpage
  \pagecolor{MidnightBlue!90}
	  \begin{center} %
        \fontsize{40pt}{30pt}\selectfont 
        \textcolor{white}{#1 \newline \newline #2}
	  \end{center}% 
  \clearpage
  \newpage%
  \pagecolor{white}
}

\renewcommand{\section}[1]{ 
  \hypertarget{#1}{}
  \bookmark[level=section, dest=#1]{#1}
  \Huge{\textcolor{MidnightBlue!90}{#1}} \normalsize
  \newline \newline
}
\renewcommand{\normalsize}{
	\fontsize{10}{12}\selectfont
}
\renewcommand{\footrulewidth}{0.4pt}


% ----------------------------------------------------------------
% Style
% -----

% Style for normal pages
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt} % remove header
\cfoot{footer}
\addtolength{\topmargin}{2mm}
\footskip=10pt

% Style for the first page
\fancypagestyle{firststyle}
{
  % clear header and footer
  \fancyhf{}
  \renewcommand{\footrulewidth}{0pt} % remove footer line
  
  % define footer with white background
  \fancyfoot[C]{
    \begin{mdframed}[backgroundcolor=white, linecolor=white, leftmargin=-17, rightmargin=-12]
      \begin{center}
        \small{\today}
      \end{center}
    \end{mdframed}
  }

  \footskip=3pt
}
