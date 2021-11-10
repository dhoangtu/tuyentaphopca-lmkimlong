% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Từ Trước Muôn Đời" }
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

nhacDiepKhucSop = \relative c' {
  c8 (d) |
  g4. g8 |
  g8. g16 e8 d |
  g8 g a (c |
  g4) c8 e |
  d d16 (c) a8 g |
  a4 a8 c |
  a8 a16 (g) e8 d |
  e4. e16 (d) |
  c8. d16 e8 d |
  g4. a16 (g) |
  e8. g16 a8 g |
  c4
}

nhacDiepKhucAlto = \relative c'' {
  %\autoPageBreaksOff
  \partial 4 r4 |
  r8 c b4 |
  c2 ~ |
  c4 r8 c16 c |
  b8. b16 c8 r |
  r8. c16 c8 (b) |
  a4 r |
  r8. g16 g8 (f) |
  e4 r |
  r r8 a |
  g d' b b |
  c4 c8 (g) c4 \bar "||" 
  %\pageBreak
  
  e8 g |
  e4 d |
  c8 c d (c) |
  g4 g8 g |
  e4 a |
  a8 a g4 |
  c4. c8 |
  b (c) d e |
  d2 ~ |
  d4 e8 g |
  e4 d |
  c8 c d (c) |
  g4 g8 g |
  e4 a |
  a8 a g4 |
  c4. c8 |
  b (c) d e |
  c2 ~ |
  c4 \bar "|."
}

nhacDiepKhucTenor = \relative c' {
  r4 |
  r8 e d4 |
  e2 ~ |
  e4 r8 e16 e |
  d8. d16 e8 r |
  r8. e16 f8 (g) |
  f4 r |
  r8. b,16 c8 (d) |
  c4 r |
  r r8 f |
  c a' g g |
  g4 f |
  e
  
  g8 g |
  g4 f |
  e8 e e4 |
  d d8 d |
  c4 c |
  f8 f f4 |
  e4. a8 |
  g4 a8 c |
  b2 ~ |
  b4 c8 d |
  g,4 f |
  e8 e e4 |
  d d8 d |
  c4 c |
  f8 f f4 |
  e4. f8 |
  g (e) f g |
  e2 ~ |
  e4
}

nhacDiepKhucBas = \relative c {
  r4 |
  r8 c g4 |
  c2 ~ |
  c4 r8 c16 c |
  g'8. f16 e8 r |
  r8. c16 d8 (e) |
  f4 r |
  r8. g,16 a8 (b) |
  c4 r |
  r r8 f |
  e f
  \autoBeamOff
  g g, |
  \autoBeamOn
  c e d4 |
  c
  
  c8 b |
  c4 d |
  a'8 a a,4 |
  b b8 b |
  c4 f |
  d8 d d4 |
  c e8 (f) |
  g4 fs |
  g8. d16 g8 f |
  e d c b |
  c4 d8 d |
  a' a a,4 |
  g g8 g |
  c4 f |
  d8 d d4 |
  c a |
  g g |
  c2 ~ |
  c4
}

% Lời
loiDiepKhucSopMot = \lyricmode {
  \set stanza = "1."
  Tình yêu, ôi cao siêu là tình yêu Thiên Chúa
  đã đoái thương thân phận mòn hèn
  mà mến thương con tự ngàn đời
  luôn hằng chan tưới hồng ân
  dẫn lần con tới bàn thánh.
}

loiDiepKhucSopHai = \lyricmode {
  \set stanza = "2."
  Bụi tro, ôi thân con là bụi tr đâu đáng
  mà Chúa cao siêu ngợp tầng trời
  đà khắc tên con vào lòng Ngài
  nên bạn tâm phúc từ đây
  giữa hàng vinh phúc quyền uy.
}

loiDiepKhucSopBa = \lyricmode {
  \set stanza = "3."
  Đời con, con xin dâng trọn đời con cho Chúa
  thành ánh quang chiếu rọi cuộc đời,
  thành muối thiêng ướp mặn lòng người,
  luôn tìm vinh phúc trường sinh,
  vững niềm tin Chúa quyền linh.
}

loiDiepKhucAltoMot = \lyricmode {
  \set stanza = "1."
  Ôi tình yêu
  cao siêu là tình yêu
  thân mọn hèn
  tự ngàn đời
  ban hồng ân
  dẫn con tới bàn thánh.
  
  Muôn tiếng ca vang hòa lời chúc tụng:
  Con Linh mục Chúa vui lên bàn thánh
  đáp tình Chúa mến thương.
  Xin tiến dâng Cha trọn vẹn xác hồn
  nên như của lễ thay cho trần thế ca tụng yêu mến Ngài.

}

loiDiepKhucAltoHai = \lyricmode {
  \set stanza = "2."
  Ôi bụi tro thân con là bụi tro,
  ngợp tầng trời
  vào lòng Ngài
  nên bạn thân
  giữa hàng vinh quyền uy.
}

loiDiepKhucAltoBa = \lyricmode {
  \set stanza = "3."
  Đây đời con,
  xin dâng trọn đời con
  soi trần đời
  mặn lòng người,
  phúc trường sinh,
  vững tin Chúa quyền linh.
}

loiDiepKhucBasMot = \lyricmode {
  \set stanza = "1."
  Ôi tình yêu cao siêu là tình yêu
  phận mòn hèn
  tự ngàn đời
  ban hồng ân dẫn lần con tới bàn thánh.
  
  Muôn tiếng ca vang xa tới phục tụng: Con Linh mục Chúa
  vui lên bàn thánh để đáp mến thương,
  tình Chúa mến thương muôn đời.
  Nguyện dâng Cha này trót xác hồn con nên như của lễ
  thay cho trần thế ca tụng tình Ngài.

}
loiDiepKhucBasHai = \lyricmode {
  \set stanza = "2."
  Ôi bụi tro, thân con là bụi tro,
  ngợp tầng trời,
  vào lòng Ngài,
  nên bạn thân giữa hàng vinh phúc quyền uy.
}

loiDiepKhucBasBa = \lyricmode {
  \set stanza = "3."
  Đây đời con xin dâng trọn đời con.
  dọi trần đời mặn lòng người,
  phúc trường sinh vững lòng tin Chúa quyền linh.
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
  \key c \major \time 2/4
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
    \new Staff = "1" <<
        \clef treble
        \new Voice = solo {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto solo \loiDiepKhucSopMot
      \new Lyrics \lyricsto solo \loiDiepKhucSopHai
      \new Lyrics \lyricsto solo \loiDiepKhucSopBa
    >>
    \new Staff = "2" <<
        \clef treble
        \new Voice = solo {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics \lyricsto solo \loiDiepKhucAltoMot
      \new Lyrics \lyricsto solo \loiDiepKhucAltoHai
      \new Lyrics \lyricsto solo \loiDiepKhucAltoBa
    >>
    \new Staff = "2" \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef bass
        \new Voice \TongNhip \partCombine 
          \nhacDiepKhucTenor
          \notBePhu -2 { \nhacDiepKhucBas }
        \new NullVoice = beSop \nhacDiepKhucBas
        \new Lyrics \lyricsto beSop \loiDiepKhucBasMot
        \new Lyrics \lyricsto beSop \loiDiepKhucBasHai
        \new Lyrics \lyricsto beSop \loiDiepKhucBasBa
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
