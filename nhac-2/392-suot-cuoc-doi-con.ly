% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Suốt Cuộc Đời Con" }
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

nhacPhienKhucSop = \relative c'' {
  \key bf \major 
  \partial 4. g16 (a) c,8 d |
  g4. g16 a |
  bf8 a g a |
  \slashedGrace { f16 _(} d4) r8 g16 a |
  bf8 bf a g |
  d'2 |
  c8. ef16 c8 d |
  r bf c16 (bf) a8 |
  a2 |
  g8. bf16 bf8 a |
  r fs g a |
  d,2 |
  a'8. a16 a8 g |
  a bf4 a8 |
  bf4 c |
  d2 |
  c8. c16 c8 d |
  bf a4 d,8 |
  a'4 fs |
  g2
}

nhacPhienKhucBas = \relative c'' {
  \key bf \major 
  \partial 4. g16 (a) c,8 d |
  g4. g16 a |
  bf8 a g a |
  \slashedGrace { f16 _(} d4) r8 g16 a |
  bf8 bf a g |
  d'2 |
  a8. c16 a8 bf |
  r g a16 (g) c,8 |
  d2 |
  ef8. g16 g8 f |
  r d ef c |
  bf2 |
  c8. c16 c8 ef |
  d g4 f8 |
  g4 a |
  bf2 |
  a8. a16 a8 bf |
  g d4 bf8 |
  c4 d |
  bf2
}

nhacDiepKhucSop = \relative c'' {
  \key g \major 
  b8. b16 b8 a |
  g g r c |
  c8. c16 c8 a |
  b2 |
  d8. c16 d8 e |
  d b r a |
  b8. b16 c8 g |
  a a r g |
  fs8. g16 a8 g |
  e d4 d8 |
  b'8. b16 g8 c |
  b a4 a16 a |
  d8. c16 a8 fs |
  g2 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  \key g \major 
  d8. d16 d8 c |
  b b r e |
  e8. e16 e8 fs |
  g2 |
  b8. a16 b8 c |
  b g r fs |
  g8. g16 e8 e |
  fs fs r e |
  d8. d16 c8 c |
  cs d4 d8 |
  d8. d16 d8 g |
  g fs4 fs16 fs |
  g8. e16 d8 c |
  b2
}

nhacDiepKhucBas = \relative c' {
  \key g \major 
  g8. g16 g8 d |
  e e r c |
  a8. a16 a8 d |
  g2 |
  r4 g8. fs16 |
  g8 g d4 |
  r a8. e'16 |
  d8 d g4 |
  d8.
  <<
    {
      d16 e8 e |
      a fs4 fs8
    }
    {
      b,16 a8 a |
      a d4 d8
    }
  >>
  g8. g16 f!8 e |
  e d4 d16 c |
  b8. a16 d8 d |
  <g g,>2
}

% Lời
loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Suốt cuộc đời con bàn tay Chúa luôn luôn dắt dìu
  tình yêu Chúa dõi theo từng bước.
  Ngài đã gọi con từ trong lòng mẹ.
  Ngài thánh hiến con dù con thấp hèn.
  Sai con đi làm nhân chứng của tình yêu Chúa.
  Sai con loan báo Tin Mừng vọng thấu mọi nơi.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Suốt cuộc đời con dù đôi lúc tim con yếu mềm,
  dù đôi lúc tim con mờ tối.
  Ngài vẫn gần con chắng khi nào rời,
  Ngài giúp sức con vượt qua biển đời.
  Cho con nên bạn tâm phúc ngàn muôn thương mến.
  Cho con thiên chức Linh Mục nhuần thấm hồng ân.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Suốt cuộc đời con còn bao tháng năm con ước nguyện,
  nguyện luôn mãi sắt son tình mến.
  Từng phút từng giây thực thi Lời Ngài
  và khắp đó đây truyền rao Ý Ngài.
  Bao gian truân dù vương lối nguyện luôn đi tới.
  Khi an vui lúc khổ cực nhịp bước thảnh thơi.
}

loiDiepKhucSop = \lyricmode {
  Qua bao năm con miệt mài quyết dõi bước Chúa nào ngơi.
  Đem tình yêu đến muôn người nhờ ơn Thiên Chúa ở trong con,
  trong người tôi tớ vô dụng này.
  Hồn con nay chỉ biết dâng lên lời cảm mến tri ân thành tâm.
}

loiDiepKhucBas = \lyricmode {
  Qua bao năm con miệt mài quyết dõi đường Ngài chẳng ngơi.
  Đem tình yêu muôn người nhờ Chúa ở trong con
  người tôi tớ vô dụng này.
  Hồn con nay chỉ nguyện dâng lên lời cảm mến tri ân thành tâm.
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
      \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucBas }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucMot
      \new Lyrics \lyricsto beSop \loiPhienKhucHai
      \new Lyrics \lyricsto beSop \loiPhienKhucBa
      >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
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
      \new Lyrics \lyricsto beAlto \loiDiepKhucSop
    >>
    %{
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
    %}
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
