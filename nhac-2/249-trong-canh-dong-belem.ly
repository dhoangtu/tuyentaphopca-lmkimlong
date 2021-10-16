% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Trong Cánh Đồng Belem" }
  composer = "Lm. Kim Long"
  arranger = "Hòa âm: Viết Chung"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSolo = \relative c''' {
  a16
  _\markup { \bold "Intr." }
  bf a g |
  <<
    {
      \voiceOne
      f8 a g16 a g f |
      e8 g f16 g f e |
      d4 ~ d16 f e d |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      <d a f>2 |
      <a g e> |
      <a f d> |
    }
  >>
  \oneVoice
  <cs a e a,>8 r <cs a e a,> r |
  d4 r |
  d4. c8 |
  bf4 g |
  a8. g16 f g f e |
  d2 ~ |
  d |
  
  g8 a d, g |
  a4 a8 c |
  c bf a c |
  d2 ~ |
  d4 d8 d |
  bf (d) bf16 (a) g8 |
  a4 g8 g |
  d g a a |
  a (d) e16 (d) cs8 |
  d2 |
  R2*3
  d,4. d8 |
  d (g) f g |
  a2 |
  \slashedGrace { bf16 ( } d8) g, bf16 (a) g8 |
  a bf a16 (g) e8 |
  
  \time 6/8
  d4. ~ d4 r8
}

nhacDiepKhucSop = \relative c' {
  \partial 4 r4 |
  R2*4 \break
  
  f2 ~ |
  f ~ |
  f4 d |
  c2 |
  d4 c16 d c bf |
  a2 \bar "||" \break
  
  R2*2
  a'16 bf a g f8 a |
  bf c d c16 bf |
  a4 r |
  R2
  g16 a g f e8 bf' |
  a g f e |
  a2 ~ |
  a4 \tuplet 3/2 { f8 g a } |
  d16 d d d d8 c |
  bf16 bf bf bf bf8 g |
  a8. g16 f g f e |
  d4. d8 |
  e (g) f g |
  a2 |
  bf |
  a4. g8 |
  
  \time 6/8
  f4. ~ f4 \bar "|" \break
  r8 |
  R2.*4
  \time 2/4
  R2
  r4 \bar "||" \break
  
  d |
  f8 g16 (f) c4 |
  d8 f g c |
  g2 \bar "||" \break
  
  a4. (g8) |
  f4 f8 f |
  d'2 |
  c4 d |
  c c |
  d8 (c) bf (a) |
  g2 ~ |
  g4 f8 f f'2 |
  e4 r |
  R2*2
  r4 r8 c |
  d (c) bf4 |
  a2 ~ |
  a4 r |
  c2 ~ |
  c ~ |
  c ~ |
  c8 d c bf |
  a4. a8 |
  g a bf16 (a) f8 |
  g2 ~ |
  g4 c8 (d16 c) |
  a2 ~ |
  a4 bf8 d |
  c2 ~ |
  c4 a8 a |
  bf4 g |
  
  \set Score.repeatCommands = #'((volta "1"))
  c8 c d e |
  f2 ~ |
  f4 r \bar "||"
  \set Score.repeatCommands = #'((volta #f) (volta "2"))
  c4 r8 c |
  \set Score.repeatCommands = #'((volta #f))
  d4 e |
  f2 ~ |
  f \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r4 |
  R2*4
  a2 ~ |
  a |
  g |
  e4 a8 g |
  f2 ~ |
  f |
  R2
  r4 a8 g |
  f2 |
  f8 a bf a16 g |
  f4 r |
  r d |
  cs e8 g |
  f e d e |
  f4 g |
  f2 |
  f ~ |
  f4 d |
  cs2 |
  a4. a8 |
  bf (d) d4 |
  e4. f8 |
  g2 |
  f4. e8 |
  
  \time 6/8
  d4. (d4) r8 |
  
  R2.*4
  
  \time 2/4
  R2
  r4
  d |
  f8 g16 (f) c4 |
  d8 f g c |
  g2
  
  f4. (e8) |
  c4 c8 c |
  d (f g e) |
  f4 bf |
  a a |
  bf8 (a) g (f) |
  e2 ~ |
  e4 f8 f |
  a4. (g8) |
  g4 g |
  g g |
  g2 ~ |
  g4 r8 a |
  bf (a) g4 |
  f2 ~ |
  f4 r |
  f2 |
  a ~ |
  a4 g |
  f8 bf a g |
  f4. f8 |
  c4 g'16 (f) d8 |
  e2 ~ |
  e4 r |
  r8 f f f |
  f4 f |
  f8 g e e |
  f4 f8 f |
  g4 f |
  e8 e g bf |
  a2 ~ |
  a4 r |
  e4 r8 e |
  g4 bf |
  a2 ~ |
  a
}

nhacDiepKhucTenor = \relative c' {
  r4 |
  R2*4
  d,2 ~ |
  d ~ |
  d4 bf |
  a2 |
  d ~ |
  d |
  R2
  r4 c'8 a |
  d4 e |
  d2 ~ |
  d4 r |
  r g,8 bf |
  a2 |
  a4. bf8 |
  d4 cs |
  d2 |
  a |
  g ~ |
  g |
  
  f4. f8 |
  g (bf) bf d |
  cs4. d8 |
  bf2 |
  d4 cs |
  
  \time 6/8
  d4. ~ d4
  
  c,8 |
  f4 f8 g (f) d |
  c4 c8 c'4 c8 |
  d (c) bf a4 gs8 |
  a4 a8 bf (a) g |
  
  \time 2/4
  f2 ~ |
  f4
  r4
  R2*3
  c'2 |
  a4 a8 a |
  bf ([d c bf]) |
  a4 r |
  R2*2
  r8 g a b! |
  bf4 a8 c |
  d ([ef d b!]) |
  c4
  <<
    {
      f |
      e e |
      f8 (e) d4
    }
    {
      b!4 |
      c c |
      d8 (c) b!4
    }
  >>
  c2 ~ |
  c ~ |
  c8 c a (g) |
  f4 f |
  c a'8 a |
  f4 c'8 c |
  a (bf) c d |
  c2 |
  c |
  bf4. a8 |
  c2 ~ |
  c4 r |
  r8 a a a |
  a4 f8 bf |
  a bf g g |
  a4 c8 c |
  d4 bf |
  c c |
  c2 ~ |
  c4 r |
  c r8 c |
  c4 c |
  c2 ~ |
  c
}

nhacDiepKhucBas = \relative c {
  r4 |
  <d d,>2 |
  <c c,> |
  <d d,> |
  <a' e a,>8 r <a e a,> r |
  d,2 ~ |
  d ~ |
  d4 bf |
  a2 |
  d ~ |
  d |
  R2
  a'16 bf a g f8 e |
  d4 c |
  bf16 c bf a g8 a |
  d4 r |
  bf'16 c bf a g8 f |
  e4 c |
  d16 e d bf a8 g |
  a4 a |
  <a' d,>2 |
  <<
    {
      \voiceOne
      a2 |
      g ~ |
      g
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d2 ~ |
      d4 bf |
      g2
    }
  >>
  \oneVoice
  d'4. d8 |
  bf4 bf8 bf |
  a2 |
  a |
  a |
  
  \time 6/8
  d4. ~ d4 c8 |
  f4 f8 g (f) d |
  c4 c8 a'4 a8 |
  bf (a) g f4 e8 |
  f4 f8 g (f) <e c> |
  
  \time 2/4
  <c a>2 ~ |
  <c a>4
  r4
  R2*3
  
  c4 (d8 e) |
  f4 f8 f |
  bf,4. (c8) |
  f4 r |
  R2*2
  r8 c a g |
  c4 f8 ef |
  d4 (g,) |
  c g' |
  c, c |
  b!8 (c) g'4 |
  e4. f8 |
  d4 e |
  f2 ~ |
  f4 f |
  c a'8 a |
  f4 a8 a |
  f (g) a bf |
  a4 c, |
  d2 |
  e4. f8 |
  c2 ~ |
  c4 r |
  r8 f f ef |
  d c bf bf |
  c c c c |
  f ef d c |
  bf4 d |
  c c |
  f2 ~ |
  f4 r |
  c r8 c |
  c2 |
  f ~ |
  f
}

% Lời
loiDiepKhucSolo = \lyricmode {
  \repeat unfold 34 { _ }
  <<
    {
      \set stanza = "1."
      Trong cánh đồng Bê -- lem
      một đêm đông lạnh lùng sương tuyết.
      Lắng tiếng gió than tịch liêu
      trăng sao buồn cô vắng khuất mờ phía trời xa.
      \set stanza = "1."
      Đoàn mục đồng ngồi canh thức
      bỗng thần sứ hiện ra báo tin vui mừng:
    }
    \new Lyrics \with {
      alignBelowContext = "loiDiepKhucSolo"
    }
    {
	    \set associatedVoice = "beSolo"
	    \set stanza = "2."
	    Đây tấm lòng tin mến
	    đoàn con xin chân thành dâng tiến.
	    Tiếng hát quyện theo lời kinh
	    như hương trầm nghi ngút trước tòa Chúa huyền linh.
	    \set stanza = "2."
	    Từ cuộc đời ngàn nguy khó
	    đón chờ Chúa dủ thương viếng thăm tâm hồn.
	  }
  >>
}

loiDiepKhucSop = \lyricmode {
  Hm __ \repeat unfold 8 { _ }
  Hm __ \repeat unfold 11 { _ }
  Hm __ \repeat unfold 10 { _ }
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn) _ _
  \revert Lyrics.LyricText.font-shape
  Hm __ \repeat unfold 17 { _ }
  <<
    {
      \set stanza = "1."
      Đoàn mục đồng ngồi canh thức.
    }
    \new Lyrics \with {
      alignBelowContext = "loiDiepKhucSop"
    }
    {
	    \set associatedVoice = "beSolo"
      \set stanza = "2."
      Từ cuộc đời ngàn nguy khó.
    }
  >>
  A __ _ _ _
  <<
    {
      \set stanza = "1."
      Rồi muôn sứ thần cùng hợp tiếng hát ca:
    }
    \new Lyrics \with {
      alignBelowContext = "loiDiepKhucSop"
    }
    {
	    \set associatedVoice = "beSop"
      \set stanza = "2."
      Này muôn tấm lòng cùng hợp tiếng hát ca:
    }
  >>
  Sáng danh ngàn đời sáng danh,
  sáng danh Thiên Chúa trên trời.
  Ngàn đời sáng danh,
  trên các tầng trời.
  Hm __
  A A A Cho ai người có lòng ngay.
  An bình cho những ai cho ai có lòng ngay ở nơi dương thế.
  ngay ở nơi dương thế.
}

loiDiepKhucAlto = \lyricmode {
  Hm __ \repeat unfold 5 { _ }
  Hm __ \repeat unfold 8 { _ }
  Hm __ \repeat unfold 10 { _ }
  Hm __ \repeat unfold 2 { _ }
  <<
    {
      \set stanza = "1."
      Đoàn mục đồng ngồi canh thức.
    }
    \new Lyrics \with {
      alignBelowContext = "loiDiepKhucAlto"
    }
    {
	    \set associatedVoice = "beAlto"
      \set stanza = "2."
      Từ cuộc đời ngàn nguy khó.
    }
  >>
  A __ _ _ _
  <<
    {
      \set stanza = "1."
      Rồi muôn sứ thần cùng hợp tiếng hát ca:
    }
    \new Lyrics \with {
      alignBelowContext = "loiDiepKhucAlto"
    }
    {
	    \set associatedVoice = "beAlto"
      \set stanza = "2."
      Này muôn tấm lòng cùng hợp tiếng hát ca:
    }
  >>
  Sáng danh ngàn đời sáng danh,
  sáng danh Thiên Chúa trên trời.
  Ngàn đời sáng danh, vinh danh, vinh danh
  trên các tầng trời.
  Hm __ _ _ _
  A A A Cho ai người có lòng ngay.
  muôn năm khang an
  cho ai
  suốt đời bình an
  cho ai có lòng ngay ở nơi dương thế.
  ngay ở nơi dương thế.
}

loiDiepKhucTenor = \lyricmode {
  Hm __ \repeat unfold 3 { _ }
  Hm __ \repeat unfold 4 { _ }
  Hm __ \repeat unfold 9 { _ }
  <<
    {
      \set stanza = "1."
      Đoàn mục đồng ngồi canh thức.
    }
    \new Lyrics \with {
      alignBelowContext = "loiDiepKhucTenor"
    }
    {
	    \set associatedVoice = "beTenor"
      \set stanza = "2."
      Từ cuộc đời ngàn nguy khó.
    }
  >>
  A __ _ _ _ _
  <<
    {
      \set stanza = "1."
      Nào mau ta hãy lên đường
      mà xem Con Chúa thiên tòa
      hạ sinh trong chốn hang lừa.
    }
    \new Lyrics \with {
      alignBelowContext = "loiDiepKhucTenor"
    }
    {
	    \set associatedVoice = "beTenor"
      \set stanza = "2."
      Đoàn con tha thiết dâng lời
      ngợi khen Thiên Chúa trên trời
      đã thương nhân thế bao đời.
    }
  >>
  Sáng danh ngàn đời sáng danh,
  ngàn đời rạng danh, ngàn đời sáng danh,
  sáng danh Thiên Chúa trên trời các tầng trời.
  An bình cho muôn người,
  cho muôn người nơi thế gian.
  Cho người lòng ngay.
  Muôn năm khang an cho những ai suốt đời bình an.
  Cho ai có lòng ngay cõi thế.
  ngay ở cõi thế.
}

loiDiepKhucBas = \lyricmode {
  \repeat unfold 5 { _ }
  Hm __ \repeat unfold 3 { _ }
  Hm __ \repeat unfold 14 { _ }
  Hm __ \repeat unfold 17 { _ }
  <<
    {
      \set stanza = "1."
      Đoàn mục đồng ngồi canh thức.
    }
    \new Lyrics \with {
      alignBelowContext = "loiDiepKhucBas"
    }
    {
	    \set associatedVoice = "beBas"
      \set stanza = "2."
      Từ cuộc đời ngàn nguy khó.
    }
  >>
  A __ _ _ _
  <<
    {
      \set stanza = "1."
      Nào mau ta hãy lên đường
      mà xem Con Chúa thiên tòa
      hạ sinh trong chốn hang lừa.
    }
    \new Lyrics \with {
      alignBelowContext = "loiDiepKhucBas"
    }
    {
	    \set associatedVoice = "beBas"
      \set stanza = "2."
      Đoàn con tha thiết dâng lời
      ngợi khen Thiên Chúa trên trời
      đã thương nhân thế bao đời.
    }
  >>
  Rạng danh ngàn đời rạng danh
  muôn đời rạng danh, muôn đời rạng danh,
  sáng danh Thiên Chúa trên trời trên cả tầng trời.
  An bình cho muôn người, cho muôn người nơi thế gian.
  Và cho ai ngay lành.
  Muôn năm an bình, an bình, bình an ngàn đời bình an,
  an bình, an bình những người trần thế.
  ngay ở trần thế.
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
  %page-count = #4
  %ragged-bottom = ##f
}

TongNhip = {
  \key f \major \time 2/4
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
        \new Voice = beSolo {
          \TongNhip \nhacDiepKhucSolo
        }
      \new Lyrics = "loiDiepKhucSolo" \lyricsto beSolo \loiDiepKhucSolo
    >>
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics = "loiDiepKhucSop" \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics = "loiDiepKhucAlto" \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacDiepKhucTenor
        }
      \new Lyrics = "loiDiepKhucTenor" \lyricsto beTenor \loiDiepKhucTenor
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics = "loiDiepKhucBas" \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.5
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
