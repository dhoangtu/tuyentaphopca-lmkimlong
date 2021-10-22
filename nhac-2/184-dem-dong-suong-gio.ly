% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Đêm Đông Sương Gió" }
  composer = "Lm. Kim Long"
  tagline = ##f
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

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \partial 4 \tuplet 3/2 { a8 a a } |
  d4 \tuplet 3/2 { a8 a a } |
  g4 \tuplet 3/2 { a8 a a } |
  d,2 ~ |
  d4 r |
  R2*2
  r4 r8 d' |
  b! (a) fs (g) |
  \slashedGrace { b!16 ( } a4.) d8 |
  b! (a) g (fs) |
  d2 ~ |
  d4 r |
  r r8 fs' |
  e8. e16 cs8 cs |
  d4. b!8 |
  b! d4 b8 |
  a4 fs'8 fs |
  e4 cs8 cs |
  d2 ~ |
  d4 r |
  r8 f, f e |
  d a' g8. b!16 \bar "||"
  
  \key d \major
  a4 r8 fs' |
  e e fs e16 (d) |
  b4. d8 |
  b8. b16 d8 b |
  a2 ~ |
  a4 r |
  R2
  r4 b8 d |
  e e e16 (fs e d) |
  b8 a cs (e) |
  d2 ~ |
  d4 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \tuplet 3/2 { a8 a a } |
  d4 \tuplet 3/2 { a8 a a } |
  g4 \tuplet 3/2 { a8 a a } |
  d,2 ~ |
  d4 r |
  R2*2
  R2
  r8 cs16 cs d8 r |
  r cs16 cs d8 r |
  r d16 d b!8 r |
  R2*2
  r4 r8 d' |
  a8. a16 g8 g |
  fs4. fs8 |
  g bf4 g8 |
  fs4 a8 a |
  bf4 a8 g |
  fs2 ~ |
  fs4 r |
  r8 f f e |
  d a' g8. b!16 |
  
  \key d \major
  a4 r8 d |
  cs cs d [a] |
  d,4. a'8 |
  g8. g16 e8 d |
  cs2 ~ |
  cs4 cs8 e |
  fs fs fs16 (a fs e) |
  d4. a'8 |
  g8 a b4 |
  e,8 e g4 |
  fs2 ~ |
  fs4
}

nhacPhienKhucTenor = \relative c' {
  \set Staff.printKeyCancellation = ##f
  r4 |
  a2 |
  bf4 a8 g |
  f4 d8. d16 |
  a8 a a a |
  f'4 f8. f16 |
  d8 d d d |
  a'2 |
  r8 a16 a a8 r |
  r a16 g d8 r |
  r f16 f g8 r |
  r4 d8. d16 |
  f8 e d a' |
  a2 ~ |
  a4 a8 a |
  b!4 cs8 (d) |
  d d ([e]) cs |
  d4 d8 d |
  e4 a,8 a |
  a2 ~ |
  a4 d,8. d16 |
  d8 f f e |
  d a' g8. b!16 |
  
  \key d \major
  a4 r8 d, |
  a' a a as |
  b4. fs8 |
  g8. g16 g8 gs |
  a2 ~ |
  a4 r |
  r fs8 a |
  b b b16 (d b a) |
  g4 fs8 (g) |
  a2 |
  a ~ |
  a4
}

nhacPhienKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  r4 |
  d2 ~ |
  d4 cs |
  d d8. d16 |
  a8 a a a |
  f'4 f8. f16 |
  d8 d d d |
  a'2 |
  r8 a16 a d,8 r |
  r8 a16 a bf8 r |
  r d16 d g,8 r |
  r4 d'8. d16 |
  f8 e d a' |
  a2 ~ |
  a4 a,8 a |
  d2 ~ |
  d ~ |
  d4 d8 d |
  g4 a8 a, |
  d2 ~ |
  d4 d8. d16 |
  d8 f f e |
  d a' g8. b!16 |
  
  \key d \major
  a4 r8 d, |
  a' a a as |
  b4. fs8 |
  g8. g16 g8 gs |
  a2 ~ |
  a4 r |
  r fs8 a |
  b b b16 (d b a) |
  g4 fs8 (g) |
  a4. a,8
  _\markup { "rủ" }
  |
  d2 ~ |
  d4
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Đêm đông sương gió, trăng sao lu mờ, mây trôi lững lờ.
  \set stanza = "1."
  Bỗng đâu rực sáng khắp trên khung trời.
  Lắng nghe đây mục đồng ơi:
  Nơi hang đá cơ cùng Đấng Cứu Tinh vừa hạ sinh.
  Lớp lớp thiên thần chung lời xướng ca:
  Sáng danh Thiên Chúa trên trời,
  sáng danh Thiên Chúa trên trời.
  Và bình an cho những người được Chúa thương.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 12 { _ }
  \set stanza = "2."
  Chính Con Một Chúa giáng sinh trên đời.
  Bóng đêm nay đã tàn phai
  nơi nơi hết u hoài ánh sáng lên ngợp trần ai.
  Tiếp nối muôn người luôn cùng xướng ca:
}

loiPhienKhucAltoMot = \lyricmode {
  Đêm đông sương gió, trăng sao lu mờ, mây trôi lững lờ.
  la la la la la la la la la
  Lắng nghe đây mục đồng ơi:
  Nơi hang đá cơ cùng Đấng Cứu Tinh vừa hạ sinh.
  Lớp lớp thiên thần chung lời xướng ca:
      
  Sáng danh Thiên Chúa trên trời,
  sáng danh Thiên Chúa trên trời.
  Và bình an cho những người
  vĩnh an cho những người được Chúa thương.
}

loiPhienKhucAltoHai = \lyricmode {
  \repeat unfold 21 { _ }
  Bóng đêm nay đã tàn phai
  nơi nơi hết u hoài ánh sáng lên ngợp trần ai.
  Tiếp nối muôn người luôn cùng xướng ca:
}

loiPhienKhucTenorMot = \lyricmode {
  Hm __ _ _ _ _
  Canh khuya đoàn mục đồng ngồi đó bên nhau
  chụm ngọn lửa sưởi ấm.
  La la la la la la la la la
  Rộn ràng tiếng thiên thần loan tin:
  Mục đồng ơi! (Nơi hang đá cơ cùng)
  Đấng Cứu Tinh đã hạ sinh.
  Rồi hàng hàng lớp lớp thiên thần chung lời xướng ca:
  Rạng danh Thiên Chúa trên trời,
  rạng danh Thiên Chúa trên trời.
  Và bình an cho những người được Chúa thương.
}

loiPhienKhucTenorHai = \lyricmode {
  \repeat unfold 5 { _ }
  Qua bao ngày đợi chờ thổn thức đêm nay về dạt dào hồng phúc.
  La la la la la la la la la
  Trời và đất giao hòa reo vui:
  Đã tàn phai (nơi nơi hết u hoài) ánh sáng lên ngợp trần ai.
  Đời lại đời tiếp nối muôn người luôn cùng xướng ca:
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 20\mm
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

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoHai
    >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef "bass"
        \new Voice \TongNhip \partCombine 
        \nhacPhienKhucTenor
        \notBePhu -2 { \nhacPhienKhucBas }
      \new NullVoice = beTenor \nhacPhienKhucTenor
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenorMot
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenorHai
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
