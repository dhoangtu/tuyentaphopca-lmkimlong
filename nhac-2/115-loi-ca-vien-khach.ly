% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lời Ca Viễn Khách" }
  poet = "Thơ: Xuân Ly Băng"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \partial 4. r8 r4 |
  r8 e b'8. a16 |
  a4. g8 |
  e' e4 cs8 |
  cs4. d16 d |
  a4 g8 c |
  b4. b8 |
  a2 ~ |
  a4 r8 \bar "||" \break
  
  \key bf \major
  bf8 |
  bf4. a16 c |
  d4 r8 c |
  c4. a16 bf |
  g4 \tuplet 3/2 { g8 g f } |
  f8. f16 \tuplet 3/2 { g8 f f } |
  ef2 ~ |
  ef8 bf' \tuplet 3/2 { g8 bf g } |
  a8. g16 \tuplet 3/2 { a8 g g } |
  fs2 ~ |
  fs4 r \bar "||" \break
  
  \key g \major b4 \tuplet 3/2 { b8 as b } |
  c4. c8 |
  a a4 c8 |
  b4 r8 d, |
  d g fs (g) |
  a4. e8 |
  e fs4 d8 |
  g2 \bar "||" \break
  
  d'4 \tuplet 3/2 { d8 d cs } |
  d4. g,8 |
  a d,4 g16 (a) |
  b4. g8 |
  c b4 d8 |
  e4 e8 e |
  a,4. fs8 |
  g2 ~ |
  g4 r8 \bar "||" \break
  
  \key bf \major
  g8 |
  fs4. a8 |
  g4 \tuplet 3/2 { c8 d bf } |
  a4 r8 a16 bf |
  g4 \tuplet 3/2 { g8 f f } |
  ef4 r8 d16 bf' |
  a8. a16 \tuplet 3/2 { g8 c d } |
  d4. b!16 b |
  b!4. a8 |
  a d g,16 (a) \slashedGrace { fs16 (} g8) |
  fs2 \bar "||" \break
  
  \partial 8 g8 |
  g4. fs16 a |
  g4. bf8 |
  a8. c16 c8 bf |
  bf4 r8 c16 c |
  c4. a8 |
  a a4 d8 |
  g,4 r8 g16 f |
  f4. f8 |
  f ef4 f8 |
  d4 r8 bf'16 g |
  a4. a8 |
  ef' ef4 d8 |
  d2 ~ |
  d8 \bar "||" \break
  
  \key g \major
  r8 r4 |
  r8 e, b'8. a16 |
  a4. g8 |
  e' e4 cs8 |
  cs4. d16 d |
  a4 g8 c |
  b4. b8 |
  a2 ~ |
  a4 r |
  r \tuplet 3/2 { c8 b c } |
  d4. c8 |
  e4 \tuplet 3/2 { e8 e c } |
  c4 \tuplet 3/2 { d8 d b } |
  b4. c16 c |
  a4. d,8 |
  b' a4 a8 |
  g2 ~ |
  g4 r \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  r8 r4 |
  r8 e g8. g16 |
  fs4. g8 |
  b b4 g8 |
  e4. g16 g |
  g8 fs e e |
  g4. g8 |
  fs2 ~ |
  fs4 r8
  r8
  R2*10
  
  \key g \major
  g4 \tuplet 3/2 { g8 fs g } |
  a4. a16 (g) |
  fs8 fs4 fs8 |
  g4 r8 d |
  c b d (e) |
  c4. c8 |
  cs d4 cs8 |
  b2
  
  b'4 \tuplet 3/2 { b8 a g } |
  fs4. e8 |
  c b4 e8 |
  ds4. e8 |
  fs g4 g8 |
  g4 g8 g |
  fs4 (e8) d |
  d2 ~ |
  d4 r8
  
  r8
  R2*10
  r8
  R2*13
  r8
  
  \key g \major
  r8 r4 |
  r8 e8 g8. g16 |
  fs4. g8 |
  b b4 g8 |
  e4. g16 g |
  g8 fs e e |
  g4. g8 |
  fs2 ~ |
  fs4 r |
  r \tuplet 3/2 { a8 g a } |
  b4. g8 |
  g4 \tuplet 3/2 { g8 g e } |
  e4 \tuplet 3/2 { fs8 fs d } |
  d4. e16 e |
  d4. d8 |
  d e4 c8 |
  b2 ~ |
  b4 r
}

nhacPhienKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  b8 e8. d16 |
  d2 ~ |
  d8 d ^> d b16 (a) |
  g4 e ^> |
  a8 a a, b |
  cs d e a, |
  g4. g8 |
  d'2 ~ |
  d4 r8
  r8
  R2*18
  
  g4 \tuplet 3/2 { fs8 fs e } |
  d4. e8 |
  fs g4 c,8 |
  b4. e8 |
  d g4
  <<
    {
      b8 |
      c4 c8 c |
      c4. c8 |
      <b g>2 ~ |
      <b g>4
    }
    {
      g8 c,4 c8 c |
      d4. d8 |
      g,2 ~ |
      g4
    }
  >>
  r8
  r8 |
  R2*10
  r8
  R2*13
  r8
  
  b'8 e8. d16 |
  d2 ~ |
  d8 d ^> d b16 (a) |
  g4 e ^> |
  a8 a a, b |
  cs d e a, |
  g4. g8 |
  d'2 ~ |
  d8 d c' b |
  a4. a8 |
  g8. a16 g8 fs |
  e4 \tuplet 3/2 { e8 e g } |
  a4 \tuplet 3/2 { d,8 d fs } |
  g4. g16 g |
  fs4. fs8 |
  g8 c,4 d8 |
  g,2 ~ |
  g4 r
}

% Lời
loiPhienKhucSop = \lyricmode {
  Dừng bước chi đây kìa ánh sáng ngày về
  đang tưng bừng trời mến yêu vô tận.
  \set stanza = "Solo:"
  Bâng khuâng người viễn khách lưu ly bao tháng ngày
  với gió heo may khi lá thu rơi rụng.
  Với trăng sáng trời mây tô núi sông thơ mộng.
  \set stanza = "Duo:"
  Nhưng tôi là viễn khách mang nặng tình cố hương.
  Tàu đời lên một chuyến chở rặt mối sầu thương.
  
  Tôi đi trong thời gian về bến đời vĩnh viễn.
  Hồn ơi đừng trìu mến chút cát bụi dọc đàng.
  \set stanza = "Solo:"
  Hoa đẹp lá tươi thơm ngát hương trời.
  Muôn cánh vàng bướm ong bay lượn
  nhạc véo von chim ngàn trong nắng sớm.
  Ôi bâng khuâng khi thanh sắc chảy vào hồn.
  \set stanza = "Solo:"
  Mây ơi và gió ơi!
  Hỡi hoa thắm là xanh tươi.
  Buông ta ra này còi tàu náo động.
  Tiếng quê hương vang phương trời cao rộng.
  Nhắc hồn ta hồn viễn khách xa quê.
  
  Dừng bước chi đây kìa ánh sáng ngày về
  đang tưng bừng trời mến yêu vô tận.
  Sao dừng chi đây hồn hỡi ánh sáng ngày về,
  ánh sáng ngày về đang tưng bừng trời mến yêu vô tận.
}

loiPhienKhucAlto = \lyricmode {
  Dừng bước chi đây kìa ánh sáng ngày về
  đang tưng bừng
  tưng bừng mến yêu vô tận.
  Nhưng tôi là viễn khách mang nặng tình cố hương.
  Tàu đời lên một chuyến chở rặt mối sầu thương.
  
  Tôi đi trong thời gian về bến đời vĩnh viễn.
  Hồn ơi đừng trìu mến chút cát bụi dọc đàng.
  
  Dừng bước chi đây kìa ánh sáng ngày về
  đang tưng bừng
  tưng bừng mến yêu vô tận.
  Sao dừng chi đây hồn hỡi ánh sáng ngày về,
  ánh sáng ngày về đang tưng bừng trời mến yêu vô tận.
}

loiPhienKhucBas = \lyricmode {
  Dừng bước chi đây ánh sáng ngày về
  kìa ánh sáng ngày về đang tưng bừng mến yêu vô tận.
  
  Tôi đi trong thời gian về bến nơi vĩnh viễn.
  Hồn ơi đừng trìu mến chút cát bụi dọc đàng.
  
  Dừng bước chi đây ánh sáng ngày về
  kìa ánh sáng ngày về đang tưng bừng mến yêu vô tận.
  Dừng bước chi đây sao dừng bước đây hồn hỡi
  ngời rạng trời quê, ngời rạng trời quê
  đang tưng bừng trời mến yêu vô tận.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 17\mm
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
  page-count = #3
  %ragged-bottom = ##t
  ragged-last-bottom = ##t
}

TongNhip = {
  \key g \major \time 2/4
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
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    %{
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -3 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      \new NullVoice = beAlto \nhacPhienKhucAlto
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
      >>
    %}
    \new Staff <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}