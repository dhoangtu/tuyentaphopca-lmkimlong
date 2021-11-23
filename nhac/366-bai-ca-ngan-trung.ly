% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bài Ca Ngàn Trùng" }
  composer = "Lời: Hoàng Khánh"
  arranger = "Lm. Kim Long"
  tagline = ##f
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

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \autoPageBreaksOff
  \notBePhu -2 {
    <<
      {
        d8
        _\markup { \lower #3.3 \halign #-0.3 \bold "Intr." }
        d16 c a8 c |
        d8 d16 c f8 g |
      }
      \\
      {
        \skip 2
        bf,4 a
      }
      {
        \stemDown
        <a f>2 |
        e
      }
    >>
  }
  <<
    {
      \voiceOne
      \once \override NoteColumn.force-hshift = #1.5
      d'8 c d16 (c) a8
    }
    \new Voice = "splitpart" \notBePhu -2 {
	    \voiceTwo
	    <d a f>4 r
    }
  >>
  \oneVoice
  a2 ~ |
  a4 r8 g |
  a g a (c) |
  d2 ~ |
  d4 r |
  R2
  r8 d c d |
  a4 a |
  f'8 ^> f ^> e f16 (e) |
  d4 d8 ^\pp d |
  cs4. cs8 |
  d2 ~ |
  d4 r |
  R2
  r4 f8 ^> f ^> |
  e4. e8 |
  e4 f8 ^> e ^> |
  d4. d8 |
  d4. r8 |
  
  \pageBreak
  
  R2
  r8 d cs4 |
  d8 d bf d |
  a4. g8 |
  a4 f'16 (e f e) |
  d2 ~ |
  d4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  R2*4
  a8 g a16 (g) e8 |
  e4 r8 e |
  f e f (g) |
  a4 r |
  R2
  r8 a a f |
  e4 e |
  a8 ^> a ^> cs cs |
  d (a) bf bf |
  a4. g8 |
  f2 ~ |
  f4 r |
  R2
  r4 d'8 ^> d ^> |
  d4. d8 |
  cs4 cs8 ^> cs ^> |
  d8 ([bf a]) g |
  f4 f |
  c'8 c d16 (c) g8 |
  a4. e8 |
  f f d g |
  f4. e8 |
  f4 a8 (g) |
  f2 ~ |
  f4
}

nhacDiepKhucBas = \relative c' {
  \set fontSize = #-2
  <<
    {
      d2 ~ |
      d4
    }
    {
      \skip 2
      g,4
    }
  >>
  <c a>4 <d d,> r |
  
  \set fontSize = #0
  f,8 e f16 (e) c8 |
  c2 ~ |
  c4 r8 a |
  d c d (e) |
  f4 d8 (f) |
  g a16 (g) f8 g16 (f) |
  d8 f f bf, |
  c4 cs |
  d8 ^> d ^> g g |
  f r16 f ^\f g8 f16 (g) |
  a8 a \slashedGrace { f16 ( } e8) a, |
  d2 ~ |
  d4 g8 f |
  g4 a8 (g16 f) |
  \slashedGrace { c16 ( }d4) d8 ^> d ^> |
  g4. g8 |
  a4 a,8 ^> a ^> |
  bf4. bf8 |
  bf4. r8 |
  R2
  r8 d a4 |
  d2 ~ |
  d8 d' ^> c ^> bf ^> |
  a4
  <<
    {
      \voiceOne
      a8. (bf16)
    }
    \new Voice = "splitpart" \with { alignBelowContext = "beBas" } {
	    \voiceTwo
      a,4
    }
  >>
  \oneVoice
  <a' d,>2 ~ |
  <a d,>4
}

nhacPhienKhucSop = \relative c'' {
  \autoPageBreaksOff
  \partial 4 g8 a |
  f g16 (f) d8 c |
  d4 f8 (e) |
  d (g) bf g |
  a2 ~ |
  a4 g8 (c) |
  d d16 (c) d8 c |
  g4 g |
  e8 e e g |
  a a f16 (e) f8 |
  d2 \bar "||"
}

nhacPhienKhucBas = \relative c' {
  r4 |
  r g8 a |
  f g16 (f) d8 c |
  d2 ~ |
  d8 d d' g, |
  a4. a16 (g) |
  f4 f8 f |
  e d cs (d) |
  g4. bf8 |
  a4
  <<
    {
      \voiceOne a8 (g)
    }
    \new Voice = "splitpart" {
	    \voiceTwo a,4
    }
  >>
  \oneVoice
  <f' d>2
}

% Lời
loiDiepKhucSop = \lyricmode {
  Đây bài ca ngàn trùng hiệp dâng về Thiên Chúa.
  thắm nhuộm máu hồng từng lớp lớp đang tiến lên
  hy sinh vì tình yêu.
  Ánh Đức Tin kiên trung chiếu sáng khi gươm vung.
  Đây bài ca vang hòa đất trời
  ngàn đời tiến dâng.
}

loiDiepKhucAlto = \lyricmode {
  Đây bài ca ngàn trùng hiệp dâng về Thiên Chúa.
  thắm nhuộm máu hồng từng lớp lớp đang tiến lên
  hy sinh vì tình yêu.
  Ánh Đức Tin kiên trung chiếu sáng khi gươm vung.
  Bài ca vinh thắng hòa ca,
  bài ca vang hòa đất trời ngàn đời tiến dâng.
}

loiDiepKhucBas = \lyricmode {
  _ _ _
  Đây bài ca ngàn trùng hiệp dâng về Thiên Chúa,
  bài ca thắm nhuộm máu hồng,
  thắm nhuộm máu hồng
  từng lớp lớp đang tiến lên
  nguyện dâng đời sống chứng minh tình yêu.
  Cho đầu rơi máu chảy một niềm Tin kiên trung
  ngời rạng khi gươm vung.
  Đây bài ca tấu vang muôn đời
  <<
    { tiến }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    hiệp
	}
  >>
  dâng.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Không có tình yêu nào trọng đại
  cho bằng chết vì yêu.
  Nhìn Chúa đẫm máu trên đồi cao
  từng đoàn người anh dũng tiến lên pháp trường.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Ai chối từ xác phàm trần lụy sẽ được sống hiển vinh.
  Vì Đấng phán xét trong quyền linh
  đã tự nhận đau đớn với muôn khổ hình.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Tay Chúa hằng che chở phù trợ quân thù sẽ phải lui.
  Họ chiến thắng hát ca mừng vui
  dù người trần chê trách lãng quên suốt đời.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = "1."
  Không có tình yêu nào trọng đại bằng chết vì yêu
  ngắm nhìn Chúa đẫm máu trên đồi cao
  tiến lên pháp trường.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = "2."
  Ai chối từ xác phàm trần lụy được sống hiển vinh
  bởi vì Đấng phát xét trong quyền linh
  đớn đau khổ hình.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = "3."
  Tay Chúa hằng che chở phù trợ
  địch sẽ phải lui
  khiến họ chiến thắng hát ca mừng vui,
  trách chê trọn đời.
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
  page-count = #2
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
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
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
