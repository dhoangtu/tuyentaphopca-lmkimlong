% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Từ Lòng Vực Thẳm" }
  poet = "Ý: Tv. 129"
  composer = "Thơ dịch: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \autoPageBreaksOff
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \partial 4. r8 r4 |
  R2
  r8 g ^> g ^> g ^> |
  d'4. b!8 |
  \slashedGrace { b!16 ( } a4) r8 d |
  cs4 \tuplet 3/2 { cs8 d d } |
  a4 \tuplet 3/2 { a8 bf bf } |
  g4. f8 |
  e2 ~ |
  e4 r |
  r r8 d' |
  c4 \tuplet 3/2 { c8 d bf } |
  a4 \tuplet 3/2 { f'8 ^> f ^> f ^> } |
  d4 \tuplet 3/2 { e8 ^> e ^> e ^> } |
  cs2 |
  r8 b! ^> gs b |
  a2 ~ |
  a4 r \bar "|." \break
  
  \pageBreak
  
  \key d \major
  R2*2
  b8 b16 a e'8 d |
  cs4 \tuplet 3/2 { b8 b cs } |
  d4 \tuplet 3/2 { g,8 g a } |
  b4 \tuplet 3/2 { e,8 e fs } |
  g cs, e e |
  d2 ~ |
  d8 r r4 \bar "||"
  
  \key f \major
  R2
  r8 g bf bf |
  a4 \tuplet 3/2 { d8 bf bf } |
  bf4 \tuplet 3/2 { c8 a a } |
  a4 r8 a |
  
  \pageBreak
  
  g f f16 (g) f8 |
  e2 ~ |
  e8 a g <d' bf> |
  <cs a>2 ~ |
  <cs a>4 r \bar "||" \break
  
  \key d \major
  R2*2
  b8 a16 d fs,8 g |
  a4 \tuplet 3/2 { d,8 e fs } |
  g4 \tuplet 3/2 { e8 fs g } |
  a4 \tuplet 3/2 { fs8 g a } |
  b b a4 |
  e' (d8 cs) |
  d2 ~ |
  d4 r \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  a8 ^> a ^> a ^> |
  f'4. f8 |
  d2 ~ |
  d4 a'8 (g) |
  fs4 r8 f! |
  e4 \tuplet 3/2 { e8 d d } |
  c4 \tuplet 3/2 { d8 f f } |
  d4. d8 |
  cs2 ~ |
  cs4 r8 a' |
  g4 \tuplet 3/2 { g8 a f } |
  e4. g8 |
  f4 \tuplet 3/2 { a8 ^> a ^> a ^> } |
  bf4 \tuplet 3/2 { bf8 ^> bf ^> bf ^> } |
  a2 |
  r8 gs ^> e d |
  cs2 ~ |
  cs4 r |
  
  \key d \major
  fs8 fs16 d g8 fs |
  e4 d ~ |
  d g8 (fs) |
  e4 \tuplet 3/2 { g8 g a } |
  b4 \tuplet 3/2 { e,8 e fs } |
  g4 \tuplet 3/2 { cs,8 cs d } |
  e a, cs cs |
  d2 ~ |
  d8 d f! f |
  
  \key f \major
  e4 c |
  d2 ~ |
  d4 \tuplet 3/2 { f8 g d } |
  d4 \tuplet 3/2 { e8 f c } |
  c4 cs8 cs |
  d2 ~ |
  d8 d e d |
  cs4 d8 (f) |
  d2 ~ |
  d4 r |
  
  \key d \major
  a'8 g16 b e,8 g |
  a4 fs8 (e) |
  d4. e16 (d) |
  cs4 \tuplet 3/2 { b8 cs d } |
  e4 \tuplet 3/2 { cs8 d e } |
  fs4 \tuplet 3/2 { d8 e fs } |
  g g e (d) |
  g2 |
  fs2 ~ |
  fs4 r
}

nhacDiepKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  r8 r4 |
  r8 d ^> d ^> d ^> |
  bf'4 g8 g |
  fs4. g8 |
  d4 r8 d |
  a'4 \tuplet 3/2 { g8 f f } |
  e4 \tuplet 3/2 { f8 d d } |
  bf4. d8 |
  a4 r8 a' |
  g4 \tuplet 3/2 { g8 a f } |
  e8. (d16) c8 (b!) |
  c4 \tuplet 3/2 { c8 c c } |
  d4 \tuplet 3/2 { d8 ^> d ^> d ^> } |
  g4 \tuplet 3/2 { g8 ^> g ^> g ^> } |
  a4. a8 ^> |
  d,4 ^>
  <<
    {
      \voiceOne
      e8 (gs)
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      e4
    }
  >>
  \oneVoice
  <a a,>2 ~ |
  <a a,>4 r |
  
  \key d \major
  R2
  a8 a16 fs b8 a |
  g4. g8 |
  a4 r |
  \tuplet 3/2 { g8 g b } c!4 |
  \tuplet 3/2 { e,8 e g } a8. fs16 |
  e4. <g a,>8 |
  <fs d>2 ~ |
  <fs d>8 r r4 |
  
  \key f \major
  r8 e a a |
  g4. g8 |
  f4 \tuplet 3/2 { d8 e f } |
  g4 \tuplet 3/2 { c,8 d e } |
  f4 a8 a |
  d,4 d8 d |
  g4. g8 |
  a4 bf8 (g) |
  a2 ~ |
  a4 r |
  
  \key d \major
  R2
  fs8 e16 a d,8 fs |
  g4 b |
  a r |
  \tuplet 3/2 { e8 fs g } a4 |
  \tuplet 3/2 { fs8 g a } b a |
  g4 g8 (fs) |
  e4 a |
  <a d,>2 ~ |
  <a d,>4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Từ lòng vực thẳm kêu lên Chúa ơi nghe tiếng siết rên,
  nghe tiếng siết rên nghẹn ngào.
  Lắng nghe bao tiếng kêu gào.
  Nếu Chúa chấp tội, nếu Chúa chấp tội ai nào đứng yên.
  Tôi trông cậy Chúa tôi liên vì Ngài dung thứ,
  vì Ngài dung thứ,
  vì Ngài dung thứ tiền khiên muôn đời.
  Hồn tôi hy vọng, hy vọng vào Ngài, hy vọng vào Ngài.
  Tôi tin tưởng ở muôn lời, muôn lời Chúa ban.
  Như tuần tráng vọng hừng đông,
  Hồn tôi trông Chúa,
  hồn tôi trông Chúa,
  hồn tôi trông Chúa hết lòng Chúa ơi!
}

loiDiepKhucAlto = \lyricmode {
  Từ lòng vực thẳm, Chúa ơi, kêu lên Chúa ơi
  nghe tiếng siết rên, nghe tiếng siết rên nghẹn ngào.
  Lắng nghe bao tiếng kêu gào,
  kêu gào.
  Nếu Chúa chấp tội,
  nếu Chúa chấp tội ai nào đứng yên.
  Tôi trông cậy Chúa tôi liên
  cậy Chúa liên vì Ngài dung thứ,
  vì Ngài dung thứ, vì Ngài dung thứ tiền khiên muôn đời.
  Hồn tôi hy vọng vào Ngài, hy vọng vào Ngài,
  hy vọng vào Ngài.
  Tôi tin tưởng tin tưởng muôn lời Chúa ban.
  Như tuần tráng vọng hừng đông Chúa ơi,
  Chúa ơi
  Hồn tôi trông Chúa, hồn tôi trông Chúa,
  hồn tôi trông Chúa hết lòng Chúa ơi!
}

loiDiepKhucBas = \lyricmode {
  Từ lòng vực thẳm, từ vực thẳm kêu lên Ngài ơi
  nghe tiếng siết rên, nghe tiếng siết rên nghẹn ngào.
  Lắng nghe bao tiếng kêu gào nghẹn ngào,
  bao lời nghẹn ngào.
  Nếu Chúa chấp lỗi,
  nếu Chúa chấp lỗi ai nào đứng yên.
  Tôi trông cậy Chúa tôi liên
  cậy liên vì Ngài dung thứ,
  vì Ngài dung thứ nhân từ
  <<
    { muôn }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
      ngàn
    }
  >>
  đời.
  Hồn tôi hy vọng, hy vọng, hy vọng vào Ngài,
  hy vọng vào ngài.
  Tôi tin tưởng ở muôn lời, muôn lời Chúa ban.
  Như tuần tráng vọng hừng đông Chúa ơi
  Hồn tôi trông Chúa hồn tôi trông Chúa hết lòng,
  hết lòng Chúa ơi!
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
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
  print-page-number = #f
  %page-count = #1
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
