% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Vì Con Là Của Chúa" }
  poet = "Thơ: Thánh Têrêsa Giêsu"
  composer = "Phóng tác: Lm. Đỗ Xuân Quế"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSolo = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  r8
  R2*5
  r4
  r4
  R2*9
  r4
  c4 ~ |
  c8 b gs a |
  a2 ~ |
  a8 a16 a e8 e16 (a) |
  b8 b16 b a8 a16 (d) |
  e2 ~ |
  e4 f ~ |
  f8 f f b, |
  d2 ~ |
  d8 c16 b e8 g, |
  a a16 e f8 c |
  d2 ~ |
  d4 r |
  R2
  r8 c'16 a a8 c |
  \slashedGrace { g16 (a } g2) ~ |
  g4 r8 f' |
  f8. f16 d8 e |
  r e e8. e16 |
  c8 d r b |
  c c a4 |
  g2 ~ |
  g4 r
}

nhacPhienKhucSop = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  <<
    {
      \voiceOne
      \partial 8 e8 |
      f8. d16 d8 e
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      r8 |
      r <c f,> <b g> <b g> |
    }
  >>
  \oneVoice
  <<
    {
      \voiceOne r8 d e8. c16 |
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      e,4\rest r8 <bf' e,> |
    }
  >>
  \oneVoice
  <c a f>8 <d a f> r <g, e> |
  <<
    {
      \voiceOne a g a b
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      c,4 f |
    }
  >>
  \oneVoice
  <c' e,>2 ~ |
  <c e,>4 \bar "|" \break
  
  r4 |
  R2
  r4 r8 d |
  c b c (d) |
  e4 r8 f |
  f8. d16 d8 e |
  r e e8. c16 |
  c8 d r g, |
  a g a (b) |
  c2 ~ |
  c4 \bar "||" \break
  
  r4 |
  R2
  r8 d16 d b8 c |
  c4 r |
  r a ~ |
  a8 a16 a gs8 a |
  b4 r |
  R2
  r8 b16 b b8 gs |
  a4 r |
  r c ~ |
  c8 a c a |
  g4 r |
  R2
  r8 a16 f f8 a |
  e2 ~ |
  e4 r8 a |
  a8. a16 b8 b |
  r8 g g8. g16 |
  a8 a r f |
  e d c4 |
  b2 ~ |
  b4  r \bar "||" \break
  
  \key ef \major
  R2
  r8 c'16 c af8 g |
  g4 r |
  R2
  r8 c16 c c8 b!16 (c) |
  d4 r |
  R2
  r8 g,16 c d8 c |
  b!4 r |
  R2
  r8 g16 f f8 af |
  g4 r \bar "||" \break
  
  \key c \major
  R2
  r4 r8 c |
  d d c4 |
  b r8 e |
  f8. d16 e8 e |
  r d e8. c16 |
  d8 d r g, |
  a a a (b) |
  c2 ~ |
  c4 r \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  r8
  R2*5
  r4
  r4
  R2
  r4 r8 g |
  e d e (f) |
  g4 r8 a |
  a8. a16 b8 b |
  r g g8. g16 |
  a8 a r e |
  c c f4 |
  e2 ~ |
  e4
  
  r
  R2
  r8 a16 a f8 f |
  e4 r |
  r c ~ |
  c8 c16 c d8 c |
  e4 r |
  R2
  r8 f16 f f8 e |
  e4 r |
  r a ~ |
  a8 d, d c |
  b4 r |
  R2
  r8 a'16 f f8 a |
  e2 ~ |
  e4 r8 a |
  a8. a16 b8 b |
  r8 g g8. g16 |
  a8 a r f |
  e d c4 |
  b2 ~ |
  b4 r
  
  \key af \major
  R2
  r8 af'16 af f8 ef |
  ef4 r |
  R2
  r8 ef16 ef ef8 d16 (ef) |
  g4 r |
  R2
  r8 ef16 ef f8 ef |
  d4 r |
  R2
  r8 ef16 c c8 f |
  ef4 r
  
  \key c \major
  R2
  r4 r8 e |
  f f e4 |
  d r8 c' |
  d8. b16 c8 c |
  r b c8. a16 |
  g8 g r e |
  c c f4 |
  e2 ~ |
  e4 r
}

nhacPhienKhucBas = \relative c {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  r8 |
  r d g g |
  r4 r8 c, |
  f f r g |
  f e d g |
  <c g c,>2 ~ |
  <c g c,>4
  
  c, |
  a'8 a g4 |
  g2 ~ |
  g4 r8 g |
  c, c f4 ~ |
  f8 d g4 |
  c, r8 c |
  f4 d8 e |
  f e d (g) |
  c,2 ~ |
  c4
  
  r4
  R2
  r8 f16 f d8 a' |
  a4 r |
  r a ~ |
  a8 a16 a b8 a |
  <gs e>4 r |
  R2
  r8 d16 d d8 e |
  a,4 r |
  r a ~ |
  a8 f' f fs |
  g4 r8 d |
  e4 c8 c |
  f4. b,8 |
  c8. e16 d8 c |
  e8. g16 f4 ~ |
  f8 d g4 |
  c, r8 c |
  f4 d8 d |
  c f f4 |
  g2 ~ |
  g4 g ~ |
  
 \key ef \major
 g8 g ef d16 (c) |
 c2 ~ |
 c4 f ~ |
 f8 f f ef16 (f) |
 g2 ~ |
 g4 r8 g |
 c \slashedGrace { a16 ( } g4) e!16 (f) |
 g2 ~ |
 g4 f ~ |
 f8 d d g |
 \slashedGrace { c,16 (d } c2) ~ |
 c4 r8 c'
 
 \key c \major
 a8 a a4 |
 g2 ~ |
 g4 r8 g |
 a g c4 |
 r8 g fs4 |
 g r8 c |
 b4 c8 c |
 f, e d (g) |
 c,2 ~ |
 c4 r
}

% Lời
loiPhienKhucSolo = \lyrics {
  Chúa đã dựng nên con, con tôn thờ một Chúa,
  con tôn thờ một Chúa.
  Chúa đã cứu chuộc con, con thuộc hẳn về Ngài,
  con thuộc hẳn về Ngài.
  Xin trọn đời hương lửa đáp tiếng Chúa gọi con,
  đáp tiếng Chúa gọi con vọng lên trong tâm hồn.
}

loiPhienKhucSop = \lyrics {
  \repeat unfold 16 { _ }
  Đấng vô cùng thượng trí Chúa muốn làm gì con,
  Chúa muốn làm gì con, vì con là của Chúa.
  Chúa đã dựng nên con.
  Ơ con tôn thờ một Chúa.
  Chúa đã cứu chuộc con,
  con thuộc hẳn về Ngài.
  Xin trọn đời hương lửa đáp tiếng Chúa gọi con,
  đáp tiếng Chúa gọi con vọng lên trong tâm hồn.
  Chúa bắt con nghèo hèn hay cho con giàu có
  hoặc vui sướng ủi an hay buồn phiền chán nản.
  Hay bắt xuống hỏa ngục con sẵn sàng xin vâng,
  con sẵn sàng xin vâng vì con là của Chúa.
}

loiPhienKhucBas = \lyrics {
  \repeat unfold 12 { _ }
  Lạy Chúa rất oai phong vô cùng thượng trí,
  Ngài muốn gì, Ngài muốn gì vì con là của Ngài.
  Chúa đã dựng nên con,
  Ơ con luôn nhớ tôn thờ.
  Chúa đã cứu rỗi con, con thuộc hẳn về Chúa.
  Đời con là của Chúa trọn đời hương lửa,
  trọn đời hương lửa lời Chúa gọi,
  lời Chúa gọi vọng rền trong tâm hồn.
  Chúa bắt con nghèo hèn hay cho con giàu có
  hoặc sướng vui ủi an hay buồn phiền chán nản.
  Chúa cho lên thiên đàng con sẵn sàng vâng
  con xin vâng, con xin vâng bởi con là của Ngài.
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
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  %page-count = 3
  %systems-per-page = 4
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
    \new Staff <<
      \new Voice = "beSolo" {
        \clef treble \TongNhip \nhacPhienKhucSolo
      }
      \new Lyrics \lyricsto beSolo \loiPhienKhucSolo
    >>
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
        \new Voice \TongNhip \partCombine 
          \nhacPhienKhucSop
          \notBePhu -2 { \nhacPhienKhucAlto }
        \new NullVoice = beSop \nhacPhienKhucSop
        \new Lyrics \lyricsto beSop \loiPhienKhucSop
        
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  } 
}
