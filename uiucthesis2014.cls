%%
%% This is file `uiucthesis2014.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uiucthesis2014.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from uiucthesis2014.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file uiucthesis2014.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\def\fileversion{v2.25b} \def\filedate{2014/05/02}
%% Package and Class "uiucthesis2014" for use with LaTeX2e.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uiucthesis2014}
         [\filedate\ \fileversion\ UIUC Thesis (PJC)]
\RequirePackage{setspace}
\expandafter\ifx\csname @ifundefined\endcsname\relax
  \def\@ifundefined#1{%
    \expandafter\ifx\csname#1\endcsname\relax
      \expandafter\@firstoftwo
    \else
      \expandafter\@secondoftwo
    \fi}
\fi
\@ifundefined{MakeUppercase}{\let\MakeUppercase=\uppercase}{}
\newif\if@thesisdraft \@thesisdraftfalse
\newif\if@thesisfancy \@thesisfancyfalse
\newif\if@fullpage \@fullpagefalse
\newif\if@largecaps \@largecapsfalse
\newif\if@proquest \@proquestfalse
\newif\if@edeposit \@edepositfalse
\newif\if@thesisoffcenter \@thesisoffcenterfalse
\newif\if@centerchapter \@centerchapterfalse
\DeclareOption{draftthesis}{\@thesisdrafttrue}
\DeclareOption{fancy}{\@thesisfancytrue}
\DeclareOption{fullpage}{\@fullpagetrue}
\DeclareOption{proquest}{\@proquesttrue}
\DeclareOption{toclabels}{\AtBeginDocument{\toclabels}}
\DeclareOption{edeposit}{\@edeposittrue}
\DeclareOption{offcenter}{\@thesisoffcentertrue}
\DeclareOption{centerchapter}{\@centerchaptertrue}
\DeclareOption{largecaps}{\@largecapstrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\PassOptionsToClass{letterpaper,oneside}{book}
\ProcessOptions
\LoadClass{book}
\if@proquest
    \nofiles    % don't overwrite the .aux files
    \def\makeindex{}
    \@thesisfancyfalse
    \@fullpagetrue
\fi
\if@thesisdraft
  \newcount\timehh\newcount\timemm
  \timehh=\time \divide\timehh by 60
  \timemm=\time \count255=\timehh \multiply\count255 by -60
    \advance\timemm by \count255
  \def\draftheader{\slshape Draft of \today\ at
  \ifnum\timehh<10 0\fi\number\timehh\,:\,\ifnum\timemm<10 0\fi\number\timemm}%
\fi
\newcommand{\toclabels}{%
    \addtocontents{toc}{\vspace*{-\baselineskip}\hfill Page\endgraf}%
    \addtocontents{lof}{\vspace*{-\baselineskip}~Figure\hfill Page\endgraf}%
    \addtocontents{lot}{\vspace*{-\baselineskip}~Table\hfill Page\endgraf}}
\def\@mkuptitle#1{\gdef\@Utitle{#1}}
\def\title#1{\gdef\@title{#1}\MakeUppercase{\protect\@mkuptitle{#1}}}
\def\@mkupauthor#1{\gdef\@Uauthor{#1}}
\def\author#1{\gdef\@author{#1}\MakeUppercase{\protect\@mkupauthor{#1}}}
\def\phdthesis{\def\@degree{Doctor of Philosophy}
    \def\degree{Ph.D.}
    \def\@thesisname{DISSERTATION}
    \def\@committeename{Doctoral Committee:}
    }
\def\msthesis{\def\@degree{Master of Science}
    \def\degree{M.S.}
    \def\@thesisname{THESIS}
    \def\@committeename{Master's Committee:}
    }
\newcommand{\otherdoctorate}[2]{\def\@degree{#1}
    \def\degree{#2}
    \def\@thesisname{DISSERTATION}
    \def\@committeename{Doctoral Committee:}
    }
\newcommand{\othermasters}[2]{\def\@degree{#1}
    \def\degree{#2}
    \def\@thesisname{THESIS}
    \def\@committeename{Master's Committee:}
    }
\def\department#1{\def\@dept{#1}}
\def\college#1{\def\@college{#1}}
\def\schools#1{\def\@schools{#1}}
\def\degreeyear#1{\def\@degreeyear{#1}}
\newcommand{\committee}[1]{\gdef\@committee{#1}}
\newcommand*{\volume}[1]{\gdef\thesis@volume{VOLUME~#1}}
\newcommand*{\thesis@volume}{}
\if@edeposit
  \gdef\@committee{%
    \ClassError{uiucthesis2014}{A committee must be specified for e-deposit dissertations.}%
    {Use \protect\committee\space with members separated by \protect\\'s.}}
\fi
\def\copyrightnotice{\copyright~\@degreeyear~by \@author. All rights reserved.}
\newif\if@thesiscrpage \@thesiscrpagetrue
\let\nocopyrightpage\@thesiscrpagefalse
\if@thesisdraft\nocopyrightpage\fi
\phdthesis
\department{Computer Science}
\college{Graduate College}
\def\@schools{}
\def\@degreeyear{\number\year}
\renewcommand\maketitle{
    \if@thesiscrpage
        \newpage
        \thispagestyle{empty}
        \null\vfill
        \centerline{\copyrightnotice}%
        \vskip 3ex % skip to visually center copyright notice
        \vfill
    \fi
    \newpage
    \thispagestyle{empty}%
    \enlargethispage{1in}%
    \begingroup
    \def\baselinestretch{1}
    \ifnum \@ptsize=2
        \@normalsize
        \newcommand{\thesis@small}{\small}
    \else
        \large
        \newcommand{\thesis@small}{\@normalsize}
    \fi
    \headheight=0pt \headsep=0pt
    \topmargin=0in
    \@tempdima=\paperwidth
    \advance\@tempdima by -\textwidth
    \divide\@tempdima by 2
    \advance\@tempdima by -1in
    \oddsidemargin=\@tempdima
    \let\evensidemargin=\oddsidemargin

    \newdimen\thesis@dim
    \if@edeposit
        \thesis@dim=1.5in
    \else
        \thesis@dim=1.5in
    \fi
    \newdimen\ct@dim
    \newdimen\cn@dim
    \ct@dim=\oddsidemargin
    \advance\ct@dim by -0.3125in
    \cn@dim=\oddsidemargin
    \advance\cn@dim by -0.6875in
    \if@largecaps
        \def\lc@selectfont{\fontshape{lc}\selectfont}%
    \else
        \def\lc@selectfont{}%
    \fi
    \begin{center}
    \if@edeposit
        \vbox to 1in{}
    \else
        \vbox to 1in{}
    \fi
    \vbox to \thesis@dim{%
        {\lc@selectfont\@Utitle}
        \if@thesisdraft
        \\[12pt]
        \draftheader
        \fi
        \vfil}%
    \vbox to 1.5in{%
        {\lc@selectfont BY}\\[12pt]
        {\lc@selectfont\@Uauthor}\\[12pt]
        \vfil}%
    \vbox to 0.5in{\thesis@volume\vfil}
    \vbox to 2.0in{%
        {\lc@selectfont \@thesisname}\\[12pt]
        Submitted in partial fulfillment of the requirements\\
        for the degree of \@degree\ in \@dept\\
        in the \@college\ of the\\
        University of Illinois at Urbana-Champaign, \@degreeyear\vfil}
 \vskip -2ex
 \vbox to 0.35in{
 Urbana, Illinois}
 \end{center}
\begin{flushleft}
        \vbox to 0.3in{
        \hspace{-\ct@dim}\@committeename\\}
        \hspace{-\cn@dim}\begin{tabular}{l}\@committee\end{tabular}\vfil
\end{flushleft}
    \newpage
    \endgroup
}
\let\thesis@frontmatter=\frontmatter
\def\frontmatter{%
    \thesis@frontmatter
    \if@edeposit
        \setcounter{page}{2}
    \else
        \setcounter{page}{3}
    \fi}
\renewcommand\contentsname{Table of Contents}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus 0.2em \@minus 0.2em
    \setlength\@tempdima{1.5em}
    \begingroup
      \leftskip \z@ \rightskip \@tocrmarg \parfillskip -\rightskip
      \parindent \z@
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern\@dotsep mu\hbox{.}\mkern\@dotsep mu$}
      \hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\let\thesis@tableofcontents=\tableofcontents
\def\tableofcontents{{\singlespacing\thesis@tableofcontents}}
\let\thesis@listoftables=\listoftables
\def\listoftables{\newpage%
    \addcontentsline{toc}{chapter}{\listtablename}%
    {\singlespacing\thesis@listoftables}}
\let\thesis@listoffigures=\listoffigures
\def\listoffigures{\newpage%
    \addcontentsline{toc}{chapter}{\listfigurename}%
    {\singlespacing\thesis@listoffigures}}
\newcommand*{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand*{\adviser}[1]{\gdef\@advisor{#1}}
\def\abstractname{Abstract}
\if@proquest
 \def\maketitle{}
 \def\@advisor{%
    \ClassError{uiucthesis2014}{An advisor must be specified for the ProQuest abstract}%
    {Use \protect\advisor\space to specify a name}}
 \newenvironment{abstract}{%
    \newpage
    \pagestyle{empty}
    \setcounter{page}{1}
    \begin{singlespace}\begin{center}
    \@Utitle\\[\baselineskip]
    \@author, \degree\\
    Department of \@dept\\
    University of Illinois at Urbana-Champaign, \@degreeyear\\
    \@advisor, Adviser\\[\baselineskip]
    \end{center}\end{singlespace}\par\noindent\ignorespaces
    }{
    \newpage
    \aftergroup\enddocument
    \aftergroup\endinput
    }
\else
 \newenvironment{abstract}{\chapter*{\abstractname}}{}
\fi
\newenvironment{dedication}{
    \newpage
    \leavevmode\vfill
    \begin{center}
    \itshape
    }{
    \end{center}
    \vskip 3ex
    \vfill
    \newpage
    }
\newenvironment*{symbollist}[1][1in]{
    \begin{list}{}{\singlespacing
     \setlength{\leftmargin}{#1}
     \setlength{\labelwidth}{#1}
     \addtolength{\labelwidth}{-\labelsep}
     \setlength{\topsep}{0in}}%
     \def\makelabel##1{\hfil##1\hfil}%
    }{
    \end{list}}
\newenvironment*{symbollist*}[1][1in]{
    \begin{symbollist}[#1]
    \def\makelabel##1{##1\hfil}}
    {\end{symbollist}}
\if@thesisfancy
  \font\cminch=cminch at 60pt
  \newcommand\chapternumberfont{\cminch}
\else
  \newcommand\chapternumberfont{\huge\bfseries}
\fi
\newcommand\chaptertitlefont{\Huge\bfseries}
\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
      \refstepcounter{chapter}%
      \typeout{\@chapapp\space\thechapter.}%
      \if@thesisfancy
        \addcontentsline{toc}{chapter}%
          {\protect\numberline{\thechapter}#1}%
      \else
        \addcontentsline{toc}{chapter}%
          {\@chapapp\ \thechapter\quad #1}%
      \fi
    \else
      \addcontentsline{toc}{chapter}{#1}%
    \fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}%
    \@afterheading
  \fi}
\newskip\thesis@chapskip
\AtBeginDocument{%
  \newdimen\chapternumberheight
  \begingroup
    \chapternumberfont
    \setbox255=\hbox{A}
    \if@thesisfancy
      \global\thesis@chapskip=\ht255
    \else
      \global\thesis@chapskip=\baselineskip
    \fi
    \dimen255=\ht255
    \chaptertitlefont
    \setbox255=\hbox{A}
    \advance\dimen255 by \ht255
    \if@thesisfancy
      \global\advance\thesis@chapskip by -\ht255
      \global\divide\thesis@chapskip by 2
      \global\advance\thesis@chapskip by 10\p@
    \else
      \global\advance\thesis@chapskip by 20\p@
    \fi
    \divide\dimen255 by 2
    \global\chapternumberheight=\dimen255
  \endgroup}
\newlength{\chaptertitleheight}
\if@thesisfancy
  \setlength{\chaptertitleheight}{1.5in}
\else
  \setlength{\chaptertitleheight}{1.85in}
\fi
\def\@makechapterhead#1{%
  \vbox to \chaptertitleheight{
    \def\baselinestretch{1}\@normalsize
    \parindent \z@ \raggedright \normalfont
    \if@centerchapter
      \centering
    \fi
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \thesis@chapskip=\z@
        \if@thesisfancy
          \vspace*{10\p@}%
          \leavevmode\llap{\vbox to \chapternumberheight{\hbox{%
            \chapternumberfont\thechapter\,}\vss}}%
        \else
          {\chapternumberfont \@chapapp\space \thechapter}
          \par\nobreak
          \vskip 20\p@
        \fi
      \fi
    \fi
    \interlinepenalty\@M
    \vspace*{\thesis@chapskip}%
    \chaptertitlefont #1
    \vfil
  }%
  \par\nobreak%
  }
\def\@makeschapterhead#1{%
  \vbox to \chaptertitleheight{
    \def\baselinestretch{1}\@normalsize
    \parindent \z@ \raggedright \normalfont
    \if@centerchapter
      \centering
    \fi
    \interlinepenalty\@M
    \vspace*{\thesis@chapskip}
    \chaptertitlefont #1
    \vfil
  }%
  \par\nobreak%
  }
\newcommand{\sectiontitlefont}{\Large\bfseries}
\newcommand{\subsectiontitlefont}{\large\bfseries}
\newcommand{\subsubsectiontitlefont}{\normalsize\bfseries}
\renewcommand\section{\@startsection {section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {2.3ex \@plus.2ex}%
  {\raggedright\normalfont\sectiontitlefont}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\raggedright\normalfont\subsectiontitlefont}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\raggedright\normalfont\subsubsectiontitlefont}}
\let\thesis@appendix\appendix
\renewcommand\appendix{\thesis@appendix\@ifstar{\gdef\thechapter{}}{}}
\renewcommand\bibname{References}
\AtBeginDocument{\let\thesis@thebib\thebibliography
    \let\thesis@endbib\endthebibliography
    \def\thebibliography{\begingroup\singlespacing%
        \chapter{\bibname}%
        \let\chapter\@gobbletwo%
        \thesis@thebib}
    \def\endthebibliography{\thesis@endbib\endgroup}}
\let\thesis@theindex=\theindex
\def\theindex{\addcontentsline{toc}{chapter}{\indexname}%
    \begingroup\singlespacing\thesis@theindex}
\let\thesis@endtheindex=\endtheindex
\def\endtheindex{\thesis@endtheindex\endgroup}
\topmargin=0pt
\advance \topmargin by -\headheight
\advance \topmargin by -\headsep
\textheight 8.9in
\if@fullpage
  \setlength{\textwidth}{\paperwidth}
  \addtolength{\textwidth}{-2in}
  \@settopoint\textwidth
\fi
\setlength{\@tempdima}{\paperwidth}
\addtolength{\@tempdima}{-\textwidth}
\setlength{\oddsidemargin}{.5\@tempdima}
\addtolength{\oddsidemargin}{-1in}
\if@thesisoffcenter
  \addtolength{\oddsidemargin}{0.5in}
  \addtolength{\textwidth}{-0.5in}
  \reversemarginpar
\fi
\setlength{\marginparwidth}{\oddsidemargin}
\addtolength{\marginparwidth}{1in}
\addtolength{\marginparwidth}{-\marginparsep}
\addtolength{\marginparwidth}{-24pt}
\@settopoint\oddsidemargin
\@settopoint\marginparwidth
\setlength{\evensidemargin}{\oddsidemargin}
\if@thesisdraft
    \newcommand{\note}[1]{\marginpar{\def\baselinestretch{1}\small\raggedright #1}}
\else
    \newcommand{\note}[1]{}
    \let\thesis@marginpar\marginpar
    \def\marginpar{%
        \ClassWarning{uiucthesis2014}{Margin paragraphs fall outside the allowed margins\MessageBreak
            for UIUC Theses, use \protect\note\space instead of \protect\marginpar.}%
        \thesis@marginpar}
\fi
\def\ps@plain{%
  \let\@mkboth\@gobbletwo
  \if@thesisdraft
    \def\@oddhead{\draftheader\hfil}
  \else
    \let\@oddhead\@empty
  \fi
  \let\@evenhead\@oddhead
  \def\@oddfoot{\reset@font\hfil\thepage\hfil}%
  \let\@evenfoot\@oddfoot
}
\if@twoside
  \def\ps@headings{%
    \if@thesisdraft
      \def\@oddhead{\draftheader\hfil\slshape\rightmark}
      \def\@evenhead{\slshape\leftmark\hfil\draftheader}
    \else
      \def\@oddhead{\hfil\slshape\rightmark}
      \def\@evenhead{\slshape\leftmark\hfil}
    \fi
    \def\@oddfoot{\reset@font\hfil\thepage\hfil}%
    \let\@evenfoot\@oddfoot
    \let\@mkboth\markboth
    \if@thesisdraft
      \def\chaptermark##1{%
        \markboth {\MakeUppercase{%
          \ifnum \c@secnumdepth >\m@ne
            \if@mainmatter
              \@chapapp\ \thechapter%
            \fi
          \fi}}{}}
    \else
      \def\chaptermark##1{%
        \def\@chaphead{\MakeUppercase{%
          \ifnum \c@secnumdepth >\m@ne
            \if@mainmatter
              \if@thesisfancy
                \thechapter.~~%
              \else
                \@chapapp\ \thechapter.~~%
              \fi
            \fi
          \fi
          ##1}}%
        \markboth{\@chaphead}{\@chaphead}}
    \fi
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection. \ %
        \fi
        ##1}}}}
\else
  \def\ps@headings{%
    \if@thesisdraft
      \def\@oddhead{\draftheader\hfil\slshape\rightmark}
    \else
      \def\@oddhead{\hfil\slshape\rightmark\hfil}
    \fi
    \let\@evenhead\@oddhead
    \def\@oddfoot{\reset@font\hfil\thepage\hfil}%
    \let\@evenfoot\@oddfoot
    \let\@mkboth\markboth
    \if@thesisdraft
      \def\chaptermark##1{%
        \markright {\MakeUppercase{%
          \ifnum \c@secnumdepth >\m@ne
            \if@mainmatter
              \@chapapp\ \thechapter%
            \fi
          \fi}}}
    \else
      \def\chaptermark##1{%
        \markright {\MakeUppercase{%
          \ifnum \c@secnumdepth >\m@ne
            \if@mainmatter
              \if@thesisfancy
                \thechapter.~~%
              \else
                \@chapapp\ \thechapter.~~%
              \fi
            \fi
          \fi
          ##1}}}
    \fi
     }
\fi
\pagestyle{plain}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
  \@mkboth{}{}
  \thispagestyle{plain}
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter}
\def\thesisspacing{\if@fullpage\doublespacing\else\onehalfspacing\fi}
\pagenumbering{roman}
\AtBeginDocument{\thesisspacing}
\def\preliminary{\frontmatter}
\let\endpreliminary=\relax
\def\thesis{\mainmatter}
\let\endthesis=\relax
\endinput
%%
%% End of file `uiucthesis2014.cls'.
