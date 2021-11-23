% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Từ Trước Muôn Đời" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \key bf \major
  R2*4
  g8 bf a (g) | \break
  fs4 g8 (a) |
  fs8 d g bf |
  a2 ~ |
  a4 d8 bf |
  c d c (bf) |
  a4. a8 |
  c c bf c |
  d2 |
  r8 ef ef ef |
  d4 c8. c16 |
  c8 c d bf |
  a4 a8 bf |
  d, d a' bf16 (a) |
  g2 ~ |
  g4 \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  \key bf \major
  r4
  \set fontSize = #-2
  <<
    {
      d8 bf |
      c4 c8 a |
      bf8. c16 bf8 a
    }
    {
      bf8 g |
      ef4 a8 ef |
      d8. ef16 <g ef>8 <fs c>
    }
  >>
  <<
    \new Voice = "splitpart" {
      \voiceTwo
      \set fontSize = #-2
      <g d bf>2 ^( |
      <g d bf>4)
    }
    {
      \set fontSize = #0
      \voiceOne
      r4 ef |
      \once \override NoteColumn.force-hshift = #1.2
      d2 _(
    }
  >>
  \oneVoice
  d8) c bf4 |
  a4 r8 d |
  ef4 ef8 g |
  fs4 r |
  r8 g g4 |
  fs2 ~ |
  fs8 a g a |
  bf2 |
  r8 g g g |
  fs4 g8. g16 |
  fs8 a g g |
  ef4 ef8 c |
  bf bf c c |
  bf2 ~ |
  bf4
}

nhacPhienKhucTenor = \relative c' {
  \key bf \major
  \skip 2*3
  \set fontSize =-2
  g2 
  \once \hide
  ~ |
  g4
  \set fontSize =0
  fs8 g |
  d2 ~ |
  d4 r8 g |
  g4 g8 c |
  a4 r |
  r8
  \once \override Stem.visible = ##f
  d
  \stemDown
  \once \override Stem.length = #10
  ef4 |
  d2 ~ |
  d4 r |
  r8 d g, bf |
  c8. c16 c8 c |
  a4 g8. g16 |
  a8 fs g g |
  a4 a8 a |
  g g fs fs |
  g2 ~ |
  g4
}

nhacPhienKhucBas = \relative c' {
  \key bf \major
  \set fontSize =-2
  g2 |
  c, |
  d |
  <<
    {
      \voiceOne
      \set fontSize =-2
      <g \once \hide \=1^( g, \=2_( >2 |
      <g \=1^) g, \=2_) >4
    }
    
    \new Voice {
      \voiceOne
      \once \override NoteColumn.force-hshift = #1.5
      g2 _~ |
      \once \override NoteColumn.force-hshift = #1.5
      g4
    }
    
  >>
  \oneVoice
  fs8 g |
  d2 ~ |
  d4 r8 bf |
  c4 c8 ef |
  d4 r |
  r8
  \once \override Stem.length = #15
  bf
  \once \stemDown c4 |
  d2 ~ |
  d4 r |
  r8 g ef d |
  c8. c16 c8 c |
  d4 ef8. ef16 |
  d8 c bf bf |
  c4 c8 c |
  d d d d |
  g,2 ~ |
  g4
}

nhacDiepKhucSop = \relative c'' {
  \key g \major
  \partial 4 r4 |
  r b8 b16 b |
  c8 a d e |
  e4. e8 |
  c c d16 (e) d8 |
  b4. b8 |
  d, d b'16 (c) b8 |
  a2 ~ |
  a4 r |
  r b8 b16 b |
  c8 a d e |
  e4. e8 |
  c c d16 (e) d8 |
  b4. b8 |
  d, d a'16 (b) a8 |
  g2 ~ |
  g4 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  \key g \major
  r4 |
  d8 d16 d g4 ~ |
  g8 g fs g |
  c4. b8 |
  g g g16 (b) a8 |
  g4. d8 |
  d c b g' |
  fs2 ~ |
  fs4 r |
  d8 d16 d g4 ~ |
  g8 g fs g |
  c4. b8 |
  g g g16 (b) a8 |
  g4. d8 |
  c b e c |
  b2 ~ |
  b4
}

nhacDiepKhucTenor = \relative c' {
  \key g \major
  r4 |
  r g8 g16 g |
  c4 r |
  r8 c d e |
  e4. e8 |
  d g, b16 (c) b8 |
  a a d16 (e) d8 |
  d2 ~ |
  d4 r |
  r g,8 g16 g |
  c2 |
  r8 c d e |
  e4. d8 |
  d g, b16 (c) b8 |
  a g g fs |
  g2 ~ |
  g4
}

nhacDiepKhucBas = \relative c' {
  \key g \major
  g8 g16 g |
  fs4 (e) |
  a r |
  r8 g a b |
  c4. fs,8 |
  g d g16 (a) g8 |
  fs fs g g |
  d2 ~ |
  d8 d g g16 g |
  fs4 (e) |
  a2 |
  r8 g a b |
  c4. fs,8 |
  g d g16 (a) g8 |
  fs g c, d |
  g,2 ~ |
  g4
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Từ trước muôn đời Chúa rủ tình thương mến con.
  Chúa gọi con giữa muôn người,
  chọn con nên bạn tâm phúc.
  Chúa thánh hiến con sai con đi gieo rắc Tin Mừng
  loan báo mùa hồng ân khắp nơi.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Từ chốn tro bụi Chúa đã gọi con bước lên,
  Dẫu đời con rất đơn hèn mà nay ơn Ngài thương đến
  Chúa thánh hiến con
  cho con nên nhân chứng Nước Trời
  luôn chiếu rọi tình thương khắp nơi.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Ngài lấy than hồng thanh tẩy hồn con trắng trong,
  Phú vào con Thánh Linh Ngài
  và ban dư đầy ân phúc.
  Chúa thánh hiến con
  cho con nên quang ánh gian trần,
  nên muối mặn nồng ướp thế nhân.
}

loiPhienKhucAltoMot = \lyricmode {
  \markup { \bold "Intr." }
  \repeat unfold 8 { _ }
  \set stanza = "Ca đoàn:"
  Hm __ _ _ _ _
  \set stanza = "1."
  Rủ tình thương mến con giữa muôn người,
  nên bạn tâm phúc.
  Chúa thánh hiến con
  sai con đi gieo rắc Tin Mừng
  loan báo mùa hông ân khắp nơi.
}

loiPhienKhucAltoHai = \lyricmode {
  \repeat unfold 14 { _ }
  \set stanza = "2."
  đà gọi con bước lên
  rất đơn hèn mà nay ơn Ngài thương đến
  Chúa thánh hiến
  con cho con nên nhân chứng Nước Trời
  luôn chiếu rọi tình thương khắp nơi.
}

loiPhienKhucAltoBa = \lyricmode {
  \repeat unfold 14 { _ }
  \set stanza = "3."
  tẩy hồn con trắng trong
  Thánh Linh Ngài và ban dư đầy ân phúc.
  Chúa thánh hiến con cho con nên quang ánh gian trần,
  nên muối mặn nồng ướp thế nhân.
}

loiPhienKhucBasMot = \lyricmode {
  \repeat unfold 3 { _ }
  Hm __ _ _ _
  \set stanza = "1."
  Rủ tình thương mến con
  giữa muôn người
  Chúa đã dủ tình mà thánh hiến con
  sai con đi gieo rắc Tin Mừng,
  loan báo mùa hông ân khắp nơi.
}
loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 7 { _ }
  \set stanza = "2."
  đà gọi con bước lên
  rất đơn hèn.
  Chúa đã dủ tình mà thánh hiến con,
  cho con nên nhân chứng Nước Trời
  luôn chiếu rọi tình thương khắp nơi.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 7 { _ }
  \set stanza = "3."
  tẩy hồn con trắng trong
  Thánh Linh Ngài.
  Chúa đã dủ tình mà thánh hiến con,
  cho con nên quang ánh gian trần,
  nên muối mặn nồng ướp thế nhân.
}

loiDiepKhucSop = \lyricmode {
  Đây con xin đến thực thi ý Chúa,
  Trót cả hồn xác con
  này quyết phụng sự Chúa trung kiên.
  Xin cho con sớm chiều nương bóng Chúa,
  nép mình ở thánh cung Ngài,
  nếm ngọt tình Chúa vô biên.
}

loiDiepKhucAlto = \lyricmode {
  Đây con xin đến thực thi ý Chúa
  Trót cả hồn xác con
  này quyết phụng sự Chúa trung kiên.
  Xin cho con sớm chiều nương bóng Chúa
  nép mình ở thánh cung Ngài,
  nếm ngọt tình Chúa vô biên.
}

loiDiepKhucTenor = \lyricmode {
  Đây con xin đến thực thi ý Chúa
  từ nay hồn xác quyết phụng sự Chúa trung kiên
  Xin cho con sớm
  được nương bóng Chúa chẳng ngơi
  và mãi nếm ngọt tình Ngài vô biên.
}

loiDiepKhucBas = \lyricmode {
  Đây con xin nguyện đến thực thi ý Chúa
  từ nay hồn xác quyết phụng sự Chúa trung kiên
  Nguyện xin cho con chiều sớm
  được nương bóng Chúa chẳng ngơi
  và mãi nếm ngọt tình Ngài vô biên.
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
  page-count = #3
  %systems-per-page = 5
}

TongNhip = {
  \time 2/4
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
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacPhienKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoHai
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoBa
    >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef bass
        \new Voice \TongNhip \partCombine 
          \nhacPhienKhucTenor
          \nhacPhienKhucBas
        \new NullVoice = beBas \nhacPhienKhucBas
        \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
        \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
        \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
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
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacDiepKhucTenor
        }
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
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
    \override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

