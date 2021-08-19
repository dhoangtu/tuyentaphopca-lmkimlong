% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hồn Tôi Ngợi Khen Chúa" }
  composer = "Kinh Magnificat"
  %poet = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

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
  \partial 8 c8 |
  \repeat volta 2 {
    f8. e16 g8 g |
    a4 bf8 (d) |
    c4 r8 b! |
    c8. a16 d8 d |
    e4. f16 (e) |
    d4. e16 (d) |
    c4 a8 a |
    bf4. g8
  }
  \alternative {
    {
      c8 c e,4 |
      f2 ~ |
      f4 r |
      R2
      a8 c16 (bf) g8 a16 (c) |
      f,8. e16 f8 g |
      a4. bf8 |
      c4 \fermata r8 c,
    }
    {
      d'8 c d (e) |
      f2 ~ |
      f4 r |
      r r8 a,16 (g) |
      d8 f g e16 (d) |
      c4. b!8 |
      c4 c8 ef16 (d) |
      c4. g'8 |
      g2 ~ |
      g4 \bar "||" \break
    }
  }
  \oneVoice
  <<
    {
      c8 d |
      e \slashedGrace { c ( } e) d16 c d8 |
      g,4
    }
    \notBePhu -2 {
	    e8 g |
	    c \slashedGrace { a ( } c) g16 a f8 |
	    e4
    }
  >>
  d8. f16 |
  f8 g e16 (d) b!8 |
  c2 \bar "||" \break
  
  <<
    {
      e'4 ^> c8 c |
      a a4. |
      f'4 ^> d8 d |
      b! b4. |
      d8 d4 g,8 |
      c c4.
    }
    \notBePhu -2 {
      c,4 e8 e |
      f f4. |
      d4 f8 f |
      g g4. f8 f4 f8 |
      e e4. \bar "||" \break
    }
  >>
  c'8 f, f4 ~ |
  f8 af g f |
  c2 ~ |
  c4 r |
  R2
  r4 r8 c
  \repeat volta 2 {
    f8. e16 g8 g |
    a4 bf8 (d) |
    c4 r8 b! |
    c8. a16 d8 d |
    e4. f16 (e) |
    d4. e16 (d) |
    c4 a8 a |
    bf4. g8
  }
  \alternative {
    {
      c8 c e,4 |
      f2 ~ |
      f4 r |
      R2
      
    }
    {
    }
  }
}

nhacPhienKhucAlto = \relative c' {
  \partial 8 r8
  r4 r8 c |
  f8. e16 g8 g |
  a4 g8 (f) |
  e4 r8 f |
  g8. e16 a8 a |
  b!4. gs8 |
  a4 a8 a |
  bf4. a8 |
  f d c4 |
  a2 ~ |
  a4 r |
  g'8 a16 (g) f8 g16 (a) |
  d,4 bf |
  a8. bf16 a8 c |
  f4. f8 |
  e4 \fermata r |
  a8 g f (bf) |
  a2 ~ |
  a4 r |
  r r8 a16 (g) |
  d8 f g e16 (d) |
  c4. b!8 |
  c4 c8 ef16 (d) |
  c4. <ef c>8 |
  <d b!>2 ~ |
  <d b!>4
  r4
  R2*10
  c'8 f, f4 ~ |
  f8 af g f |
  c2 ~ |
  c4 r |
  R2 |
  R2
  r4 r8 c |
  f8. e16 g8 g |
  a4 g8 (f) |
  e4 r8 f |
  g8. e16 a8 a |
  b!4. gs8 |
  a4 a8 a |
  bf4. g8 |
  f8 d c4 |
  a2 ~ |
  a4 r |
  g'8 bf16 (a) f8 g16 (a) |
  
}

nhacPhienKhucBas = \relative c {
  r8
  R2
  r4 r8 c |
  f8. e16 g8 g |
  a4 f8 (d) |
  c4 r8 c |
  d8. b!16 e8 e |
  f4 a8 a |
  bf4. g8 |
  a (bf) c c, |
  f2 |
  f8 a16 (g) e8 f16 (g) |
  c,4 d8 (c) |
  f4 e |
  f8. g16 f8 (e) |
  d4 df |
  c \fermata r |
  f8 e d (c) |
  f2 ~ |
  f4 r8 f |
  c'8 g a a16 (g) |
  d8 f g e16 (d) |
  c4. b!8 |
  c4 c8 ef16 (d) |
  c4. c8 |
  g'2 ~ |
  g4
  r4
  R2*10
  R2*3
  <<
    {
      a8 bf c4 ~ |
      c8 d <c bf> <c bf> |
      f2 ~ |
      f4
    }
    {
      f,8 g a4 ~ |
      a8 bf g g |
      <a f>2 ~ |
      <a f>4
    }
  >>
  r4 |
  r r8 c, |
  f8. e16 g8 g |
  a4 f8 (d) |
  c4 r8 c |
  d8. b!16 e8 e |
  f4 a8 a |
  bf4. g8 |
  a (bf) c c, |
  f2 |
  f8 a16 (g) e8 f16 (g) |
  c,4 d8 (c) |
  
}

loiPhienKhucSopMot = \lyrics {
  Hồn
  \repeat volta 2 {
    tôi ngợi khen Thiên Chúa
    ngợi khen và tâm thần tôi vui sướng, sướng vui,
    sướng vui trong Thiên Chúa là
  }
  \alternative {
    {
       Đấng cứu độ tôi.
       Vì Chúa đã đoái nhìn phận hèn tôi tớ của Chúa.
       Vậy...
    }
    {
      tôi thực diễm phúc.
      Đã làm cho tôi những việc kỳ diệu
      và danh Ngài chí thánh.
    }
  }
  \set stanza = "Nữ:"
  Tình thương Chúa trải qua bao thế hệ
  dành cho ai biết tôn sợ Ngài.
  
  \set stanza = "Nam:"
  Chúa vung tay thần lực
  <<
    {
      Chúa
    }
    \new Lyrics \with { alignBelowContext = "beSop" } {
	    \set associatedVoice = "beSop"
	    \override Lyrics.LyricText.font-shape = #'italic
      Ngài
    }
  >>
  vung tay thần lực quất ngã
  <<
    {
      phường
    }
    \new Lyrics \with { alignBelowContext = "beSop" } {
	    \set associatedVoice = "beSop"
	    \override Lyrics.LyricText.font-shape = #'italic
      lũ
    }
  >>
  kiêu căng.
  Chúa hạ bệ những ai uy quyền.
  Người
  \repeat volta 2 {
    thanh bần cho sung túc hồng ân.
    Bọn sang giầu ra tay trắng, trắng tay, trắng tay
    con dân Chúa Ngài
  }
  \alternative {
    {
      cứu giúp ủi an.
      Vì Chúa đã nhớ lại lòng thương xót của Chúa.
      Từ...
    }
    {
      miêu duệ ông muôn kiếp.
    }
  }
}

loiPhienKhucSopHai = \lyrics {
  _ nên từ đây nhân thế từ đây đời qua đời
  luôn hoan chúc khắp nơi,
  khắp nơi luôn hoan chúc rằng...
  \repeat unfold 71 { _ }
  
  xưa Ngài ban giao ước
  đã ban cùng tổ phụ Ab -- ra -- ham đã ban,
  đã ban, ban giao ước cùng...
}

loiPhienKhucAltoMot = \lyrics {
  %\repeat volta 2 {
    Hồn tôi ngợi khen Thiên Chúa
    khen ngợi và tâm thần tôi vui sướng,
    mừng vui trong Thiên Chúa là
  %}
  %\alternative {
  %  {
      Đấng cứu độ tôi. Vì Chúa đã đoái nhìn,
      đoái nhìn phận hèn tôi tớ của Ngài.
  %  }
  %  {
      tôi thực diễm phúc.
      Đã làm cho tôi những việc kỳ diệu
      và Danh Ngài chí thánh.
  %  }
  %}
  
  Chúa hạ bệ những ai uy quyền.
  %\repeat volta 2 {
    Người thanh bần cho sung túc phúc ân.
    Bọn sang giầu ra tay trắng, tay trắng
    con dân Chúa Ngài
  %}
  %\alternative {
  %  {
      cứu giúp ủi an.
      Vì Chúa đã nhớ lại,
      nhớ lại lòng thương xót của Ngài.
  %  }
  %  {
      miêu duệ ông muôn kiếp.
  %  }
  %}
}

loiPhienKhucAltoHai = \lyrics {
  Vậy nên từ đây nhân thế muôn người đời qua đời
  luôn hoan chúc, hoan chúc luôn hoan chúc rằng...
  \repeat unfold 41 { _ }
  
  Từ xưa Ngài ban giao ước muôn đời
  cùng tổ phụ Ab -- ra -- ham đã ban,
  ban giao ước cùng...
}

loiPhienKhucBasMot = \lyrics {
  Hồn tôi ngợi khen Thiên Chúa
  khen ngợi và tâm thần tôi vui sướng trong Thiên Chúa
  là Đấng cứu độ tôi.
  Vì Chúa đã đoái nhìn,
  nhìn đến phận hèn thân tôi tớ của Ngài.
  tôi thực diễm phúc.
  Vì Đấng toàn năng đã làm cho tôi những việc kỳ diệu
  và Danh Ngài cực thánh.
  
  Và nâng cao những ai khiêm tốn.
  Người thanh bần cho sung túc ân lộc.
  Bọn sang giầu ra tay trắng
  con dân Chúa Ngài cứu giúp ủi an.
  Vì Chúa đã nhớ lại
  đã nhớ lại lòng thương yêu của Ngài.
  
  miêu duệ ông muôn kiếp.
}

loiPhienKhucBasHai = \lyrics {
  Vậy nên từ đây nhân thế muôn người đời qua đời
  luôn hoan chúc, luôn hoan chúc rằng...
  \repeat unfold 45 { _ }
  nhường.
  Từ xưa Ngài ban giao ước muôn đời
  cùng tổ phụ Ab -- ra -- ham
  ban giao ước cùng...
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
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  system-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  score-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  %page-count = 8
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
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
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoHai
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1
    \override Staff.VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 8)
	   (minimum-distance . 8)
	   (padding . 1))
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
