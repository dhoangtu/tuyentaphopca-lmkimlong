% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mẹ Lên Trời" }
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
  \partial 4 r4 |
  r g8 ^(b) |
  c4 \tuplet 3/2 { c8 b c } |
  d4. e8 |
  e4 \tuplet 3/2 { c8 f e } |
  d4. d8 |
  a4 \tuplet 3/2 { b8 c a } |
  g a f f |
  e4 r |
  r g8 (b) |
  a4 \tuplet 3/2 { c8 b c } |
  d4. e8 |
  e4 \tuplet 3/2 { c8 f e } |
  d4. d8 |
  a4 \tuplet 3/2 { b8 c a } |
  g g d' b |
  c2 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r4 |
  r g8 _([f]) |
  e4 \tuplet 3/2 { e8 f e } |
  g4. g8 |
  g4 \tuplet 3/2 { a8 d c } |
  b4. g8 |
  c,4 \tuplet 3/2 { e8 e f } |
  c c c b |
  c4 r |
  r g'8 ([f]) |
  e4 \tuplet 3/2 { e8 f e } |
  g4. g8 |
  g4 \tuplet 3/2 { a8 d c } |
  b4. g8 |
  c,4 \tuplet 3/2 { e8 e f } |
  c c f f |
  e2
}

nhacDiepKhucBas = \relative c' {
  b8 c |
  g4 e8 (d) |
  c4 \tuplet 3/2 { c'8 g c } |
  b g ^> a ^> b ^> |
  c4 \tuplet 3/2 { a8 f fs } |
  g e ^> f ^> g ^> |
  a4 \tuplet 3/2 { g8 a f } |
  e (d) g4 |
  a b8 c |
  g4 e8 (d) |
  c4 \tuplet 3/2 { c'8 g c } |
  b g ^> a ^> b ^> |
  c4 \tuplet 3/2 { a8 f fs } |
  g e ^> f ^> g ^> |
  a4 \tuplet 3/2 { g8 a f } |
  e e d g |
  <g c,>2
}

nhacPhienKhucSop = \relative c'' {
  c8 b a b16 (a) |
  g4. g8 |
  e'8. e16 e8 c |
  d d r d |
  b8. b16 c8 a |
  g g4. |
  g8 f e f16 (e) |
  d4. d8 |
  a'8. a16 a8 fs |
  g g r g |
  b8. b16 a8 g |
  c2 ~ |
  c4 \bar "||"
}

nhacPhienKhucBas = \relative c'' {
  c8 b a b16 (a) |
  g4. g8 |
  c8. c16 c8 a |
  g g r fs |
  g8. g16 a8 f |
  e e4. |
  g8 f e f16 (e) |
  d4. d8 |
  c8. c16 cs8 d |
  b b r e |
  d8. g16 f8 f |
  e2 ~ |
  e4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Đẹp như trăng vàng trong sáng chói lói tựa ánh thái dương.
  Uy hùng như những binh đoàn xếp hàng vào trận.
  Trần gian nghiêng mình cung kính khắp chốn hợp tiếng tôn vinh.
  Thiên đình nao nức ca mừng Mẹ rất hiển vinh.
}

loiDiepKhucBas = \lyricmode {
  Mẹ lên trời đẹp tựa trăng vàng trong sáng và luôn chói lói
  tựa vầng thái dương và luôn uy dũng
  như những binh đoàn vào trận.
  Mẹ lên trời thế trần nghiêng mình cung kính
  và đây khắp chốn hợp lời tôn vinh
  và đây thiên quốc nao nức ca mừng Mẹ rất hiển vinh.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Chúng con xin kết lời hợp tiếng với thế trần nơi nơi
  tán tụng Mẹ hiển vinh về trời.
  Ánh tôn nhan sáng ngời tà áo lấp lánh tựa trăng sao
  Mẹ tiến bước lên trời cao.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Chúa yêu thương giữ gìn hồn xác thánh khiết Mẹ tươi xinh
  suốt đời chẳng nhiễm vương tội tình.
  Với cung lòng tinh tuyền Mẹ đón chính Chúa Trời quang lâm
  mặc lấy xác thân phàm nhân.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Chắp đôi tay khấn cầu từ giữa kiếp sống đầy thương đau
  ước nguyện Mẹ xuống ơn nhiệm mầu.
  Giúp chúng con vững lòng gìn giữ mãi xác hồn trinh trong
  về tới bến bờ chờ mong.
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\pageBreak

\score {
  \new ChoirStaff <<
      \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucBas }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucMot
      \new Lyrics \lyricsto beSop \loiPhienKhucHai
      \new Lyrics \lyricsto beSop \loiPhienKhucBa
      >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
