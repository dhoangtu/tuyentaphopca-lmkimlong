% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bạn Tình Ta Ơi" }
  composer = "Ý: Diễm Ca"
  %arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopAMot = \relative c' {
  \key g \major \time 3/4
  \partial 4 \tuplet 3/2 { b8 d g } |
  g4. fs8 g a |
  b4. b8 \tuplet 3/2 { c b a } |
  e4. a8 \tuplet 3/2 { b a g } |
  d4. e16 (d) \tuplet 3/2 { b8 d g } |
  g2 r4 |
  
}

nhacPhienKhucBasAMot = \relative c' {
  
}

nhacPhienKhucSopBMot = \relative c'' {
  
}

nhacPhienKhucBasBMot = \relative c' {
  
}

% Lời phiên khúc
loiPhienKhucSopAMot = \lyrics {
  Bạn tình ta ơi
  Bạn kiều diễm lắm
  Xinh thắm như bông hồng
  Thơm nức muôn hương nồng
  Hỡi bạn tình ta ơi
}

loiPhienKhucSopAHai = \lyrics {
  Bạn tình ta ơi
  Kìa bạn đi tới
  Như ánh dương huy hoàng
  Chân bước trên cung đàn
  Hỡi bạn tình ta ơi
}

loiPhienKhucSopABa = \lyrics {
  Bạn tình ta ơi
  Lời bạn êm ái
  Tha thiết như cung đàn
  Cao vút trên mây ngàn
  Hỡi bạn tình ta ơi
}

loiPhienKhucBasAMot = \lyrics {
  Bạn tình ta ơi
  Bạn kiều diễm lắm
  Xinh thắm bông hồng
  Hỡi bạn tình ta ơi
}

loiPhienKhucBasAHai = \lyrics {
  Bạn tình ta ơi
  Kìa bạn đi tới
  Như ánh huy hoàng
  Hỡi bạn tình ta ơi
}

loiPhienKhucBasABa = \lyrics {
  Bạn tình ta ơi
  Lời bạn êm ái
  Tha thiết cung đàn
  Hỡi bạn tình ta ơi
}

loiPhienKhucSopBMot = \lyrics {
  Nương trổ hoa thắm tươi
  Bạn ơi
  Bạn ơi
  Nào ta đi tới
  Hãy tới cùng ta
  Hãy tới cùng ta
  Hỡi Hỡi hỡi bạn tình ta
}

loiPhienKhucSopBHai = \lyrics {
  Này bạn hỡi
  Nào mau đi tới
  Hãy tới cùng ta
  Hãy tới cùng ta
  Hỡi Hỡi
}

loiPhienKhucBasB = \lyrics {
  Mùa xuân đến ngang trời
  trổ hoa đẹp tươi
  Từ Li -- ba -- nô
  Này bạn ơi
  Nào mau đi tới
  Hãy tới cùng ta
  Hãy tới cùng ta
  hỡi hỡi bạn tình ta.
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
}

TongNhip = {
  \key g \major
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
        \new Voice = "beSopA" {
          \clef treble \TongNhip \nhacPhienKhucSopAMot
        }
        \new Lyrics \lyricsto beSopA \loiPhienKhucSopAMot
        \new Lyrics \lyricsto beSopA \loiPhienKhucSopAHai
        \new Lyrics \lyricsto beSopA \loiPhienKhucSopABa
      >>
    \new Staff <<
      \new Voice = "beBassA" {
        \clef bass \TongNhip \nhacPhienKhucBasAMot
      }
      \new Lyrics \lyricsto beBassA \loiPhienKhucBasAMot
      \new Lyrics \lyricsto beBassA \loiPhienKhucBasAHai
      \new Lyrics \lyricsto beBassA \loiPhienKhucBasABa
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \new Voice = "beSopB" {
          \clef treble \TongNhip \nhacPhienKhucSopBMot
        }
        \new Lyrics \lyricsto beSopB \loiPhienKhucSopBMot
      >>
    \new Staff <<
      \new Voice = "beBassB" {
        \clef bass \TongNhip \nhacPhienKhucBasAMot
      }
      \new Lyrics \lyricsto beBassB \loiPhienKhucBasAMot
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  }
}
