\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{ldv_forum}[2006/10/24 LDV Forum --
Version 1.1 C. Kram & N. Bastron]

\LoadClass[9pt,twoside,a5paper,smallheadings]{scrartcl}
\input{articledata.tex}


%%==========================================================================================%%
%% Vorspann Anfang
%%
%%==========================================================================================%%


\ifx\pdftexversion\undefined
  \RequirePackage[dvips]{graphicx}
 \else
  \RequirePackage[pdftex]{graphicx}
 \fi

\RequirePackage[inner=1.4cm,outer=1.2cm,top=1cm,bottom=1cm,includeheadfoot]{geometry}

\RequirePackage[OT2, T1]{fontenc}
\RequirePackage[utf8]{inputenc}           %% encoding



%%-- BEGIN HACK (jurish, 2010-10-12)
%% + loading lmodern here breaks eco/microtype scaling on debian/lenny
%%   with error message:
%%    ! pdfTeX error (font expansion): auto expansion is only possible with scalable fonts
%% + workaround: delay loading lmodern until after eco and microtype have been loaded (below)
%\RequirePackage{lmodern,setspace,ellipsis,url,fixltx2e,ae,natbib,tabularx,ntheorem,graphicx} %%-- orig
\RequirePackage{setspace,ellipsis,url,fixltx2e,ae,natbib,tabularx,ntheorem,graphicx} %%-- new (jurish hack)
%%-- END HACK



\RequirePackage[pdftex]{xcolor}         %% Grauwerte
\definecolor{hell}{gray}{0.80}  %% ...

\RequirePackage{lastpage}

\RequirePackage{fancyhdr}           %% Kopf- und Fu{\ss}zeilengestaltung ...
\pagestyle{fancy}               %% ...
\fancyhead{}                    %% initialisieren der Kopfzeile
\fancyhead[RE]{\sffamily{\large{\textcolor{black} {\authorlastnames}}}}
%%============ Autorenname

\fancyhead[LO]{\sffamily{\large{\textcolor{black}
{\shortarticletitle}}}}
%%============ Dokumenttitel

\fancyfoot{}                  %% initialisieren der Fu{\ss}zeile
\fancyfoot[RE]{\sffamily{\bfseries{\textcolor{black}
{JLCL}}}}  %%<========== links/innen LDV...

\fancyfoot[LO]{\sffamily{\bfseries{\textcolor{black}
{JLCL \ldvforumyear ~-- Band \ldvforumvolume$\,$(\ldvforumnumber)}}}}        %%<========== rechts/innen

\fancyfoot[LE]{\sffamily{\bfseries{\newstylenums{\LARGE{\textcolor{black}
{\thepage}}}}}}     %%<========== Seitenzahl

\fancyfoot[RO]{\sffamily{\bfseries{\newstylenums{\LARGE{\textcolor{black}
{\thepage}}}}}}     %%<========== Seitenzahl

\fancypagestyle{firstpage}{%
    \fancyhead{}
    %\renewcommand{\headrulewidth}{0pt}
    \fancyfoot{}                  %% initialisieren der Fu{\ss}zeile
    \fancyfoot[RE]{\sffamily{\bfseries{\textcolor{black}
    {JLCL}}}}  %%<========== links/innen LDV...

    \fancyfoot[LO]{\sffamily{\bfseries{\textcolor{black}
    {JLCL \ldvforumyear    ~-- Band \ldvforumvolume$\,$(\ldvforumnumber) -- \thepage-\pageref{LastPage} }}}}        %%<========== rechts/innen

    %\fancyfoot[LE]{\sffamily{\bfseries{\newstylenums{\LARGE{\textcolor{black}
    %{\thepage}}}}}}     %%<========== Seitenzahl

    %\fancyfoot[RO]{\sffamily{\bfseries{\newstylenums{\LARGE{\textcolor{black}
    %{\thepage}}}}}}     %%<========== Seitenzahl
}

\renewcommand{\headrule}{{\color{hell} \hrule width \headwidth height
\headrulewidth \vskip- \headrulewidth}}
\renewcommand{\footrule}{{\color{hell} \vskip- \footruleskip\vskip-
\footrulewidth \hrule width\headwidth height \footrulewidth\vskip\footruleskip}}

\renewcommand{\headrulewidth}{4.4pt}  %% oberer Balken
\renewcommand{\footrulewidth}{4.4pt}  %% unterer Balken

%\RequirePackage{endnotes}%             %% Endnoten ...
% \renewcommand{\footnote}{\endnote}
% \renewcommand{\notesname}{Endnoten}  %% bei englischen Texten keine Umdefinition !!

\setkomafont{caption}{\sffamily\small}
\setkomafont{captionlabel}{\sffamily\bfseries\small}

                                %% evtl. muss bei an diesen Parametern noch etwas gedreht werden
\pretolerance=100               %% Textsatz: interner Parameter zur Steuerung des Zeilenumbruchs
\tolerance 300                  %% 1414 Bewertungsgrenzwert f\"{u}r noch zu akzeptierende schlecht umgebrochene Zeilen
\hfuzz=0.2pt                    %% Grenze, ab der eine overfull hbox gemeldet wird
\vfuzz=0.2pt                    %% Grenzwert, ab dem die \"{U}berf\"{u}llung einer \vbox protokolliert wird
\hbadness 1414                  %% Grenzwert f\"{u}r �schlechte� Zeilen, bzw. Boxen
\vbadness   1000                  %% Grenzwert f\"{u}r eine �schlechte� \vbox
\emergencystretch 1.3em         %% zus\"{a}tzlicher dynamischer Leerraum
\hyphenpenalty=50               %% Strafpunkte bei Silbentrennung \"{u}ber Absatz hinweg
\widowpenalty=9999              %% falls letzte Zeile auf neue Seite gebrochen wird.
\clubpenalty=9999               %% wenn erste Zeile eines Absatzes auf alter Seite bleibt.
\doublehyphendemerits=900       %% Aufeinanderfolgende Silbentrennungen eher vermeiden.



%%==========================================================================================%%
%% Vorspann Ende
%%==========================================================================================%%

%\renewcommand{\rmdefault}      %% Benutzung anderer Standardschrift
%              {garawin}        %% ...

\RequirePackage{eco} %% medi�valziffern \oldstylenums \newstylenums
\RequirePackage[scaled=0.9]{helvet}
\RequirePackage{microtype}          %% optischer Randausgleich und minimale Skalierung.

%%-- BEGIN HACK (jurish, 2010-10-12)
%% + load lmodern after microtype to avoid 'auto expansion' error on debian lenny
\RequirePackage{lmodern} %%-- new
%%-- END HACK


%\RequirePackage[bookmarks=true,breaklinks=true,pdftex]{hyperref}
%\hypersetup{pdfauthor = {Name of Author},
%            pdftitle = {Title of docment},
%            pdfsubject = {Subject},
%            pdfkeywords = {Keyword1, Keyword2, ...},
%            pdfcreator = {LaTeX with hyperref package},
%            pdfproducer = {dvips + ps2pdf}}
%%==========================================================================================%%


\newcommand{\authordata}{\begin{spacing}{1.3}
{\noindent\sffamily\large{\authornames}}\\
\vskip -8pt \hrule \vskip 5pt

\noindent\sffamily\LARGE\bfseries{\articletitle}
\vskip 5pt %% wenn Titel mit Zeilenumbruch ==> \vskip 4pt
\hrule
\end{spacing}}

\endinput
