% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Nhìn Về Chúa" }
  poet = "Tv. 122"
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
  d2 ~ |
  d4 e8 d |
  cs4 a ~ |
  a8 g f e |
  d4 r8 d' |
  e e cs4 |
  d4. d8 |
  c c bf4 |
  a r |
  <<
    {
      a2 ^( |
      a4)
    }
    \notBePhu -2 {
      e4 ^(\stemDown a8 g |
      \stemNeutral
      f4)
    }
  >>
  e'8 e |
  <<
    {
      \voiceOne
      d4 (e8 d) |
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      a8 ([g] f4)
    }
  >>
  \oneVoice
  cs'4 d8 d |
  a4. bf8 |
  g g f (g) |
  a4 bf8 a16 (g) |
  e4. e8 |
  f g4 a8 |
  d,2 \bar "|." \break
  
  r4 a'8 a |
  d d a8. bf16 |
  g2 |
  g8 g a a |
  f4 e8 g |
  f (e) d d |
  cs4 r8 d |
  a bf a d |
  e4. e8 |
  e8. g16 a8 f16 (g) |
  a4. a8 |
  f8. g16 a8 e |
  d2 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  f8. e16 f8 g |
  a4 <bf g> |
  <a e> f ~ |
  f8 e d cs |
  d4 r8 f |
  bf bf a (g) |
  f4. f8 |
  g8 g g4 |
  f r |
  cs2 ( |
  d4) g8 bf |
  % không thể dùng partcombine
  % phải chuyển thành 2 giọng trên bè Sop
  \skip 2
  e,4 d'8 d |
  a4. bf8 |
  g g f (g) |
  a4 bf8 a16 (g) |
  e4. e8 |
  d d4 cs8 |
  d2
}

nhacDiepKhucBas = \relative c {
  r4 d8. a16 |
  f'8 f e e |
  a2 ~ |
  a4 r |
  r8 bf d bf |
  g4 a |
  r8 d, c d |
  e4 (d8 e) |
  f4 r8 e |
  a a a4 |
  d,4. c8 |
  f e f (g) |
  a4 d8 d |
  a4. bf8 |
  g g f (g) |
  a4 bf8 a16 (g) |
  e4. e8 |
  <<
    {
      a a4 g8 |
      f2
    }
    {
      a,8 a4 a8 |
      d2
    }
  >>
}

% Lời
loiDiepKhucSop = \lyricmode {
  A __ \repeat unfold 3 { _ }
  Chúa đang ngự trên trời.
  Như mắt những bầy tôi nhắm tay ông chủ hoài.
  A __ Những ngước trông hoài.
  Mắt chúng con những luôn trông về Chúa
  tới khi nào Ngài rủ thương đoái nhìn.
  
  Xin thương xót chúng con Chúa ơi.
  Xin thương xót chúng con vì chúng con bao ê chề.
  Linh hồn tủi sầu cay đắng
  vì bọn an thân phỉ báng
  lũ người kiêu hãnh khi thường.
}

loiDiepKhucBas = \lyricmode {
  Con hằng ngước mắt nhìn về Chúa.
  Như mắt những bầy tôi trông bàn tay chủ mãi.
  Tựa mắt những nữ tỳ nhìn tay bà chủ mãi.
  Mắt chúng con những luôn trông về Chúa
  tới khi nào Ngài rủ thương đoái nhìn.
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}