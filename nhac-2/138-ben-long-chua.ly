% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bên Lòng Chúa" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \partial 4 f8 g |
  d d c4 |
  a'4. f8 |
  bf4 a |
  g2 ~ |
  g8 f g a |
  bf4 bf8 bf |
  bf d c4 |
  a a8 f |
  f bf a4 |
  g4. e8 |
  f g d4 |
  c4. c8 |
  g'4 e8 e |
  f4 r8 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  f8 g |
  d d c4 |
  a'4. f8 |
  d4 f |
  e2 ~ |
  e8 d e f |
  g4 f8 f |
  g bf g4 |
  f e8 d |
  d f f4 |
  e4. e8 |
  f g d4 |
  c4. c8 |
  d4 c8 bf |
  a4 r8
}

nhacDiepKhucBas = \relative c {
  r4 |
  R2
  r4 r8 d |
  bf4 b! |
  c8 c d e |
  f4 c8 (a) |
  g4 d'8 d |
  g, g' e4 |
  f cs8 d |
  bf bf b!4 |
  c r |
  r r8 f |
  e (d) c4 |
  b! c8 c |
  f4 r8
}

nhacPhienKhucSop = \relative c' {
  \partial 8 e8 |
  f8 f a e |
  d4. c8 |
  f f e g |
  a4. bf8 |
  bf bf bf (a) |
  g4. c8 |
  f g d16 (f) d8 |
  c4. c8 |
  g g f e |
  f4 \bar "||"
}

nhacPhienKhucBas = \relative c' {
  r8 |
  r4 r8 a |
  bf bf bf bf |
  a4. e8 |
  f f f ef |
  d4 r |
  r8 f e cs |
  d e bf b! |
  c4 e8 (f) |
  bf, g bf c |
  a4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Con nép thân bên lòng Chúa,
  lạy Chúa Giê -- su,
  Hồn con nao nức cảm nghiệm lòng Chúa nhân hiền,
  nếm ngọt tình Chúa vô biên và thâm tín trọn niềm:
  Thực Chúa là tình yêu.
}

loiDiepKhucBas = \lyricmode {
  lạy Vua Giê -- su, Hồn con nao nức
  sao được cảm mến lòng Chúa dịu hiền,
  nghiệm trót tình Ngài vô biên
  trót niềm tin: Ngài là tình yêu.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Vì yêu con Chúa thân tình
  gọi con lên đường theo Chúa,
  chính Chúa đã biến con trở thành ngư phủ chuyên cần
  chài lưới các linh hồn liên.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Này con vui bước theo Ngài mà không do dự toan tính
  dẫu uống chén đắng cay,
  dẫu chịu phép rửa theo Ngài,
  tình mến vẫn luôn nồng say.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Ngày đêm vui sống bên Ngài, ngụp sâu trong tình thân ái,
  với Chúa đến khắp nơi,
  vẫy gọi, thức tỉnh muôn người tìm đến Thánh Tâm nghỉ ngơi.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Vì yêu con Chúa thương tình gọi con
  biến con trở thành, biến con trở thành ngư phủ
  chuyên cần để chài mọi linh hồn liên.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Này con vui bước theo Ngài mà không lo toan
  dẫu nhận uống chén đắng cay
  hay rửa theo Ngài, khấn nguyện tình luôn thắm say.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Ngày đêm vui sống bên Ngài,
  ngụp sâu trong ân tình Ngài,
  khắp nơi vẫy gọi thức tỉnh mọi người
  ước nguyện thánh tâm nghỉ ngơi.
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 5\mm
  bottom-margin = 5\mm
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
  page-count = #1
  %systems-per-page = 5
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
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
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice = beSop {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
    \new Staff
      <<
      \new Voice = beBas {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

