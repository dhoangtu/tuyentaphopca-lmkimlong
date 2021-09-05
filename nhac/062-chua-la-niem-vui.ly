% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Chúa Là Niềm Vui" }
  %composer = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c' {
  \partial 8 r8 |
  R2
  r4 r8 d |
  e bf'4 g8 |
  a2 ~ \bar "||"
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  a4 r \bar ".|:"
  R2
  r4 r8 d |
  d b cs4 |
  r8 a a b |
  b4 r8 cs |
  d d r d |
  d d e d |
  a4. fs8 |
  fs b4 g8 |
  a4 r8 a |
  d d r fs |
  fs fs g fs |
  e4. a,8 |
  a b cs e |
  d2 ~ |
  d4 r
  \tweak extra-offset #'(-1.5 . -0.5)
  \mark \markup { \bold "Tận" }
  \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r8 |
  R2
  r4 r8 d e d4 d8 |
  cs2 ~ |
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  cs4 r |
  r8 b' b g |
  a4. fs8 |
  g4 (e) |
  r8 fs fs e |
  d4 r8 e |
  a a r a |
  b b g e |
  d4. d8 |
  d fs4 d8 |
  cs4 r8 e |
  fs fs r a |
  d d b a |
  g4. e8 |
  fs fs a g |
  fs2 ~ |
  fs4 r
}

nhacDiepKhucBas = \relative c {
  a8 |
  d d cs (d) |
  c4 r8 bf' |
  a g4 bf8 |
  a2 ~ |
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  a8 a a fs |
  g4 e |
  fs8 fs fs d |
  e4. a,8 |
  d d d g |
  g4 a8 (g) |
  fs fs r d |
  g g g g |
  fs4. d8 |
  b' d,4 e8 |
  a g fs e |
  d4 c! |
  b8 b b b |
  e4. cs8 |
  d b a a |
  d2 ~ |
  d4 r
}

nhacPhienKhucSop = \relative c' {
  \key d \major \time 2/4
  r2
  r
  r4 r8 d |
  a'8. a16 fs8 a |
  b4. a8 |
  d8. d16 b8 d |
  e2 |
  r8 d fs d16 (cs) |
  b8 b e d16 (b) |
  a2 ~ |
  a4 r |
  r r8 a |
  a fs' e cs |
  d2 ~ |
  d4 r \bar ":|."
}

nhacPhienKhucAlto = \relative c' {
  \key d \major \time 2/4
  r2
  r
  r4 r8 d |
  cs8. cs16 d8 fs |
  g4. g8 |
  fs8. fs16 g8 b |
  a2 |
  r8 a fs' d16 (cs) |
  g8 g e' d16 (b) |
  cs,2 ~ |
  cs4 r |
  r r8 cs |
  d a' b g |
  fs2 ~ |
  fs4 r
}

nhacPhienKhucBas = \relative c' {
  \key d \major \time 2/4
  d8 d a b |
  b a16 (b) e,8 e |
  e4 r |
  r r8 d |
  g8. g16 g8 e |
  d4 r |
  r8 cs d e |
  fs4 d |
  e e |
  a2 ~ |
  a8 fs b b16 (cs) |
  a4. g8 |
  fs fs g a |
  d,2 ~ |
  d8 a' a fs
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  Từ cuộc sống nổi trôi Chúa đã gọi con
  vì Ngài yêu con, Ngài yêu con,
  con hân hoan bước theo Ngài,
  Ngài đổi mới hồn con.
  Ngài thương con, con an tâm sống tin yêu:
  Ngài là nguồn vui của con.
}

loiDiepKhucAlto = \lyricmode {
  Từ cuộc sống nổi trôi Chúa đã gọi con, gọi con
  vì Ngài yêu con, Ngài yêu con,
  con hân hoan bước theo Ngài,
  Ngài đổi mới hồn con.
  Ngài thương con, con an tâm sống tin yêu:
  Ngài là nguồn vui của con.
}

loiDiepKhucBas = \lyricmode {
  Từ đêm đen tội lỗi, từ cuộc sống nổi trôi,
  Chúa đã gọi con, gọi con,
  Chúa đã gọi con, gọi con vì Ngài yêu con,
  Chúa yêu con, con hân hoan bước theo Ngài,
  Ngài đổi đời hồn con bởi yêu khôn lường,
  con an tâm và tin yêu:
  Ngài là nguồn vui của con.
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Hồn con reo mừng trong Chúa,
  hòa lên muôn lời ngợi ca:
  Tình mến thương Ngài bền vững muôn đời,
  là thành lũy che chở con.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Dù qua sa mạc tăm tối, dù gian nguy ngợp muôn lối,
  Miệng con tươi cười nhịp bước theo Ngài
  ngày càng thấm sâu vào con.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Lòng con không hề kinh hãi, cậy trông nơi Ngài luôn mãi.
  Nhờ cánh tay Ngài dìu dắt đêm ngày
  dệt mộng ước cho ngày mai.
}

loiPhienKhucSopBon = \lyricmode {
  \set stanza = #"4."
  Đời con xin phụng sự Chúa thành tâm trong niềm hân hoan.
  Được sống bên Ngài hạnh phúc cao vời,
  trầm hòa khúc ca tình yêu.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Chúa đã làm cho con những điều kỳ diệu.
  Hồn con reo vui vang rền ngợi ca danh Chúa triển khai mọi nơi.
  Niềm vui của Ngài là thành lũy che chở con.
  Chúa đã gọi
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Mỗi bước đường con đi Chúa đều đồng hành.
  Dù qua gian nguy muôn vàn, dù bao nguy khó vẫn tươi nào phai.
  Niềm vui của Ngài ngày càng thâm sâu ở con.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Dẫu biết đường tương lai sẽ còn miệt mài,
  Lòng con không kinh sợ gì,
  cậy tin nơi Chúa nào phai nồng say.
  Niềm vui của Ngài dệt mộng đẹp cho ngày mai.
}

loiPhienKhucBasBon = \lyricmode {
  \set stanza = #"4."
  Tấu khúc nhạc vang xa, cất lời cảm tạ,
  Đời con xin cung phụng Ngài,
  phụng sự vui sướng một mai nào vơi.
  Niềm vui của Ngài trầm hòa bài ca mến yêu.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  %page-count = #1
  print-page-number = #f
  system-system-spacing = #'((basic-distance . 15))
  systems-per-page = 4
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
  \new ChoirStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 14)
                            (padding . 1))
  }
  <<
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
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
        \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}

\score {
  \new ChoirStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 14)
                            (padding . 1))
  }
  <<
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = nhacThamChieuSop \nhacPhienKhucSop
      \new Lyrics \lyricsto nhacThamChieuSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto nhacThamChieuSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto nhacThamChieuSop \loiPhienKhucSopBa
      \new Lyrics \lyricsto nhacThamChieuSop \loiPhienKhucSopBon
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \nhacPhienKhucBas
        }
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiPhienKhucBasMot
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiPhienKhucBasHai
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiPhienKhucBasBa
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiPhienKhucBasBon
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
