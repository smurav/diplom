\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ESPD}[2011/12/31 Russian ESPD GOST LaTeX document class]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ПАКЕТЫ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Поддержка русского языка
\RequirePackage[utf8]{inputenc}
\RequirePackage[T2A]{fontenc}
\RequirePackage[russian]{babel}

% Заметки о недоделках
\RequirePackage[onecolomn, dvistyle, textwidth=1.8cm, 
                textsize=tiny, colorinlistoftodos]{todonotes}
\reversemarginpar

% Рисунки
\RequirePackage{graphicx}

% Таблицы
\RequirePackage{longtable}
\RequirePackage{multirow}
\RequirePackage{array}
\RequirePackage{hhline}

% Шрифты
\RequirePackage{amsfonts}

% Поворот страницы
\RequirePackage[pdftex]{lscape}
\RequirePackage{rotating}

% Количество страниц
\RequirePackage{lastpage}

% ams
\RequirePackage{amsmath}
\RequirePackage{amssymb}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% МЕЖСТРОЧНЫЕ ИНТЕРВАЛЫ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\TinyStretch}  {\renewcommand{\baselinestretch}{0.2}\selectfont}
\newcommand{\SmallStretch} {\renewcommand{\baselinestretch}{0.6}\selectfont}
\newcommand{\NormalStretch}{\renewcommand{\baselinestretch}{1.0}\selectfont}
\newcommand{\LargeStretch} {\renewcommand{\baselinestretch}{1.5}\selectfont}
\newcommand{\HugeStretch}  {\renewcommand{\baselinestretch}{2.0}\selectfont}
\newcommand{\VeryBigStretch}  {\renewcommand{\baselinestretch}{8.0}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TODO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\@TODO}[2]{\TinyStretch\todo[#1]{#2}\LargeStretch}

\newcommand{\TodoInfo}   [1]{\@TODO{color=blue!30}{#1}}
\newcommand{\TodoWarning}[1]{\@TODO{color=orange}{#1}}
\newcommand{\TodoError}  [1]{\@TODO{color=red}{#1}}

\newcommand{\ListOfTodos}{\listoftodos[Список редакторских правок]}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% РАЗМЕР СТРАНИЦЫ, ПОВОРОТ ЛИСТА
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\paperheight}{297mm}%
\setlength{\paperwidth} {210mm}

\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% РАЗМЕР ШРИФТА
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\@ptsize}{14}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DRAFT, FINAL
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ВЫПОЛНИТЬ ВСЕ ЗАДАННЫЕ ОПЦИИ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ШРИФТЫ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\EC@family#1#2#3#4#5{%
  \DeclareFontShape{#1}{#2}{#3}{#4}%
  {<5><6><7><8><9><10><10.95><12><14.4>%
   <17.28><20.74><24.88><29.86><35.83><42.99><51.59>genb*#5}{}}
\EC@family{T1}{cmr}{m}{n}{ecrm}
\EC@family{T1}{cmr}{m}{sl}{ecsl}
\EC@family{T1}{cmr}{m}{it}{ecti}
\EC@family{T1}{cmr}{m}{sc}{eccc}
\EC@family{T1}{cmr}{bx}{n}{ecbx}
\EC@family{T1}{cmr}{b}{n}{ecrb}
\EC@family{T1}{cmr}{bx}{it}{ecbi}
\EC@family{T1}{cmr}{bx}{sl}{ecbl}
\EC@family{T1}{cmr}{bx}{sc}{ecxc}
\EC@family{T1}{cmr}{m}{ui}{ecui}
\DeclareFontShape{OT1}{cmr}{m}{n}%
     {<5><6><7><8><9><10><12>gen*cmr%
      <10.95>cmr10%
      <14.4>cmr12%
      <17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmr17}{}
\DeclareFontShape{OT1}{cmr}{m}{sl}%
     {<5><6><7>cmsl8%
      <8><9>gen*cmsl%
      <10><10.95>cmsl10%
      <12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmsl12%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{it}%
     {<5><6><7>cmti7%
      <8>cmti8%
      <9>cmti9%
      <10><10.95>cmti10%
      <12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmti12%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{sc}%
     {<5><6><7><8><9><10><10.95><12>%
      <14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmcsc10%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{ui}
   {<5><6><7><8><9><10><10.95><12>%
      <14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmu10%
      }{}
\DeclareFontShape{OT1}{cmr}{b}{n}
     {<5><6><7><8><9><10><10.95><12>%
      <14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmb10%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{n}
   {<5><6><7><8><9>gen*cmbx%
      <10><10.95>cmbx10%
      <12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmbx12%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{sl}
      {<5><6><7><8><9>%
      <10><10.95><12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmbxsl10%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{it}
      {<5><6><7><8><9>%
      <10><10.95><12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmbxti10%
      }{}

\input{size14.clo}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

\RequirePackage{exscale}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% РАЗМЕРЫ ЭЛЕМЕНТОВ СТРАНИЦЫ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\hoffset=-1in
\voffset=-1in

\topmargin=5mm
\headheight=11mm
\headsep=8mm

\oddsidemargin=19mm

\textwidth=18.1cm
\textheight=25.5cm

\footskip=10mm

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% АБЗАЦНЫЙ ОТСТУП
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{1.2cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% УСТАНОВКА СВОЙСТВ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\Title}          [1]{\global\def\@Title{#1}}
\newcommand{\StudentGroup}   [1]{\global\def\@StudentGroup{#1}}
\newcommand{\StudentName}    [1]{\global\def\@StudentName{#1}}
\newcommand{\SupervisorName} [1]{\global\def\@SupervisorName{#1}}
\newcommand{\SupervisorPost} [1]{\global\def\@SupervisorPost{#1}}
\newcommand{\CathedraName} [1]{\global\def\@CathedraName{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ПОЛУЧЕНИЕ СВОЙСТВ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\PrintTitle}          {\@Title}
\newcommand{\PrintStudentGroup}   {\@StudentGroup}
\newcommand{\PrintStudentName}    {\@StudentName}
\newcommand{\PrintSupervisorName} {\@SupervisorName}
\newcommand{\PrintSupervisorPost} {\@SupervisorPost}
\newcommand{\PrintCathedraName} {\@CathedraName}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ПРИМЕЧАНИЯ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcounter{NoteCounter}
\setcounter{NoteCounter}{0}

\newenvironment{Notes}
{
    \vskip 2mm
    \NormalStretch
    \setcounter{NoteCounter}{1}
    \par П~р~и~м~е~ч~а~н~и~я:\par
}
{
    \vskip 2mm
    \LargeStretch
}

\newcommand{\Noteitem}
{
    \vskip 1mm
    \par\@arabic\c@NoteCounter.
    \addtocounter{NoteCounter}{1}
}

\newenvironment{Note}
{
    \vskip 2mm
    \NormalStretch
    \par П~р~и~м~е~ч~а~н~и~е.
}
{
    \vskip 2mm
    \LargeStretch
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ОБЩЕЕ ОФОРМЛЕНИЕ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\Key}[1]{\mbox{$\langle$#1$\rangle$}}
\newcommand{\Button}[1]{\mbox{$[$#1$]$}}
\newcommand{\Element}[1]{<<#1>>}
\newcommand{\Arrow}{$~\rightarrow\ $}
\newcommand{\Command}[1]{{\verb\ #1}}

\newcommand{\CreateHeaders}{
    \let\@oddfoot\@empty
    \let\@evenfoot\@empty
    \let\@evenhead\@empty
    \def\@oddhead{\hfil\mbox{\thepage}\hfil}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ТИТУЛЬНАЯ СТРАНИЦА
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\maketitle}{
    \newpage
    \thispagestyle{empty}
%
    \begin{center}
        МИНИСТЕРСТВО ОБРАЗОВАНИЯ И НАУКИ РОССИЙСКОЙ ФЕДЕРАЦИИ \\[3mm]
        Федеральное государственное автономное образовательное учреждение\\[-3mm]
        высшего профессионального образования\\[-2mm]
        {\large <<Национальный исследовательский ядерный университет <<МИФИ>>}\\[6mm]
        Факультет кибернетики и информационной безопасности\\[-2mm]
        Кафедра 36 <<Информационные системы и технологии>>\\[1.5cm]
        {\Large ПОЯСНИТЕЛЬНАЯ ЗАПИСКА}\\[-3mm]
        к дипломному проекту на тему:\\[3mm]    
        \textbf{\Large \@Title}\\[1cm]
    \end{center}
%
\vspace{150pt}
\NormalStretch

\noindent\begin{tabular}{lp{6cm}p{7cm}}
\text{Группа К10-361} & &  \\					 
\textbf{Студент-дипломник}              & \underline{\hspace{6cm} \PrintStudentName \hspace{45pt}}\\ 
						&\hspace{25pt} (подпись) &\hspace{20pt} (фио) \\
						& &  \\
\textbf{Руководитель проекта}    & \underline{\hspace{6cm} \PrintSupervisorName \hspace{65pt}}    \\
					&\hspace{30pt}(подпись) &\hspace{20pt} (фио) \\                  
					& &  \\             
\textbf{Зав. кафедрой}          & \underline{\hspace{6cm} \PrintCathedraName \hspace{80pt}} \\
					&\hspace{30pt}(подпись) &\hspace{20pt} (фио) \\
					& &  \\
\end{tabular}
    \vfill
    \vspace{-0.2cm}\hfil Москва,~\number\year~г.\hfil\\    
    \global\let\maketitle\relax
    \newpage
%   
    \LargeStretch
%
    \setcounter{page}{2}%
    \setcounter{footnote}{0}%
    % Колонтитулы
    \CreateHeaders
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Задание на диплом
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\maketz}{
    \newpage
    \thispagestyle{empty}
%
    \begin{center}
        МИНИСТЕРСТВО ОБРАЗОВАНИЯ И НАУКИ РОССИЙСКОЙ ФЕДЕРАЦИИ \\[3mm]
        Федеральное государственное автономное образовательное учреждение\\[-3mm]
        высшего профессионального образования\\[-2mm]
        {\large <<Национальный исследовательский ядерный университет <<МИФИ>>}\\[6mm]
        ФАКУЛЬТЕТ \underline{ Кибернетика и информационная безопасность } КАФЕДРА \underline{ 36 } 
        СПЕЦИАЛЬНОСТЬ \underline{\hspace{1.5cm} 010501 \hspace{2cm}} ГРУППА \underline{\hspace{1.5cm} К10-361 \hspace{1.5cm}}
    \end{center}
    
    \hfill "УТВЕРЖДАЮ" \hspace{0.5cm} 
    \vspace{-5pt}
    
    \hfill Зав. кафедрой \hspace{1cm} 
    \vspace{-5pt}
    
    \hfill "\underline{\hspace{1cm}}" \underline{\hspace{3cm}} 2013 г.
    
    \vspace{30pt}
    \begin{center}
     {ЗАДАНИЕ НА ДИПЛОМНЫЙ ПРОЕКТ (работу)}\\[-3mm]                   
    \end{center}
    
%
\vspace{30pt}
\LargeStretch

\text{1. Фамилия, имя, отчество дипломанта} \underline{\hspace{0.5cm} Лаврентьева Марина Олеговна \hspace{0.1cm}} 

\underline{\hspace{16.7cm}}

\text{2. Тема проекта (работы)} \underline{\hspace{0.5cm} Реализация инфрастуктуры открытых \hspace{1.5cm}} 

\underline{\hspace{0.1cm} ключей  для аутентификации клиентов СУБД в распределённой \hspace{2.1cm}}

\underline{\hspace{0.1cm} информационной системе \hspace{10.5cm}	}

Утверждена приказом по институту от  "\underline{\hspace{1cm}}" \underline{\hspace{2cm}} 2013 г. № \underline{\hspace{1.9cm}}

\text{3. Срок сдачи студентом готового проекта} \underline{\hspace{0.5cm} 30 июня 2011 года \hspace{2.4cm}} 

4. Руководитель дипломного проектирования \underline{\hspace{0.5cm} Муравьёв Сергей \hspace{1.9cm}} 

\underline{\hspace{0.1cm} Константинович, к.т.н., доцент каф.№36 НИЯУ МИФИ\hspace{4.1cm}	}

5. Консультант по зкономико-организационной и информационной части 

проекта \underline{\hspace{15cm}}
    
    \newpage
\noindent\begin{tabular}{lp{6cm}}
\text{1. Исходные данные к проекту   } & &  \\					 
\text{2. Содержание проекта:  }              & \\ 
						
\text{а) литература и обзор работ, связанных с проектом   }    &     \\
					            
\text{б) расчетно-конструкторская, теоретическая, технологическая часть    }          &  \\
		
\text{в) экспериментальная часть   } & \\

\end{tabular}  

\newpage
\noindent\begin{tabular}{lp{6cm}}
\text{г) экономико-организационная и информационная часть   } & &  \\					 
\text{д) охрана труда и техника безопасности, экологическая часть   }              & \\ 
						
\text{3. Отчетный материал проекта:  }    &     \\
					            
\text{а) пояснительная записка;  }          &  \\
		
\text{ б) графический материал (с указанием обязательных чертежей); } & \\
\text{ в) макетно-экспериментальная часть } & \\
\text{ 4. Консультанты по проекту (с указанием относящихся к ним разделов проекта) } & \\

\end{tabular} 

\NormalStretch 
\newpage
\begin{center}
        КАЛЕНДАРНЫЙ ПЛАН РАБОТЫ НАД ПРОЕКТОМ \\
        (составляется руководителем с участием студента в течение первой недели\\
        с начала дипломного проектирования)\\
        
\noindent\begin{tabular}[c]{|p{1cm}|p{6.4cm}|p{2.9cm}|p{2.5cm}|p{2.5cm}|}
\hline
 № п/п     & Наименование этапов работы & Сроки \break выполнения этапов & Степень готовности проекта \break  в \% к объему работы& Время \break  выполнения\\ 
 \hline					 
1 & Анализ способов построения ИС, процесса построения ИС & 23.03.2011 – 01.04.2011 & \hspace{0.9cm} 5 &  \\ 
 \hline					
2 & Изучение литературы & 02.04.2011 – 10.04.2011 & \hspace{0.8cm} 20 &   \\
 \hline					                			           
3 & Составление технического задания на проект & 11.04.2011 – 15.04.2011 & \hspace{0.8cm} 25 &   \\
 \hline
4 & Выбор подходов решения задачи и средств реализации. Написание 1 главы пояснительной записки. & 16.04.2011 – 01.05.2011 & \hspace{0.8cm} 30 &   \\
 \hline
5 & Построение ИС & 02.05.2011 – 10.05.2011 & \hspace{0.8cm} 70 &   \\
 \hline
6 & Построение ИС с SELinux, написание 2 главы пояснительной записки. & 11.05.2011 – 19.05.2011 & \hspace{0.8cm} 75 &   \\
 \hline
7 & Отладка, тестирование ИС. Написание 3 главы пояснительной записки. & 20.05.2011 – 05.06.2011 & \hspace{0.8cm} 90 &   \\
 \hline
8 & Оформление пояснительной записки и графического материала. & 05.06.2011 – 20.06.2011 & \hspace{0.6cm} 100 &   \\
 \hline
				
\end{tabular}
\end{center} 

\begin{tabular}{lp{3cm}}
\text{Дата выдачи задания} & \underline{\hspace{10.9cm}} & \\					 
\end{tabular}

\begin{tabular}{lp{5cm}}					 
\textbf{Руководители дипломного проектирования} & \underline{\hspace{6.2cm}} &\\ 
												&\underline{\hspace{6.2cm}} & \\
\end{tabular}

\begin{tabular}{lp{7cm}}
\text{Задание принял к исполнению (дата и подпись студента)} & \underline{\hspace{3cm}} &  \\
												&\underline{\hspace{3cm}} & \\
\end{tabular}
    
%   
    \LargeStretch
%
    \setcounter{page}{5}%
    \setcounter{footnote}{0}%
    % Колонтитулы
    \CreateHeaders
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ОТЗЫВ РУКОВОДИТЕЛЯ (ШАБЛОН)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\ReviewOfSupervisorTemplate}{
\section*{\MakeUppercase{Отзыв руководителя}}
\thispagestyle{empty}
\Lines{21}

\vspace{1.5cm}
\NormalStretch
\noindent\begin{tabular}[c]{p{7cm}p{3cm}p{6.8cm}}
&& \hfill\DateTemplate \\
& \rule{0.0cm}{1.5cm} & \\
\PrintSupervisorPost &  & \hfill\PrintSupervisorName
\end{tabular}
\LargeStretch
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ОТЗЫВ РУКОВОДИТЕЛЯ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{ReviewOfSupervisor}{
\section*{\MakeUppercase{Отзыв руководителя \break о прохождении практики}}
\thispagestyle{empty}
}
{
\par\vspace{1.5cm}
\NormalStretch
\noindent\begin{tabular}[c]{p{7cm}p{3cm}p{6.8cm}}
&& \hfill\DateTemplate \\
& \rule{0.0cm}{1.5cm} & \\
\PrintSupervisorPost &  & \hfill\PrintSupervisorName
\end{tabular}
\LargeStretch
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ЗАДАНИЕ НА УИР (Шаблон)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\TaskOfStudentTemplate}{
\section*{\MakeUppercase{ЗАДАНИЕ \break на практику}}
\thispagestyle{empty}
\Lines{17}

\vspace{1.5cm}
\NormalStretch
\noindent\hspace{5cm}\begin{tabular}[c]{p{5cm}p{6.8cm}}
& \hfill\DateTemplate \\
& \rule{0.0cm}{1.5cm} \\
& Студентка группы \PrintStudentGroup \\
& \PrintStudentName \\\cline{1-1}
& \rule{0.0cm}{1.5cm} \\
& \PrintSupervisorPost \\
& \PrintSupervisorName \\\cline{1-1}
\end{tabular}

\LargeStretch
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ЗАДАНИЕ НА УИР (Шаблон)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{TaskOfStudent}{
\section*{\MakeUppercase{ЗАДАНИЕ \break на практику}}
\thispagestyle{empty}
}
{
\vspace{1.5cm}
\NormalStretch
\noindent\hspace{5cm}\begin{tabular}[c]{p{5cm}p{6.8cm}}
& \hfill\DateTemplate \\
& \rule{0.0cm}{1.5cm} \\
& Студентка группы \PrintStudentGroup \\
& \PrintStudentName \\\cline{1-1}
& \rule{0.0cm}{1.5cm} \\
& \PrintSupervisorPost \\
& \PrintSupervisorName \\\cline{1-1}
\end{tabular}

\LargeStretch
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ШАБЛОН ДАТЫ И ЛИНИЯ ПОДЧЕРКИВАНИЯ ОТ ТЕКСТА ДО КОНЦА СТРОКИ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\DateFullTemplate}{<< \rule{7mm}{0.2mm} >> \rule{3cm}{0.2mm} 201\rule{4mm}{0.2mm}~г.}
\newcommand{\DateTemplate}{<< \rule{7mm}{0.2mm} >> \rule{3cm}{0.2mm}~\number\year~г.}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% НУМЕРАЦИЯ РАЗДЕЛОВ ДОКУМЕНТА
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{4}

\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]

\renewcommand\thesection      {\@arabic\c@section.}
\renewcommand\thesubsection   {\thesection\@arabic\c@subsection.}
\renewcommand\thesubsubsection{\thesubsection\@arabic\c@subsubsection.}
\renewcommand\theparagraph    {\thesubsubsection\@arabic\c@paragraph.}
\renewcommand\thesubparagraph {}

\newcommand{\StructureElement}[1]{
    \section*{\MakeUppercase{#1}}%\vspace{4mm}
    \addcontentsline{toc}{section}{#1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% РАЗДЕЛЫ ДОКУМЕНТА
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\section}{\@startsection{section}{1}{0pt}%
                                   {0.01mm}%{5mm \@plus -1mm \@minus -.2mm}%
                                   {3mm \@plus.2mm}%
                                   {\newpage\noindent\normalfont\normalsize\bfseries
                                   \centering
                                   \MakeUppercase}}
\newcommand{\subsection}{\@startsection{subsection}{2}{-1\parindent}%
                                     {0.01mm}%{-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.01mm}%{1.5ex \@plus .2ex}%
                                     {\indent\indent\normalfont\normalsize\bfseries}}
\newcommand{\subsubsection}{\@startsection{subsubsection}{3}{-1\parindent}%
                                     {0.01mm}%{-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.01mm}%{1.5ex \@plus .2ex}%
                                     {\indent\indent\normalfont\normalsize\bfseries}}
\newcommand{\paragraph}{\@startsection{paragraph}{4}{-1\parindent}%
                                    {0.01mm}%{3.25ex \@plus1ex \@minus.2ex}%
                                    {0.01mm}%{-1em}%
                                    {\indent\indent\normalfont\normalsize\bfseries}}
\newcommand{\subparagraph}{\@startsection{subparagraph}{5}{-1\parindent}%
                                      {0.01mm}%{3.25ex \@plus1ex \@minus .2ex}%
                                      {0.01mm}%{-1em}%
                                      {\indent\indent\normalfont\normalsize\bfseries}}

\newcommand{\Subitem}
{
    \@ifstar
    \@SubitemWithStar
    \@SubitemNoStar
}

\newcommand{\@SubitemWithStar}[1]
{
    \setcounter{subsubsection}{0}
    \setcounter{paragraph}{0}
    \addtocounter{subsection}{1}%
    \par\thesubsection~#1
    \par%
}

\newcommand{\@SubitemNoStar}
{
    \setcounter{subsubsection}{0}
    \setcounter{paragraph}{0}
    \addtocounter{subsection}{1}%
    \par\thesubsection~%
}


\newcommand{\Subsubitem}
{
    \@ifstar
    \@SubsubitemWithStar
    \@SubsubitemNoStar
}

\newcommand{\@SubsubitemWithStar}[1]
{
    \setcounter{paragraph}{0}
    \addtocounter{subsubsection}{1}%
    \par\thesubsubsection~#1
    \par%
}

\newcommand{\@SubsubitemNoStar}
{
    \setcounter{paragraph}{0}
    \addtocounter{subsubsection}{1}%
    \par\thesubsubsection~
}


\newcommand{\Paritem}
{
    \@ifstar
    \@ParitemWithStar
    \@ParitemNoStar
}

\newcommand{\@ParitemWithStar}[1]
{
    \addtocounter{paragraph}{1}%
    \par\theparagraph~#1
    \par%
}

\newcommand{\@ParitemNoStar}
{
    \addtocounter{paragraph}{1}%
    \par\theparagraph~
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ВЕРТИКАЛЬНЫЙ КЛЕЙ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{1.5}
\setlength\parskip{0\p@ \@plus \p@}

\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ПАРАМЕТРЫ РАЗМЕЩЕНИЯ РИСУНКОВ И ДР. НА СТРАНИЦЕ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ОТСТУПЫ СПИСКОВ (иерархически добавляются к предыдущему уровню)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength\leftmargini  {1.7\parindent}%{2.5em}
\leftmargin\leftmargini
\setlength\leftmarginii  {\parindent}%{2.2em}
\setlength\leftmarginiii {\parindent}%{1.87em}
%\setlength\leftmarginiv  {0.01mm}%{1.7em}
%\setlength\leftmarginv  {0.01mm}%{1em}
%\setlength\leftmarginvi {0.01mm}%{1em}

\setlength  \labelsep  {3mm}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}

\renewcommand{\@listI}{\topsep=0pt} % Удаление отступов между элементами списка

\let\old@itemize=\itemize
\def\itemize{\old@itemize
    \setlength{\itemsep}{0pt}
    \setlength{\parskip}{0pt}
    %\setlength{\leftskip}{0pt}
    \setlength\topsep{0pt}
}

\let\old@enumerate=\enumerate
\def\enumerate{\old@enumerate
    \setlength{\itemsep}{0pt}
    \setlength{\parskip}{0pt}
    %\setlength{\leftskip}{0pt}
    \setlength\topsep{0pt}
}
 
    \setlength\partosep{0pt}
    \setlength\parsep{0pt}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ФОРМАТЫ НОМЕРОВ СПИСКОВ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\theenumi{\@arabic\c@enumi}%{\@arabic\c@enumi}
\renewcommand\theenumii{\asbuk{enumii}}%{\@alph\c@enumii}
%\renewcommand\theenumiii{\@roman\c@enumiii}
%\renewcommand\theenumiv{\@Alph\c@enumiv}

\newcommand\labelenumi{\theenumi)}%{\theenumi.}
\newcommand\labelenumii{\theenumii)}%{(\theenumii)}
%\newcommand\labelenumiii{\theenumiii.}
%\newcommand\labelenumiv{\theenumiv.}

% \renewcommand\p@enumii{\theenumi}
% \renewcommand\p@enumiii{\theenumi(\theenumii)}
% \renewcommand\p@enumiv{\p@enumiii\theenumiii}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ШРИФТ НОМЕРОВ СПИСКОВ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\labelitemi{\normalfont\bfseries\textendash}
%\newcommand\labelitemii{\normalfont\bfseries \textendash}
%\newcommand\labelitemiii{\textasteriskcentered}
%\newcommand\labelitemiv{\textperiodcentered}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% СПИСОК ОПИСАНИЙ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% СПИСОК РАЗДЕЛОВ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\global\def\LinedSubitem[#1]#2
{
    \setcounter{subsubsection}{0}
    \addtocounter{subsection}{1}
    \newlength{\TxtWidth}%
    \settowidth{\TxtWidth}{\thesubsection~#2~}%
    % Добавить цикл вида
    % ПОКА \TxtWidth > \textwidth {\TxtWidth -= \textwidth}
    %
    \addtolength{\TxtWidth}{\parindent}%
    \par\thesubsection~#2~\rule{\textwidth - \TxtWidth}{0.2mm}%
    \newcounter{NumRows}%
    \setcounter{NumRows}{#1}%
    \loop\ifnum\c@NumRows>0 \addtocounter{NumRows}{-1}
    \rule{\textwidth}{0.2mm}\repeat
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ЛИНИИ ДЛЯ ЗАПОЛНЕНИЯ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\global\def\Lines#1
{
    \newcounter{NumRows}%
    \setcounter{NumRows}{#1}%
    \loop\ifnum\c@NumRows>0 \addtocounter{NumRows}{-1}
    \noindent\rule{\textwidth}{0.2mm}\repeat
}

\global\def\Lined[#1]#2
{
    \newlength{\TxtWidth}%
    \settowidth{\TxtWidth}{#2~}
    % Добавить цикл вида
    % ПОКА \TxtWidth > \textwidth {\TxtWidth -= \textwidth}
    %
    \par\noindent#2~\rule{\textwidth - \TxtWidth}{0.2mm}%  
    \newcounter{NumRows}%
    \setcounter{NumRows}{#1}%
    \loop\ifnum\c@NumRows>0 \addtocounter{NumRows}{-1}
    \rule{\textwidth}{0.2mm}\repeat
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% СНОСКИ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\@makefnmark{%
    \@textsuperscript{\normalfont\@thefnmark)}}
\renewcommand\footnoterule{%
    \kern-3\p@
    \hrule\@width 3cm
    \kern2.6\p@}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% АННОТАЦИЯ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{abstract}{\section*{\MakeUppercase{Аннотация}}}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% СОДЕРЖАНИЕ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\tableofcontents{%
    \section*{\MakeUppercase{Содержание}}
    \hyphenpenalty=5000
    \tolerance=10000
    \@starttoc{toc}%
    \hyphenpenalty=50
    \tolerance=1000
    \newpage
}

\newcommand\@pnumwidth{9mm}
\newcommand\@tocrmarg{10mm}
\newcommand\@dotsep{1}
\setcounter{tocdepth}{2}

\newcommand*\l@section{\vspace{2mm}\normalfont\bfseries\@dottedtocline{1}{0.01mm}{7mm}}%{1.5em}{2.3em}}
\newcommand*\l@subsection{\normalfont\@dottedtocline{2}{0.01mm}{11mm}}%{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\normalfont\@dottedtocline{3}{0.01mm}{15mm}}%{3.8em}{3.2em}}
\newcommand*\l@paragraph{\normalfont\@dottedtocline{4}{0.01mm}{0mm}}%{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\normalfont\@dottedtocline{5}{0.01mm}{0mm}}%{10em}{5em}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % ФОРМУЛЫ,РИСУНКИ, ТАБЛИЦЫ
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}

\newcounter{equation}[section]
\renewcommand\theequation{\thesection\@arabic\c@equation}

\newcommand{\Description}[1]{ \global\def\@Description{#1}}

\def\image[#1]#2{
    \noindent%
    \begin{center}
        \includegraphics[#1]{#2}
    \end{center}
}

\newcounter{figure}[section]
\gdef\thefigure{\thesection\@arabic\c@figure}
\def\fps@figure{!h}%{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Рисунок~\thefigure}

\newenvironment{figure}
               {\@float{figure}
                \def\@IsFigure{1}}
               {\end@float}
%\newenvironment{figure*}
%               {\@dblfloat{figure}}
%               {\end@dblfloat}

\newcounter{table}[section]
\gdef\thetable{\thesection\@arabic\c@table}
\def\fps@table{!h}%{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Таблица~\thetable}
\newenvironment{table}
               {\@float{table}
               \def\@IsFigure{0}}
               {\end@float}
% \newenvironment{table*}
%                {\@dblfloat{table}}
%                {\end@dblfloat}


\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ПОДПИСИ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\long\def\@makecaption#1#2{%
    \vskip\abovecaptionskip%
    %
    \ifnum\@IsFigure=1
        \renewcommand{\baselinestretch}{1.0}\normalsize
        \vspace{-0.4cm}
        \begin{center} \small
            \@Description\\
            #1~{\bfseries \textendash} #2
        \end{center}
        \renewcommand{\baselinestretch}{1.5}\normalsize
    \else
        \hspace{1.2cm}\small#1~{\bfseries \textendash} #2
    \fi%
    \vskip\belowcaptionskip%
}

% Для longtable
\LTcapwidth=\textwidth

\def\LT@makecaption#1#2#3{%
    \LT@mcol\LT@cols c{\hbox to\z@{\hss\parbox\LTcapwidth{%
    \sbox\small\@tempboxa{\hspace{1.2cm}#1{#2~{\bfseries \textendash} }#3}%
%     \ifdim\wd\@tempboxa>\hsize
%         #1{#2~{\bfseries \textendash} }#3%
%     \else
%         \hbox to\hsize{\box\@tempboxa\hfil}%
%     \fi
    \endgraf\vskip\belowcaptionskip}%
\hss}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ПРИЛОЖЕНИЕ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\appendix{
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \global\def\thesection{\MakeUppercase{\asbuk{section}.}}

   %%%% -------------- Сделать приложение в оглавлении ---------------------
}

\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}


\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}


\pagestyle{plain}
\pagenumbering{arabic}

\tabcolsep=2mm
\renewcommand{\rmdefault}{ftm}
\tolerance=1000
\setlength{\marginparwidth}{1.5cm}
\endinput

