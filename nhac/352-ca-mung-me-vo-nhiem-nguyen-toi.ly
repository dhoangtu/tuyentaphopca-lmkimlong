% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ca Mừng Mẹ Vô Nhiễm Nguyên Tội" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 8 r8 |
  R2
  r4 r8 c |
  c c bf c |
  a4 f8 a |
  bf4. a8 |
  g2 ~ |
  g8 f f d' |
  d4. bf8 |
  c4 g8 g |
  a4 r8 f |
  g g e d |
  c4. a'8 |
  a4 a8 a |
  f4. a8 |
  bf4. bf8 |
  c d bf a |
  g2 ~ |
  g8 g c c |
  f,2 ~ |
  f4 r \bar "|." \break
  
  f8 f g d |
  c2 ~ |
  c8 c a' a |
  a8. f16 bf8 bf |
  bf8. g16 c8 c |
  c4. c8 |
  d8. bf16 bf8 bf |
  bf4. bf8 |
  c8. a16 a8 a |
  a4. a8 |
  bf a g c |
  f,4 r8 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  f8 |
  f f e f |
  c4 f8 e |
  a4 g |
  f f8 f |
  d4. f8 |
  e2 ~ |
  e8 c d f |
  bf4. f8 |
  e4 e8 d |
  cs4 r |
  R2
  r4 r8 f |
  e e e e |
  a,4. e'8 |
  d4. d8 |
  f f f f |
  e2 ~ |
  e8 e e d |
  c2 ~ |
  c4 r
}

nhacDiepKhucBas = \relative c' {
  r8 |
  r4 r8 a |
  a a g a |
  f4. e8 |
  f4 d8 d |
  bf4. b!8 |
  c8. c'16 bf (c) bf8 |
  a4. a8 |
  g4 f8 (g) |
  c,4 c8 bf |
  a4 r |
  r r8 f' |
  a a f d |
  cs4 cs8 cs |
  d8. e16 d8 (c) |
  bf8. bf16 c8 (bf) |
  a g bf b! |
  c4 e8 (g) |
  c4 <g c,>4 |
  <a f>2 ~ |
  <a f>4 r |
  
  R2
  a8 a bf g |
  f2 ~ |
  f8. f16 ef8 ef |
  d8. g16 f8 f |
  e4 d8 (c) bf4. bf8 |
  g4 g'8 f |
  e4 a8 (g) |
  f4 bf8 (a) |
  g4 c8 (bf) |
  a4 r8
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Hân hoan chung lời ca mừng Mẹ Vô Nhiễm Nguyên Tội.
  Mẹ là sức sống, nguồn vui niềm cậy trông.
  Mẹ đã đón nhận Ngôi Lời
  giáng thế nơi cung lòng tinh trắng,
  để trao hiến cho nhân trần sự sống vĩnh hằng.
  
  \set stanza = "1."
  Cùng về đây bên Mẹ
  Vì luôn ghi tâm:
  Mẹ bao khoan nhân rộng ban muôn ân,
  Nghe thấu từng lời nguyện cầu,
  Uy phép Mẹ thực nhiệm mầu,
  nâng đỡ ủi an chữa bầu.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 43 { _ }
  \set stanza = "2."
  Cùng về đây bên Mẹ,
  Hòa chung câu ca,
  ngày đêm vang xa vọng ngân bao la
  Vinh chúc Mẹ đời lại đời
  luôn diễm lệ và rạng ngời,
  Nơi khắp nơi và cõi trời.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 43 { _ }
  \set stanza = "3."
  Cùng về đây bên Mẹ,
  Nguyện cho muôn dân hiệp thông tương thân
  rộng tay thi ân,
  Mau xóa sạch mọi hận thù,
  Soi lối đường còn mịt mù,
  Đây đó chung niềm kính thờ.
}

loiPhienKhucSopBon = \lyricmode {
  \repeat unfold 43 { _ }
  \set stanza = "4."
  Cùng về đây bên Mẹ,
  Ngợi ca cha ông,
  niềm Tin kiên trung
  Mẹ luôn bao dung,
  không khiếp sợ mọi cực hình,
  vinh thắng và nguyện trọn tình
  theo mẫu gương Mẹ tín thành.
}

loiPhienKhucAltoMot = \lyricmode {
  Hân hoan chung lời ca mừng,
  tới hân hoan ca mừng Mẹ Vô Nhiễm Nguyên Tội.
  Mẹ là sức sống, nguồn vui niềm cậy trông.
  Đón nhận ngay nơi cung lòng tinh trắng
  để trao hiến cho nhân trần sự sống vĩnh hằng.
}

loiPhienKhucBasMot = \lyricmode {
  Hân hoan chung lời ca mừng,
  ca mừng Mẹ Vô Nhiễm Nguyên Tội,
  vô nhiễm nguyên tội,
  sức sống nguồn vui niềm cậy trông
  Mẹ đã đón nhận Ngôi Lời
  nơi cung lòng rất tinh trắng
  và để trao tặng cho nhân trần sự sống vĩnh hằng.
  
  \set stanza = "1."
  Cùng về đây bên Mẹ,
  Mẹ bao khoan nhân
  khấng ban muôn ân,
  nghe lời nguyện cầu bởi uy quyền nhiệm mầu
  nâng đỡ chữa bầu.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 47 { _ }
  \set stanza = "2."
  Cùng về đây bên Mẹ
  Ngày đêm vang xa, vọng ngân bao la
  Kính phục mọi đời luôn diễm lệ
  sáng ngời khắp nơi cõi trời.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 47 { _ }
  \set stanza = "3."
  Cùng về đây bên Mẹ
  cảm thông tương thân,
  mở tay thi ân,
  Xóa sạch oán thù, soi lỗi đường tối mù,
  Đó đây kính thờ.
}

loiPhienKhucBasBon = \lyricmode {
  \repeat unfold 47 { _ }
  \set stanza = "4."
  Cùng về đây bên Mẹ
  vững tin kiên trung,
  Mẹ luôn bao dung,
  không sợ khổ hình,
  vinh thắng và hết tình,
  mẫu gương tín thành.
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
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBon
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBon
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override LyricHyphen.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}