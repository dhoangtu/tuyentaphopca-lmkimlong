% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hương Xuân 1" }
  poet = "Thơ: Lm. Xuân Ly Băng"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 8 c8 |
  c c d16 f d8 |
  c8. d16 b8 a |
  <g e c>4 r |
  R2 \break
  
  r8. f16 d'8 bf |
  c2 ~ |
  c8 a a16 (g) f (g) |
  c2 ~ |
  c4 r8 c |
  c c d16 (f) d8 |
  c8. bf16 bf8 a |
  g2 ~ |
  g ~ |
  g4 r |
  r8. d'16 d8 bf |
  c2 ~ |
  c8 a16 (g) f8 g |
  c2 ~ |
  c4 r8 c |
  d16 (f) d (c) g8 bf |
  c a16 (g) c,8 e |
  f2 ~ |
  f4 r8 \bar "||" \break
  
  c' |
  a (g) r8 a |
  f (e) f (g) |
  c,4. c8 |
  f (e) f (g) |
  a (g) r8 e16 (f) |
  c8 (g) f' (g) |
  f2 ~ |
  f4 r8 c' |
  c4. ef8 |
  ef (c) g c |
  g4 r8 f |
  f (e) f (g) |
  a (g) r8 e16 (f) |
  g,8 (c) e (f16 a) |
  g2 ~ |
  g4 r |
  R2*2 \break
}

nhacDiepKhucAlto = \relative c' {
  r8 |
  R2*4
  r8. f16 bf8 g |
  a4 g |
  f r |
  r8 a16 a a8 a |
  bf g16 g g8 g |
  a4. bf8 |
  a8. g16 g8 f |
  f8. c16 g'8 f |
  e2 ~ |
  e4 r |
  r8. bf'16 bf8 g |
  a4 g |
  f r |
  r8. a16 g8 a |
  bf8. g16 f8 g |
  a8. g16 e8 f |
  f c bf bf |
  a2 ~ |
  a4 r8
  
  r8 |
  r c'16 c a8 r |
  R2
  r8 c16 c g8 c |
  a r r4 |
  r8 g16 g c8 r |
  R2
  r8 a4 a8 |
  a a a r |
  r g g4 ~ |
  g r |
  r8 c a4 ~ |
  a r |
  r8 bf g4 ~ |
  g r |
  r8 bf g bf |
  c4 r8 c |
  c4. (ef8) |
  c4 g8 c |
  g4. f8 |
  f (e) f (g) |
  c,4. \slashedGrace { c16 (} e8) |
  f g c (a16 g) |
  \slashedGrace { f16 (e } f4.) \slashedGrace { c16 (} e8) |
  f8 g c (bf16 g) |
  \slashedGrace { f16 (e } f2) ~ |
  f4 \bar "|."
}

nhacDiepKhucTenor = \relative c' {
  r8 |
  R2*22
  r4.
  r8 r e16 e f8 r |
  R2
  r8 f16 f e8 g |
  f r r4 |
  r8 f16 f e8 r |
  R2
  r8 c4 c8 |
  d d c r |
  r c c4 ~ |
  c r |
  r8 g' f4 ~ |
  f4 r |
  r8 f e4 ~ |
  e r |
  r8 g f f |
  e4 r8 a |
  g2 |
  a4 d,8 d |
  bf4. d8 |
  c4 a |
  g4. c8 |
  c f e4 |
  d4. c8 |
  c f e4 |
  c2 ~ |
  c4
}

nhacDiepKhucBas = \relative c {
  r8 |
  f r bf, r |
  a r g4 |
  c r8 c |
  c8. c16 g'8 e |
  f2 ~ |
  f8. e16 e8 e |
  f4 r |
  r8 f16 f f8 f |
  g e16 e e8 e |
  f4. e8 |
  f8. g16 bf8 bf |
  c2 ~ |
  c4 r8 c, |
  c8. g'16 g8 e |
  f2 ~ |
  f8. e16 e8 e |
  f4 r |
  r8. f16 e8 f |
  g8. e16 d8 f |
  f4. <g d>8 |
  <a c,> <f c> <e c> <g c,> |
  <f c f,>2 ~ |
  <f c f,>4 r |
  r8 c16 c f8 r |
  R2
  r8 a16 a c8 c, |
  f r r4 |
  r8 d16 d c8 r |
  R2
  r8 f4 f8 |
  f f f r |
  r c c4 ~ |
  c r4 |
  r8 e f4 ~ |
  f r |
  r8 g c4 ~ |
  c r |
  r8 f, g g |
  c,4 r8 f |
  ef4 (c) |
  f f8 f |
  g4. g8 |
  a4 f |
  e4. c8 |
  a d c4 |
  d4. a'8 |
  <a a,> <bf d,> <c c,>4 |
  <a f>2 ~ |
  <a f>4
}

% Lời
loiDiepKhucSop = \lyricmode {
  \override Lyrics.LyricText.font-series = #'bold
  Intr. \repeat unfold 10 { _ }
  \revert Lyrics.LyricText.font-series
  Đọng thắm cười duyên, chim câu đã gáy.
  Chim câu đã gáy bên hiên, bên hiên rộn ràng.
  Ánh sáng thiều quang ô kìa xuân đến.
  Xuân đến dâng ngàn hương thơm,
  dâng ngàn hương thơm.
  Sáng nay tiếng nhạc ca dồn,
  buồn ly hương lắng trong hồn mênh mang.
  Bâng khuâng thắp nén lòng hương lòng,
  dâng kính cầu khấn, dâng dòng thơ yêu.
}

loiDiepKhucAlto = \lyricmode {
  Đọng thắm cười duyên, thắm duyên
  ơ chim câu đã gáy, ơ chim câu đã gáy bên hiên,
  bên hiên rộn ràng, đã gáy rộn ràng.
  Ánh sáng thiều quang, ánh quang
  ô kìa xuân đến, ô kìa xuân đến dâng ngàn hương thơm,
  dâng ngàn hương thơm.
  tinh tinh tang
  tinh tinh tinh tinh tang tinh tinh tang
  ơ mênh mông, mênh mông bâng khuâng
  thắp hương khấn cầu dâng dòng thơ yêu.
  Ma -- ri -- a, Mẹ yêu kiều,
  xin cho con Mẹ (là) bao nhiêu phúc lành,
  (là) bao nhiêu phúc lành.
}

loiDiepKhucTenor = \lyricmode {
  tinh tinh tang
  tinh tinh tinh tinh tang tinh tinh tang
  ơ mênh mông, ơ mênh mông bâng khuâng
  thắp hương khấn cầu dâng dòng thơ yêu.
  Ma -- ri --a, Mẹ yêu kiều,
  xin cho con Mẹ (là) bao nhiêu phúc lành,
  (là) bao nhiêu phúc lành.
}

loiDiepKhucBas = \lyricmode {
  \repeat unfold 5 { _ }
  Cành đào đọng thắm cười duyên,
  cành đào cười duyên ơ chim câu đã gáy,
  ở chim câu đã gáy bên hiên, bên hiên rộn ràng.
  Đầy trời ánh sáng thiều quang
  đầy trời thiều quang ô kìa xuân đến,
  ô kìa xuân đến hương thơm,
  dâng ngàn hương thơm.
  tinh tinh tang tinh tinh tinh tinh tang
  tinh tinh tang
  ơ mênh mông, mênh mông bâng khuâng
  niệm hương khẩn cầu dâng thơ yêu kiều.
  Ma -- ri -- a, Mẹ yêu kiều,
  xin giúp con Mẹ (là) bao nhiêu phúc lành,
  (là) bao nhiêu phúc lành.
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
  %page-count = #1
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
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef treble
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucAlto
        { \notBePhu -2 \nhacDiepKhucTenor }
      \new NullVoice = beAlto \nhacDiepKhucAlto
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
