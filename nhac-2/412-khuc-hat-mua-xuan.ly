% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Khúc Hát Mùa Xuân" }
  poet = "Thơ: Lm. Xuân Ly Băng"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  R2
  \repeat volta 2 {
    R2
    r8 d g b |
    d8. d16 e8 c ~ |
    c cs d e |
    a,2 ~ |
    a4 r |
    R2*2
    b8. b16 a8 c ~ |
    c c e, fs
  }
  \alternative {
    {
      g2 ~ |
      g4 r
    }
    {
      g2 ~ |
      g4 r
    }
  }
  \break
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  r4 d'8 (ef) |
  d2 ~ |
  d8 c d bf |
  a2 |
  g8 ef4 g16 (a) |
  d8. a16 a8 c16 (d) \bar "||"
  
  \key g \major
  g,4 r8 g |
  e8. e16 b' (c) b8 |
  a4 r8 c |
  c cs d4 ~ |
  d8 b16 (a) d,8 fs |
  g2 ~ | \break
  g4 r \bar "|."
  
  R2
  r8 a c4 ~ |
  c8 d16 (c) a8 a |
  b4 r8 b |
  c c r a |
  g g r g |
  a8. a16 fs8 fs |
  g2 ~ |
  g4 r8 d |
  b'8. a16 b8 (c) |
  d4 r8 d |
  g,8. g16 a8 b |
  c4. fs,8 |
  g a b4 ~ |
  b8 g g e |
  d2 ~ |
  d4 r8 b' |
  c c r a |
  b b r g |
  a8. a16 fs8 fs |
  g2 ~ |
  g ~ |
  g ~ |
  \partial 4 g4 \bar "|." \break
  
  \key bf \major
  \time 3/4
  r4 d'4. c8 |
  bf4 c4. bf8 |
  a4 ef'4. c8 |
  d2 r4 |
  r4 \tuplet 3/2 { d8 d c } bf4 |
  r \tuplet 3/2 { ef8 ef d } c4 |
  b!2 r4 |
  ef2. |
  d2 a8 bf |
  cs2 r4 |
  r \tuplet 3/2 { d8 d c } bf r |
  r4 \tuplet 3/2 { c8 c bf } a8. a16 |
  b!2 r8 \bar "||" \break
  
  \key g \major
  \time 2/4
  \partial 8*4 r4 r8 d, |
  g8. g16 a8 d |
  g,4 r8 bf |
  fs g a4 ~ |
  a8 g g e |
  d4 r8 c' |
  c8. e16 e8 a, |
  a4 r8 a |
  a fs fs4 ~ |
  fs8 e d a' |
  g4 r
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r4 r |
  R2
  r8 d g b |
  b8. b16 c8 a ~ |
  a g fs g |
  e d e g |
  fs4 e8 e ~ |
  e e c'16 (b) a8 |
  b2 |
  g8. g16 d8 e ~ |
  e d c c |
  b2 ~ |
  b4 r |
  b2 ~ |
  b4 r |
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  R2*6
  \key g \major
  R2*6
  
  r4 r8 d
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  |
  g8. g16 e8 e |
  a4. a16 (g) |
  fs8. fs16 fs8 fs |
  g4 r8 d |
  e e r fs |
  g g r b, |
  c8. cs16 d8 c! |
  b2 ~ |
  b4 r8 d |
  g8. fs16 g8 (a) |
  b4 r8 g |
  e8. e16 d8 d |
  e4. d8 |
  b d g4 ~ |
  g8 e e cs |
  d2 ~ |
  d4 r8 d |
  e e r fs |
  g g r b, |
  c8. cs16 d8 c! |
  b4 r8 g' |
  e4 c8 (e) |
  d2 ~ |
  d4 |
  
  \key bf \major
  \time 3/4
  r4 <a' fs>2 |
  <g d>2. |
  <<
    {
      g2.
    }
    \\
    {
      c,2 g'4
    }
  >>
  <a fs>2 r4 |
  r \tuplet 3/2 { <a f>8 <a f> <a f> } g4 |
  r \tuplet 3/2 { <c g>8 <c g> <a d,> } <a d,>4 |
  <g d>2 r4 |
  <c g>2. |
  g2 f4 |
  e!2 r4 |
  r \tuplet 3/2 { <a d,>8 <a d,> <a d,> } <g d> r |
  r4 \tuplet 3/2 { <g ef>8 <g ef> <g d> } <fs d>8. <fs d>16 |
  <g d>2 r8
  
  \key g \major
  \time 2/4
  r4 r8 d |
  g8. g16 fs8 f! |
  e4 r8 e |
  ds e c4 ~ |
  c8 b c cs |
  d4 r8 a' |a8. c16 g8 g |
  fs4 r8 fs |
  e ef d4 ~ |
  d8 cs d c! |
  b4 r8 d
}

nhacDiepKhucBas = \relative c' {
  r4 g8 d ~ |
  d b'16 (a) g8 fs |
  g2 ~ |
  g4 r |
  a8. a16 b8 g ~ |
  g fs g a |
  d,4 r |
  r r8 fs |
  g8. d16 d8 ds |
  e4 r8 c |
  a8. a16 a8 d |
  g,2 ~ |
  g4 g'8 d |
  g,2 ~ |
  g4 r |
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  R2*6
  
  \key g \major
  R2*7
  r4 r8 g' |
  c8. c16 a8 a |
  d4. d8 |
  g,8. g16 g8 g |
  c4 c8 (d) |
  g,4 d8 (e) |
  a, a d4 |
  g, r8 g |
  b d g4 ~ |
  g r |
  r8 g d b |
  c2 ~ |
  c8 c d d |
  g4. d8 |
  e4 e8 (g) |
  <fs d>4 r8 d' |
  g,8. g16 g8 g |
  c4 c8 (d) |
  g,4 d8 (e) |
  a, a d4 |
  <d g,>4 r8 <d' b,> |
  <c c,>4 <a c,> |
  <b g g,>2 ~ |
  <b g g,>4 |
  
  \key bf \major
  \time 3/4
  r4 r d,8 (ef16 d) |
  g2 fs8 (g) |
  a4. g16 (a) d8 ef |
  d2 \tuplet 3/2 { c8 c a } |
  a2 \tuplet 3/2 { bf8 bf g } |
  g4. fs8 e! fs |
  g2 d8 (ef16 d) |
  c4. c8 ef g |
  bf2 a8 (g) |
  a2 \tuplet 3/2 { a8 a fs } |
  fs2 \tuplet 3/2 { g8 g ef } |
  ef4. g8 d bf'16 (a) |
  \partial 8*5 g2 r8
  
  \key g \major
  \time 2/4
  R2
  
}

% Lời
loiDiepKhucSop = \lyricmode {
  Bạn tình ca xa trông dáng ngọc, vượt qua núi đồi.
  Linh dương kiều diễm, sáng ngời dung nghi.
  nghi.
  
  \set stanza = "Solo Nữ:"
  Giá băng, đông tiết đã tàn.
  Mữa đã ráo hạt, xuân sang thắm ngời.
  Muôn hồng nghìn tía đua tươi.
  Chim câu đã gáy bên trời say sưa.
  
  Lại đây ơ bạn tình ta.
  Lai đây ơ, lại đây ơ, lại đây ơ bạn tình ta.
  Lại đây bạn thưởng thức.
  Ớ bạn lại đây thưởng thức.
  Lại đây thưởng thức hương hoa ngọt ngào.
  Lại đây ơ, lại đây ơ, lại đây ơ bạn tình ta.
  
  Hm __ \repeat unfold 8 { _ }
  Ta đi tìm bạn. Ta đi tìm bạn yêu.
  Hm __ \repeat unfold 4 { _ }
  Sương gieo nặng hạt.
  Sương gieo nặng hạt còn chi.
  
  \set stanza = "Duo Nữ:"
  Bồ câu ta ẩn chốn nào.
  Dấu mình hang đá, non cao xa vời?
  Cho ta thấy ánh mặt trời, cho nghe dìu dịu đôi lời của em.
}

loiDiepKhucAlto = \lyricmode {
  Bạn tình ca xa trông dáng ngọc, vượt qua núi đồi.
  Vượt qua núi đồi.
  Bạn tình đẹp lắm người ơi.
  Linh dương kiều diễm, sáng ngời dung nghi.
  nghi.
  
  Lại đây ơ bạn tình ta.
  Ớ bạn là bạn tình ta.
  Lại đây ơ, lại đây ơ, lại đây ơ bạn tình ta.
  Lại đây bạn thưởng thức.
  Ớ bạn lại đây thưởng thức.
  Lại đây thưởng thức hương hoa ngọt ngào.
  Lại đây ơ, lại đây ơ, lại đây ơ bạn tình ta.
  Ớ bạn tình ta.
  
  Hm __ \repeat unfold 2 { _ }
  Ta đi tìm bạn. Ta đi tìm bạn yêu.
  Hm __ \repeat unfold 3 { _ }
  Sương gieo nặng hạt.
  Sương gieo nặng hạt còn chi.
  
  Bồ câu ta ẩn chốn nào.
  Dấu mình hang đá, non cao xa vời?
  Cho ta thấy ánh mặt trời, cho nghe dìu dịu đôi lời của em.
  
  Lại
}

loiDiepKhucBas = \lyricmode {
  Nương với tiếng bạn tình ca.
  Xa trông dáng ngọc vượt qua núi đồi.
  Người ơi, bạn tình đẹp lắm.
  Diễm kiều rạng ngời dung nghi.
  Nương vời
  nghi.
  Lại đây ơ bạn tình ta.
  Ớ bạn là bạn lại đây. Ớ bạn, ớ bạn tình của ta.
  Lại đây thưởng thức.
  Ớ bạn tình ta.
  Lại đây thưởng thức, thưởng thức ngọt ngào.
  Ớ bạn là bạn lại đây. Ớ bạn. Ớ bạn tình của ta.
  Ớ bạn tình ta.
  
  \set stanza = "Solo Nam:"
  Phòng khuya lạnh giá, lạnh giá nhớ nhung.
  Ta đi tìm bạn.
  Ta đi tìm bạn, ôi lòng ta yêu.
  Một vùng, một vùng non nước cô liêu.
  Sương gieo nặng hạt. Sương gieo nặng hạt.
  Tiêu điều thấy chi.
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
  page-count = #4
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
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
