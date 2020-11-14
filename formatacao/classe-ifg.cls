%% -----------------------------------------------------------------
%%
%% Documento de classe LaTeX para documentos acadêmicos
%% Instituto Federal de Goiás
%% Autor: Raphael Gomes (raphael.gomes@ifg.edu.br)
%%
%% Baseado em: Instituto de Informática 
%%             Universidade Federal de Goiás
%% Autor: Humberto Longo
%%

%%==================================================================
%% classe-ifg Class Identification
%%==================================================================
\newcommand{\docdate}{}  % See the renewcommands below,
\newcommand{\filedate}{} % these contain the content;-))
\newcommand{\fileversion}{}
\renewcommand{\docdate}{2020/11/08}
\renewcommand{\filedate}{2020/11/08}
\renewcommand{\fileversion}{1.0}
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{formatacao/classe-ifg}%
[\filedate\space v\fileversion\space CLASSE-IFG Thesis Class]
\typeout{LaTeX 2e package classe-ifg' -- Released 14 nov 2020}

%%==================================================================
%% Histórico de versões
%%==================================================================
% v1.0 : 14 nov 2020 -----------------------------------------------
% Primeira versão da classe-ifg

%%==================================================================
%% classe-ifg Class Options
%%==================================================================
\RequirePackage{ifthen}

\newboolean{tese} \setboolean{tese}{false}
\newboolean{diss} \setboolean{diss}{true}
\newboolean{qualm} \setboolean{qualm}{false}
\newboolean{quale} \setboolean{quale}{false}
\newboolean{mngr} \setboolean{mngr}{false}
\newboolean{tcc} \setboolean{tcc}{false}
\newboolean{qualt} \setboolean{qualt}{false}
\newboolean{link} \setboolean{link}{true}
\newboolean{old} \setboolean{old}{true}

\DeclareOption{tese}{
 \setboolean{tese}{true}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
}

\DeclareOption{dissertacao}{
 \setboolean{tese}{false}
 \setboolean{diss}{true}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
}

\DeclareOption{qualificacaom}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{true}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
}

\DeclareOption{monografia}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{true}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
}

\DeclareOption{qualificacaoe}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{true}
}

\DeclareOption{tcc}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{true}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
}

\DeclareOption{qualificacaot}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{true}
 \setboolean{quale}{false}
}

\DeclareOption{nocolorlinks}{
 \setboolean{link}{false}}

\DeclareOption{american,english,french,german,brazil,portuguese}{
 \PassOptionsToPackage{\CurrentOption}{babel,fancyref}}

\ProcessOptions\relax

\def\titulo#1{\def\@titulo{#1}}                 \titulo{}
\def\subtitulo#1{\def\@subtitulo{#1}}           \subtitulo{}
\def\autor#1{\def\@autor{#1}}                   \autor{}
\def\sautor#1{\def\@sautor{#1}}                   \sautor{}
\def\tautor#1{\def\@tautor{#1}}                   \tautor{}
\def\orientador#1{\def\@orientador{#1}}         \orientador{}
\def\orientadora#1{\def\@orientadora{#1}}       \orientadora{}
\def\coorientador#1{\def\@coorientador{#1}}     \coorientador{}
\def\coorientadora#1{\def\@coorientadora{#1}}   \coorientadora{}
\def\chaves#1{\def\@chaves{#1}}                 \chaves{}
\def\keys#1{\def\@keys{#1}}                     \keys{}
\def\dia#1{\def\@dia{#1}}                       \dia{}
\def\mes#1{\def\@mes{#1}}                       \mes{\month}
\def\@mesP{
  \ifcase\@mes\or
    Janeiro\or Fevereiro\or Mar\c{c}o\or 
    Abril\or Maio\or Junho\or 
    Julho\or Agosto\or Setembro\or 
    Outubro\or Novembro\or Dezembro\fi}
\def\ano#1{\def\@ano{#1}}                       \ano{}
\def\ministerio#1{\def\@ministerio{#1}}         \ministerio{}
\def\instituicao#1{\def\@instituicao{#1}}       \instituicao{}
\def\reitoria#1{\def\@reitoria{#1}}             \reitoria{}
\def\unidade#1{\def\@unidade{#1}}               \unidade{}
\def\unidadeco#1{\def\@unidadeco{#1}}           \unidadeco{}
\def\campus#1{\def\@campus{#1}}                 \campus{}
\def\tipocurso#1{\def\@tipocurso{#1}}           \tipocurso{}
\def\curso#1{\def\@curso{#1}}                   \curso{}
\def\programa#1{\def\@programa{#1}}             \programa{}
\def\linha#1{\def\@linha{#1}}                   \linha{}
\def\concentracao#1{\def\@concentracao{#1}}     \concentracao{}
\def\lattes#1{\def\@lattes{#1}}                 \lattes{}


%%==================================================================
%% classe-ifg Class Preliminary Declarations
%%==================================================================
\LoadClass[a4paper,12pt]{report}
\RequirePackage{texnames}

% Hyphenation
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage[english,portuguese,brazil]{babel} 	% Termos pré-definidos em Português
\RequirePackage[T1]{fontenc}                      	% Hifeniza\c{c}\~{a}o correta em Português
\RequirePackage[utf8x]{inputenc}                	% Inser\c{c}\~{a}o de acentos

%% Fontes adicionais
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{amsfonts}
\RequirePackage{pslatex}
\RequirePackage{etoolbox}
\newcommand{\arial}{\sf}

%% Verbatim
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{fancyvrb}
\BeforeBeginEnvironment{verbatim}{\def\baselinestretch{1}}

%% Page layout
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{indentfirst}
\RequirePackage{setspace}

%% Aspas
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\aspas}[1]{``{#1}''}

% Referências cruzadas
% - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - -
\RequirePackage{lastpage}
\RequirePackage{ifpdf} % running on pdfTeX?
\ifpdf
 \RequirePackage[pdftex,pagebackref=true]{hyperref}
 \pdfadjustspacing=1    %%% force LaTeX-like character spacing
\else
 \RequirePackage[dvips,breaklinks,pagebackref=true]{hyperref}
\fi

\hypersetup{
 bookmarksopen=false,
 bookmarksnumbered=true,
 pdfstartview=FitH,
 hypertexnames=false,
 naturalnames=true,
}

\ifthenelse{\boolean{link}}
{\hypersetup{
 colorlinks=true,
 linkcolor=blue, %%% Color for normal internal links.
 citecolor=blue, %%% Color for bibliographical citations in text.
 urlcolor=blue,  %%% Color for linked URLs.
 filecolor=blue, %%% Color for URLs which open local files.
}}
{}

% Figures
% - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - -
\ifpdf
 \RequirePackage[pdftex]{graphicx}
 \DeclareGraphicsExtensions{.jpg, .pdf, .mps, .png}
\else
 \RequirePackage[dvips]{graphicx}
\fi
\RequirePackage[small,bf,up,format=hang,width=.75\textwidth]{caption}
\renewcommand{\captionfont}{\small\itshape}
\setlength{\abovecaptionskip}{0.5\abovecaptionskip}
\setlength{\belowcaptionskip}{0.5\belowcaptionskip}
\newcommand{\fontefig}[1]{
    \footnotesize
    \vspace{0.2cm}
    Fonte: #1.
}


%% Subfigures
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage[IT,hang,FIGBOTCAP,TABBOTCAP]{subfigure}


%% Figuras usando TikZ
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\inputTikZ}[2]{%  
     \scalebox{#1}{\input{#2}}  
}

%% Tabelas
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{footnote}
\makesavenoteenv{tabular}
\makesavenoteenv{table}
\RequirePackage{makecell}
\RequirePackage{multirow}
\RequirePackage{longtable}
\renewcommand\theadalign{cb}
\renewcommand\theadfont{\scriptsize}
\renewcommand\theadgape{\Gape[0.5pt]}
\renewcommand\cellgape{\Gape[0.5pt]}
\newcolumntype{M}[1]{>{\arraybackslash}m{#1}}
\newcolumntype{Z}[1]{>{\centering\arraybackslash}m{#1}}
\newcolumntype{N}{@{}m{0pt}@{}}
\newcommand{\fontetab}[1]{
    \footnotesize
    \vspace{0.3cm}
    \newline
    Fonte: #1.
}


%% Quadros
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{float}
\RequirePackage[titles]{./formatacao/tocloft}
\newcommand{\listquadroname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newcommand{\quadrorefname}{Quadro}
\newcommand{\chartautorefname}{Quadro}
\newfloat{quadro}{!htbp}{loq}[chapter]
\floatname{quadro}{\quadroname}
\floatstyle{plaintop}
\restylefloat{quadro}
\newlistof{quadros}{loq}{\listquadroname}
\newlistentry{quadro}{loq}{0}
\renewcommand{\thequadro}{\thechapter.\@arabic\c@quadro}
\newcommand*\setfloatadjustment[2]{\@namedef{#1adjustment}{#2}}
\setfloatadjustment{quadro}{\centering}

\newcommand{\listofframes}{
\addcontentsline{toc}{chapter}{\listquadroname}
\listofquadros
}
\newcommand{\fontequa}[1]{
    \footnotesize
    \vspace{0.3cm}
    \newline
    Fonte: #1.
}


%% Algoritmos
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage[ruled, algo2e, vlined, portuguese, algochapter]{algorithm2e}
\renewcommand{\listofalgorithmes}{\begingroup
 \tocfile{\listalgorithmcfname}{loa}
 \endgroup}


%% Códigos
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\floatstyle{ruled}  %%% options: plain, boxed, ruled
\newfloat{codigo}{htbp}{loc}[chapter] %% numera captions com número de seção.
\floatname{codigo}{C\'{o}digo}
\newcommand{\listofcodes}{
 \listof{codigo}{Lista de C\'{o}digos de Programas}
 \phantomsection
\addcontentsline{toc}{chapter}{Lista de C\'{o}digos de Programas}
 }
\RequirePackage{listings}
\renewcommand{\lstlistingname}{Código}
\RequirePackage[table]{xcolor}
\definecolor{maroon}{rgb}{0.5,0,0}
\definecolor{darkgreen}{rgb}{0,0.5,0}
\definecolor{darkblue}{rgb}{0.0,0.0,0.5}
\definecolor{gray}{rgb}{0.4,0.4,0.4}
\definecolor{pblue}{rgb}{0.13,0.13,1}
\definecolor{pgreen}{rgb}{0,0.5,0}
\definecolor{pred}{rgb}{0.9,0,0}
\definecolor{pgrey}{rgb}{0.46,0.45,0.48}
\definecolor{ppurple}{RGB}{127,0,85}
\definecolor{myblue}{RGB}{250,250,250}
\definecolor{myyellow}{RGB}{234,234,234}
\definecolor{mygreen}{RGB}{192,192,192}
\lstset{
  frame=shadowbox,
  frameround=tttt,
  numbers=left,
  breaklines=true,
  showstringspaces=false,
  linewidth=1.0\textwidth,
  belowskip=20pt,
  tabsize=2,
  extendedchars=true,
  literate={á}{{\'a}}1 {ã}{{\~a}}1 {à}{{\`a}}1 {â}{{\^a}}1 {é}{{\'e}}1 {ê}{{\^e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {õ}{{\~o}}1 {ò}{{\`o}}1 {ô}{{\^o}}1 {ú}{{\'u}}1 {ç}{{\c c}}1 {Á}{{\'A}}1 {Ã}{{\~A}}1 {À}{{\`A}}1 {Â}{{\^A}}1 {É}{{\'E}}1 {Ê}{{\^E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Õ}{{\~O}}1 {Ò}{{\`O}}1 {Ô}{{\^O}}1 {Ú}{{\'U}}1 {Ç}{{\c C}}1
}
\lstdefinelanguage{console}
{
  basicstyle=\color{black}\ttfamily\linespread{1.1}\bfseries\fontsize{6.5}{7.5}\selectfont,
  commentstyle=\color{black},
  identifierstyle=\color{black},
  morestring=[b][\color{pgrey}]",
  morestring=[b][\color{pgrey}]'
}
\lstdefinelanguage{XML}
{
  basicstyle=\ttfamily\linespread{1.1}\bfseries\fontsize{7.5}{8.5}\selectfont,
  commentstyle=\color{darkgreen},
  morestring=\color{blue}[b]",
  morestring=[s]{>}{<},
  morecomment=[s]{<?}{?>},
  morecomment=[s]{!--}{--},
  identifierstyle=\color{maroon},
  keywordstyle=\color{darkblue},
  morekeywords={xmlns,version,name,priority,isShareable,defaultPriority,xmi,xsi}, %list your attributes here
  morekeywords={p,measurementUnit,fontName,href}, % list your attributes here
  morekeywords={processGraph,uses,source,target,hasPSS,hasOwner,isComposedOf,parallelTrees,parallelTree,targetValue,valueUnitEnum,valueUnit,utilityEstimator,utilityParametersBuilder,encoding,xs:schema,xs:element,xs:complexType,xs:sequence,xs:attribute,constraints,extrinsicConstraints,targetOp,qosConstraints,resourceConstraints,qosConstraint,constraintClass,targetOps,load,metricClass,relationalOp,utilityParamBuilder,intrisicConstraints,generalConstraintsDescriptor,serviceConstraintDescriptor,root,constraintDG,vertices,vertex,serviceDescriptor,dependencies,dependency,logicalOperations,logicalOperation,numberOfInstructions,uri,roles,messages,usagePolices,serviceType,serverMethod,category,packageURI,packageType,endpointName,port,numberOfInstances,edges,edge,pConj}% list your attributes here
}
\lstdefinelanguage{constraint}
{
  basicstyle=\ttfamily\linespread{1.1}\bfseries\fontsize{7.5}{8.5}\selectfont,
  commentstyle=\color{darkgreen},
  morestring=\color{blue}[b]",
  morestring=[s]{>}{<},
  morecomment=[s]{<?}{?>},
  identifierstyle=\color{maroon},
  keywordstyle=\color{darkblue},
  morekeywords={LOCATION,ASCENDENT,COST,CLOUD_PROVIDER_REPUTATION}
}
\lstdefinelanguage{Java}
{
  identifierstyle=\color{black},
  morekeywords={public,class,import,package,private,final,var},% list your attributes here
  morekeywords={context,constraint,check,message,critique,guard,fix,title,do,not,delete},% list your attributes here
  morekeywords={for,in,if,or,new},% list your attributes here
  morekeywords={ref,attr,val},% list your attributes here
  morekeywords={try,catch,this,return},% list your attributes here
  morekeywords={public,private,protected,static},% list your attributes here
  morekeywords={boolean,float,int,null,true,false},% list your attributes here
  morekeywords={if,else,switch,case,while},% list your attributes here
  basicstyle=\ttfamily\linespread{1.1}\bfseries\fontsize{7.5}{8.5}\selectfont,
  commentstyle=\color{pgrey},
  morecomment=[s][\color{pgrey}]{/*}{*/},
  morecomment=[l][\color{pgrey}]{//},
  morecomment=[l][\color{pgrey}]{--},
  morestring=[b]",
  morestring=[b]',
  keywordstyle=\color{ppurple},
  stringstyle=\color{blue},
  moredelim=[is][\itshape\textcolor{blue}]{||}{||},
  moredelim=[is][\textcolor{pgrey}]{\%\%}{\%\%}
}
\lstdefinelanguage{Matlab}
{
  identifierstyle=\color{black},
  morekeywords={auto, double, int, struct, break, else, long, switch, case, enum, register, typedef, char, end},% list your attributes here
  morekeywords={extern, return, union, const, float, short, unsigned, continue, for, signed, void},% list your attributes here
  morekeywords={default, goto, sizeof, volatile, do, if, static, while, catch, friend, protected, try},% list your attributes here
  morekeywords={class, inline, public, typeid, const_cast, mutable, reinterpret_cast, typename, delete},% list your attributes here
  morekeywords={namespace, static_cast, using, dynamic_cast, new, template, virtual, explicit, operator},% list your attributes here
  morekeywords={this, wchar_t, export, private, throw, abs, int8_T, MAX_uint8_T*, rtInf, asm, int16_T},% list your attributes here
  morekeywords={MAX_uint16_T*, rtMinusInf, bool, int32_T, MAX_uint32_T*, rtNaN, boolean_T, int64_T},% list your attributes here
  morekeywords={MAX_uint64_T, SeedFileBuffer, byte_T, INTEGER_CODE, MIN_int8_T*, SeedFileBufferLen},% list your attributes here
  morekeywords={char_T, LINK_DATA_BUFFER_SIZE, MIN_int16_T*, single, cint8_T, LINK_DATA_STREAM},% list your attributes here
  morekeywords={MIN_int32_T*, TID01EQ, cint16_T, localB, MIN_int64_T, time_T, cint32_T, localC, MODEL},% list your attributes here
  morekeywords={true, creal_T, localDWork, MT, uint_T, creal32_T, localP, NCSTATES, uint8_T, creal64_T},% list your attributes here
  morekeywords={localX, NULL, uint16_T, cuint8_T, localXdis, NUMST, uint32_T, cuint16_T, localXdot},% list your attributes here
  morekeywords={pointer_T, uint64_T, cuint32_T, localZCE, PROFILING_ENABLED, UNUSED_PARAMETER, ERT},% list your attributes here
  morekeywords={localZCSV, PROFILING_NUM_SAMPLES, USE_RTMODEL, false, matrix, real_T, VCAST_FLUSH_DATA},% list your attributes here
  morekeywords={fortran, MAX_int8_T*, real32_T, vector, HAVESTDIO, MAX_int16_T*, real64_T, id_t},% list your attributes here
  morekeywords={MAX_int32_T*, RT,  , int_T, MAX_int64_T, RT_MALLOC},% list your attributes here
  basicstyle=\ttfamily\linespread{1.1}\bfseries\fontsize{7.5}{8.5}\selectfont,
  commentstyle=\color{pgrey},
  morecomment=[s][\color{pgrey}]{...}{...},
  morecomment=[l][\color{pgrey}]{\%},
  morestring=[b]",
  morestring=[b]',
  keywordstyle=\color{ppurple},
  stringstyle=\color{blue},
  moredelim=[is][\itshape\textcolor{blue}]{||}{||},
  moredelim=[is][\textcolor{pgrey}]{\%\%}{\%\%}
}
\lstdefinelanguage{Python}
{
  identifierstyle=\color{black},
  morekeywords={and, except, lambda, with, as, finally, nonlocal, while, assert, false, None, yield},% list your attributes here
  morekeywords={break, for, not, class, from, or, continue, global, pass, def, if, raise, , del},% list your attributes here
  morekeywords={import, return, elif, in, True, False, else, is, try},% list your attributes here
  basicstyle=\ttfamily\linespread{1.1}\bfseries\fontsize{7.5}{8.5}\selectfont,
  commentstyle=\color{pgrey},
  morecomment=[s][\color{pgrey}]{'''}{'''},
  morecomment=[l][\color{pgrey}]{\#}
  morestring=[b]",
  morestring=[b]',
  keywordstyle=\color{ppurple},
  stringstyle=\color{blue},
  moredelim=[is][\itshape\textcolor{blue}]{||}{||},
  moredelim=[is][\textcolor{pgrey}]{\%\%}{\%\%}
}
\newenvironment{BNF}
  {\captionsetup{type=lstlisting}}
  {}
\newcommand{\listingnote}[1]{
% Syntax: \begin{addmargin}[<left indentation>]{<indentation>}
\todo[linecolor=red,backgroundcolor=red!25,bordercolor=red]{#1}{} 
}


% %% Nomenclatura
% %% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{nomencl}
% Comando para criacao de abreviaturas e siglas
\def\sigla{\@ifstar\@sigla\@@sigla}
% Apenas faz o registro na tabela de siglas
\def\@sigla#1#2{\nomenclature{#1}{#2}}          % \sigla*{}{} 
% Faz o registro na tabela de siglas e insere os dados no corpo do documento
\def\@@sigla#1#2{#2 (#1)\nomenclature{#1}{#2}}  % \sigla{}{}
\newcommand{\listofacronym}{
\addcontentsline{toc}{chapter}{Lista de Abreviaturas e Siglas}
% Tamanho da Label da sigla
\setlength{\nomlabelwidth}{0.15\hsize} 
% Separa as abreviaturas de suas definicoes com pontos (....)
\renewcommand{\nomlabel}[1]{##1 \hfill}
\setlength{\nomitemsep}{-.05in} 
% Comando necessario para a criacao da lista de abreviaturas
\makenomenclature
\renewcommand{\nomname}{Lista de Abreviaturas e Siglas}
\printnomenclature
}
\newcommand{\siglaestrangeira}[2]{
    \sigla{#1}{\textit{#2}}
}

% %% Símbolos
% %% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newlength{\simblabel}
\setlength{\simblabel}{2.5cm}

\newcommand{\simbolo}[2]{
  \noindent{\makebox[\simblabel]{\ensuremath{#1}\hfill}\parbox[t]{\textwidth-\simblabel}{#2\\[-0.6\baselineskip]}}
}
\newcommand\simbitem[2]{%
  \write\@auxout{\noexpand\@writefile{sim}{\noexpand\simbolo{#1}{#2}}}
  {#1: #2}
}
\newcommand{\listofsymbols}{
\addcontentsline{toc}{chapter}{Lista de Símbolos}
\@makeschapterhead{Lista de Símbolos}
\input{./pre/preSimbolos}
\@starttoc{sim}
}

%%==================================================================
%% Declarations
%%==================================================================

%% Page layout
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\setlength{\textwidth}{15cm}
\setlength{\oddsidemargin}{4.0cm}
\addtolength{\oddsidemargin}{-1in}
\addtolength{\oddsidemargin}{-\hoffset}
\addtolength{\oddsidemargin}{-\marginparsep}

\setlength{\headheight}{22.5pt}
\setlength{\voffset}{-1in}
\setlength{\headsep}{3cm}
\addtolength{\headsep}{-1in}
\addtolength{\headsep}{-\voffset}
\addtolength{\headsep}{-\topmargin}
\addtolength{\headsep}{-\headheight}
\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-\headsep}
\addtolength{\textheight}{-1in}
\addtolength{\textheight}{-\voffset}
\addtolength{\textheight}{-\topmargin}
\addtolength{\textheight}{-\headheight}
\addtolength{\textheight}{-2.5cm}
\setlength{\parindent}{1.5cm}
\addtolength{\skip\footins}{15pt}

%% line spacing
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\onehalfspacing
\frenchspacing
\clubpenalty=2000
\emergencystretch=20pt
\pretolerance=500
\tolerance=2500
\widowpenalty=2000

%% number of floats per page
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\renewcommand\floatpagefraction{.7}
\renewcommand\topfraction{.7}
\renewcommand\bottomfraction{.7}
\renewcommand\textfraction{.3}
\setcounter{totalnumber}{10}
\setcounter{topnumber}{10}
\setcounter{bottomnumber}{10}

%% long quotation environment
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newenvironment{citacao}%
  {\begin{spacing}{1.}%
   \small
   \begin{list}{}{%
       \setlength{\listparindent}{0cm}%
       \setlength{\itemindent}{\listparindent}%
       \setlength{\rightmargin}{0cm}%
       \setlength{\leftmargin}{4cm}%
       \setlength{\parsep}{0pt}}%
    \item\relax}%
  {\end{list}\end{spacing}}

%% Section titles
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\def\mghrulefill#1{\leavevmode\leaders\hrule\@height #1\hfill\kern\z@}

\ifthenelse{\boolean{old}}
{
\def\@makechapterhead#1{%
  \vspace*{20\p@}%
   {\interlinepenalty\@M
    \raggedleft
    \par\nobreak
    \raggedright\Large\rm\bfseries\MakeUppercase{\thechapter\space\space\space\space\space#1} \par\nobreak\vskip -10\p@
    \vskip 40\p@
  }}
}
{
    \def\@makechapterhead#1{%
  \vspace*{20\p@}%
   {\interlinepenalty\@M
    \raggedleft
    \mghrulefill{0.5pt}
    \Large\sf\mdseries\MakeUppercase{\@chapapp}\space\Huge\thechapter
    \par\nobreak
    \raggedright\LARGE\rm\bfseries #1 \par\nobreak\vskip -10\p@
    \mghrulefill{0.5pt}\par\nobreak
    \vskip 40\p@
  }}
}

\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}

\ifthenelse{\boolean{old}}
{
\def\@makeschapterhead#1{%
   \vspace*{20\p@}%
  { \parindent \z@ \raggedright
    \interlinepenalty\@M
    \raggedright\Large\rm\bfseries\centering\MakeUppercase{#1} \par\nobreak \vskip -10\p@
    \vskip 40\p@
  }}
}
{
 \def\@makeschapterhead#1{%
   \vspace*{20\p@}%
  { \parindent \z@ \raggedright
    \interlinepenalty\@M
    \mghrulefill{0.5pt}\par\nobreak
    \raggedright\Large\rm\bfseries #1 \par\nobreak \vskip -10\p@
    \mghrulefill{0.5pt}\par\nobreak
    \vskip 40\p@
  }}
}

%% header and footer
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{fancyhdr}
\fancyhf{} % delete current setting for header and footer

\renewcommand{\sectionmark}[1]{ \markright{\thesection\ #1}{}}
\fancyhead[L]{\footnotesize \nouppercase{\rightmark}}
\fancyhead[R]{\footnotesize \thepage}
\renewcommand{\headrulewidth}{0.5pt}
\fancypagestyle{plain}{\fancyhead{} \fancyfoot{} \renewcommand{\headrulewidth}{0pt}}

\newcommand{\apendices}{
\rm
\newcommand\appendix@chapter[1]{%
  \refstepcounter{chapter}%
  \orig@chapter*{Apêndice \@Alph\c@chapter\space-- ##1}%
  \addcontentsline{toc}{chapter}{Apêndice \@Alph\c@chapter\space-- ##1}%
}
\let\orig@chapter\chapter
\g@addto@macro\appendix{\let\chapter\appendix@chapter}
\appendix
}

\newcommand{\anexos}{
\newcommand\anexo@chapter[1]{%
  \refstepcounter{chapter}%
  \orig@chapter*{Anexo \@Alph\c@chapter\space-- ##1}%
  \addcontentsline{toc}{chapter}{Anexo \@Alph\c@chapter\space-- ##1}%
}
\g@addto@macro\appendix{\let\chapter\anexo@chapter}
\appendix
}

\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
  \@mkboth{}{}
  \thispagestyle{plain}
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter}

%% table of contents
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\usepackage{silence}
\WarningsOff[tocbibind,tocbasic]
\RequirePackage[nottoc,notlof]{tocbibind}
\RequirePackage{titletoc}
\setcounter{tocdepth}{3}
\setcounter{lofdepth}{1}
\setcounter{lotdepth}{2}
\setcounter{secnumdepth}{3}
\renewcommand\cfttoctitlefont{\large \arial \bfseries}
\renewcommand\cftloftitlefont{\large \arial \bfseries}
\renewcommand\cftlottitlefont{\large \arial \bfseries}
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftbeforeloftitleskip}{0pt}
\setlength{\cftbeforelottitleskip}{0pt}
\renewcommand{\@dotsep}{9.0}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftdot}{\hbox{.}}
\renewcommand\cftsecfont{}
\setlength{\cftbeforesecskip}{\parskip}
\setlength{\cftbeforesubsecskip}{0pt}
\renewcommand{\cftchapindent}{0pt}
\renewcommand{\cftsecindent}{18pt}
\renewcommand{\cftsubsecindent}{46pt}
\renewcommand{\cftchapfont}{\arial\bfseries\scshape}
\renewcommand{\cftsecfont}{\arial\small}
\renewcommand{\cftsubsecfont}{\arial\footnotesize}
\renewcommand{\cftsubsubsecfont}{\arial\footnotesize}
\renewcommand{\cftfigfont}{\arial}
\renewcommand{\cfttabfont}{\arial}

%% theorems environments
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{amsmath}
\renewcommand{\theequation}{\thechapter-\arabic{equation}}
\newtheorem{definition}{Defini\c{c}\~{a}o}[chapter]
\newtheorem{theorem}[definition]{Teorema}
\newtheorem{corollary}[definition]{Corol\'{a}rio}
\newtheorem{lemma}[definition]{Lema}
\newtheorem{proposition}[definition]{Proposi\c{c}\~{a}o}
\newtheorem{comment}[definition]{Observa\c{c}\~{a}o}
\newenvironment{proof}{\par \noindent \textit{Prova}.}{\hfill $\Box$\newline}

%% itemize environment
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{enumitem}
\setlist{noitemsep}
\setitemize{noitemsep}
\setenumerate{noitemsep}
\setdescription{noitemsep}

\renewcommand{\cleardoublepage}{
 \clearpage\if@twoside \ifodd\c@page\else
 \thispagestyle{empty}
 \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
 
 \RequirePackage{tabularx}
 \RequirePackage{ragged2e}
 \RequirePackage{wasysym}
 \RequirePackage{amssymb}
\newcommand{\bsquare}{$\blacksquare$}

%%==================================================================
%% Pre-textual elements
%%==================================================================
\makeatletter
\ministerio{Servi\c{c}o P\'{u}blico Federal}
\instituicao{Instituto Federal de Educa\c{c}\~{a}o, Ci\^{e}ncia e Tecnologia de Goi\'{a}s}
\ifthenelse{\boolean{tcc} \OR \boolean{qualt}}
{
 \reitoria{Pr\'{o}-Reitoria de Ensino}   
}{
 \reitoria{Pr\'{o}-Reitoria de Pesquisa e P\'{o}s-Gradua\c{c}\~{a}o}
}

\newcommand{\margem}[1]{\hspace{0.5cm}\begin{minipage}[top]{13.0cm}#1\end{minipage}}
\newcommand{\textoC}[2]{\begin{center}\linespread{#1}#2\end{center}}
\newcommand{\textoF}[1]{\begin{minipage}[top]{12.0cm}#1\end{minipage}}
\newcommand{\textoD}[1]{\margem{\begin{flushright}#1\end{flushright}}}
\newcommand{\margemD}[1]{\hspace{3.5cm}\begin{minipage}[top]{10cm}#1\end{minipage}}

%% Capa
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\renewcommand\tabularxcolumn[1]{>{\Centering}m{#1}}
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}
\setlength\extrarowheight{10pt}
\newcommand{\capa}{
 \ifpdf
  \pdfbookmark[0]{Elementos Pr\'{e}-Textuais}{pretexto}
  \pdfbookmark[1]{Capa}{pretexto.1}
 \fi
 \hypersetup{
  pdftitle={\@titulo},
  pdfauthor={\@autor},
  pdfsubject={\@curso}
 }
 \singlespacing%
 \begin{titlepage}%
 \centering
\ifthenelse{\boolean{diss} \OR \boolean{qualm}}
{
 \begin{minipage}[t]{0.3\textwidth}
   \includegraphics[width=\textwidth]{formatacao/logoIFG}
 \end{minipage}
 \hspace{2cm}
 \begin{minipage}[b]{0.1\textwidth}
   \includegraphics[width=\textwidth]{formatacao/logoBrasao}
 \end{minipage}
 \hspace{3cm}
 \begin{minipage}[b]{0.15\textwidth}
   \includegraphics[width=\textwidth]{formatacao/logoMestrado}
 \end{minipage} 
}{
 \begin{minipage}[t]{0.3\textwidth}
   \includegraphics[width=\textwidth]{formatacao/logoIFG}
 \end{minipage}
} 
 \textoC{1}{\normalsize \scshape \@ministerio \normalsize \upshape}
 \vspace{-0.6cm}
 \textoC{1}{\normalsize \scshape \@instituicao \normalsize \upshape}
 \vspace{-0.6cm}
 \textoC{1}{\normalsize \scshape \@reitoria \normalsize \upshape}
 \vspace{-0.6cm}
 \textoC{1}{\normalsize \scshape C\^{a}mpus\space\@campus \normalsize \upshape}
 \vspace{-0.6cm}
 \textoC{1}{\normalsize \scshape \@tipocurso\space em\space\@curso \normalsize \upshape}%
 \vspace*{\stretch{0.7}}%
 \textoC{1}{\Large \scshape \@autor \normalsize \upshape}%
 \ifthenelse{\equal{\@sautor}{}}{}{
    \vspace{-0.6cm}
    \textoC{1}{\Large \scshape \@sautor \normalsize \upshape}%
 }
 \ifthenelse{\equal{\@tautor}{}}{}{
    \vspace{-0.6cm}
    \textoC{1}{\Large \scshape \@tautor \normalsize \upshape}%
 }
 \vspace*{\stretch{0.7}}%
 \textoC{1.8}{\huge \textbf{\@titulo\relax} \normalsize}%
 \ifthenelse{\equal{\@subtitulo}{}}{}{%
   \textoC{1.3}{\Large \textbf{\@subtitulo\relax} \normalsize} }%
 \vspace*{\stretch{1}}%
 \textoC{1}{\@campus, \@ano.}%
 \onehalfspacing%
 \normalfont%
 \end{titlepage}%
}

%% Folha de rosto
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\rosto}{%
 \ifpdf
  \pdfbookmark[1]{Folha de Rosto}{pretexto.3}
 \fi
 \textoC{1}{\normalsize \scshape \@ministerio \normalsize \upshape}%
 \vspace{-0.6cm}
 \textoC{1}{\normalsize \scshape \@instituicao \normalsize \upshape}%
 \vspace{-0.6cm}
 \textoC{1}{\normalsize \scshape \@reitoria \normalsize \upshape}%
 \vspace{-0.6cm}
 \textoC{1}{\normalsize \scshape C\^{a}mpus\space\@campus \normalsize \upshape}%
 \vspace{-0.6cm}
 \textoC{1}{\normalsize \scshape \@tipocurso\space em\space\@curso \normalsize \upshape}%
 \vspace*{\stretch{1}}%
 \textoC{1}{\Large \scshape \@autor \normalsize \upshape}%
 \ifthenelse{\equal{\@sautor}{}}{}{
    \vspace{-0.6cm}
    \textoC{1}{\Large \scshape \@sautor \normalsize \upshape}%
 }
 \ifthenelse{\equal{\@tautor}{}}{}{
    \vspace{-0.6cm}
    \textoC{1}{\Large \scshape \@tautor \normalsize \upshape}%
 }
 \vspace*{\stretch{1}}%
 \textoC{1.7}{\huge \textbf{\@titulo\relax} \normalsize}%
 \ifthenelse{\equal{\@subtitulo}{}}{}{
  \textoC{1.2}{\Large \textbf{\@subtitulo} \normalsize \relax} 
 }
 \vspace*{\stretch{1}}
 \par%
 \margemD{%
  \ifthenelse{\boolean{tese}}{
    Tese apresentada ao \@programa d0 \@instituicao, como requisito parcial para obten\c c\~ao do t\'itulo de Doutor em \@curso.}{}
  \ifthenelse{\boolean{diss}}{
    \@programa~do \@instituicao~- Disserta\c{c}\~{a}o de \@tipocurso. \'{A}rea de Concentra\c{c}\~{a}o: Tecnologia de Sistemas de Produ\c{c}\~{a}o Limpa. Linha de Pesquisa: \@linha.}{}
  \ifthenelse{\boolean{qualm}}{
    \@programa~do \@instituicao~- Qualifica\c{c}\~{a}o de \@tipocurso. \'{A}rea de Concentra\c{c}\~{a}o: Tecnologia de Sistemas de Produ\c{c}\~{a}o Limpa. Linha de Pesquisa: \@linha.}{}
  \ifthenelse{\boolean{mngr}}{
    Monografia de Especializa\c{c}\~{a}o apresentada \`{a} Coordena\c{c}\~{a}o do Curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tudo de Especialista em \@curso.}{}
  \ifthenelse{\boolean{quale}}{
    Qualifica\c{c}\~{a}o de Especializa\c{c}\~{a}o realizada no curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a} do t\'{i}tudo de Especialista em \@curso.}{}
  \ifthenelse{\boolean{tcc}}{
    \ifthenelse{\equal{\@tipocurso}{Bacharelado}}{
        \newcommand\grau{Bacharel}
    }{}
    \ifthenelse{\equal{\@tipocurso}{Licenciatura}}{
        \newcommand\grau{Licenciado}
    }{}
    Trabalho de Conclus\c{c}\~{a}o de Curso apresentado \`{a} Coordena\c{c}\~{a}o do Curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tudo de \grau~em \@curso.}{}
  \ifthenelse{\boolean{qualt}}{
    \ifthenelse{\equal{\@tipocurso}{Bacharelado}}{
        \newcommand\grau{Bacharel}
    }{}
    \ifthenelse{\equal{\@tipocurso}{Licenciatura}}{
        \newcommand\grau{Licenciado}
    }{}
    Qualifica\c{c}\~{a}o de Trabalho de Conclus\c{c}\~{a}o de Curso realizada no curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tudo de \grau~em \@curso.}{}
 }
 \vspace{0.2cm}
 \par%
 \ifthenelse{\equal{\@orientador}{}}
  {\margemD{\textbf{Orientadora:} Profa. \@orientadora}}%
  {\margemD{\textbf{Orientador:} Prof. \@orientador}}%
 \ifthenelse{\equal{\@coorientador}{}}
  {\ifthenelse{\equal{\@coorientadora}{}}
   {}
   {\vspace{0.1cm}
    \par%
    \margemD{\textbf{Co-Orientadora:} Profa. \@coorientadora}}%
  }
  {\vspace{0.1cm}
   \par%
   \margemD{\textbf{Co-Orientador:} Prof. \@coorientador}}%
 \vspace*{\stretch{1}}%
 \par%
 \textoC{1}{\@campus, \@ano.}%
 \onehalfspacing%
 \normalfont%
 \clearpage%
}

%% Ficha catalográfica
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{pdflscape}
\RequirePackage[final]{pdfpages}
\newcommand{\ficha}{
\ifthenelse{\boolean{tese} \OR \boolean{diss} \OR \boolean{mngr} \OR \boolean{tcc}}{
    \includepdf[pages={-},offset=0mm -30mm]{ficha.pdf}
}{}
}

%% Termo de autorização
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\termo}{
\ifthenelse{\boolean{tese} \OR \boolean{diss} \OR \boolean{mngr} \OR \boolean{tcc}}{
    \includepdf[pages={-},offset=0mm -30mm]{termo.pdf}
}{}
}

%% Termo de aprova\c{c}\~{a}o
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\membro}[2]{\textoC{1}{\rule{.7\textwidth}{0.5pt}\\ \small \textbf{Prof. #1}\\#2} \vspace*{\stretch{0.2}}\par}
\newcommand{\membra}[2]{\textoC{1}{\rule{.7\textwidth}{0.5pt}\\ \small \textbf{Profa. #1}\\#2} \vspace*{\stretch{0.2}}\par}
\newcommand{\aprovacao}{
\ifthenelse{\boolean{tese} \OR \boolean{diss} \OR \boolean{mngr} \OR \boolean{tcc}}{
  \IfFileExists{./aproffsvacao.pdf}{
    \includepdf[page={-},offset=0mm -30mm]{aprovacao.pdf}
  }{
    \newenvironment{banca}{
     \ifpdf
      \pdfbookmark[1]{Aprova\c{c}\~{a}o}{pretexto.4}
     \fi
     \singlespacing
     \par
     \textoC{1.8}{\normalsize \scshape \@ministerio \normalsize \upshape\\
     \vspace{-0.3cm}
     \normalsize \scshape \@instituicao \normalsize \upshape\\
     \vspace{-0.3cm}
     \normalsize \scshape \@reitoria \normalsize \upshape\\
     \vspace{-0.3cm}
     \normalsize \scshape C\^{a}mpus\space\@campus \normalsize \upshape\\
     \vspace{-0.3cm}
     \normalsize \scshape \@tipocurso\space em \@curso \normalsize \upshape}%
     \vspace{-0.3cm}
     \vspace*{\stretch{1}}%
     \textoC{1}{\Large \scshape \@autor \normalsize \upshape}%
     \ifthenelse{\equal{\@sautor}{}}{}{
    \vspace{-0.6cm}
    \textoC{1}{\Large \scshape \@sautor \normalsize \upshape}%
    }
    \ifthenelse{\equal{\@tautor}{}}{}{
    \vspace{-0.6cm}
    \textoC{1}{\Large \scshape \@tautor \normalsize \upshape}%
    }
     \vspace*{\stretch{1}}
     \par
     \textoC{1.7}{\huge \textbf{\@titulo\relax} \normalsize}
     \ifthenelse{\equal{\@subtitulo}{}}{}{
      \textoC{1.2}{\Large \textbf{\@subtitulo\relax} \normalsize}}
     \vspace*{\stretch{1}}
     \par
     \ifthenelse{\boolean{tese}}{
    \textoF{
      Tese defendida no \@programa~do \@instituicao\ como requisito parcial para obten\c c\~ao do t\'itulo de Doutor em \@curso, aprovada em %
        \@dia\ de\@mesP\ de \@ano, pela Banca Examinadora constitu\'{i}da pelos professores:
     }}{}
     \ifthenelse{\boolean{diss}}{
    \textoF{
      Disserta\c{c}\~{a}o defendida no \@programa~do \@instituicao\ como requisito parcial para obten\c c\~ao do t\'itulo de Mestre em \@curso, aprovada em %
        \@dia\ de\@mesP\ de \@ano, pela Banca Examinadora constitu\'{i}da pelos professores:
     }}{}
  \ifthenelse{\boolean{mngr}}{
  \textoF{
      Monografia de Especializa\c{c}\~{a}o defendida no Curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tudo de Especialista em \@curso, aprovada em %
        \@dia\ de\@mesP\ de \@ano, pela Banca Examinadora constitu\'{i}da pelos professores:
     }}{}
  \ifthenelse{\boolean{tcc}}{
    \ifthenelse{\equal{\@tipocurso}{Bacharelado}}{
        \newcommand\grau{Bacharel}
    }{}
    \ifthenelse{\equal{\@tipocurso}{Licenciatura}}{
        \newcommand\grau{Licenciado}
    }{}
    \textoF{
      Trabalho de Conclus\c{c}\~{a}o de Curso defendido no Curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tudo de \grau~em \@curso, aprovada em %
        \@dia\ de\@mesP\ de \@ano, pela Banca Examinadora constitu\'{i}da pelos professores:
     }}{}
     \vspace*{\stretch{1}}
     \par
     \ifthenelse{\equal{\@orientador}{}}
      {\membra{\@orientadora}{\@unidade\\Presidente da Banca}}
      {\membro{\@orientador}{\@unidade\\Presidente da Banca}}
     \ifthenelse{\equal{\@coorientador}{}}
     {\ifthenelse{\equal{\@coorientadora}{}}{}
       {\membra{\@coorientadora}{\@unidadeco}}
     }
     {\membro{\@coorientador}{\@unidadeco}}
    }
    {%
     \clearpage%
    }
    \input{./pre/preBanca}
  }
}{}}

%% Resumo do Currículo
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\curriculo}[1]{
 \ifpdf
  \pdfbookmark[1]{Resumo do Currículo}{pretexto.5}
 \fi
 \singlespacing\arial%
\margem{\normalfont \normalsize~}%
\vspace*{\stretch{2}}%
 \par%
 \margem{\large \arial \textbf{\@autor}}%
 \vspace*{\stretch{0.1}}%
 \par%
 \margem{\normalfont \textbf{Currículo Lattes:} \url{\@lattes}\\~\\ #1}%
 \clearpage\onehalfspacing\normalfont%
}

%% Dedicatoria
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\cdedicatoria}{
\ifthenelse{\boolean{tese} \OR \boolean{diss} \OR \boolean{mngr} \OR \boolean{tcc}}{
\newenvironment{dedicatoria}{
 \ifpdf
  \pdfbookmark[1]{Dedicatória}{pretexto.6}
 \fi
 \@makeschapterhead{Dedicatória}
}{\clearpage}
    \input{./pre/preDedicatoria}
}{}
}

%% Agradecimentos
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\cagradecimentos}{
\ifthenelse{\boolean{tese} \OR \boolean{diss} \OR \boolean{mngr} \OR \boolean{tcc}}{
\newenvironment{agradecimentos}{
 \ifpdf
  \pdfbookmark[1]{Agradecimentos}{pretexto.7}
 \fi
 \@makeschapterhead{Agradecimentos}
}{\clearpage}
    \input{./pre/preAgradecimentos}
}{}
}

%% Epígrafe
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\cepigrafe}{
\ifthenelse{\boolean{tese} \OR \boolean{diss} \OR \boolean{mngr} \OR \boolean{tcc}}{
\newcommand{\epigrafe}[3]{%
  \ifpdf
   \pdfbookmark[1]{Epígrafe}{pretexto.10}
  \fi
  \thispagestyle{empty}\singlespacing\normalfont%
  \vspace*{\stretch{1}}\par%
  \begin{quotation}%
  ##1%
  \par%
  \begin{flushright}
  \textbf{##2}, \\ \textit{##3}.
  \end{flushright}%
  \end{quotation}%
  \onehalfspacing
  \clearpage%
}
    \input{./pre/preEpigrafe}
}{}
}


%% Resumo
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\cresumo}{
\newenvironment{resumo}{%
 \ifpdf
  \pdfbookmark[1]{Resumo}{pretexto.8}
 \fi
 \@makeschapterhead{Resumo}
 \begin{minipage}{13.5cm}
  \singlespacing%
\textbf{Título:} \@titulo\\
\textbf{Autor:} \@autor\\
\textbf{Orientador:} \@orientador\\
\ifthenelse{\equal{\@coorientador}{}}{}{\textbf{Coorientador:} \@coorientador}
 \end{minipage}%
 \onehalfspacing%
 \vspace*{\stretch{2}}%
 \par%
 \noindent\begin{minipage}{15cm}%
 \end{minipage}%
}
{%
 \vspace*{\stretch{3}}%
 \par%
 \noindent \arial \textbf{Palavras--chave} \normalfont \normalsize%
 \par%
 \indent \@chaves%
 \vspace*{\stretch{4}}%
 \par%
 \clearpage%
}
\input{./pre/preResumo}
}

%% Abstract
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\cabstract}{
\renewenvironment{abstract}[1]{%
 \ifpdf
  \pdfbookmark[1]{Abstract}{pretexto.9} % Sets a PDF bookmark for the abstract
 \fi
  \@makeschapterhead{Abstract}
  \begin{minipage}{13.5cm}
   \singlespacing%
\textbf{Title:} ##1\\
\textbf{Author:} \@autor\\
\textbf{Advisor:} \@orientador\\
\ifthenelse{\equal{\@coorientador}{}}{}{\textbf{Co-advisor:} \@coorientador}
  \end{minipage}\onehalfspacing%
  \vspace*{\stretch{1}}%
  \par%
  \noindent\begin{minipage}{15cm}%
  }
  {%
  \end{minipage}%
  \vspace*{\stretch{3}}%
  \par%
  \noindent \arial \textbf{Keywords} \normalfont \normalsize%
  \par%
  \indent \@keys%
  \vspace*{\stretch{4}}%
  \par%
  \clearpage%
  }
  \input{./pre/preAbstract}
}

%% Sumário
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
%% The \IfSubStringInString command is based on H. Harders "substr" class.
%%
%% expands the first and second argument with
%% \protected@edef and calls #3 with them:
\newcommand\su@ExpandTwoArgs[3]{%
  \protected@edef\su@SubString{#1}%
  \protected@edef\su@String{#2}%
  \expandafter\expandafter\expandafter#3%
  \expandafter\expandafter\expandafter{%
    \expandafter\su@SubString\expandafter
  }\expandafter{\su@String}%
}
%%
%% tests if #1 in #2. If yes execute #3, else #4
\newcommand*\IfSubStringInString[2]{%
  \su@ExpandTwoArgs{#1}{#2}\su@IfSubStringInString
}
%%
\newcommand{\tabelas}[1][opt]
{
\ifpdf
 \pdfbookmark[0]{Sumário}{sumario}
\fi
\clearpage\singlespacing%
\IfSubStringInString{fig}{#1}
 {\listoffigures\clearpage
 }{}
\IfSubStringInString{tab}{#1}
 {\listoftables\clearpage
 }{}
\IfSubStringInString{qua}{#1}
 {\listofframes\clearpage
 }{}
\IfSubStringInString{alg}{#1}
 {\listofalgorithmes\clearpage
 }{}
\IfSubStringInString{cod}{#1}
 {\listofcodes\clearpage
 }{}
 \IfSubStringInString{sig}{#1}
 {\listofacronym\clearpage
 }{}
\IfSubStringInString{sim}{#1}
 {\listofsymbols\clearpage
 }{}
\tableofcontents%
\clearpage%
\normalfont\pagestyle{fancy}%
\onehalfspacing
}

%% Bibliografia
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\usepackage{backref}
%%% Pacote da ABNTeX para referências dentro das normas %%%
\usepackage[alf,abnt-emphasize=bf,abnt-etal-cite=2,abnt-etal-list=0,abnt-repeated-title-omit=yes,abnt-show-options=no,abnt-verbatim-entry=no,abnt-url-package=url]{formatacao/abntcite}%testebib 

\newlength{\bibitemsep}\setlength{\bibitemsep}{.2\baselineskip plus .05\baselineskip minus .05\baselineskip}
\newlength{\bibparskip}\setlength{\bibparskip}{10pt}

\renewenvironment{thebibliography}[1]{%
	\chapter*{Referências Bibliográficas}
	\refstepcounter{chapter}
	\addcontentsline{toc}{chapter}{Referências Bibliográficas}
	\bigskip
  \label{referbiblio}	\flushleft\list{\@biblabel{\@arabic\c@enumiv}}{\settowidth\labelwidth{\@biblabel{#1}}%
		\leftmargin\labelwidth\advance\leftmargin\labelsep%
		\@openbib@code
		\usecounter{enumiv}%
		\let\p@enumiv\@empty%
		\renewcommand\theenumiv{\@arabic\c@enumiv}%
	}%
	\sloppy
   \clubpenalty4000
   \@clubpenalty \clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m%
} 
{ 	
	\def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
	\endlist
}

\newcommand{\bibliografia}{%
\bibliography{bib/bibliografia.bib}
}

\makeatother


%%==================================================================
%% classe-ifg Class Delayed Codes
%%==================================================================
\AtBeginDocument{%
  \author{\LARGE \arial \autor}%
  \title{\Huge \arial \titulo}%
  \date{\large \arial \data}%
  \pagestyle{empty}%
  }
\AtEndDocument{%
  \label{endpage}%
  }

%% Local Variables:
%% mode: LaTeX
%% End:
\endinput
%%==================================================================
%% End of file classe-ifg.cls'.
%%==================================================================
