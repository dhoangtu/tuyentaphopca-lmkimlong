% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Dâng Lời Cảm Tạ" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4. r4. |
  r8 bf bf bf |
  a4. d8 |
  g,4 r8 g |
  e!8 g e!16 (d) c8 |
  d4. g8 |
  e!8 g e16 (d) c8 |
  d4 r8 c |
  d f ~ f4 |
  r r8 g |
  c c c c |
  c8. c16 d8 c |
  bf4. b!8 |
  c4 r |
  r r8 g |
  bf bf a d |
  d4. b!8 |
  b! b b (d) |
  a4.
  <<
    {
      c8 |
      c c a d |
      g,2 ~ |
      g4
    }
    {
      a8 |
      a g fs fs |
      d2 ~ |
      d4
    }
  >>
  r8 \bar "|."
}

nhacDiepKhucBas = \relative c' {
  g8 g g |
  d2 ~ |
  d8 d d (f) |
  g2 ~ |
  g4 r8 a |
  fs fs g r |
  r4 r8 a |
  fs fs a4 |
  r4 r8 d, |
  f g ~ g4 |
  r r8 c, |
  ef8. e!16 f8 fs |
  g4 r8 g |
  e! e g e16 (d) |
  c4 ef |
  d a'8 (g) |
  fs fs g4 ~ |
  g r8 g |
  fs fs e! (d) |
  <e! c>4 <c' d,> |
  <b! g>2 ~ |
  <b! g>4 r8
}

nhacPhienKhucSop = \relative c'' {
  \partial 8 g8 |
  ef d g fs16 (g) |
  a4. a8 |
  bf8. bf16 a8 g |
  c4 r8 bf |
  a8. a16 c8 bf |
  c d4 b!8 |
  a a d b!16 (a) |
  g2 ~ |
  g8 \bar "||"
}

nhacPhienKhucBas = \relative c {
  r8 |
  r4 r8 d |
  c8 cs d d |
  g4 r8 g |
  d d a' g |
  fs4 r |
  r g |
  fs4. fs8 |
  g2 ~ |
  g8
}

% Lời
loiDiepKhucSop = \lyricmode {
  Con xin dâng lời cảm tạ:
  Chứa chan phúc ân ngàn muôn,
  Chúa thương mến luôn trào tuôn.
  Ngài gọi con, Ngài nâng con lên
  trao ban thiên chúc Linh mục quyền linh.
  Dầu con đây thật bất xứng.
  Năm mươi năm vút qua,
  nay xin dâng lời cảm tạ.
}

loiDiepKhucBas = \lyricmode {
  Con xin dâng lời cảm tạ Chúa
  Phúc lộc ngàn muôn
  sao Ngài trào tuôn
  Ngài chọn con
  trao ban thiên chức Linh mục,
  dẫu con đây rất mọn hèn
  dẫu con có là gì đâu
  Nay xin dâng lên lời cảm tạ.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Không phải là con chọn Chúa,
  nhưng chính Chúa thương chọn con,
  chẳng còn gọi con là tôi tớ,
  nhưng là bạn hữu thân tình.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Khi khổ cực mang Thập giá,
  khi phấn chấn như trổ hoa
  chẳng hồi nào con lại đơn bóng,
  nhưng hằng được Chúa song hành.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Con khẩn cầu, xin tạ lỗi.
  xin quá khứ lui lại sau.
  bởi nhờ Ngài con lại đi tới,
  trông cậy thành tín khôn rời.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Không phải là con chọn Chúa,
  nhưng thực là Chúa thương con
  nhưng là thân tình.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Khi khổ cực mang Thập giá,
  khi đời nở hoa liên hồi
  Chúa hằng đồng hành.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Con khẩn cầu và tạ lỗi
  xin lùi lại sau bởi nhờ
  trông cậy khôn ngơi.
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
  \key bf \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
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

