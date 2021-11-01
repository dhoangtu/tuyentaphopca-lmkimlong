% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xin Theo Thầy" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c' {
  R2*2
  r4 r8 e |
  f c d f |
  g4 g8 g |
  f4. f8 |
  bf bf bf bf |
  g4. f8 |
  c' c c c |
  a4. f8 |
  d' d4 bf8 |
  c c r a |
  bf bf a f |
  g2 ~ |
  g4 f8 f |
  d4. d8 |
  g8. f16 f8 d |
  c4. c8 |
  f e g a |
  a4. f8 |
  bf g bf c |
  c8. c16 d8 c |
  a2 ~ |
  a8 bf g g |
  c4. a16 (g) |
  c,8 g' g16 [(a) e8] |
  f2 ~ |
  f4 \bar "|." \break
  
  f8 f |
  e4. e8 |
  a f f d |
  c4 g'8 g |
  f4. f8 |
  f a bf g |
  c2 ~ |
  c8 bf d d |
  c4 f,8 a |
  bf bf g4 ~ |
  g8 c, g' e |
  f2 ~ |
  f4 r \bar "||"
}

nhacPhienKhucAlto = \relative c' {
  R2*2
  r4 r8 e |
  f c d f |
  g4 g8 g |
  f4. f8 |
  f f f f |
  c4. d8 |
  g g g g |
  d4. d8 |
  f f4 f8 |
  e e r f |
  d d f d |
  e2 ~ |
  e4 f8 f |
  d4. d8 |
  g8. f16 f8 d |
  c4. c8 |
  a c c c |
  f4. f8 |
  g e g g |
  a8. a16 bf8 g |
  f2 ~ |
  f8 g f f |
  e4. d8 |
  bf bf bf bf |
  a2 ~ |
  a4
  
  
}

nhacPhienKhucBas = \relative c' {
  g8 a a g16 (f) |
  d4 \slashedGrace { f16 ( } g8) f |
  c2 ~ |
  c ~ |
  c4 bf'8 bf |
  a4. a8 |
  d, d d d |
  e4. f8 |
  e e e e |
  f4. d8 |
  bf bf4 d8 |
  c c r d |
  bf bf d f |
  c2 ~ |
  c4 f8 f |
  d4. d8 |
  g8. f16 f8 d |
  c4. r8 |
  R2*3
  r8 f e e |
  f8. f16 g8 f |
  d4. d8 |
  c d a (bf) |
  c4. c8 |
  <f f,>2 ~ |
  <f f,>4
  
  r4
  r c'8 bf |
  a8. a16 g8 f |
  e4 r |
  r f8 ef |
  d4. f8 |
  e g f e |
  d4 r |
  r8 c d f |
  g f e c |
  g' (a) bf g |
  a2 ~ |
  a4 r
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Con đã trọn niềm xin vâng:
  Xin theo Thầy dù khi thân con đơn độc,
  dù bao gian nguy vây bọc,
  Thầy bước tới dìu con đi,
  con quyết sắt son niềm tin.
  Xin theo Thầy, Thầy biết con đây yêu Thầy,
  Dù đôi lần con yếu đuối,
  lòng chân thành xin thống hối, con quyết theo Thầy.
  Chỉ mình Thầy có những lời ban phúc trường sinh.
  
  \set stanza = "1."
  Con nghe Thầy, dù đã thâu đêm lao nhọc,
  con nghe Thầy, vì Thầy con sẽ thả lưới,
  Thầy khiến mắt con được vui sướng ngắm trông thuyền cá đầy khoang.
}


loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 68 { _ }
  \set stanza = "2."
  Con theo Thầy dù phải hy sinh thân mình,
  con theo Thầy dù đường xa vắng mù tối,
  Thầy đến với con và nâng đỡ đức tin hèn yếu của con.
}


loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 68 { _ }
  \set stanza = "3."
  Con tin Thầy là Đấng muôn dân trông đợi,
  con tin Thầy thật là Con Chúa hằng sống,
  Thầy đã mến thương truyền con hãy tín trung gìn giữ đoàn chiên.
}


loiPhienKhucSopBon = \lyricmode {
  \repeat unfold 68 { _ }
  \set stanza = "4."
  Con yêu Thầy dù biết thân con đơn hèn,
  con yêu Thầy nguyện thề luôn mãi thành tín,
  Gặp lúc khó nguy, Thầy giơ sẵn cánh tay mà đỡ vực con.
}


loiPhienKhucBasMot = \lyricmode {
  Nghe tiếng Chúa kêu mời hãy theo Thầy.
  Xin theo Thầy dẫu khi thân con đơn độc,
  dẫu bao gian nguy vây bọc,
  Thầy bước tới dắt con đi con nguyện sắt son đức tin.
  Xin theo Thầy, Thầy biết con đây yêu Thầy.
  Con nguyện theo Thầy, con quyết theo Thầy,
  chỉ Thầy có những lời trường sinh.
  \set stanza = "1."
  Con nghe Thầy thâu đêm lao nhọc.
  Con nghe Thầy, con thả lưới khi nghe Thầy.
  Thầy cho con sướng vui trông được thuyền cá đầy khoang.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 59 { _ }
  \set stanza = "2."
  Con theo Thầy hy sinh thân mình.
  Con theo Thầy khi đường tối tăm mịt mù.
  Thầy mau nâng đỡ đức tin thật hèn yếu của con.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 59 { _ }
  \set stanza = "3."
  Con tin Thầy muôn dân trông đợi.
  Con tin Thầy Con Một Chúa Cả uy quyền.
  Thầy truyền con hãy tín trung mà chăn giữ đoàn chiên.
}

loiPhienKhucBasBon = \lyricmode {
  \repeat unfold 59 { _ }
  \set stanza = "4."
  Con yêu Thầy dẫu con đơn hèn.
  Con yêu Thầy con nguyện sẽ luôn trung thành.
  Thầy thương giơ sẵn cánh tay quyền uy đỡ vực con.
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  print-page-number = #f
  page-count = #2
  %systems-per-page = 6
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
}

% Đổi kích thước nốt cho bè phụ
notBePhu =
#(define-music-function (font-size music) (number? ly:music?)
   (for-some-music
     (lambda (m)
       (if (music-is-of-type? m 'rhythmic-event)
           (begin
             (set! (ly:music-property m 'tweaks)
                   (cons `(font-size . ,font-size)
                         (ly:music-property m 'tweaks)))
             #t)
           #f))
     music)
   music)

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -3 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBon
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBon
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}