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
% v1.0 : 14 nov 2020 ---------------------------------------------------------------------------
% - Primeira versão da classe-ifg
% v1.1 : 16 nov 2020 ---------------------------------------------------------------------------
% - Correção da fonte no sumário
% - Correção do arquivo exemplo.tikz
% - Removido warning pslatex
% - Reduzido tamanho das imagens
% - Cabeçalho apenas com número da página
% - Adicionada a opção fancy
% v1.2 : 17 nov 2020 ---------------------------------------------------------------------------
% - Inserção da verificação do tipo de curso quando TCC
% v1.3 : 09 fev 2021 ---------------------------------------------------------------------------
% - Adequação à norma ABNT 2018
% v1.4 : 12 fev 2021 ---------------------------------------------------------------------------
% - Adicionado suporte a arquivos Yaml
% v1.5 : 22 fev 2021 ---------------------------------------------------------------------------
% - Corrigido problema com autores no resumo e abstract
% v1.6 : 02 mar 2021 ---------------------------------------------------------------------------
% - Corrigido erro de grafia da palavra coorientador
% v1.7 : 13 mar 2021 ---------------------------------------------------------------------------
% - Corrigido formatação ABNT, erro de grafia da palavra conclusão e lista de figuras
% v1.8 : 17 mar 2021 ---------------------------------------------------------------------------
% - Corrigido erro na importação da folha de aprovação na versão final
% v1.9 : 20 abr 2021 ---------------------------------------------------------------------------
% - Removido pontuação automática em legendas
% v1.10 : 05 jun 2021 ---------------------------------------------------------------------------
% - Correção para abstract gerado em várias páginas
% v1.11 : 22 jul 2021 ---------------------------------------------------------------------------
% - Inclusão de suporte a códigos Json
% v1.12 : 06 set 2021 ---------------------------------------------------------------------------
% - Correção de autores em resumo e abstract quando há 3 autores
% - Inclusão de suporte a pré-projeto
% v1.13 : 29 nov 2021 ---------------------------------------------------------------------------
% - Remoção das cores em links
% v1.14 : 30 nov 2021 ---------------------------------------------------------------------------
% - Bibliografia justificada
% v1.15 : 07 dez 2021 ---------------------------------------------------------------------------
% - Resumo incluído em pré-projeto
% v1.16 : 08 dez 2021 ---------------------------------------------------------------------------
% - Incluída folha de assinatura em pré-projeto
% v1.17 : 09 dez 2021 ---------------------------------------------------------------------------
% - Correção de bugs em pré-projetos
% v1.18 : 21 dez 2021 ---------------------------------------------------------------------------
% - Adequação da posição do termo de aprovação
% v1.19 : 11 fev 2022 ---------------------------------------------------------------------------
% - Inclusão de notas para correção
% - Adequação do sumário
% v1.20 : 13 mai 2022 ---------------------------------------------------------------------------
% - Tipo de documento relatório
% v1.21 : 24 ago 2022 ---------------------------------------------------------------------------
% - Corrigido bug com hyperref
% v1.22 : 11 nov 2022 ---------------------------------------------------------------------------
% - Corrigido numeração de páginas
% v1.23 : 02 dez 2022 ---------------------------------------------------------------------------
% - Alterada a fonte de Nimbus Roman para Latin Modern Roman
% v1.24 : 15 out 2023 ---------------------------------------------------------------------------
% - Correção de inconsistências com normas ABNT
% v1.25 : 30 out 2023 ---------------------------------------------------------------------------
% - Correção do tamanho da fonte em citações
% v1.26 : 31 out 2023 ---------------------------------------------------------------------------
% - Tipo fancy definido como padrão e incluído template Word :(
% v1.27 : 29 nov 2023 ---------------------------------------------------------------------------
% - Adicionado suporte a código JavaScript
% v1.28 : 06 dez 2023 ---------------------------------------------------------------------------
% - Corrigidos bugs após aula para terceira turma
% v1.29 : 14 dez 2023 ---------------------------------------------------------------------------
% - Adequações conforme ABNT NBR 14724:2011
% v1.30 : 19 dez 2023 ---------------------------------------------------------------------------
% - Removido recuo no resumo e no abstract
% v1.31 : 19 dez 2023 ---------------------------------------------------------------------------
% - Corrigido numeração de equações
% v1.32 : 3 mar 2024 ---------------------------------------------------------------------------
% - Incluído(a) segundo(a) coorientador(a)

%%==================================================================
%% classe-ifg Class Options
%%==================================================================
\RequirePackage{ifthen}
\PassOptionsToPackage{hyphens}{url}

\newboolean{tese} \setboolean{tese}{false}
\newboolean{diss} \setboolean{diss}{true}
\newboolean{qualm} \setboolean{qualm}{false}
\newboolean{quale} \setboolean{quale}{false}
\newboolean{mngr} \setboolean{mngr}{false}
\newboolean{tcc} \setboolean{tcc}{false}
\newboolean{qualt} \setboolean{qualt}{false}
\newboolean{prem} \setboolean{prem}{false}
\newboolean{pree} \setboolean{pree}{false}
\newboolean{pret} \setboolean{pret}{false}
\newboolean{relat} \setboolean{relat}{false}
\newboolean{old} \setboolean{old}{false}
\newboolean{fancylayout} \setboolean{fancylayout}{true} 

\DeclareOption{tese}{
 \setboolean{tese}{true}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{dissertacao}{
 \setboolean{tese}{false}
 \setboolean{diss}{true}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{qualificacaom}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{true}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{monografia}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{true}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{qualificacaoe}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{true}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{tcc}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{true}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{qualificacaot}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{true}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
}

\DeclareOption{preprojetom}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{true}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
 \setboolean{fancylayout}{false}
 \setboolean{old}{true}
}

\DeclareOption{preprojetoe}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{true}
 \setboolean{pret}{false}
 \setboolean{relat}{false}
 \setboolean{fancylayout}{false}
 \setboolean{old}{true}
}

\DeclareOption{preprojetot}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{true}
 \setboolean{relat}{false}
 \setboolean{fancylayout}{false}
 \setboolean{old}{true}
}

\DeclareOption{relatorio}{
 \setboolean{tese}{false}
 \setboolean{diss}{false}
 \setboolean{qualm}{false}
 \setboolean{mngr}{false}
 \setboolean{tcc}{false}
 \setboolean{qualt}{false}
 \setboolean{quale}{false}
 \setboolean{prem}{false}
 \setboolean{pree}{false}
 \setboolean{pret}{false}
 \setboolean{relat}{true}
 \setboolean{fancylayout}{false}
 \setboolean{old}{true}
}
 
 \DeclareOption{fancy}{
 \setboolean{old}{false}
 \setboolean{fancylayout}{true}
 }
 
\DeclareOption{online}{
 \setboolean{virtual}{true}}

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
\def\pcoorientador#1{\def\@pcoorientador{#1}}     \pcoorientador{}
\def\pcoorientadora#1{\def\@pcoorientadora{#1}}   \pcoorientadora{}
\def\scoorientador#1{\def\@scoorientador{#1}}     \scoorientador{}
\def\scoorientadora#1{\def\@scoorientadora{#1}}   \scoorientadora{}
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
\def\instituicao#1{\def\@instituicao{#1}}       \instituicao{}
\def\reitoria#1{\def\@reitoria{#1}}             \reitoria{}
\def\unidade#1{\def\@unidade{#1}}               \unidade{}
\def\unidadepco#1{\def\@unidadepco{#1}}           \unidadepco{}
\def\unidadesco#1{\def\@unidadesco{#1}}           \unidadesco{}
\def\campus#1{\def\@campus{#1}}                 \campus{}
\def\tipocurso#1{\def\@tipocurso{#1}}           \tipocurso{}
\def\curso#1{\def\@curso{#1}}                   \curso{}
\def\disciplina#1{\def\@disciplina{#1}}                   \disciplina{}
\def\programa#1{\def\@programa{#1}}             \programa{}
\def\linha#1{\def\@linha{#1}}                   \linha{}
\def\concentracao#1{\def\@concentracao{#1}}     \concentracao{}
\def\lattes#1{\def\@lattes{#1}}                 \lattes{}


%%==================================================================
%% classe-ifg Class Preliminary Declarations
%%==================================================================
\LoadClass[a4paper,12pt]{report}
\RequirePackage{texnames}
\RequirePackage{lipsum}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\counterwithout{equation}{chapter}

%% Fontes adicionais
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{silence}
\WarningsOff[pslatex]
\RequirePackage{pslatex}
\RequirePackage{etoolbox}
\newcommand{\arial}{\sf}
\RequirePackage{calligra}
\DeclareMathAlphabet{\mathpzc}{OT1}{pzc}{m}{it}

% Hyphenation
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage[english,portuguese,brazil]{babel} 		% Termos pré-definidos em Português
\RequirePackage{inputenc} 
\RequirePackage{ae}
\RequirePackage{lmodern}


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
 \PassOptionsToPackage{hyphens}{url}
 \RequirePackage[pdftex,pagebackref=true]{hyperref}
 \pdfadjustspacing=1    %%% force LaTeX-like character spacing
\else
 \PassOptionsToPackage{hyphens}{url}
 \RequirePackage[dvips,breaklinks,pagebackref=true]{hyperref}
\fi

\hypersetup{
 bookmarksopen=false,
 bookmarksnumbered=true,
 pdfstartview=FitH,
 hypertexnames=false,
 naturalnames=true,
 pdfborder = {0 0 0}
}

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
\DeclareCaptionLabelSeparator{custom}{ -- }
\captionsetup
{
    labelsep=custom
}
\RequirePackage{float}
\floatstyle{plaintop}
\restylefloat{figure}
\RequirePackage[titles,subfigure]{./formatacao/tocloft}
\newlength{\mylen}   
\settowidth{\mylen}{\hspace*{-0.3cm}} 
\addtolength{\cftfignumwidth}{\mylen} 


%% Subfigures
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage[IT,hang,FIGBOTCAP,TABBOTCAP]{subfigure}


%% Figuras usando TikZ
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage[table]{xcolor}
\RequirePackage{tikz}
\usetikzlibrary{arrows,shapes,snakes,automata,backgrounds,petri,matrix,shadows.blur,shapes.symbols,shadows,positioning,decorations.pathreplacing,fadings,fit,calc,shadows}
\RequirePackage{tikzscale}
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
	\centering
    \footnotesize
    Fonte: #1.
}
\settowidth{\mylen}{\hspace*{-0.27cm}} 
\addtolength{\cfttabnumwidth}{\mylen} 


%% Quadros
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\listquadroname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newcommand{\quadrorefname}{Quadro}
\newcommand{\chartautorefname}{Quadro}
\newfloat{quadro}{tbp}{loq}[part]
\floatname{quadro}{\quadroname}
\floatstyle{plaintop}
\restylefloat{quadro}
\newlistof{quadros}{loq}{\listquadroname}
\newlistentry{quadro}{loq}{0}
\renewcommand{\thequadro}{\@arabic\c@quadro}
\newcommand*\setfloatadjustment[2]{\@namedef{#1adjustment}{#2}}
\setfloatadjustment{quadro}{\centering}

\newcommand{\listofframes}{
\listofquadros
}
\newcommand{\fontequa}[1]{
	~\\
	\vspace{0.3cm}
	\footnotesize
    \centering
    Fonte: #1
}


%% Algoritmos
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage[ruled, algo2e, vlined, portuguese]{algorithm2e}
\renewcommand{\listofalgorithmes}{\begingroup
 \tocfile{\listalgorithmcfname}{loa}
 \endgroup}


%% Códigos
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\floatstyle{ruled}  %%% options: plain, boxed, ruled
\newfloat{codigo}{htbp}{loc} 
\floatname{codigo}{C\'{o}digo}
\newcommand{\listofcodes}{
 \listof{codigo}{Lista de C\'{o}digos de Programas}
 \phantomsection
 }
\RequirePackage{listings}
\renewcommand{\lstlistingname}{Código}
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
\def\purplecolorifnotalreadyblue{%
    \extractcolorspec{.}\currentcolor
    \extractcolorspec{blue}\stringcolor
    \ifx\currentcolor\stringcolor\else
        \color{ppurple}%
    \fi
}
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
\lstdefinelanguage{sql}
{
  identifierstyle=\color{black},
  morekeywords={select, SELECT,
  	from, FROM,
  	where, WHERE,
  	and, AND,
  	or, OR,
  	not, NOT,
  	insert, INSERT,
  	update, UPDATE,
  	delete, DELETE,
  	create, CREATE,
  	table, TABLE,
  	alter, ALTER,
  	drop, DROP,
  	index, INDEX,
  	primary, PRIMARY,
  	key, KEY,
  	foreign, FOREIGN,
  	references, REFERENCES,
  	distinct, DISTINCT,
  	order, ORDER,
  	by, BY,
  	asc, ASC,
  	desc, DESC,
  	group, GROUP,
  	having, HAVING,
  	inner, INNER,
  	join, JOIN,
  	left, LEFT,
  	right, RIGHT,
  	outer, OUTER,
  	union, UNION,
  	all, ALL,
  	as, AS,
  	between, BETWEEN,
  	in, IN,
  	like, LIKE,
  	is, IS,
  	null, NULL,
  	count, COUNT,
  	avg, AVG,
  	sum, SUM,
  	max, MAX,
  	min, MIN,
  	distinct, DISTINCT,
  	case, CASE,
  	when, WHEN,
  	then, THEN,
  	else, ELSE,
  	end, END,
  	grant, GRANT,
  	on, ON,
  	to, TO,
  	int, INT,
  	into, INTO,
  	varchar, VARCHAR,
  	commit, COMMIT,
  	begin, BEGIN,
  	transaction, TRANSACTION,
  	values, VALUES
  },% list your attributes here
  basicstyle=\ttfamily\linespread{1.1}\bfseries\fontsize{7.5}{8.5}\selectfont,
  commentstyle=\color{pgrey},
  morecomment=[s][\color{pgrey}]{...}{...},
  morecomment=[l][\color{pgrey}]{\%},
  morestring=[b]",
  morestring=[b]',
  morestring=[b]`,
  keywordstyle=\color{ppurple},
  stringstyle=\color{blue},
  moredelim=[is][\itshape\textcolor{blue}]{||}{||},
  moredelim=[is][\textcolor{pgrey}]{\%\%}{\%\%},
  literate={>}{{{\color{blue}>}}}1 {=}{{{\color{blue}={}}}}1 {<}{{{\color{blue}<}}}1 {á}{{\'a}}1 {à}{{\`a}}1 {ã}{{\~a}}1 {é}{{\'e}}1 {ê}{{\^e}}1 {ë}{{\"e}}1 {í}{{\'i}}1 {ç}{{\c{c}}}1 {Ç}{{\c{C}}}1 {õ}{{\~o}}1 {ó}{{\'o}}1 {ô}{{\^o}}1 {ú}{{\'u}}1 {0}{{\textcolor{red}{0}}}{1}%
  {1}{{\textcolor{red}{1}}}{1}%
  {2}{{\textcolor{red}{2}}}{1}%
  {3}{{\textcolor{red}{3}}}{1}%
  {4}{{\textcolor{red}{4}}}{1}%
  {5}{{\textcolor{red}{5}}}{1}%
  {6}{{\textcolor{red}{6}}}{1}%
  {7}{{\textcolor{red}{7}}}{1}%
  {8}{{\textcolor{red}{8}}}{1}%
  {9}{{\textcolor{red}{9}}}{1}%
  {.0}{{\textcolor{red}{.0}}}{2}% Following is to ensure that only periods
  {.1}{{\textcolor{red}{.1}}}{2}% followed by a digit are changed.
  {.2}{{\textcolor{red}{.2}}}{2}%
  {.3}{{\textcolor{red}{.3}}}{2}%
  {.4}{{\textcolor{red}{.4}}}{2}%
  {.5}{{\textcolor{red}{.5}}}{2}%
  {.6}{{\textcolor{red}{.6}}}{2}%
  {.7}{{\textcolor{red}{.7}}}{2}%
  {.8}{{\textcolor{red}{.8}}}{2}%
  {.9}{{\textcolor{red}{.9}}}{2}%
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
	morestring=**[d]{'},
	keywordstyle=\purplecolorifnotalreadyblue,
	stringstyle=\color{blue},
	moredelim=[is][\itshape\textcolor{blue}]{||}{||},
	moredelim=[is][\textcolor{pgrey}]{\%\%}{\%\%},
	mathescape=true,
	literate = {á}{{\'a}}1 {ã}{{\~a}}1 {à}{{\`a}}1 {â}{{\^a}}1 {é}{{\'e}}1 {ê}{{\^e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {õ}{{\~o}}1 {ò}{{\`o}}1 {ô}{{\^o}}1 {ú}{{\'u}}1 {ç}{{\c c}}1 {Á}{{\'A}}1 {Ã}{{\~A}}1 {À}{{\`A}}1 {Â}{{\^A}}1 {É}{{\'E}}1 {Ê}{{\^E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Õ}{{\~O}}1 {Ò}{{\`O}}1 {Ô}{{\^O}}1 {Ú}{{\'U}}1 {Ç}{{\c C}}1 
	{0}{{\textcolor{red}{0}}}{1}%  
	{1}{{\textcolor{red}{1}}}{1}%
	{2}{{\textcolor{red}{2}}}{1}%
	{3}{{\textcolor{red}{3}}}{1}%
	{4}{{\textcolor{red}{4}}}{1}%
	{5}{{\textcolor{red}{5}}}{1}%
	{6}{{\textcolor{red}{6}}}{1}%
	{7}{{\textcolor{red}{7}}}{1}%
	{8}{{\textcolor{red}{8}}}{1}%
	{9}{{\textcolor{red}{9}}}{1}%
	{.0}{{\textcolor{red}{.0}}}{2}% Following is to ensure that only periods
	{.1}{{\textcolor{red}{.1}}}{2}% followed by a digit are changed.
	{.2}{{\textcolor{red}{.2}}}{2}%
	{.3}{{\textcolor{red}{.3}}}{2}%
	{.4}{{\textcolor{red}{.4}}}{2}%
	{.5}{{\textcolor{red}{.5}}}{2}%
	{.6}{{\textcolor{red}{.6}}}{2}%
	{.7}{{\textcolor{red}{.7}}}{2}%
	{.8}{{\textcolor{red}{.8}}}{2}%
	{.9}{{\textcolor{red}{.9}}}{2}%
	{e-}{{\textcolor{red}{e-}}}{2}%
	{-1}{{\textcolor{red}{-1}}}{2}%
	{-2}{{\textcolor{red}{-2}}}{2}%
	{-3}{{\textcolor{red}{-3}}}{2}%
	{-4}{{\textcolor{red}{-4}}}{2}%
	{-5}{{\textcolor{red}{-5}}}{2}%
	{-6}{{\textcolor{red}{-6}}}{2}%
	{-7}{{\textcolor{red}{-7}}}{2}%
	{-8}{{\textcolor{red}{-8}}}{2}%
	{-9}{{\textcolor{red}{-9}}}{2}%
	{+1}{{\textcolor{red}{+1}}}{2}% 
	{+2}{{\textcolor{red}{+2}}}{2}%
	{+3}{{\textcolor{red}{+3}}}{2}%
	{+4}{{\textcolor{red}{+4}}}{2}%
	{+5}{{\textcolor{red}{+5}}}{2}%
	{+6}{{\textcolor{red}{+6}}}{2}%
	{+7}{{\textcolor{red}{+7}}}{2}%
	{+8}{{\textcolor{red}{+8}}}{2}%
	{+9}{{\textcolor{red}{+9}}}{2}%
}
\newcommand\YAMLcolonstyle{\color{red}\mdseries}
\newcommand\YAMLkeystyle{\color{black}\bfseries}
\newcommand\YAMLvaluestyle{\color{blue}\mdseries}
\newcommand\ProcessThreeDashes{\llap{\color{cyan}\mdseries-{-}-}}
\lstdefinelanguage{Yaml}
{
  keywords={true,false,null,y,n},
  keywordstyle=\color{darkgray}\bfseries,
  basicstyle=\YAMLkeystyle,                                 % assuming a key comes first
  sensitive=false,
  comment=[l]{\#},
  morecomment=[s]{/*}{*/},
  commentstyle=\color{purple}\ttfamily,
  stringstyle=\YAMLvaluestyle\ttfamily,
  moredelim=[l][\color{orange}]{\&},
  moredelim=[l][\color{magenta}]{*},
  moredelim=**[il][\YAMLcolonstyle{:}\YAMLvaluestyle]{:},   % switch to value style at :
  morestring=[b]',
  morestring=[b]",
  literate = {---}{{\ProcessThreeDashes}}3
                {>}{{\textcolor{red}\textgreater}}1  
                {|}{{\textcolor{red}\textbar}}1
                {\ -\ }{{\mdseries\ -\ }}3
                {á}{{\'a}}1 {ã}{{\~a}}1 {à}{{\`a}}1 {â}{{\^a}}1 {é}{{\'e}}1 {ê}{{\^e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {õ}{{\~o}}1 {ò}{{\`o}}1 {ô}{{\^o}}1 {ú}{{\'u}}1 {ç}{{\c c}}1 {Á}{{\'A}}1 {Ã}{{\~A}}1 {À}{{\`A}}1 {Â}{{\^A}}1 {É}{{\'E}}1 {Ê}{{\^E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Õ}{{\~O}}1 {Ò}{{\`O}}1 {Ô}{{\^O}}1 {Ú}{{\'U}}1 {Ç}{{\c C}}1
}
\lstdefinelanguage{terraform}
{
  identifierstyle=\color{black},
  morekeywords={variable,description,type,number,default,provider,version,region,resource,ami,instance_type,subnet_id,vpc_id,cidr_block,count,tags,for_each},% list your attributes here
  basicstyle=\ttfamily\linespread{1.1}\bfseries\fontsize{7.5}{8.5}\selectfont,
  commentstyle=\color{pgrey},
  morecomment=[s][\color{pgrey}]{'''}{'''},
  morecomment=[l][\color{pgrey}]{\#},
  morestring=**[d]{"},
  morestring=[b]',
  keywordstyle=\purplecolorifnotalreadyblue,
  stringstyle=\color{blue}
}
\lstdefinelanguage{Go}
{
	identifierstyle=\color{black},
	morekeywords={go, func, nil},% list your attributes here
	morekeywords={context,constraint,check,message,critique,guard,fix,title,not,delete},% list your attributes here
	morekeywords={for,in,if,or,new},% list your attributes here
	morekeywords={ref,attr,val},% list your attributes here
	morekeywords={try,catch,this,return},% list your attributes here
	morekeywords={public,private,protected,static},% list your attributes here
	morekeywords={boolean,float,int,null,true,false},% list your attributes here
	morekeywords={if,else,switch,case,while},% list your attributes here
	basicstyle=\ttfamily\linespread{1.1}\bfseries\fontsize{7.5}{8.5}\selectfont,
	commentstyle=\color{pgrey},
	morecomment=[s][\color{darkgreen}]{/*}{*/},
	morecomment=[l][\color{darkgreen}]{//},
	morecomment=[l][\color{darkgreen}]{--},
	morestring=[b]",
	morestring=[b]',
	keywordstyle=\color{ppurple},
	stringstyle=\color{blue},
	moredelim=[is][\itshape\textcolor{blue}]{||}{||},
	moredelim=[is][\textcolor{pgrey}]{\%\%}{\%\%}
}
\newcommand\JSONnumbervaluestyle{\color{red}}
\newcommand\JSONstringvaluestyle{\color{blue}}
\definecolor{delim}{RGB}{20,105,176}
\colorlet{punct}{red!60!black}
\colorlet{numb}{magenta!60!black}
% switch used as state variable
\newif\ifcolonfoundonthisline
\lstdefinelanguage{json}{
	basicstyle=\ttfamily\linespread{1.1}\bfseries\fontsize{7.5}{8.5}\selectfont,
	literate=
	*{0}{{{\color{numb}0}}}{1}
	{1}{{{\color{numb}1}}}{1}
	{2}{{{\color{numb}2}}}{1}
	{3}{{{\color{numb}3}}}{1}
	{4}{{{\color{numb}4}}}{1}
	{5}{{{\color{numb}5}}}{1}
	{6}{{{\color{numb}6}}}{1}
	{7}{{{\color{numb}7}}}{1}
	{8}{{{\color{numb}8}}}{1}
	{9}{{{\color{numb}9}}}{1}
	{:}{{{\color{punct}{:}}}}{1}
	{,}{{{\color{punct}{,}}}}{1}
	{\{}{{{\color{delim}{\{}}}}{1}
	{\}}{{{\color{delim}{\}}}}}{1}
	{[}{{{\color{delim}{[}}}}{1}
	{]}{{{\color{delim}{]}}}}{1},
	showstringspaces    = false,
	keywords            = {false,true},
	alsoletter          = 0123456789.,
	morestring          = [s]{"}{"},
	stringstyle         = \ifcolonfoundonthisline\JSONstringvaluestyle\fi,
	MoreSelectCharTable =%
	\lst@DefSaveDef{`:}\colon@json{\processColon@json},
	keywordstyle        = \ttfamily\bfseries,
}
% flip the switch if a colon is found in Pmode
\newcommand\processColon@json{%
	\colon@json%
	\ifnum\lst@mode=\lst@Pmode%
	\global\colonfoundonthislinetrue%
	\fi
}

\lst@AddToHook{Output}{%
	\ifcolonfoundonthisline%
	\ifnum\lst@mode=\lst@Pmode%
	\def\lst@thestyle{\JSONnumbervaluestyle}%
	\fi
	\fi
	%override by keyword style if a keyword is detected!
	\lsthk@DetectKeywords% 
}

% reset the switch at the end of line
\lst@AddToHook{EOL}%
  {\global\colonfoundonthislinefalse}

\newenvironment{BNF}
  {\captionsetup{type=lstlisting}}
  {}
\newcommand{\listingnote}[1]{
% Syntax: \begin{addmargin}[<left indentation>]{<indentation>}
\todo[linecolor=red,backgroundcolor=red!25,bordercolor=red]{#1}{} 
}

\lstdefinelanguage{JavaScript}
{
	identifierstyle=\color{black},
	morekeywords={break, case, catch, class, const, continue, debugger,
		default, delete, do, else, export, extends, false, finally,
		for, function, if, implements, import, in, instanceof,
		interface, let, new, null, package, private, protected,
		public, return, super, switch, this, throw, true, try,
		typeof, var, void, while, with, yield, await},% list your attributes here
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
	moredelim=[is][\textcolor{pgrey}]{\%\%}{\%\%},
	literate={á}{{\'a}}1 {à}{{\`a}}1 {ã}{{\~a}}1 {é}{{\'e}}1 {ê}{{\^e}}1 {ë}{{\"e}}1 {í}{{\'i}}1 {ç}{{\c{c}}}1 {Ç}{{\c{C}}}1 {õ}{{\~o}}1 {ó}{{\'o}}1 {ô}{{\^o}}1 {ú}{{\'u}}1 {0}{{\textcolor{red}{0}}}{1}%
	{1}{{\textcolor{red}{1}}}{1}%
	{2}{{\textcolor{red}{2}}}{1}%
	{3}{{\textcolor{red}{3}}}{1}%
	{4}{{\textcolor{red}{4}}}{1}%
	{5}{{\textcolor{red}{5}}}{1}%
	{6}{{\textcolor{red}{6}}}{1}%
	{7}{{\textcolor{red}{7}}}{1}%
	{8}{{\textcolor{red}{8}}}{1}%
	{9}{{\textcolor{red}{9}}}{1}%
	{.0}{{\textcolor{red}{.0}}}{2}% Following is to ensure that only periods
	{.1}{{\textcolor{red}{.1}}}{2}% followed by a digit are changed.
	{.2}{{\textcolor{red}{.2}}}{2}%
	{.3}{{\textcolor{red}{.3}}}{2}%
	{.4}{{\textcolor{red}{.4}}}{2}%
	{.5}{{\textcolor{red}{.5}}}{2}%
	{.6}{{\textcolor{red}{.6}}}{2}%
	{.7}{{\textcolor{red}{.7}}}{2}%
	{.8}{{\textcolor{red}{.8}}}{2}%
	{.9}{{\textcolor{red}{.9}}}{2}%
}

% %% ToDo e revisão
% %% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage[colorinlistoftodos,prependcaption,textsize=tiny]{todonotes}
\newcommand{\resolvido}[1]{\todo[linecolor=green,backgroundcolor=green!25,bordercolor=green]{#1}{}}

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
    %\raggedleft
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

%% header and footer
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{fancyhdr}
\fancyhf{} % delete current setting for header and footer
\ifthenelse{\boolean{fancylayout}}
{
 \renewcommand{\sectionmark}[1]{ \markright{\thesection\ #1}{}}  
 \fancyhead[L]{\footnotesize \nouppercase{\rightmark}}
 \fancyhead[R]{\footnotesize \thepage}
 \renewcommand{\headrulewidth}{0.5pt}
 \fancypagestyle{plain}{\fancyhead{} \fancyfoot{} \renewcommand{\headrulewidth}{0pt}}
}{
 \fancyhead[R]{\footnotesize \thepage}
 \renewcommand{\headrulewidth}{0pt}
}

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

%% chapters
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\ifthenelse{\boolean{prem} \OR \boolean{pree} \OR \boolean{pret} \OR \boolean{relat}}{
\renewcommand\chapter{
  \@mkboth{}{}
  \ifthenelse{\boolean{fancylayout}}{\thispagestyle{plain}}{}
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter}
}{
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
  \@mkboth{}{}
  \ifthenelse{\boolean{fancylayout}}{\thispagestyle{plain}}{}
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter}
}

%% table of contents
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
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
\renewcommand{\cftdotsep}{1}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftdot}{\hbox{.}}
\renewcommand\cftsecfont{}
\setlength{\cftbeforesecskip}{\parskip}
\setlength{\cftbeforesubsecskip}{0pt}
\renewcommand{\cftchapindent}{0pt}
\renewcommand{\cftsecindent}{18pt}
\renewcommand{\cftsubsecindent}{46pt}
\renewcommand{\cftchapfont}{\bfseries\scshape}
\renewcommand{\cftsecfont}{\small}
\renewcommand{\cftsubsecfont}{\footnotesize}
\renewcommand{\cftsubsubsecfont}{\footnotesize}

%% theorems environments
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\RequirePackage{amsmath}
\renewcommand{\theequation}{\arabic{equation}}
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
\instituicao{Instituto Federal de Educa\c{c}\~{a}o, Ci\^{e}ncia e Tecnologia de Goi\'{a}s}
\ifthenelse{\boolean{tcc} \OR \boolean{qualt} \OR \boolean{pret}}
{
 \reitoria{Pr\'{o}-Reitoria de Ensino}   
}{
 \reitoria{Pr\'{o}-Reitoria de Pesquisa e P\'{o}s-Gradua\c{c}\~{a}o}
}
\ifthenelse{\boolean{relat}}{
\ifthenelse{\equal{\unexpanded{\@tipocurso}}{Mestrado Profissional}}{ \reitoria{Pr\'{o}-Reitoria de Pesquisa e P\'{o}s-Gradua\c{c}\~{a}o} }{ \reitoria{Pr\'{o}-Reitoria de Ensino}  }
}{}

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
\newcolumntype{R}[1]{>{\esuaggedleft\arraybackslash}p{#1}}
\setlength\extrarowheight{10pt}
\newcommand{\capa}{
\ifthenelse{\boolean{prem} \OR \boolean{pree} \OR \boolean{pret} \OR \boolean{relat}}{
}{
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
 \hspace*{-0.6in}
   \includegraphics[width=\textwidth]{formatacao/logoIFG}
 \end{minipage}
 \hspace{6.5cm}
 \begin{minipage}[b]{0.15\textwidth}
   \includegraphics[width=\textwidth]{formatacao/logoMTGS}
 \end{minipage} 
}{
 \begin{minipage}[t]{0.3\textwidth}
   \includegraphics[width=\textwidth]{formatacao/logoIFG}
 \end{minipage}
} 
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
}

%% Folha de rosto
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\rosto}{%
 \ifpdf
  \pdfbookmark[1]{Folha de Rosto}{pretexto.3}
 \fi
 \ifthenelse{\boolean{prem}}
{
 \begin{minipage}[t]{0.3\textwidth}
 \hspace*{-0.6in}
   \includegraphics[width=\textwidth]{formatacao/logoIFG}
 \end{minipage}
 \hspace{6.5cm}
 \begin{minipage}[b]{0.15\textwidth}
   \includegraphics[width=\textwidth]{formatacao/logoMTGS}
 \end{minipage} 
}{} 
\ifthenelse{\boolean{pree} \OR \boolean{pret} \OR \boolean{relat}}
{
\begin{center}
 \begin{minipage}[t]{0.3\textwidth}
   \includegraphics[width=\textwidth]{formatacao/logoIFG}
 \end{minipage}
\end{center}
}{} 
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
    Monografia de Especializa\c{c}\~{a}o apresentada \`{a} Coordena\c{c}\~{a}o do Curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tulo de Especialista em \@curso.}{}
  \ifthenelse{\boolean{quale}}{
    Qualifica\c{c}\~{a}o de Especializa\c{c}\~{a}o realizada no curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a} do t\'{i}tulo de Especialista em \@curso.}{}
  \ifthenelse{\boolean{tcc}}{
  	\ifthenelse{\equal{\@tipocurso}{Bacharelado}}{
        \newcommand\grau{Bacharel}
    }{
    	\ifthenelse{\equal{\@tipocurso}{Licenciatura}}{
        	\newcommand\grau{Licenciado}
    	}{
    		\ifthenelse{\equal{\@tipocurso}{Curso Superior de Tecnologia}}{
        		\newcommand\grau{Tecnólogo}
    		}{
    			\PackageError{classe-ifg}{Para TCC e qualificacao de TCC indique Bacharelado, Licenciatura ou Curso Superior de Tecnologia}{Tipo de curso inadequado para o documento}
    		}
    	}
    }
    \ifthenelse{\equal{\@tipocurso}{Curso Superior de Tecnologia}}{
        Trabalho de Conclus\~{a}o de Curso apresentado \`{a} Coordena\c{c}\~{a}o do \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tulo de \grau~em \@curso.
    }{
    	Trabalho de Conclus\~{a}o de Curso apresentado \`{a} Coordena\c{c}\~{a}o do Curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tulo de \grau~em \@curso.
    }
    }{}
  \ifthenelse{\boolean{qualt}}{
    \ifthenelse{\equal{\@tipocurso}{Bacharelado}}{
        \newcommand\grau{Bacharel}
    }{
    	\ifthenelse{\equal{\@tipocurso}{Licenciatura}}{
        	\newcommand\grau{Licenciado}
    	}{
    		\ifthenelse{\equal{\@tipocurso}{Curso Superior de Tecnologia}}{
        		\newcommand\grau{Tecnólogo}
    		}{
    			\PackageError{classe-ifg}{Para TCC e qualificacao de TCC indique Bacharelado, Licenciatura ou Curso Superior de Tecnologia}{Tipo de curso inadequado para o documento}
    		}
    	}
    }
    \ifthenelse{\equal{\@tipocurso}{Curso Superior de Tecnologia}}{
        Qualifica\c{c}\~{a}o de Trabalho de Conclus\~{a}o de Curso realizada no \@tipocurso\space em \@curso\space como requisito parcial para obten\c{c}\~{a}o do t\'{i}tulo de \grau~em \@curso.
    }{
    	Qualifica\c{c}\~{a}o de Trabalho de Conclus\~{a}o de Curso realizada no curso de \@tipocurso\space em \@curso\space como requisito parcial para obten\c{c}\~{a}o do t\'{i}tulo de \grau~em \@curso.
    }
    }{}
\ifthenelse{\boolean{prem}}{
    \Large \textbf{Plano de Trabalho}}{}
\ifthenelse{\boolean{pree}}{
    Pr\'{e}-Projeto de Especializa\c{c}\~{a}o apresentado ao curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a} do t\'{i}tulo de Especialista em \@curso.}{}
\ifthenelse{\boolean{pret}}{
    \ifthenelse{\equal{\@tipocurso}{Bacharelado}}{
        \newcommand\grau{Bacharel}
    }{
    	\ifthenelse{\equal{\@tipocurso}{Licenciatura}}{
        	\newcommand\grau{Licenciado}
    	}{
    		\PackageError{classe-ifg}{Para TCC e qualificacao de TCC indique Bacharelado ou Licenciatura}{Tipo de curso inadequado para o documento}
    	}
    }
    Pr\'{e}-Projeto de Trabalho de Conclus\~{a}o de Curso apresentado ao curso de \@tipocurso\space em \@curso\space como requisito parcial para obten\c{c}\~{a}o do t\'{i}tulo de \grau~em \@curso.}{}
    \ifthenelse{\boolean{relat}}{
    \Large \textbf{Relat\'{o}rio de Disciplina}}{}
    }
 \vspace{0.2cm}
 \par%
 \ifthenelse{\equal{\@orientador}{}}
  {
  	\ifthenelse{\boolean{relat}}{
  		\margemD{\textbf{Professora:} \@orientadora}
  		\par%
    	\margemD{\textbf{Disciplina:} \@disciplina}
  	}{
  		\margemD{\textbf{Orientadora:} Profa. \@orientadora}
  	}  
  }%
  {
  	\ifthenelse{\boolean{relat}}{
  		\margemD{\textbf{Professor:} \@orientador}
  		\par%
    	\margemD{\textbf{Disciplina:} \@disciplina}
  	}{
  		\margemD{\textbf{Orientador:} Prof. \@orientador}
  	}
  }%
  \ifthenelse{\equal{\@pcoorientador}{}}{
  	% Sem primeiro coorientador: 0XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 00XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 000X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0000
  			}{
  				% Com somente segunda coorientadora: 0001
  				\vspace{0.1cm}
   				\par%
   				\margemD{\textbf{Coorientadora:} Profa. \@scoorientadora}%
  			}
  		}{
  			% Com segundo coorientador: 001X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com segundo coorientador apenas: 0010
  				\vspace{0.1cm}
   				\par%
   				\margemD{\textbf{Coorientador:} Prof. \@scoorientador}%
  			}{
  				% Com segundo coorientador e segunda coorientadora: 0011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeira coorientadora: 01XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 010X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0100
  				\vspace{0.1cm}
   				\par%
   				\margemD{\textbf{Coorientadora:} Profa. \@pcoorientadora}%
  			}{
  				% Com primeira e segunda coorientadoras: 0101
  				\vspace{0.1cm}
   				\par%
   				\margemD{\textbf{Coorientadoras:} Profa. \@pcoorientadora~e Profa. \@scoorientadora}%
  			}
  		}{
  			% Com segundo coorientador: 011X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeira coorientadora e segundo coorientador: 0110
  				\vspace{0.1cm}
   				\par%
   				\margemD{\textbf{Coorientadores:} Prof. \@pcoorientador~e Profa. \@scoorientadora}%
  			}{
  				% Com primeira coorientadora e segundo/a coorientador/a: 0111
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}
  }{
  	% Com primeiro coorientador: 1XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 10XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 100X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 1000
  				\vspace{0.1cm}
   				\par%
   				\margemD{\textbf{Coorientador:} Prof. \@pcoorientador}%
  			}{
  				% Com primeiro corientador e segunda coorientadora: 1001
  				\vspace{0.1cm}
   				\par%
   				\margemD{\textbf{Coorientadores:} Prof. \@pcoorientador~e Profa. \@scoorientadora}%
  			}
  		}{
  			% Com segundo coorientador: 101X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeiro coorientador e segundo coorientador: 1010
  				\vspace{0.1cm}
   				\par%
   				\margemD{\textbf{Coorientadores:} Prof. \@pcoorientador~e Prof. \@scoorientador}%
  			}{
  				% Com segundo coorientador e segunda coorientadora: 1011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeiro coorientador e primeira coorientadora: 11XX
  		\PackageError{classe-ifg}{Primeiro coorientador e primeira coorientadora indicados}{Indique apenas um dos dois}
  	}
  }
 \vspace*{\stretch{1}}%
 \par%
 \textoC{1}{\@campus, \@ano.}%
 \onehalfspacing%
 \normalfont%
 \clearpage%
 \ifthenelse{\boolean{prem}}{
    \assinatura}{}
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
    \ifthenelse{\equal{\@sautor}{}}{
    }{
        \includepdf[pages={-},offset=0mm -30mm]{termo2.pdf}
    }
    \ifthenelse{\equal{\@tautor}{}}{
    }{
        \includepdf[pages={-},offset=0mm -30mm]{termo3.pdf}
    }
}{}
}

%% Termo de aprova\c{c}\~{a}o
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\membro}[2]{\textoC{1}{\rule{.7\textwidth}{0.5pt}\\ \small \textbf{Prof. #1}\\#2} \vspace*{\stretch{0.2}}\par}
\newcommand{\membra}[2]{\textoC{1}{\rule{.7\textwidth}{0.5pt}\\ \small \textbf{Profa. #1}\\#2} \vspace*{\stretch{0.2}}\par}
\newcommand{\aprovacao}{
\ifthenelse{\boolean{tese} \OR \boolean{diss} \OR \boolean{mngr} \OR \boolean{tcc}}{
  \IfFileExists{aprovacao.pdf}{
    \includepdf[page={-},offset=0mm -30mm]{aprovacao.pdf}
  }{
    \newenvironment{banca}{
     \ifpdf
      \pdfbookmark[1]{Aprova\c{c}\~{a}o}{pretexto.4}
     \fi
     \singlespacing
     \par
     \textoC{1.8}{\normalsize \scshape \@instituicao \normalsize \upshape\\
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
      Monografia de Especializa\c{c}\~{a}o defendida no Curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tulo de Especialista em \@curso, aprovada em %
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
      Trabalho de Conclus\~{a}o de Curso defendido no Curso de \@tipocurso~em \@curso~como requisito parcial para obten\c{c}\~{a}o do t\'{i}tulo de \grau~em \@curso, aprovada em %
        \@dia\ de\@mesP\ de \@ano, pela Banca Examinadora constitu\'{i}da pelos professores:
     }}{}
     \vspace*{\stretch{1}}
     \par
     \ifthenelse{\equal{\@orientador}{}}
      {\membra{\@orientadora}{\@unidade\\Presidente da Banca}}
      {\membro{\@orientador}{\@unidade\\Presidente da Banca}}
   \ifthenelse{\equal{\@pcoorientador}{}}{
  	% Sem primeiro coorientador: 0XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 00XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 000X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0000
  			}{
  				% Com somente segunda coorientadora: 0001
  				\membra{\@scoorientadora}{\@unidadesco}
  			}
  		}{
  			% Com segundo coorientador: 001X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com segundo coorientador apenas: 0010
  				\membro{\@scoorientador}{\@unidadesco}
  			}{
  				% Com segundo coorientador e segunda coorientadora: 0011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeira coorientadora: 01XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 010X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0100
  				\membra{\@pcoorientadora}{\@unidadepco}
  			}{
  				% Com primeira e segunda coorientadoras: 0101
  				\membra{\@pcoorientadora}{\@unidadepco}
  				\membra{\@scoorientadora}{\@unidadesco}
  			}
  		}{
  			% Com segundo coorientador: 011X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeira coorientadora e segundo coorientador: 0110
  				\membro{\@pcoorientadora}{\@unidadepco}
  				\membra{\@scoorientador}{\@unidadesco}
  			}{
  				% Com primeira coorientadora e segundo/a coorientador/a: 0111
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}
  }{
  	% Com primeiro coorientador: 1XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 10XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 100X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 1000
  				\membro{\@pcoorientador}{\@unidadepco}
  			}{
  				% Com primeiro corientador e segunda coorientadora: 1001
  				\membro{\@pcoorientadora}{\@unidadepco}
  				\membra{\@scoorientadora}{\@unidadesco}
  			}
  		}{
  			% Com segundo coorientador: 101X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeiro coorientador e segundo coorientador: 1010
  				\membro{\@pcoorientador}{\@unidadepco}
  				\membro{\@scoorientador}{\@unidadesco}
  			}{
  				% Com segundo coorientador e segunda coorientadora: 1011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeiro coorientador e primeira coorientadora: 11XX
  		\PackageError{classe-ifg}{Primeiro coorientador e primeira coorientadora indicados}{Indique apenas um dos dois}
  	}
  }
 }
    {%
     \clearpage%
    }
    \input{./pre/preBanca}
  }
}{}}

%% Folha de assinatura (Plano de Trabalho)
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\assinaturapm}[2]{\textoC{1}{\rule{.7\textwidth}{0.5pt}\\ \small \textbf{Prof. #1}\\#2} \vspace*{\stretch{0.2}}\par}
\newcommand{\assinaturapf}[2]{\textoC{1}{\rule{.7\textwidth}{0.5pt}\\ \small \textbf{Profa. #1}\\#2} \vspace*{\stretch{0.2}}\par}
\newcommand{\assinaturad}[2]{\textoC{1}{\rule{.7\textwidth}{0.5pt}\\ \small \textbf{#1}\\#2} \vspace*{\stretch{0.2}}\par}
\newcommand{\assinatura}{
     \ifpdf
      \pdfbookmark[1]{Folha de Assinatura}{pretexto.4}
     \fi
     \singlespacing
     \par
     \textoC{1.8}{\normalsize \scshape \@instituicao \normalsize \upshape\\
     \vspace{-0.3cm}
     \normalsize \scshape \@reitoria \normalsize \upshape\\
     \vspace{-0.3cm}
     \normalsize \scshape C\^{a}mpus\space\@campus \normalsize \upshape\\
     \vspace{-0.3cm}
     \normalsize \scshape \@tipocurso\space em \@curso \normalsize \upshape}%
     \vspace*{\stretch{1}}
     \par
     \textoC{1.7}{\huge \textbf{\@titulo\relax} \normalsize}
     \ifthenelse{\equal{\@subtitulo}{}}{}{
      \textoC{1.2}{\Large \textbf{\@subtitulo\relax} \normalsize}}
     \vspace*{\stretch{1}}
     \par
     \ifthenelse{\equal{\@pcoorientador}{}}{
  	% Sem primeiro coorientador: 0XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 00XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 000X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0000
  				\textoF{
      				Plano de Trabalho apresentado ao \@programa\ do \@instituicao\ para solicita\c c\~ao oficial de registro do tema de pesquisa a ser desenvolvido no Mestrado Profissional em \@curso\ pelo(a) discente \@autor\ sob orienta\c c\~ao de \ifthenelse{\equal{\@orientador}{}}{Profa. \@orientadora}{Prof. \@orientador}.
     			}
  			}{
  				% Com somente segunda coorientadora: 0001
  				\textoF{
      				Plano de Trabalho apresentado ao \@programa\ do \@instituicao\ para solicita\c c\~ao oficial de registro do tema de pesquisa a ser desenvolvido no Mestrado Profissional em \@curso\ pelo(a) discente \@autor\ sob orienta\c c\~ao de \ifthenelse{\equal{\@orientador}{}}{Profa. \@orientadora}{Prof. \@orientador}~e Profa. \scoorientadora.
     			}
  			}
  		}{
  			% Com segundo coorientador: 001X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com segundo coorientador apenas: 0010
  				\textoF{
      				Plano de Trabalho apresentado ao \@programa\ do \@instituicao\ para solicita\c c\~ao oficial de registro do tema de pesquisa a ser desenvolvido no Mestrado Profissional em \@curso\ pelo(a) discente \@autor\ sob orienta\c c\~ao de \ifthenelse{\equal{\@orientador}{}}{Profa. \@orientadora}{Prof. \@orientador}~e Prof. \@scoorientador.
     			}
  			}{
  				% Com segundo coorientador e segunda coorientadora: 0011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeira coorientadora: 01XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 010X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0100
  				\textoF{
      				Plano de Trabalho apresentado ao \@programa\ do \@instituicao\ para solicita\c c\~ao oficial de registro do tema de pesquisa a ser desenvolvido no Mestrado Profissional em \@curso\ pelo(a) discente \@autor\ sob orienta\c c\~ao de \ifthenelse{\equal{\@orientador}{}}{Profa. \@orientadora}{Prof. \@orientador}~e Profa. \@pcoorientadora.
     			}
  			}{
  				% Com primeira e segunda coorientadoras: 0101
  				\textoF{
      				Plano de Trabalho apresentado ao \@programa\ do \@instituicao\ para solicita\c c\~ao oficial de registro do tema de pesquisa a ser desenvolvido no Mestrado Profissional em \@curso\ pelo(a) discente \@autor\ sob orienta\c c\~ao de \ifthenelse{\equal{\@orientador}{}}{Profa. \@orientadora}{Prof. \@orientador}, Profa. \@pcoorientadora~e Profa. \@scoorientadora.
     			}
  			}
  		}{
  			% Com segundo coorientador: 011X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeira coorientadora e segundo coorientador: 0110
  				\textoF{
      				Plano de Trabalho apresentado ao \@programa\ do \@instituicao\ para solicita\c c\~ao oficial de registro do tema de pesquisa a ser desenvolvido no Mestrado Profissional em \@curso\ pelo(a) discente \@autor\ sob orienta\c c\~ao de \ifthenelse{\equal{\@orientador}{}}{Profa. \@orientadora}{Prof. \@orientador}, Profa. \@pcoorientadora~e Prof. \@scoorientador.
     			}
  			}{
  				% Com primeira coorientadora e segundo/a coorientador/a: 0111
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}
  }{
  	% Com primeiro coorientador: 1XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 10XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 100X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 1000
  				\textoF{
      				Plano de Trabalho apresentado ao \@programa\ do \@instituicao\ para solicita\c c\~ao oficial de registro do tema de pesquisa a ser desenvolvido no Mestrado Profissional em \@curso\ pelo(a) discente \@autor\ sob orienta\c c\~ao de \ifthenelse{\equal{\@orientador}{}}{Profa. \@orientadora}{Prof. \@orientador}~e Prof. \@pcoorientador.
     			}
  			}{
  				% Com primeiro corientador e segunda coorientadora: 1001
  				\textoF{
      				Plano de Trabalho apresentado ao \@programa\ do \@instituicao\ para solicita\c c\~ao oficial de registro do tema de pesquisa a ser desenvolvido no Mestrado Profissional em \@curso\ pelo(a) discente \@autor\ sob orienta\c c\~ao de \ifthenelse{\equal{\@orientador}{}}{Profa. \@orientadora}{Prof. \@orientador}, Prof. \@pcoorientador~e Profa. \@scoorientadora.
     			}
  			}
  		}{
  			% Com segundo coorientador: 101X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeiro coorientador e segundo coorientador: 1010
  				\textoF{
      				Plano de Trabalho apresentado ao \@programa\ do \@instituicao\ para solicita\c c\~ao oficial de registro do tema de pesquisa a ser desenvolvido no Mestrado Profissional em \@curso\ pelo(a) discente \@autor\ sob orienta\c c\~ao de \ifthenelse{\equal{\@orientador}{}}{Profa. \@orientadora}{Prof. \@orientador}, Prof. \@pcoorientador~e Prof. \@scoorientador.
     			}
  			}{
  				% Com segundo coorientador e segunda coorientadora: 1011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeiro coorientador e primeira coorientadora: 11XX
  		\PackageError{classe-ifg}{Primeiro coorientador e primeira coorientadora indicados}{Indique apenas um dos dois}
  	}
  }
     \vspace*{\stretch{1}}
     \par
     \assinaturad{\@autor}{Discente}
     \ifthenelse{\equal{\@orientador}{}}
      {\assinaturapf{\@orientadora}{Orientadora}}
      {\assinaturapm{\@orientador}{Orientador}}
     \ifthenelse{\equal{\@pcoorientador}{}}{
  	% Sem primeiro coorientador: 0XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 00XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 000X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0000
  			}{
  				% Com somente segunda coorientadora: 0001
  				\assinaturapf{\@scorientadora}{Coorientadora}
  			}
  		}{
  			% Com segundo coorientador: 001X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com segundo coorientador apenas: 0010
  				\assinaturapm{\@scoorientador}{Coorientador}
  			}{
  				% Com segundo coorientador e segunda coorientadora: 0011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeira coorientadora: 01XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 010X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0100
  				\assinaturapf{\@pcoorientadora}{Coorientadora}
  			}{
  				% Com primeira e segunda coorientadoras: 0101
  				\assinaturapf{\@pcoorientadora}{Coorientadora}
  				\assinaturapf{\@scoorientadora}{Coorientadora}
  			}
  		}{
  			% Com segundo coorientador: 011X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeira coorientadora e segundo coorientador: 0110
  				\assinaturapf{\@pcoorientadora}{Coorientadora}
  				\assinaturapm{\@scoorientador}{Coorientador}
  			}{
  				% Com primeira coorientadora e segundo/a coorientador/a: 0111
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}
  }{
  	% Com primeiro coorientador: 1XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 10XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 100X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 1000
  				\assinaturapm{\@pcooorientador}{Coorientador}
  			}{
  				% Com primeiro corientador e segunda coorientadora: 1001
  				\assinaturapm{\@pcooorientador}{Coorientador}
  				\assinaturapf{\@scoorientadora}{Coorientadora}
  			}
  		}{
  			% Com segundo coorientador: 101X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeiro coorientador e segundo coorientador: 1010
  				\assinaturapm{\@pcoorientador}{Coorientador}
  				\assinaturapm{\@scoorientador}{Coorientador}
  			}{
  				% Com segundo coorientador e segunda coorientadora: 1011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeiro coorientador e primeira coorientadora: 11XX
  		\PackageError{classe-ifg}{Primeiro coorientador e primeira coorientadora indicados}{Indique apenas um dos dois}
  	}
  }
}
    

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
\ifthenelse{\boolean{prem} \OR \boolean{pree} \OR \boolean{pret} \OR \boolean{relat}}{
}{
\newenvironment{resumo}{%
 \ifpdf
  \pdfbookmark[1]{Resumo}{pretexto.8}
 \fi
 \@makeschapterhead{Resumo}
 \begin{minipage}{13.5cm}
  \singlespacing%
\textbf{Título:} \@titulo\\
\ifthenelse{\equal{\@tautor}{}}{
 \ifthenelse{\equal{\@sautor}{}}{
    \textbf{Autor:} \@autor\\
 }{
    \textbf{Autores:} \@autor~e~\@sautor\\
 }
 }{
    \textbf{Autores:} \@autor,~\@sautor~e~\@tautor\\
 }
\textbf{Orientador:} \@orientador\\
\ifthenelse{\equal{\@pcoorientador}{}}{
  	% Sem primeiro coorientador: 0XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 00XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 000X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0000
  			}{
  				% Com somente segunda coorientadora: 0001
  				\textbf{Coorientadora:} Profa. \@scoorientadora
  			}
  		}{
  			% Com segundo coorientador: 001X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com segundo coorientador apenas: 0010
  				\textbf{Coorientador:} Prof. \@scoorientador
  			}{
  				% Com segundo coorientador e segunda coorientadora: 0011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeira coorientadora: 01XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 010X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0100
  				\textbf{Coorientadora:} Profa. \@pcoorientadora
  			}{
  				% Com primeira e segunda coorientadoras: 0101
  				\textbf{Coorientadoras:} Profa. \@pcoorientadora~e Profa. \@scoorientadora
  			}
  		}{
  			% Com segundo coorientador: 011X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeira coorientadora e segundo coorientador: 0110
  				\textbf{Coorientadores:} Prof. \@pcoorientador~e Profa. \@scoorientadora
  			}{
  				% Com primeira coorientadora e segundo/a coorientador/a: 0111
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}
  }{
  	% Com primeiro coorientador: 1XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 10XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 100X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 1000
  				\textbf{Coorientador:} Prof. \@pcoorientador
  			}{
  				% Com primeiro corientador e segunda coorientadora: 1001
  				\textbf{Coorientadores:} Prof. \@pcoorientador~e Profa. \@scoorientadora
  			}
  		}{
  			% Com segundo coorientador: 101X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeiro coorientador e segundo coorientador: 1010
  				\textbf{Coorientadores:} Prof. \@pcoorientador~e Prof. \@scoorientador
  			}{
  				% Com segundo coorientador e segunda coorientadora: 1011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeiro coorientador e primeira coorientadora: 11XX
  		\PackageError{classe-ifg}{Primeiro coorientador e primeira coorientadora indicados}{Indique apenas um dos dois}
  	}
  }
 \end{minipage}%
 \onehalfspacing%
 \vspace*{\stretch{2}}%
 \noindent
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
}
\newcommand{\cresumopre}{
\ifthenelse{\boolean{prem} \OR \boolean{pree} \OR \boolean{pret} \OR \boolean{relat}}{
\addcontentsline{toc}{chapter}{Resumo}
\newenvironment{resumo}{%
 \ifpdf
  \pdfbookmark[1]{Resumo}{pretexto.8}
 \fi
 \vspace*{10\p@}%
  { \parindent \z@ \raggedright
    \interlinepenalty\@M
    \raggedright\large\rm\bfseries\centering{Resumo} \par\nobreak \vskip -30\p@
    \vskip 10\p@
  }
 \onehalfspacing
 \vspace{1.0cm}%
 
  \list{}{
      \leftmargin=0.7cm
      \labelwidth=\z@
      \listparindent=\z@
      \itemindent\listparindent
      \rightmargin\leftmargin}\item
}
{
 \list{}{
      \leftmargin=1.0cm
      \labelwidth=\z@
      \listparindent=\z@
      \itemindent\listparindent
      \rightmargin\leftmargin}\item[\hspace{0.86cm}\arial \textbf{Palavras--chave}] \normalfont \normalsize \@chaves% 
}
\input{./pre/preResumo}
{\endlist}
}{}
}

%% Abstract
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\newcommand{\cabstract}{
\ifthenelse{\boolean{prem} \OR \boolean{pree} \OR \boolean{pret} \OR \boolean{relat}}{
}{
\renewenvironment{abstract}[1]{%
 \ifpdf
  \pdfbookmark[1]{Abstract}{pretexto.9} % Sets a PDF bookmark for the abstract
 \fi
  \@makeschapterhead{Abstract}
  \begin{minipage}{13.5cm}
   \singlespacing%
\textbf{Title:} ##1\\
\ifthenelse{\equal{\@tautor}{}}{
 \ifthenelse{\equal{\@sautor}{}}{
    \textbf{Author:} \@autor\\
 }{
    \textbf{Authors:} \@autor~and~\@sautor\\
 }
 }{
    \textbf{Authors:} \@autor,~\@sautor,~and~\@tautor\\
 }
\textbf{Advisor:} \@orientador\\
\ifthenelse{\equal{\@pcoorientador}{}}{
  	% Sem primeiro coorientador: 0XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 00XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 000X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0000
  			}{
  				% Com somente segunda coorientadora: 0001
  				\textbf{Coadvisor:} Profa. \@scoorientadora
  			}
  		}{
  			% Com segundo coorientador: 001X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com segundo coorientador apenas: 0010
  				\textbf{Coadvisor:} Prof. \@scoorientador
  			}{
  				% Com segundo coorientador e segunda coorientadora: 0011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeira coorientadora: 01XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 010X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 0100
  				\textbf{Coadvisor:} Prof. \@pcoorientadora
  			}{
  				% Com primeira e segunda coorientadoras: 0101
  				\textbf{Coadvisors:} Prof. \@pcoorientadora~and Prof. \@scoorientadora
  			}
  		}{
  			% Com segundo coorientador: 011X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeira coorientadora e segundo coorientador: 0110
  				\textbf{Coadvisors:} Prof. \@pcoorientador~and Prof. \@scoorientadora
  			}{
  				% Com primeira coorientadora e segundo/a coorientador/a: 0111
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}
  }{
  	% Com primeiro coorientador: 1XXX
  	\ifthenelse{\equal{\@pcoorientadora}{}}{
  		% Sem primeira coorientadora: 10XX
  		\ifthenelse{\equal{\@scoorientador}{}}{
  			% Sem segundo coorientador: 100X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Sem segunda coorientadora: 1000
  				\textbf{Coadvisor:} Prof. \@pcoorientador
  			}{
  				% Com primeiro corientador e segunda coorientadora: 1001
  				\textbf{Coadvisors:} Prof. \@pcoorientador~and Prof. \@scoorientadora
  			}
  		}{
  			% Com segundo coorientador: 101X
  			\ifthenelse{\equal{\@scoorientadora}{}}{
  				% Com primeiro coorientador e segundo coorientador: 1010
  				\textbf{Coadvisors:} Prof. \@pcoorientador~and Prof. \@scoorientador
  			}{
  				% Com segundo coorientador e segunda coorientadora: 1011
  				\PackageError{classe-ifg}{Segundo coorientador e segunda coorientadora indicados}{Indique apenas um dos dois}
  			}
  		}
  	}{
  		% Com primeiro coorientador e primeira coorientadora: 11XX
  		\PackageError{classe-ifg}{Primeiro coorientador e primeira coorientadora indicados}{Indique apenas um dos dois}
  	}
  }
  \end{minipage}\onehalfspacing%
\onehalfspacing
  \vspace*{\stretch{2}}%
  \noindent
  }
  {%
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
}

%% Sumário
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
%% The \IfSubStringInString command is based on H. Harders "substr" class.
%%
%% expands the first and second argument with
%% \protected@edef and calls #3 with them:
\newcommand{\emptypage}[1]{%
  \cleardoublepage
  \begingroup
  \let\ps@plain\ps@empty
  \pagestyle{empty}
  #1
  \cleardoublepage}
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
\newcommand*{\BeginNoToc}{%
  \addtocontents{toc}{%
    \edef\protect\SavedTocDepth{\protect\the\protect\value{tocdepth}}%
  }%
  \addtocontents{toc}{%
    \protect\setcounter{tocdepth}{-10}%
  }%
}
\newcommand*{\EndNoToc}{%
  \addtocontents{toc}{%
    \protect\setcounter{tocdepth}{\protect\SavedTocDepth}%
  }%
}
\newcommand{\tabelas}[1][opt]
{
\ifpdf
 \pdfbookmark[0]{Sumário}{sumario}
\fi
\clearpage\singlespacing%
\ifthenelse{\boolean{prem} \OR \boolean{pree} \OR \boolean{pret} \OR \boolean{relat}}{
}{
\IfSubStringInString{fig}{#1}
 {
 \emptypage
 	{%
	\let\oldnumberline\numberline%
	\renewcommand{\numberline}[1]{\figurename~\oldnumberline{##1}--~~}%
	%\newlength{\mylen}   
    %\settowidth{\mylen}{\figurename~\oldnumberline\enspace--} 
    %\addtolength{\cftfignumwidth}{\mylen} % add the extra space
	\listoffigures%
	\let\numberline\oldnumberline
	}
 \clearpage
 }{}
\IfSubStringInString{tab}{#1}
 {
 \BeginNoToc 
 \emptypage
 {%
	\let\oldnumberline\numberline%
	\renewcommand{\numberline}[1]{Tabela~\oldnumberline{##1}--~~}%
	\listoftables%
	\let\numberline\oldnumberline
 }
 \EndNoToc
 \clearpage
 }{}
\IfSubStringInString{qua}{#1}
 {\emptypage
 {%
	\let\oldnumberline\numberline%
	\renewcommand{\numberline}[1]{Quadro~\oldnumberline{##1}--~~}%
	\listofframes%
	\let\numberline\oldnumberline
 }
 \clearpage
 }{}
\IfSubStringInString{alg}{#1}
 {
 \BeginNoToc 
 \emptypage
 {%
	\let\oldnumberline\numberline%
	\renewcommand{\numberline}[1]{Algoritmo~\oldnumberline{##1}--~~}%
	\listofalgorithmes%
	\let\numberline\oldnumberline
 }
 \EndNoToc
 \clearpage
 }{}
\IfSubStringInString{cod}{#1}
 {
 \emptypage
 {%
	\let\oldnumberline\numberline%
	\renewcommand{\numberline}[1]{Código~\oldnumberline{##1}--~~}%
	\listofcodes%
	\let\numberline\oldnumberline
 }
 \clearpage
 }{}
 \IfSubStringInString{sig}{#1}
 {\emptypage\listofacronym\clearpage
 }{}
\IfSubStringInString{sim}{#1}
 {\emptypage\listofsymbols\clearpage
 }{}
\tableofcontents%
\clearpage%
\normalfont\pagestyle{fancy}%
\onehalfspacing
}
\normalfont\pagestyle{fancy}%
\cresumopre
}

%% Bibliografia
%% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\usepackage{backref}
%%% Pacote da ABNTeX para referências dentro das normas %%%
\usepackage[alf,bibjustif,abnt-emphasize=bf,abnt-etal-cite=3,abnt-etal-text=it,abnt-etal-list=0,abnt-full-initials=yes,abnt-repeated-title-omit=yes,abnt-show-options=no,abnt-verbatim-entry=no,abnt-url-package=url]{formatacao/abntcite}

\newlength{\bibitemsep}\setlength{\bibitemsep}{.2\baselineskip plus .05\baselineskip minus .05\baselineskip}
\newlength{\bibparskip}\setlength{\bibparskip}{10pt}

\renewenvironment{thebibliography}[1]{%
	\chapter*{Referências}
	\refstepcounter{chapter}
	\addcontentsline{toc}{chapter}{Referências}
	\bigskip
  \label{referbiblio}	\list{\@biblabel{\@arabic\c@enumiv}}{\settowidth\labelwidth{\@biblabel{#1}}%
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
