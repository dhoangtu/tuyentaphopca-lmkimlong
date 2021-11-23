% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Reo Mừng Chúa Thống Trị" }
  composer = "Nhạc: L. Deiss"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 8 r8 |
  R2.*2
  e4 e8 d ([b d]) |
  e4. (e4) r8 | \break
  R2.*3
  e,8 g a b _([a g] |
  b4.) b8 cs d |
  cs ([a cs] b4.) |
  e4 e8 d ([b d]) |
  e4. ~ e4. ~ |
  e4 r8 e,4 g8 |
  a4. a |
  e2. \bar "|." \break
  
  \partial 4. r4. |
  R2.*3
  e'4 e8 d ^([b d]) |
  e4. ~ e |
  \stemUp
  g,8 g g
  _\markup { \rest #"2" }
  b4 a8 |
  e'4 e8
  _\markup { \rest #"2" }
  d4 (c8) |
  b4 a8
  _\markup { \rest #"2" }
  a ([g fs]) |
  e2.
  _\markup { \rest #"2" }
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \break
  
  \partial 4. e8 d e |
  g g a b4 b8 |
  cs cs cs a g a |
  b4.
  
  \stemNeutral
  e4 e8 |
  d ([b d]) e4. ~ |
  e4.
  r4. |
  R2.*3 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r8 |
  R2.*2
  g4 a8 b ([g fs]) |
  g4. ~ g4 r8 |
  R2.*3
  e8 g a b ([a g] |
  b4.) g8 a b |
  a ([fs e] g4.) |
  e4 g8 a4. |
  g4. ~ g4. ~ |
  g4 r8 e4 g8 |
  a4. a |
  e2. |
  
  r4.
  R2.*3
  g4 a8 b _([g fs]) |
  g4. ~ g |
  g8 g g b4 a8 |
  e'4 e8 d4 (c8) |
  b4 a8 a ([g fs]) |
  e2. |
  e8 d e |
  g g a b4 b8 |
  cs cs cs a g a |
  b4. g4 a8 |
  b ([g fs]) g4. ~ |
  g4. r4. |
  R2.*3
}

nhacDiepKhucBas = \relative c {
  e8 |
  g4 g8 a g a |
  b b a e4. |
  <e' c>4 <e c>8
  <<
    {
      \voiceOne
      fs ([e d])
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      b4.
    }
  >>
  \oneVoice
  <b e,>4. ~ <b e,>4 b8 |
  d d d b4 a8 |
  g4 g8 a a a |
  e4 d8 e4. \bar "||" \break
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  
  e8 g a b (a g |
  b4.)
  <<
    {
      b8 cs d |
      cs (a cs b4.) |
      b4 b8 a4.
    }
    {
      g8 fs e |
      a (fs e g4.) |
      g4 g8 fs4.
    }
  >>
  <<
    {
      \voiceOne
      b4. (c4. ~ |
      c4)
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      e,4 (d8 c4. ~ |
      c4)
    }
  >>
  \oneVoice
  r8 e4 g8 |
  a4. a4. |
  e2. |
  
  \partial 4. e8 e e |
  <<
    {
      b'4 b8 a b c |
      b a g b4 b8 |
      e d b d4. |
      e4 e8
    }
    {
      e,4 e8 e e e |
      e e e e4 g8 |
      b a g b4.
      c4 c8
    }
  >>
  <<
    {
      \voiceOne
      fs8 ([e d])
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      b4.
    }
  >>
  \oneVoice
  <b e,>4. ~ <b e,>4. |
  
  \stemUp
  e8 e e
  \tweak extra-offset #'(0 . 2)
  _\markup { \rest #"2" }
  d4 d8 |
  c4 c8
  \tweak extra-offset #'(0 . 2)
  _\markup { \rest #"2" }
  b4 (a8) |
  g4 c8
  \tweak extra-offset #'(0 . 2)
  _\markup { \rest #"2" }
  c4. |
  b2.
  \tweak extra-offset #'(0 . 2)
  _\markup { \rest #"2" }
  |
  \partial 4. b8 a
  \tweak extra-offset #'(0 . 3)
  _\markup { \rest #"4." }
  b |
  d8 d e
  \tweak extra-offset #'(0 . 2)
  _\markup { \rest #"2" }
  d4 d8 |
  e e e
  \tweak extra-offset #'(0 . 2)
  _\markup { \rest #"2" }
  d d c |
  b4.
  \tweak extra-offset #'(0 . 3)
  _\markup { \rest #"4." }
  
  \stemNeutral
  <e c>4 <e c>8 |
  <<
    {
      \voiceOne
      fs8 ([e d])
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      b4.
    }
  >>
  \oneVoice
  <b\=1^( e,\=2_(>4. <b\=1) e,\=2)>4.
  
  \stemDown
  b8 b b |
  d (b) b b ([a g]) |
  e4. d4 e8 |
  g4 b8 a4.
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

% Lời
loiDiepKhucSopMot = \lyricmode {
  Al -- le -- lu -- ia.
  \set stanza = "ĐK:"
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Al -- le -- lu -- ia.
  Ngợi khen Đấng Cứu độ
  Al -- le -- lu -- ia.
  \set stanza = "3-4."
  Giê -- su Ki -- tô tình mến rất cao trọng cho nhân trần
  \set stanza = "5."
  Đây Ngài đem thịt mình trao hiến
  nuôi dưỡng hết những ai được giải thoát,
  Al -- le -- lu -- ia.
}

loiDiepKhucSopHai = \lyricmode {
  \repeat unfold 37 { _ }
  \set stanza = "6."
  Cho đoàn con được phần vui sướng
  liên kết với lễ chiên vượt qua mãi.
}

loiDiepKhucBasMot = \lyricmode {
  \set stanza = "1."
  Ngàn dân cùng reo mừng Thiên Chúa đến thống trị
  Al -- le -- lu -- ia.
  \set stanza = "1-2."
  Sự sống đã thắng vinh tử thần
  Thập giá đã đánh bại hỏa ngục.
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia.
  Ngợi khen Đấng Cứu độ
  \set stanza = "3."
  Này là hòn đá quân thù xưa những khinh khi từ chối
  rầy đã nên tuyệt luân
  Al -- le -- lu -- ia.
  \set stanza = "3-4."
  Giê -- su Ki -- tô tình mến rất cao trọng cho nhân trần
  \set stanza = "5."
  Đây Ngài đem thịt mình trao hiến
  nuôi dưỡng hết những ai được giải thoát,
  Al -- le -- lu -- ia.
  %\repeat unfold 19 { _ }
  \set stanza = "5-6."
  Tô đôi môi chúng con thắm hồn Ngài đã đổ máu thiêng.
}

loiDiepKhucBasHai = \lyricmode {
  \set stanza = "2."
  Này đây ngày vui mừng Thiên Chúa đã tác thành
  \repeat unfold 35 { _ }
  \set stanza = "4."
  Việc kỳ diệu quá thương đoàn con Chúa nay đã hoàn tất.
  Nguyện Chúa luôn hiển danh
  \repeat unfold 16 { _ }
  \set stanza = "6."
  Cho đoàn con được phần vui sướng
  liên kết với lễ chiên vượt qua mãi.
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
  %page-count = #1
}

TongNhip = {
  \key g \major \time 6/8
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSopMot
      \new Lyrics \lyricsto beSop \loiDiepKhucSopHai
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBasMot
      \new Lyrics \lyricsto beBas \loiDiepKhucBasHai
    >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
