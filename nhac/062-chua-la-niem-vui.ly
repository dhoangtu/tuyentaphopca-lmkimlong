% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Chúa Là Niềm Vui" }
  composer = " "
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c'' {
  
}

nhacDiepKhucAlto = \relative c'' {
  
}

nhacDiepKhucBas = \relative c {
  
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  
}

nhacPhienKhucAlto = \relative c' {
  
}

nhacPhienKhucBas = \relative c {
  
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

loiDiepKhucBas = \lyricmode {
  Từ đêm đen tội lỗi, từ cuộc sống nổi trôi,
  Chúa đã gọi con, gọi con,
  Chúa đã gọi con, gọi con vì Ngài yêu con,
  Chúa yêu con, con hân hoan bước theo Ngài,
  Ngài đổi mới hồn con bởi yêu khôn lường,
  con an tâm và tin yêu:
  Ngài là nguồn vui của con.
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Hồn con reo mừng trong Chúa
  hòa lên muôn lời ngợi ca:
  Tình mến thương Ngài bền vững muôn đời,
  là thành lũy che chở con.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Dù qua sa mạc tăm tối, dù gian nguy ngợp muôn lối,
  miệng con tươi cười nhịp bước theo Ngài
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
  Được sống bên Ngài hạnh phúc cao vời
  trầm hòa khúc ca tình yêu.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Chúa đã làm cho con những điều kỳ diệu.
  Hồn con reo vui vang rền ngợi ca danh Chúa triển khai mọi nơi.
  Niềm vui của Ngài là thành lũy che chở con.
  Chúa đã gọi...
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Mỗi bước đường con đi Chúa đều đồng hành.
  Dù qua gian nguy muôn vàn, dù bao nguy khó vẫn tươi nào phai.
  Niềm vui của Ngài ngày càng thâm sâu ở con.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Dẫu biết đường tương lai sẽ còn miệt mài.
  Lòng con không kinh sợ gì
  cậy tin nơi Chúa nào phai nồng say.
  Niềm vui của Ngài dệt mộng đẹp cho ngày mai.
}

loiPhienKhucBasBon = \lyricmode {
  \set stanza = #"4."
  Tấu khúc nhạc vang xa cất lời cảm tạ.
  Đời con xin cung phụng Ngài,
  phụng sự vui sướng một mai nào vơi.
  Niềm vui của Ngài trầm hòa bài ca mến yêu.
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
  %page-count = #1
  print-page-number = #f
  system-system-spacing = #'((basic-distance . 15))
  %score-system-spacing = #'((basic-distance . 15))
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
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = nhacThamChieuSop \nhacDiepKhucSop
      \new Lyrics \lyricsto nhacThamChieuSop \loiDiepKhucSop
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \nhacDiepKhucBas
        }
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
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
          \nhacDiepKhucBas
        }
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiPhienKhucBasMot
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiPhienKhucBasHai
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiPhienKhucBasBa
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiPhienKhucBasBon
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
