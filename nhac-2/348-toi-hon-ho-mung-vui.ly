% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Tôi Hớn Hở Mừng Vui" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
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

nhacDiepKhucSop = \relative c'' {
  a8 c f, e16 (f) |
  g2 ~ |
  g8 g a b! |
  c2 ~ |
  c4 r |
  R2
  r8 a a bf16 (a) |
  g4 f8 f a e4 g8 |
  g bf4 g8 |
  c4 c8 c |
  f8. e16 f8 e |
  d2 ~ |
  d4 c8 c |
  c4. a8 |
  bf4 g8 g |
  \slashedGrace { g16 ( } a2) |
  a8 c f, e16 (f) |
  g2 ~ |
  g8 g a b! |
  c2 ~ |
  c4 r |
  R2
  r8 a a bf16 (a) |
  g4 f8 f |
  a e4 g8 |
  g bf4 g8 |
  c4 r8 c, |
  a'8. bf16 g8 g |
  f2 ~ |
  f4 r \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  R2
  r8 g16 (f) d8 d |
  e4. f8 |
  e2 ~ |
  e4 r |
  R2
  r8 f f g16 (f) |
  e4 f8 f |
  a e4 g8 |
  g bf4 g8 |
  c4 g8 g |
  c8. c16 d8 c |
  b!2 ~ |
  b4 g8 g |
  a4. g8 |
  f4 e8 e 
  f2 |
  f4 r |
  r8 g16 (f) d8 d |
  e4. f8 |
  e2 ~ |
  e4 r |
  R2
  r8 f f g16 (f) |
  e4 f8 f |
  a e4 g8 |
  g bf4 g8 |
  c4 r8 c, |
  c8. d16 e8 e |
  f2 ~ |
  f4 r
}

nhacDiepKhucBas = \relative c' {
  R2
  r8 c16 (d) b!8 b |
  c4. g8 |
  a2 |
  a8 a d d16 (c) |
  g8. bf16 c8 d |
  c2 ~ |
  c4 f,8 f |
  a e4 g8 |
  g bf4 g8 |
  c4 c8 bf |
  a8. a16 f8 fs |
  g4. a8 |
  g f e4 |
  f2 |
  g4 c8 c, |
  f2 ~ |
  f4 r |
  r8 c'16 (d) b!8 b |
  c4. g8 |
  a2 |
  a8 a d d16 (c) |
  g8. bf16 c8 d |
  c2 ~ |
  c4 f,8 f |
  a e4 g8 |
  g bf4 g8 |
  c4 r8 e, |
  f8. <f bf,>16 <c' c,>8 <bf c,> |
  <a f f,>2 ~ |
  <a f f,>4 r
}

nhacPhienKhuc = \relative c'' {
  \partial 4 a8. c16 |
  f,8 d16 (f) g8 g |
  a4 d8. c16 |
  d8 f c d16 (c) |
  g2 ~ |
  g4 g8 g |
  e8. c16
  <<
    {
      f8 g |
      a4. g8 |
      d'8. d16 b!8 b |
      c2
    }
    {
      bf,8 c |
      f4. e8 |
      f8. f16 g8 g |
      e2
    }
  >>
}

% Lời
loiDiepKhucSop = \lyricmode {
  Tôi hớn hở mừng vui
  Mừng vui trong Chúa
  Trong Thiên Chúa tôi
  Vì Ngài đã mặc cho tôi áo phần rỗi
  Và choàng áo công chính cho tôi.
  Như tân nương trang sức bằng ngọc bảo
  Tôi hớn hở mừng vui
  mừng vui trong Chúa
  Trong Thiên Chúa tôi
  Vì Ngài đã làm cho tôi những kiệt tác
  vì danh thánh cao quang Ngài.
}

loiDiepKhucAlto = \lyricmode {
  hớn hở mừng vui
  trong Chúa
  Trong Thiên Chúa tôi
  Vì Ngài đã mặc cho tôi áo phần rỗi
  Và choàng áo công chính cho tôi.
  Như tân nương trang sức bằng ngọc bảo
  Tôi hớn hở mừng vui trong Chúa
  Trong Thiên Chúa tôi
  Vì Ngài đã làm cho tôi những kiệt tác
  vì danh thánh cao quang Ngài.
}

loiDiepKhucBas = \lyricmode {
  Hớn hở mừng vui trong Chúa
  Và lòng tôi hoan hỉ trong Thiên Chúa tôi
  Vì Ngài đã mặc cho tôi áo phần rỗi
  và choàng áo công bình cho tôi
  cũng như tân nương trang sức với ngọc bảo.
  Hớn hở mừng vui trong Chúa
  Và lòng tôi hoan hỉ trong Thiên Chúa tôi
  Vì Ngài đã làm cho tôi những kiệt tác
  vì danh thánh cao quang Ngài.
}

loiPhienKhucMot = \lyricmode {
  Như đất làm nẩy bông đâm nhánh
  Như vườn cho kết hạt sinh mầm
  Chúa khiến ngươi trổ hoa công chính
  Rạng rỡ trước mặt ngàn dân.
}

loiPhienKhucHai = \lyricmode {
  Đây tới ngày trổ sinh công chính
  Như hừng đông xuât hiện huy hoàng
  Đấng Cứu tinh của ngươi đi tới
  Tựa đuốc sáng rực mọi nơi.
}

loiPhienKhucBa = \lyricmode {
  Muôn nước được hỷ hoan chiêm ngưỡng
  Muôn vị vương đế cùng trông nhìn
  Đức chính trung của ngươi cao sáng
  Ngàn kiếp vẫn còn hiển vang.
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
  %page-count = #2
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
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
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
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff
      <<
      \new Voice = beSop {
        \TongNhip \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
    \new Lyrics \lyricsto beSop \loiPhienKhucBa
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
