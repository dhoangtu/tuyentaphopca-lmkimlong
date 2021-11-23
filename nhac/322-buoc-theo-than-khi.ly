% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bước Theo Thần Khí" }
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
  \partial 4 c8 a |
  g2 ~ |
  g8 e f d |
  c2 |
  f8 f e f |
  g4. a8 |
  bf4 a8 g |
  c4 bf8 d |
  d g, bf a |
  a4. a8 |
  f4 bf8 bf |
  g4 f8 f |
  e8. f16 f8 \slashedGrace { f16 ( } a8) |
  d,4. c8 |
  a'2 |
  <<
    {
      a8 a16 a f8 a |
      bf2 |
      bf8 bf16 bf g8 bf |
      c4. a8 |
      g c a g |
      f2
    }
    { \notBePhu -2 {
      f8 f16 f d8 f |
      g2 |
      f8 f16 f f8 f |
      e4. f8 |
      d g f e |
      c2
    }}
  >>
  \bar "|." \break
  
  f8 g16 (f) e8 e|
  a4. f8 |
  bf bf g g |
  c4 r8 a |
  g c d, f |
  g4. e8 |
  d g f d |
  c4 \bar "||"
}

nhacPhienKhucBas = \relative c' {
  r4 |
  r bf8 a |
  g2 ~ |
  g8 e f e |
  d2 ~ |
  d8 c e f |
  g4 f |
  e d8 bf' |
  bf4 d,8 e |
  f8. g16 f8 e |
  d4 g8 f |
  e4 a8 a |
  g8. a16 a8 c |
  bf4 g |
  f8 f16 f g8 f |
  d4 r |
  g8 g16 g f8 ef |
  d2 |
  c8 c16 c c8 <f d> |
  <g bf,>4 <c c,>8 <bf c,> |
  <a f f,>2 |
  
  R2
  f8 g16 (f) e8 d |
  g4. f8 |
  e8 e d d |
  bf'4 r8 a |
  bf bf a g |
  f4 d8 f |
  r4
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Chúa yêu thương gọi con theo Ngài,
  Con vui mừng xin vâng
  đưa bước theo Thần Khí
  Thần Khí Chúa ngự xuống trên con,
  xức dầu thánh hiến con,
  cho con thành Tôi Trung của Ngài,
  Lạy Chúa
  Sai con đi làm nhân chứng,
  Con xin đoan nguyền kiên vững
  xuôi ngược rắc gieo Tin Mừng.
  
  \set stanza = #"1."
  Con sống nhờ Thần Khí
  nguyện tiến bước nhờ Thần Khí
  không còn kiếm tìm hư danh,
  se chặt mối dây huynh đệ.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 56 { _ }
  \set stanza = #"2."
  Hoa trái của Thần Khí là bác ái và bình an,
  khoan hậu nhẫn nhục từ tâm,
  tiết độ, tín trung an hòa.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 56 { _ }
  \set stanza = #"3."
  Theo lối đường Thần Khí là biết chấp nhận Thập giá
  luôn vượt thắng mọi đam mê,
  xin vì Chúa quên thân mình.
}

loiPhienKhucBasMot = \lyricmode {
  Chúa yêu thương gọi con theo Ngài
  Này con đưa bước theo 
  khi Thần Khí Chúa ngự trên con
  đã thương xức dầu thánh hiến con
  cho con thành Tôi Trung của Ngài,
  nay đã sai con bước theo Ngài
  Sai con đi gieo Tin Mừng
  con xin trung kiên xuôi
  <<
    {
      bước
    }
    \new Lyrics {
	    \set associatedVoice = "beSop"
	    \override Lyrics.LyricText.font-shape = #'italic
	    ngược
	}
  >>
  gieo Tin Mừng.
  
  \set stanza = #"1."
  Con sống nhờ Thần Khí
  luôn tiến bước cùng Thần Khí
  lợi danh không màng, se chặt tình huynh đệ.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 55 { _ }
  \set stanza = #"2."
  Hoa trái của Thấn Khí là bác ái và bình an
  từ tâm khoan hậu tiết độ
  cùng an hòa.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 55 { _ }
  \set stanza = #"3."
  Theo lối đường Thần Khí
  là biết chấp nhận thập giá,
  đam mê thắng vượt,
  xin vì quên thân.
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice = beSop {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
    \new Staff
      <<
      \new Voice = beBas {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

