% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Màn Đêm Tỏa Lan" }
  poet = "Cổ Điệu Pháp"
  composer = "Hòa âm: L. Raffy"
  arranger = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSopMot = \relative c'' {
  \partial 8 g8 |
  b4 c |
  d4. d8 |
  e e e c |
  d4 d8 d |
  e e e c |
  d8. e16 d8 c |
  b4 a |
  g4. g8 |
  a4 b |
  a4. g8 |
  a4 b |
  a4. g8 |
  a b c a |
  d8. e16 d8 c |
  b4 a |
  g4. g8 |
  a4 b |
  a4. g8 |
  a4 b |
  a4. g8 |
  a b c a |
  d8. e16 d8 c |
  b4 a |
  g4. \bar "|."
}

nhacPhienKhucSopHai = \relative c'' {
  \set Score.currentBarNumber = #25
  \partial 8 g8 |
  b4 c |
  d4. d8 |
  e e e c |
  d4 d8 d |
  e e e c |
  d8. e16 d8 c |
  b4 a |
  g4. g8 |
  a4 b |
  a4. g8 |
  a4 b |
  a4. g8 |
  a b c a |
  d8. e16 d8 c |
  b4 a |
  g4. g8 |
  a4 b |
  a4. g8 |
  a4 b |
  a4. g8 |
  a b c a |
  d8. e16 d8 c |
  b4 a |
  g4. \bar "|"
}

nhacPhienKhucSopBa = \relative c'' {
  \set Score.currentBarNumber = #49
  \partial 8 g8 |
  b4 c |
  d4. d8 |
  e e e c |
  d4 d8 e |
  e e e c |
  d8. e16 d8 c |
  b4 a |
  g4. g8 |
  a4 b |
  a r8 g |
  a4 b |
  a r8 g |
  a b c a |
  d8. e16 d8 c |
  b4 a |
  g4. g8 |
  a4 b |
  a r8 g |
  a4 b |
  a4 r8 g |
  a b c a |
  d8. e16 d8 c |
  b4 a |
  g4. \bar "||"
  g8 |
  g'4 e |
  d4. g,8 |
  g'4 e |
  d4. d8 |
  e4 fs |
  g2 ~ |
  g4 \bar "|."
}

nhacPhienKhucAltoMot = \relative c'' {
  g8 |
  g4 e |
  b'4. b8 |
  c b c a |
  b4 b8 g |
  c b c a |
  b8. c16 b8 a |
  g4 d |
  b4. b8 |
  d4 g |
  d4. b8 |
  d4 g |
  d4. b8 |
  d g a fs |
  g8. fs16 g8 e |
  d4 fs |
  g4. b,8 |
  d4 g |
  d4. b8 |
  d4 g |
  d4. b8 |
  d g a fs |
  g8. fs16 g8 e |
  d4 fs |
  g4.
}

nhacPhienKhucAltoBa = \relative c'' {
  d,8 g4 g |
  g8 fs g g |
  g4 g8 (a) |
  b (fs) g g |
  e fs g a |
  b8. fs16 g8 a |
  g4 fs |
  g4. b,8 |
  d4 g |
  d r8 b |
  d4 g |
  d r8 b |
  d g g fs |
  e8. e16 e8 fs |
  e4 d |
  e4. b8 |
  d4 g |
  d r8 b |
  d4 g |
  d r8 b |
  d g a fs |
  g8. g16 g8 a |
  g4 fs |
  g4. g8 |
  c4 g |
  g4. g8 |
  c4 g8 (a) |
  b fs g b |
  c4 c |
  b2 ~ |
  b4
}

nhacPhienKhucTenorHai = \relative c' {
  b8 |
  d4 e |
  d4. b8 |
  c c c a |
  b (a) b b |
  c d e fs |
  g8. fs16 g8 e |
  d4 c |
  b4. r8 |
  r d d d |
  d4. r8 |
  r d d d |
  d4. b8 |
  d d d fs |
  g8. g16 g8 e |
  d4 c |
  d4. r8 |
  r d d d |
  d4. r8 |
  r d d d |
  d4. b8 |
  d d d fs |
  g8. g16 g8 e |
  d4 c |
  b4.
}

nhacPhienKhucTenorBa = \relative c' {
  b8 |
  d4 c8 (e) |
  d4. b8 |
  c c c c |
  b (c) b b |
  c c c c |
  b8. c16 d8 e |
  d4 <d c> |
  <d b>4. r8 |
  r4 r8 g, |
  a4 b |
  a r8 g |
  a4 b |
  a8 d d d |
  c8. c16 d8 e |
  d4 <d c> |
  <d b>4. r8 |
  r4 r8 g, |
  a4 b |
  a r8 g |
  a a b b |
  a d d d |
  d8. c16 d8 e |
  d4 <d c> |
  <d b>4. g,8 |
  e'4 c |
  b4. g8 |
  e'4 c |
  b8 c d g |
  g4 d |
  d2 ~ |
  d4
}

nhacPhienKhucBasHai = \relative c' {
  g8 |
  g4 g |
  g4. g8 |
  g g g g |
  g4 g8 g |
  g g g g |
  g8. g16 b8 c |
  d4 d, |
  g4. r8 |
  r d d d |
  d4. r8 |
  r d d d |
  d4. g8 |
  fs e d c |
  b8. c16 b8 c |
  d4 d |
  g4. r8 |
  r d d d |
  d4. r8 |
  r d d d |
  d4. g8 |
  fs e d c |
  b8. a16 b8 c |
  d4 d |
  <g g,>4.
}

nhacPhienKhucBasBa = \relative c' {
  g8 |
  g (fs) e (c) |
  b a b g |
  c4 (e) |
  g8 (a) b g |
  c, (d) e fs |
  g8. a16 b8 c |
  d4 d, |
  g4. r8 |
  r4 r8 b, |
  d4 g |
  d r8 b |
  d4 g |
  fs8 e d c |
  b8. a16 b8 c |
  d4 d |
  g4. r8 |
  r4 r8 b, |
  d4 g |
  d r8 b |
  d d g g |
  fs e d c |
  b8. a16 b8 c |
  d4 d |
  g4. g8 |
  c,4 e |
  g4. g8 |
  c, (d) e (fs) |
  g a b g |
  c (b) a (d,) |
  g2 ~ |
  g4
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Màn đêm tỏa lan, nhân thế khắp chốn còn miên man,
  Đây ánh sáng mới từ đâu chiếu soi điểm tô muôn màu.
  Đừng xao xuyến chi, cùng vui hát đi,
  vì đây ta báo một tin rất hoan hỉ cho muôn người:
  Này Vua Cứu Tinh vừa đây giáng sinh,
  Rạng danh Thiên Chúa quyền linh,
  thế nhân hưởng ơn an bình.
}

loiPhienKhucSopHai = \lyricmode {
  Này nghe vẳng xa bao tiếng thánh thót lời hoan ca,
  muôn lớp lớp sứ thần vui hát ca cảm khen Vua Trời.
  Đừng xao xuyến chi cùng vui hát đi,
  vì đây ta báo một tin rất hoan hỉ cho muôn người:
  Này Vua Cứu Tinh giờ đây giáng sinh.
  Rạng danh Thiên Chúa quyền linh,
  thế nhân hưởng ơn an bình.
}

loiPhienKhucSopBa = \lyricmode {
  Hài Nhi nhỏ xinh an giấc giữa máng lừa hôi tanh,
  Con Chúa phép tắc quyền linh
  giáng sinh tỏa ban ơn lành.
  Đừng xao xuyến chi, cùng vui hát đi,
  vì đây ta báo một tin rất hoan hỉ cho muôn người:
  Này Vua Cứu Tinh vừa đây giáng sinh,
  rạng danh Thiên Chúa quyền linh
  thế nhân hưởng ơn an bình.
  Mừng Chúa giáng sinh, mừng Chúa giáng sinh,
  Mừng Chúa giáng sinh.

}

loiPhienKhucAltoMot = \lyricmode {
  Màn đêm tỏa lan, nhân thế khắp chốn còn miên man,
  Đây ánh sáng mới từ đâu chiếu soi điểm tô muôn màu.
  Đừng xao xuyến chi, cùng vui hát đi,
  vì đây ta báo một tin rất hoan hỉ cho muôn người:
  Này Vua Cứu Tinh vừa đây giáng sinh,
  Rạng danh Thiên Chúa quyền linh,
  thế nhân hưởng ơn an bình.
}

loiPhienKhucAltoBa = \lyricmode {
  Hài Nhi nhỏ xinh an giấc giữa máng lừa hôi tanh,
  Con Vua phép tắc quyền linh hạ sinh tỏa ban ơn lành.
  Đừng xao xuyến chi, cùng vui hát đi,
  vì đây ta báo một tin rất hoan hỉ cho muôn người:
  Này Vua Cứu Tinh vừa đây giáng sinh
  rạng danh Thiên Chúa quyền linh
  thế nhân hưởng ơn an bình.
  Mừng Chúa giáng sinh, mừng Chúa giáng sinh
  nào ta mừng Chúa giáng sinh.
}

loiPhienKhucTenorHai = \lyricmode {
  Này nghe vẳng xa bao tiếng thánh thót lời hoan ca,
  muôn lớp lớp sứ thần vui hòa ca cảm khen Vua Trời.
  Thôi xao xuyến chi mau vui ca đi,
  vì đây ta báo một tin rất hoan hỉ cho muôn người:
  Đây Vua Cứu Tinh hôm nay giáng sinh.
  Rạng danh Thiên Chúa quyền linh,
  thế nhân hưởng ơn an bình.
}

loiPhienKhucTenorBa = \lyricmode {
  Hài Nhi nhỏ xinh an giấc giữa máng lừa hôi tanh,
  Con Chúa phép tắc hiển linh hạ sinh tỏa ban ơn lành.
  Đừng xao xuyến chi, cùng vui hát đi
  ta báo một tin thật hoan hỉ cho muôn người:
  Này Vua Cứu Tinh vừa đây giáng sinh,
  sáng danh Thiên Chúa uy linh
  thế nhân hưởng ơn an bình.
  Mừng Chúa giáng sinh, mừng Chúa giáng sinh
  nào ta hát Chúa giáng sinh.
}

loiPhienKhucBasHai = \lyricmode {
  Này nghe vang xa bao tiếng thánh thót lời hoan ca,
  muôn lớp lớp sứ thần vui hòa ca cảm khen Vua Trời.
  Thôi xao xuyến chi mau vui ca đi,
  vì đây ta báo một tin rất hoan hỉ cho muôn người:
  Đây Vua Cứu Tinh hôm nay giáng sinh.
  Sáng danh Thiên Chúa quyền linh,
  thế nhân hưởng ơn anh bình.
}

loiPhienKhucBasBa = \lyricmode {
  Hài Nhi nhỏ xinh an giấc giữa máng hôi tanh:
  Con của Chúa hiển linh hạ sinh tỏa ban ơn lành.
  Đừng xao xuyến chi, cùng vui hát đi
  ta báo một tin thật hoan hỉ cho muôn người:
  Này Vua Cứu Tinh vừa đây hạ sinh,
  sáng danh Thiên Chúa uy linh
  thế nhân hưởng ơn an bình.
  Mừng mùa giáng sinh, mừng mùa giáng sinh
  nào ta mừng Chúa giáng sinh.
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
  %page-count = #4
  %ragged-bottom = ##t
  %systems-per-page = 3
}

TongNhip = {
  \key g \major
  \time 2/4
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef treble
        \new Voice = beSop {
          \TongNhip 
        }
        \new Voice \TongNhip \partCombine 
          \nhacPhienKhucSopMot
          \notBePhu -2 { \nhacPhienKhucAltoMot }
        \new NullVoice = nhacThamChieuHai \nhacPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuHai \loiPhienKhucSopMot
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

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSopHai
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
    >>
    \new Staff <<
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacPhienKhucTenorHai
        }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenorHai
    >>
    \new Staff <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBasHai
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.5
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSopBa
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacPhienKhucAltoBa
        }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoBa
    >>
    \new Staff <<
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacPhienKhucTenorBa
        }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenorBa
    >>
    \new Staff <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBasBa
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.5
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    
  }
}
