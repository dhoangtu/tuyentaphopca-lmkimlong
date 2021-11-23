% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Đoàn Người Anh Dũng" }
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

nhacPhienKhucSop = \relative c' {
  \autoPageBreaksOff
  f8. e16 f8 g |
  a4. bf8 |
  bf bf4 d8 |
  g,2 |
  f8. e16 f8 g |
  a4. g8 |
  c c4 e,8 |
  \partial 4. f4 \bar "||"
  \break
  
  a8 |
  a4. f8 |
  bf4 b!8 b |
  c2 |
  
  \pageBreak
  
  d8 c a bf |
  c4. g8 |
  a4 r8 bf |
  g4 e8 g |
  f4. g8 |
  a2 |
  f8 bf g g |
  c4. c8 |
  f,2 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  \repeat unfold 7 { \skip 2 }
  \skip 4 f8 |
  f4. ef8 |
  d4 g8 f |
  e2 |
  f8 e f g |
  e4. e8 |
  f4 r8 d |
  d4 cs8 cs |
  d4. d8 |
  cs2 |
  d8 f f f |
  e4. e8 |
  c2
}

nhacPhienKhucBas = \relative c {
  R2
  f8. e16 f8 g |
  d4 bf8 bf |
  c4 (b!8 c) |
  d4. c8 |
  f8. e16 d8 f |
  <<
    {
      \voiceOne
      e4
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      e8 (d)
    }
  >>
  \oneVoice
  <<
    {
      bf'8 g |
      a4
    }
    {
      c,8 c |
      f4
    }
  >>
  
  f8 |
  f4. c'8 |
  bf4 g |
  c8 c c bf |
  a4 d |
  c8 ([bf g]) c |
  f,4 r8 f |
  e4 a |
  d,4. bf8 |
  a a' g e |
  d4 <bf' d,>8 <bf d,> |
  <<
    {
      \voiceOne
      bf8 _([g c])
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      c,4.
    }
  >>
  <bf' c,>8 |
  <a f>2
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Đây đoàn người anh dũng hiên ngang ra pháp trường.
  Dâng cuộc đời cho Chúa làm hiến lễ tình thương.

  Các thánh giờ đây trong Đất Hứa
  góp chung lời hát khúc trường ca.
  Chúng ta lòng sướng vui chan chứa.
  Cùng hát vang ca khúc thái hòa.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Đây đoàn người nắm chắc vinh quang trên Nước Trời.
  Đem niềm tin gieo rắc dọi chiếu khắp mọi nơi.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Đây ruộng đồng Thiên Chúa cây thơm xanh ngát bờ.
  Ai người đã vun tưới bằng máu với mồ hôi.
}

loiPhienKhucSopBon = \lyricmode {
  \set stanza = "4."
  Nay đoàn con ghi nhớ luôn đi theo vết hùng.
  Cho trọn niềm tin Chúa nguy khó vẫn vẹn trung.
}

loiPhienKhucAltoMot = \lyricmode {
  Các thánh giờ đây trong Đất Hứa
  góp chung lời hát khúc trường ca.
  Chúng ta lòng sướng vui chan chứa.
  Cùng hát vang ca khúc thái hòa.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = "1."
  Đây đoàn người hiên ngang ra pháp trường.
  Dâng (là) dâng cuộc đời để làm lễ tình thương.
  Các thánh ở đây trong Đất Hứa góp chung lời với khúc xướng ca.
  Chúng ta sướng vui chan hòa
  sướng vui chan hòa vang ca một bài ca.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = "2."
  Đây đoàn người vinh quang trên Nước Trời.
  Đem (là) đem Đức Tin chói dọi ở mọi nơi.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = "3."
  Đây ruộng đồng cây thơm xanh ngát bờ.
  Ai (là) ai người đã tưới vun bằng mồ hôi.
}

loiPhienKhucBasBon = \lyricmode {
  \set stanza = "4."
  Nay đoàn con luôn đi theo vết hùng.
  Xin (là) xin trọn niềm mến tin vẫn vẹn trung.
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
  %ragged-last-bottom = ##t
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
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBon
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
    >>
    %{
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBon
      >>
    %}
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBon
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
