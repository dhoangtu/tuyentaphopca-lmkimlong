% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Chúa Đã Phục Sinh" }
  poet = "Lời: Thánh thi CGKPV"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
\set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major \time 2/4
  \partial 4. r4.
  \repeat volta 2 {
    r8 c c16 (d) c8 |
    b4 c8 b |
    a4 r |
    r8 g g e |
    d c'4 a8 |
    b2 ~ |
    b4 r8 d |
    cs8 d b4 ~ |
    b8 b c b |
    a c4 e8
  }
  \alternative {
    {
      d2 ~ |
      d4 r
    }
    {
      d2 ~ |
      
      d4 r \bar "||"
    }
  }
  \key bf \major
  R2
  r8 bf c (bf) |
  a4 r |
  R2
  r8 c bf (a) |
  bf4 r8 d ^> |
  g,4. ef'8 |
  ef (d) c bf |
  a2 ~ |
  a8 g16 (a) bf8 a |
  g ef4 d8 |
  d2 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
\set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major \time 2/4
  r4. |
  R2
  r8 d d16 (e) d8 |
  c4 d8 c |
  b4 r |
  r8 d e fs |
  g2 ~ |
  g4 r8 b |
  as b g4 ~ |
  g8 g a g |
  fs e4 g8 |
  fs2 ~ |
  fs4 r |
  fs2 ~ |
  
  fs4 r |

  \key bf \major
  R2
  r8 g a (g) |
  fs4 r |
  R2
  r8 ef d (c) |
  d4 r8 g ^> |
  ef4. c'8 |
  c (bf) a g |
  fs2 ~ |
  fs8 d g ef |
  d c4 bf8 |
  a2
}

nhacDiepKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
\set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major \time 2/4
  b8 b16 (c) b8 |
  a4 b8 a |
  g4. g8 |
  a4 fs |
  g8 e e c |
  b a4 d8 |
  g,2 ~ |
  g8 g' fs b |
  e,4 e8 ef |
  d2 ~ |
  d4 a8 a |
  d2 ~ |
  d8 b' b16 (c) b8 |
  d,2 ~ |
  
  d8 d bf' \fermata g |
  
  \key bf \major
  a4 fs8 g16 (a) |
  d,2 ~ |
  d8 c ^> bf ^> a ^> |
  d4 d16 (ef) d8 |
  g2 ~ |
  g8 g ^> a ^> bf ^> |
  c2 ~ |
  c4 r |
  r d16 (ef) d8 |
  c bf d c |
  bf c4 g8 |
  <fs d>2
}

nhacPhienKhucSop = \relative c' {
  \key g \major \time 3/4
  R2.*2
  d'8. b16 d8 g, c b |
  
  \time 2/4
  a4 r8 a8 |
  b4. fs8 |
  g e4 e8 |
  d2 ~ |
  d4 r |
  R2*2
  r8. b'16 b8 b |
  c c4 a8 |
  d4 r8 d |
  d8. d16 d8 r |
  r4. e8 |
  e8. e16 e8 e |
  fs fs4 d8 |
  g2 ~ |
  g4 r \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \key g \major \time 3/4
  R2.*2
  g8. g16 b8 d, a' g |
  
  \time 2/4
  fs4 r8 fs |
  g4. d8 |
  e c4 cs8 |
  d2 ~ |
  d4 r |
  R2
  r4. g8 |
  g8. g16 g8 g |
  a a4 g8 |
  fs4 r8 fs |
  fs8. fs16 g8 r |
  r4. c8 |
  c8. c16 c8 c |
  d a4 a8 |
  b2 ~ |
  b4 r
}

nhacPhienKhucTenor = \relative c' {
  \key g \major \time 3/4
  R2.
  e8. c16 e8 a, d c |
  b2 b4 |
  
  \time 2/4
  a r |
  R2*2
  r4 d |
  b4. c8 |
  d b4 g8 |
  e'2 ~ |
  e8 d d8. d16 |
  d4 r |
  r8 a a8. a16 |
  a8 a b b ~ |
  b g c4 ~ |
  c8 a a8. a16 |
  d8 d4 d8 |
  g,2 ~ |
  g4 r
}

nhacPhienKhucBas = \relative c' {
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \key g \major \time 3/4
  d8. b16 d8 g, c b |
  a2 fs4 |
  g2 c,8. cs16 |
  
  \set Timing.beatStructure = #'(1 1)
  \time 2/4
  d8 d ef d |
  g4 r |
  R2
  r4 b |
  g4. a8 |
  b g4 e8 |
  c'2 ~ |
  c8 d d8. d16 |
  d4 r |
  r8 d, d8. d16 |
  a'8 a b b ~ |
  b g c4 ~ |
  c8 a a8. a16 |
  d8 d4 d8 |
  g,2 ~ |
  g4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Tinh tú đêm nay chói ngập trời.
  Sông Ngân vằng vặc ánh vàng trôi.
  Trên bờ suối bạc ai đã bắc cầu chuyển khối vui.
  vui.
  Lệ ứ trào.
  Gửi trời nao
  Tín đồ mất Chúa ôi cô quạnh.
  mỏm đá trơ vơ cả huyệt sầu.
  Bỗng đâu gió đẩy đất rung rinh.
  Thôn nữ sầu tan vội ngoảnh nhìn.
  reo vang Thiên Chúa đã phục sinh.
  Reo vang, reo vang
  Reo vang, reo vang Thiên Chúa đã phục sinh.
}

loiDiepKhucAlto = \lyricmode {
  Tinh tú đêm nay chói ngập trời.
  vằng vặc vàng trôi.
  Trên bờ suối bạc ai đã bắc cầu chuyển khối vui.
  vui.
  Lệ ứ trào.
  Gửi trời nao
  Tín đồ mất Chúa ôi cô quạnh.
  mỏm đá trơ vơ cả huyệt sầu.
}

loiDiepKhucBas = \lyricmode {
  Tinh tú đêm nay chói ngập trời đêm nay ngập trời.
  Sông Ngân vằng vặc vàng ánh trôi.
  Trên bờ suối bạc cao lồng lộng chuyển niềm vui.
  Tinh tú đêm
  vui.
  Buồn ngấm hàng mi lệ ứ trào.
  Hương lòng thờ kính gửi trời nao,
  gửi về trời nao.
  Ôi cô quạnh mỏm đá trơ vơ cả huyệt sầu.
}

loiPhienKhucSop = \lyricmode {
  Bỗng đâu gió đẩy đất rung rinh,
  Thôn nữ sầu tan vội ngoảnh nhìn.
  reo vang Thiên Chúa đã phục sinh.
  Reo vang, reo vang
  Reo vang reo vang Thiên Chúa đã phục sinh.
}

loiPhienKhucAlto = \lyricmode {
  Bỗng đâu gió đẩy đất rung rinh,
  Thôn nữ sầu tan vội ngoảnh nhìn.
  reo vang, reo vang Thiên Chúa đã phục sinh.
  Reo vang, reo vang.
  Reo vang reo vang Thiên Chúa đã phục sinh.
}

loiPhienKhucTenor = \lyricmode {
  Bỗng đâu gió đẩy đất rung rinh, rung rinh,
  Hai chàng xiêm áo in mầu tuyết.
  Reo vang, reo vang.
  Reo vang, reo vang Thiên Chúa đã phục sinh,
  reo avng Thiên Chúa cả thiên đình.
}

loiPhienKhucBas = \lyricmode {
  Bỗng đâu gió đẩy đất rung rinh, rung rinh
  bỗng đâu gió đẩy đất rung rinh.
  Hai chàng xiêm áo in mầu tuyết.
  Reo vang, reo vang.
  Reo vang, reo vang Thiên Chúa đã phục sinh,
  reo vang Thiên Chúa cả thiên đình.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
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
  %page-count = #3
  %ragged-bottom = ##t
}

TongNhip = {
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \nhacPhienKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \nhacPhienKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
        \clef "violin_8"
        \new Voice = beTenor {
          \nhacPhienKhucTenor
        }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenor
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    
  }
}
