\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{config/report_type}[2025/08/28 Clean report class]
\LoadClass[a4paper,12pt]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{newtxtext,newtxmath}
\RequirePackage{newtxtt}
\RequirePackage{setspace}
\setstretch{1.05}

\RequirePackage{amsmath}
\let\openbox\relax     
\RequirePackage[ruled,vlined]{algorithm2e}
\RequirePackage{amsthm}
\RequirePackage{enumitem}
\RequirePackage{tasks}

\RequirePackage{graphicx}
\RequirePackage[center]{caption}
\RequirePackage{subcaption}
\RequirePackage{tikz}
\usetikzlibrary{arrows.meta,backgrounds,positioning,shapes.geometric,fit,calc}
\RequirePackage{circuitikz}
\RequirePackage{pgfplots}
\pgfplotsset{
  compat=1.18,
  every axis/.append style={
    width=0.55\linewidth,
    height=0.45\linewidth,
    scale only axis,
    tick label style={font=\scriptsize},
    label style={font=\small},
    title style={font=\small},
    legend style={
      font=\tiny,
      at={(0.97,0.97)}, anchor=north east,
      draw, fill=white, fill opacity=0.8,
      inner sep=1pt, outer sep=1pt,
      nodes={scale=0.9, transform shape}
    },
    legend image post style={xscale=0.6,yscale=0.6},
    legend cell align=left
  }
}
\RequirePackage{longtable}
\RequirePackage{multicol}
\RequirePackage{float}
\RequirePackage{cancel}
\RequirePackage{xcolor}
\RequirePackage{adjustbox}

\RequirePackage{geometry}
\geometry{left=2.5cm,right=2.5cm,top=2cm,bottom=2.5cm}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{ragged2e}
\RequirePackage{etoolbox}
\RequirePackage[spanish,es-noshorthands]{babel}

\pagestyle{fancy}
\fancyhf{}
\lhead{\footnotesize}
\fancyfoot[L]{\scriptsize\MakeUppercase{\today}}
\fancyfoot[R]{\footnotesize\thepage}
\setlength{\headheight}{14pt}

\AtBeginDocument{
  \setlength\parindent{12pt}
  \setlength{\parskip}{0.5em}
  \justifying
}

\renewcommand{\tablename}{Tabla}
\renewcommand{\refname}{Referencias}
\renewcommand{\figurename}{Figura}
\renewcommand{\contentsname}{Contenido}

\newtheorem{definition}{Definición}
\newtheorem{exercise}{Ejercicio}

\newcommand{\vect}[1]{\mathbf{#1}}
\newcommand{\inner}[2]{\langle #1,\, #2\rangle}
\newcommand{\transpose}{\top}

\settasks{
  label=\alph*),
  label-format=\normalfont,
  label-offset=.5em,
  item-indent=1.5em,
  column-sep=1em
}

\newcommand{\titlereport}[1]{\begin{center}\Large\bfseries\MakeUppercase{#1}\end{center}}
\newcommand{\abstractreport}[1]{\noindent\textbf{\textit{\footnotesize Resumen---}} \footnotesize #1\par}
\newcommand{\keywordsreport}[1]{\noindent\textbf{\textit{\footnotesize Palabras Clave---}} \footnotesize #1\par}

\titleformat{\section}{\normalfont\large\bfseries}{\thesection}{1em}{\MakeUppercase}
\titlespacing*{\section}{0pt}{0.5em}{0pt}
\titleformat{\subsection}{\normalfont\large\bfseries}{\thesubsection}{1em}{}
\titlespacing*{\subsection}{0pt}{0.5em}{0pt}
\titleformat{\subsubsection}[runin]{\normalfont\small\bfseries}{\thesubsubsection}{1em}{}[:]
\titlespacing*{\subsubsection}{0pt}{0.5em}{0pt}

\definecolor{myg}{RGB}{56,140,70}
\definecolor{myb}{RGB}{45,111,177}
\definecolor{myr}{RGB}{199,68,64}
\definecolor{mytheorembg}{HTML}{F2F2F9}
\definecolor{mytheoremfr}{HTML}{00007B}
\definecolor{myexamplebg}{HTML}{F2FBF8}
\definecolor{myexamplefr}{HTML}{88D6D1}
\definecolor{myexampleti}{HTML}{2A7F7F}
\definecolor{mydefinitbg}{HTML}{E5E5FF}
\definecolor{mydefinitfr}{HTML}{3F3FA3}
\definecolor{notesgreen}{RGB}{0,162,0}
\definecolor{myp}{RGB}{197,92,212}
\definecolor{mygr}{HTML}{2C3338}
\definecolor{myred}{RGB}{127,0,0}
\definecolor{myyellow}{RGB}{169,121,69}
\definecolor{OrangeRed}{HTML}{ED135A}
\definecolor{Dandelion}{HTML}{FDBC42}
\definecolor{light-gray}{gray}{0.95}
\definecolor{Emerald}{HTML}{00A99D}
\definecolor{RoyalBlue}{HTML}{0071BC}

\RequirePackage[breakable]{tcolorbox}
\tcbuselibrary{theorems,skins,hooks}
\newtcbtheorem[]{theorem*}{}%
{enhanced,breakable,colback=mytheorembg,frame hidden,boxrule=0sp,
 borderline west={3pt}{0pt}{mytheoremfr},sharp corners,detach title,
 before upper=\tcbtitle\par\smallskip,coltitle=mytheoremfr,
 fonttitle=\bfseries\sffamily,description font=\mdseries,
 segmentation style={solid,mytheoremfr},theorem name=Teorema}%
{th*}

\ctikzset{bipoles/thickness=1}
\ctikzset{bipoles/length=1.5cm}
\tikzset{
  every node/.style={font=\large},
  ultraThin/.style={line width=0.1pt},
  thinLine/.style={line width=0.5pt},
  axesLine/.style={line width=1pt},
  dLine/.style={line width=1.1pt},
  thickLine/.style={line width=2pt},
  veryThickLine/.style={line width=3pt},
  grid/.style={step=1cm,gray!30,ultraThin},
  basic box/.style={draw=#1, fill=#1!10, rounded corners, inner sep=10pt},
  header/.style={label={[font=\bfseries]above:#1}},
  fat blue line/.style={very thick, blue},
  axes/.style={axesLine,-{>[scale=1]}},
  textstyle/.style={font=\bfseries,scale=1}
}

\RequirePackage[hidelinks]{hyperref}
\RequirePackage[backend=biber,style=numeric,sorting=none]{biblatex}
\addbibresource{references.bib}

\endinput
