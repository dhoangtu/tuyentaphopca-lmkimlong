% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bạn Tình Ta Ơi" }
  composer = "Ý: Diễm Ca"
  %arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopAMot = \relative c' {
  \key g \major \time 3/4
  \partial 4 \tuplet 3/2 { b8 d g } |
  g4. fs8 g a |
  b4. b8 \tuplet 3/2 { c b a } |
  e4. a8 \tuplet 3/2 { b a g } |
  d4. e16 (d) \tuplet 3/2 { b8 d g } |
  g2
}

nhacPhienKhucTenorAMot = \relative c' {
  \key g \major \time 3/4
  \partial 4 r4 |
  \tuplet 3/2 { b8 b c } d4 r |
  \tuplet 3/2 { g,8 g a } b4 r |
  \tuplet 3/2 { b8 c b } a4. a8 |
  fs g a2 |
  \stemDown b2
}

nhacPhienKhucBasAMot = \relative c' {
  \key g \major \time 3/4
  \partial 4 r4 |
  \tuplet 3/2 { g8 g a } b4 r |
  \tuplet 3/2 { e,8 e fs } g4 r |
  \tuplet 3/2 { g8 a g } c,4. cs8 |
  d b d2 |
  <d g,>2 \bar "||"
}

nhacPhienKhucSopB = \relative c'' {
  \set Score.currentBarNumber = #6
  \key g \major \time 2/4
  \partial 4 r4 |
  R2
  r8 g fs g |
  a4 b8 a ~ |
  a4 r |
  r4 fs8 (g) |
  a4 g8 ^> (a) |
  b a _> b _> c _> |
  d2 ~ |
  d8 e e cs |
  d2 ~ |
  d8 c c a |
  b2 ~ |
  b8 c -> r c -> |
  r c -> fs, fs |
  g2 ~ |
  g4 \bar "|."
}

nhacPhienKhucAltoB = \relative c' {
  \key g \major \time 2/4
  \partial 4 r4 |
  R2
  r8 e8 d b |
  e4 g8 fs ~ |
  fs4 r |
  R2 |
  r8 e g4 ^> |
  fs r |
  r8 fs ^> g ^> a ^> |
  b2 ~ |
  b8 g g e |
  fs2 ~ |
  fs8 a a fs |
  g4 fs ^> |
  e ^> d8 c |
  b2 ~ |
  b4
}

nhacPhienKhucBasB = \relative c' {
  \key g \major \time 2/4
  \partial 4 b8 ^> c ^> |
  d4 ^> b8 g ~ |
  g4 d8 (e) |
  cs4 cs8 d ~ |
  d d ^> e ^> fs ^> |
  g4 r |
  r8 c, e4 -> |
  d r |
  r8 d -> e -> fs -> |
  g2 ~ |
  g8 b b g |
  a2 ~ |
  a8 fs fs ds |
  e4 d ^> |
  c ^> d8 d |
  <g g,>2 ~ |
  <g g,>4
}

% Lời phiên khúc
loiPhienKhucSopAMot = \lyrics {
  \set stanza = "1."
  Bạn tình ta ơi
  Bạn kiều diễm lắm
  Xinh thắm như bông hồng,
  thơm nức muôn hương nồng
  Hỡi bạn tình ta ơi
}

loiPhienKhucSopAHai = \lyrics {
  \set stanza = "2."
  - - - -
  Kìa bạn đi tới
  Như ánh dương huy hoàng
  chân bước trên cung đàn
  - - - - -
}

loiPhienKhucSopABa = \lyrics {
  \set stanza = "3."
  - - - -
  Lời bạn êm ái
  Tha thiết như cung đàn
  cao vút trên mây ngàn
  - - - - -
}

loiPhienKhucBasAMot = \lyrics {
  \set stanza = "1."
  Bạn tình ta ơi
  Bạn kiều diễm lắm
  xinh thắm bông hồng
  Hỡi bạn tình ta ơi
}

loiPhienKhucBasAHai = \lyrics {
  \set stanza = "2."
  - - - -
  Kìa bạn đi tới
  như ánh huy hoàng
  - - - - -
}

loiPhienKhucBasABa = \lyrics {
  \set stanza = "3."
  - - - -
  Lời bạn êm ái
  tha thiết cung đàn
  - - - - -
}

loiPhienKhucSopB = \lyrics {
  Nương đồi trổ hoa thắm tươi
  Bạn ơi,
  bạn ơi nào mau đi tới
  Hãy tới cùng ta
  Hãy tới cùng ta
  hỡi, hỡi, hỡi bạn tình ta.
}

loiPhienKhucAltoB = \lyrics {
  Nương đồi trổ hoa thắm tươi
  Này bạn hỡi
  Nào mau đi tới
  hãy tới cùng ta
  hãy tới cùng ta
  hỡi, hỡi bạn tình ta.
}

loiPhienKhucBasB = \lyrics {
  Mùa xuân đến ngang trời
  trổ hoa đẹp tươi
  Từ Li -- ba -- nô,
  này bạn hỡi
  nào mau đi tới
  hãy tới cùng ta
  hãy tới cùng ta
  hỡi hỡi bạn tình ta.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 8\mm
  bottom-margin = 8\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  page-count = 1
}

TongNhip = {
  \key g \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
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
        \new Voice = "beSopA" {
          \clef treble \TongNhip \nhacPhienKhucSopAMot
        }
        \new Lyrics \lyricsto beSopA \loiPhienKhucSopAMot
        \new Lyrics \lyricsto beSopA \loiPhienKhucSopAHai
        \new Lyrics \lyricsto beSopA \loiPhienKhucSopABa
      >>
    \new Staff <<
      \new Voice {
        \clef bass
          \TongNhip \partCombine \nhacPhienKhucTenorAMot \nhacPhienKhucBasAMot
      }
      \new NullVoice = nhacThamChieuTenorAMot \nhacPhienKhucTenorAMot
      \new Lyrics \lyricsto nhacThamChieuTenorAMot \loiPhienKhucBasAMot
      \new Lyrics \lyricsto nhacThamChieuTenorAMot \loiPhienKhucBasAHai
      \new Lyrics \lyricsto nhacThamChieuTenorAMot \loiPhienKhucBasABa
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSopB" {
        \clef treble \nhacPhienKhucSopB
      }
      \new Lyrics \lyricsto beSopB \loiPhienKhucSopB
      >>
    \new Staff <<
      \new Voice = "beAltoB" {
        \clef treble \TongNhip \nhacPhienKhucAltoB
      }
      \new Lyrics \lyricsto beAltoB \loiPhienKhucAltoB
    >>
    \new Staff <<
      \new Voice = "beBassB" {
        \clef bass \TongNhip \nhacPhienKhucBasB
      }
      \new Lyrics \lyricsto beBassB \loiPhienKhucBasB
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  }
}
