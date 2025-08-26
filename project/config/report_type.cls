\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{reporte}[2024/09/15]
\LoadClass[a4paper, 12pt]{article}
%% PACKAGES
\usepackage{mathptmx}
\renewcommand{\rmdefault}{ptm}
\usepackage{amsfonts, amssymb, amsmath}
\usepackage{hyperref}
\usepackage[center]{caption}
\usepackage{subcaption}
\usepackage{tikz}
\usetikzlibrary{
  arrows.meta,
  backgrounds,
  positioning,
  shapes.geometric,
  fit,
  calc
}
\usepackage{circuitikz}
\usepackage{pgfplots}
\usepackage{multicol}
\usepackage{cancel}
\usepackage{float}
\usepackage{enumitem}
\usepackage{listings}
\usepackage{color}
\usepackage{longtable}
\pgfplotsset{compat=1.15}
%% RENAMETHINGS
\renewcommand{\tablename}{Tabla}
\renewcommand{\refname}{Referencias}

\RequirePackage{graphicx}
\RequirePackage{fancyhdr} 
\RequirePackage{titlesec} 
\RequirePackage{geometry}  
\RequirePackage{lipsum}    
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage{ragged2e}
\geometry{
  left=2.5cm,
  right=2.5cm,
  top=2cm,
  bottom=2.5cm,
  % headheight=3cm,  % Espacio reservado para el encabezado
}

%%% JUSTIFY TEXT
\AtBeginDocument{
  \raggedright
  \setlength\parindent{12pt}
  \setlength{\parskip}{0.5em}
  \setstretch{1.0} % Espaciado simple
  \justifying
}
%%% HEADER & FOOT CONFIG
\pagestyle{fancy}
\fancyhf{} 
\lhead{\footnotesize }
\fancyfoot[L]{
    \scriptsize{\MakeUppercase{\today}}
    }
\fancyfoot[R]{
    \footnotesize{\thepage}
    }

%%% TITLE CONFIG (para la primera página si lo necesitas)
\newcommand{\titleconfig}[4]{
    % \begin{minipage}{0.2\textwidth}
    % \includegraphics[height=2.5cm]{#1}%
    % \end{minipage}
    % % Logo de la universidad
    % \begin{minipage}{0.7\textwidth}
    %     \centering
    %     \textbf{\Large #2}\\
    %     \textbf{\normalfont\normalsize #3}\\ 
    %     {\rule{\textwidth}{0.1pt}\\ \footnotesize #4}  % Fecha y texto adicional
    % \end{minipage}
}

%%% TITLE-ABSTRACT-SECTION,SUBSECTION CONFIG
\newcommand{\titlereport}[1]{
    \begin{center}
        \Large\bfseries\MakeUppercase{#1}
    \end{center}
}

\newcommand{\abstractreport}[1]{%
    \noindent\textbf{\textit{\footnotesize Resumen---}}
    \footnotesize #1\par
}
\newcommand{\keywordsreport}[1]{%
    % \vspace{-10pt}
    \noindent\textbf{\textit{\footnotesize Palabras Clave---}}
    \footnotesize #1 \par 
}

\titleformat{\section}
    {\normalfont\large\bfseries}
    {\thesection}{1em}
    {\MakeUppercase}
\titlespacing*{\section}{0pt}{0.5em}{0pt} 
% Espacio a la izquierda (márgenes)
% Espacio antes del título
% Espacio después del título (sin salto de línea)
\titleformat{\subsection}
    {\normalfont\large\bfseries}
    {\thesubsection}{1em}
    {}[] 
\titlespacing*{\subsection}{0pt}{0.5em}{0pt}

\titleformat{\subsubsection}[runin]
    {\normalfont\small\bfseries}
    {\thesubsubsection}{1em}
    {}[:] 
\titlespacing*{\subsubsection}{0pt}{0.5em}{0pt} 

\usepackage[most,many,breakable]{tcolorbox}
\usepackage{anyfontsize}
\definecolor{myg}{RGB}{56, 140, 70}
\definecolor{myb}{RGB}{45, 111, 177}
\definecolor{myr}{RGB}{199, 68, 64}
\definecolor{mytheorembg}{HTML}{F2F2F9}
\definecolor{mytheoremfr}{HTML}{00007B}
\definecolor{myexamplebg}{HTML}{F2FBF8}
\definecolor{myexamplefr}{HTML}{88D6D1}
\definecolor{myexampleti}{HTML}{2A7F7F}
\definecolor{mydefinitbg}{HTML}{E5E5FF}
\definecolor{mydefinitfr}{HTML}{3F3FA3}
\definecolor{notesgreen}{RGB}{0,162,0}
\definecolor{myp}{RGB}{197, 92, 212}
\definecolor{mygr}{HTML}{2C3338}
\definecolor{myred}{RGB}{127,0,0}
\definecolor{myyellow}{RGB}{169,121,69}
\definecolor{OrangeRed}{HTML}{ED135A}
\definecolor{Dandelion}{HTML}{FDBC42}
\definecolor{light-gray}{gray}{0.95}
\definecolor{Emerald}{HTML}{00A99D}
\definecolor{RoyalBlue}{HTML}{0071BC}

%================================
% THEOREM BOX
\tcbuselibrary{theorems,skins,hooks}
\newtcbtheorem[]{theorem*}{}
{%
    enhanced,
    breakable,
    colback = mytheorembg,
    frame hidden,
    boxrule = 0sp,
    borderline west = {3pt}{0pt}{mytheoremfr},
    sharp corners,
    detach title,
    before upper = \tcbtitle\par\smallskip,
    coltitle = mytheoremfr,
    fonttitle = \bfseries\sffamily,
    description font = \mdseries,
    segmentation style={solid, mytheoremfr},
    theorem name = Teorema,  % Name
}
{th*}

%================================
% Tikz CONFIG
\ctikzset{bipoles/thickness=1}
\ctikzset{bipoles/length=1.5cm}
\tikzstyle{every node}=[font=\large]
\tikzstyle{every node}=[line width=1pt, line cap=round, line join=round]
\tikzset{
    % Custom thicknesses
    ultraThin/.style={
        line width=0.1pt
    },
    thinLine/.style={
        line width=0.5pt
    },
    axesLine/.style={
        line width=1pt
    },
    dLine/.style={
        line width=1.1pt
    },
    thickLine/.style={
        line width=2pt
    },
    veryThickLine/.style={
        line width=3pt
    },
    % Grid style
    grid/.style={
        step=1cm,
        gray!30,
        ultraThin
    },
    basic box/.style={
        draw=#1, fill=#1!10, rounded corners, inner sep=10pt
    },
    header/.style={
        label={[font=\bfseries]above:#1}
    },
    fat blue line/.style={
        very thick, blue
    },
    % Axes style
    axes/.style={
        axesLine,
        -{>[scale=1]}
    },
    % Text style
    textstyle/.style={
        font=\bfseries,
        scale=1 
    }
}

% This is the color used for MATLAB comments below
\definecolor{MyDarkGreen}{rgb}{0.0,0.4,0.0}
\usepackage{adjustbox}
% For faster processing, load Matlab syntax for listings
\lstloadlanguages{Matlab}%
\lstset{language=Matlab,
    backgroundcolor=\color{white}, % Background color
    basicstyle=\ttfamily\small, % Basic font style
    keywordstyle=\color{blue}, % Keyword color
    keywordstyle=[2]\color{purple}, % Built-in function color
    commentstyle=\color{green}, % Comment color for single %
    stringstyle=\color{red}, % String color
    numberstyle=\tiny\color{gray}, % Line number style
    numbers=left, % Line numbers on the left
    stepnumber=1, % Line number step
    numbersep=5pt, % Space between code and line numbers
    tabsize=3, % Tab size
    showspaces=false, % Don't show spaces
    showstringspaces=false, % Don't show spaces in strings
    breaklines=true, % Break lines
    breakatwhitespace=true, % Break at white space
    frame=single, % Add a frame
    rulecolor=\color{black}, % Frame color
    title=\lstname, % Show filename
    xleftmargin=7pt, % Remove extra left margin
    xrightmargin=7pt, % Remove extra right margin
    aboveskip=5pt, % Space above the listing
    belowskip=5pt, % Space below the listing
}

\newcommand{\callcode}[2]
  {\lstinputlisting[caption=#2,label=#1]{#1.m}}