% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Cảm Mến Hồng Ân" }
  composer = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c'' {
  \partial 4. r4.
  r8 b c a |
  e4 c8 (d) |
  e4 r8 b' |
  c8. c16 a8 a \bar ".|:"
  b4. g8 |
  a4 r |
  r8 a a a |
  d4. d8 |
  e4. e8 |
  c8. e16 c8 a |
  b2 ~ |
  b4 r |
  r2
  r4. c16 c |
  b8 a g a |
  e2 ~ |
  e4 r |
  r4. e16 e |
  f8 e a b |
  c2 ~ |
  c4 r |
  r4. c16 c |
  b8 a g a |
  e2 ~ |
  e4 r |
  r4. e16 e |
  c'8 c a c |
  b2 ~ |
  b4 r |
  r8 b16 b c8 a |
  e4 c8 (d) \bar ":|."
  <>^\markup { \halign #0.1 \fontsize #1 \bold "ĐỂ KẾT" }
  e4 r8 b' |
  c8. c16 a8 a |
  b4. g8 \bar "||"
  
  \key a \major
  a4 r |
  r8 a a a |
  d4. d8 |
  e4. cs8 |
  d e cs (b) |
  a2 ~ |
  a ~ |
  a ~ |
  a4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  \partial 4. r4.
  r8 b c a |
  e4 c8 (d) |
  e4 r8 b' |
  c8. c16 a8 a |
  gs4 e8 (d) |
  c c c c |
  f4. e8 |
  a4 b |
  c4. c8 |
  a8. b16 a8 a |
  gs2 ~ |
  gs4 r |
  r2
  r4. a16 a |
  gs8 e e d |
  c2 ~ |
  c4 r |
  r4. c16 c |
  d8 c f e |
  a2 ~ |
  a4 r |
  r4. a16 a |
  gs8 e e d |
  c2 ~ |
  c4 r |
  r4. c16 c |
  e8 a f a |
  <g e>2 ~ |
  <g e>4 r |
  r8 b16 b c8 a |
  e4 c8 (d) |
  e4 r8 gs |
  a8. a16 f8 a |
  gs4 e8 (d) |
  
  \key a \major
  cs8 cs cs cs |
  fs4. gs8 |
  fs4. fs8 |
  b4. a8 |
  fs fs e (d) |
  cs4 cs8 cs |
  fs4. d8 |
  e2 ~ |
  e4
}

nhacDiepKhucBas = \relative c' {
  d8 e c |
  a2 ~ |
  a8 gs a f |
  e d e4 |
  a, f' |
  e8 e e e |
  a2 ~ |
  a4 a8 (g) |
  f d g g |
  c,4 c8 c |
  f (e) d (f) |
  e2 ~ |
  e4 r8 a, |
  c b4 d8 |
  e2 ~ |
  e4 r |
  r4. d8 e8. e16 c8 a |
  a2 ~ |
  a4 r |
  r4. a'8 |
  c b4 d8 |
  e2 ~ |
  e4 r |
  r4. e,8 |
  a8. f16 d8 g |
  c,2 ~ |
  c4 r |
  r2
  r8 d'16 d e8 c |
  a2 ~ |
  a8 gs16 gs a8 f |
  e d e4 |
  a, f' |
  e8 e e e |
  
  \key a \major
  a2 ~ |
  a4 fs8 (e) |
  d d a' b16 (a) |
  gs4 e8 (fs) |
  <<
    {
      \voiceOne
      b8 b a (gs) |
      a4 a8 a |
      d4. b8 |
      cs2 ~ |
      cs4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      b,4 e |
      a,2 ~ |
      a ~ |
      a ~ |
      a4
    }
  >>
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  Con biết lấy gì cảm mến, con biết lấy gì cảm mến hồng ân.
  Một triều hồng ân chan chứa Chúa nhuần thắm cả đời con.
  \set stanza = "1."
  Chúa nắn con nên hình nên dạng.
  Và mời gọi nhập Dân thánh Chúa.
  Thánh hiến con trong Thần Linh Ngài.
  Và thành ánh sáng rọi khắp nơi.
  Nên con biết lấy gì cảm mến,
  con biết lấy gì cảm mến hồng ân.
  Trọn một vầng tim son sắt,
  nguyện yêu Chúa trọn đời.
  
}

loiDiepKhucAlto = \lyricmode {
  Con biết lấy gì cảm mến, con biết lấy gì cảm mến hồng ân.
  Một triều hồng ân, hồng ân chan chứa
  Chúa nhuần thắm cả đời con.
  \set stanza = "1."
  Chúa nắn con nên hình nên dạng.
  Và mời gọi nhập Dân thánh Chúa.
  Thánh hiến con trong Thần Linh Ngài.
  Và thành ánh sáng rọi khắp nơi.
  Nên con biết lấy gì cảm
  
  mến con biết lấy gì cảm mến hồng ân.
  Trọn một vầng tim
  trái tim son sắt,
  nguyện yêu Chúa trọn đời
  mà cảm mến hồng ân.
}

loiDiepKhucBas = \lyricmode {
  Con biết lấy gì, con biết lấy gì cảm mến Ngài Chúa ơi.
  Một triều hồng ân cả triều hồng ân chan hòa
  Ngài nhuần thấm đời con.
  \set stanza = "1."
  Từ trong lòng thân mẫu,
  âu yếm dắt con vào đời.
  Chọn con làm nhân chứng,
  thành muối mặn nồng ướp đời.
  Nên con biết lấy gì, nên con biết lấy
  
  gì cảm mến Ngài Chúa ơi.
  Trọn một vầng tim.
  Trọn một vầng tim sắt son
  mến yêu Chúa trọn đời
  mà cảm mến hồng ân.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  %page-count = #1
  print-page-number = #f
  system-system-spacing = #'((basic-distance . 15))
  %score-system-spacing = #'((basic-distance . 15))
}

TongNhip = {
  \key c \major \time 2/4
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
  \new ChoirStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 14)
                            (padding . 1))
  }
  <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
        \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
        \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
        \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
