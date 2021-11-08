% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Tình Yêu Thiên Chúa" }
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

nhacDiepKhucSop = \relative c'' {
  \partial 4. c8 a a |
  a4 f8 g16 (f) |
  d2 ~ |
  d8 d e16 (d) c8 |
  f8. d16 g8 g |
  a8. f16 a8 a |
  bf8. g16 bf8 c |
  c2 |
  c8. a16 a8 a |
  bf2 |
  bf8. g16 g8 g |
  a4 a8 g16 (f) |
  d4. d8 |
  d g f d |
  c2 ~ |
  c4 r8 c |
  f8 f16 f f8 g |
  a a16 g a8 bf |
  c2 ~ |
  c8 c d d |
  bf bf c c |
  a a bf bf |
  g4 g8 g |
  c4. e,8 |
  f2 ~ |
  f4 r \bar "|." \break
  
  f8. e16 f8 a |
  \slashedGrace { a,16 (bf } c2) ~ |
  c4. r8 |
  r g'16 a f8 g16 (f) |
  d4 r8 d |
  c f e (f) |
  g4. f8 |
  a a bf8. g16 |
  c8 c4 bf8 |
  g c a16 (g) e8 |
  f2 ~ |
  f8 \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  c8 a a |
  a4 f8 g16 (f) |
  d2 ~ |
  d8 d e16 (d) c8 |
  f8. d16 c8 c |
  f8. d16 f8 e |
  d8. f16 f8 g |
  e2 |
  a8. f16 f8 f |
  e2 |
  d8. d16 d8 d |
  c4 c8 [c] |
  bf4. c8 |
  b! b b b |
  c2 ~ |
  c4 r8 c |
  f8 f16 f f8 e |
  f8 f16 d f8 f |
  e2 ~ |
  e8 e f f |
  d e g g |
  f f d d |
  e4 e8 e |
  f ([g f]) bf, |
  a2 ~ |
  a4 r |
  
  f'8. e16 f8 a |
  \slashedGrace { a,16 (bf } c2) ~ |
  c4. r8 |
  r g'16 a f8 g16 (f) |
  d4 r8 d |
  c f e (d) |
  c4. c8 |
  f8 f f8. f16 |
  e8 f4 f8 |
  e f c [bf] |
  a2 ~ |
  a8
}

nhacDiepKhucBas = \relative c' {
  r8 r4 |
  R2
  r8 bf a g |
  f4 r |
  r8 f e e |
  d4 c8 c |
  bf4 d8 d |
  c8. c16 f8 g |
  f4 r |
  c8. c16 c8 c |
  g'2 |
  f8. f16 a,8 a |
  bf c bf a |
  g4 g'8 f |
  e4 e8 e |
  f d c4 |
  r8 f16 ef d8 c |
  f4 d |
  c8. c'16 c8 (bf) |
  a4 d,8 d |
  g g e e |
  f f bf, bf |
  c4 c'8 (bf) |
  a g c c |
  f,2 ~ |
  f4 r |
  
  R2
  r4 f8 g |
  e a16 c a16 (g) f8 |
  g4. f8 |
  g (a) bf bf |
  a g g (f) |
  e4. f8 |
  d d d8. d16 |
  c8 c4 g8 |
  bf a c c |
  f,2 ~ |
  f8
}

% Lời
loiPhienKhucSolo = \lyricmode {
  <<
    {
      \set stanza = "1."
      Tình yêu, ôi cao siêu là tình yêu Thiên Chúa
      đã đoái thương thân phận mòn hèn
      mà mến thương con tự ngàn đời
      luôn hằng chan tưới hồng ân
      dẫn lần con tới bàn thánh.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
      \set stanza = "2."
      Bụi tro, ôi thân con là bụi tr đâu đáng
      mà Chúa cao siêu ngợp tầng trời
      đà khắc tên con vào lòng Ngài
      nên bạn tâm phúc từ đây
      giữa hàng vinh phúc quyền uy.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
      \set stanza = "3."
      Đời con, con xin dâng trọn đời con cho Chúa
      thành ánh quang chiếu rọi cuộc đời,
      thành muối thiêng ướp mặn lòng người,
      luôn tìm phúc trường sinh,
      vững niềm tin Chúa quyền linh.
    }
  >>
}

loiDiepKhucSop = \lyricmode {
  <<
    {
      \set stanza = "1."
      Ôi tình yêu
      cao siêu là tình yêu
      thân mọn hèn
      tự ngàn đời luôn hằng chan tưới hồng ân
      dẫn lần con tới bàn thánh
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
      \set stanza = "2."
      Ôi bụi tro thân con là bụi tro,
      ngợp tầng trời
      vào lòng Ngài
      nên bạn tâm phúc từ đây
      giữa hàng vinh phúc quyền uy.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
      \set stanza = "3."
      Đây đời con,
      xin dâng trọn đời con
      soi trần đời
      mặn lòng người,
      luôn tìm vinh phúc trường sinh,
      vững niềm tin Chúa quyền linh.
    }
  >>
  Muôn tiếng ca vang hòa lời chúc tụng:
  Con Linh mục Chúa vui lên bàn thánh
  đáp tình Chúa mến thương.
  Xin tiến dâng Cha trọn vẹn xác hồn
  nên như của lễ thay cho trần thế ca tụng yêu mến Ngài.
}

loiDiepKhucBas = \lyricmode {
  <<
    {
      \set stanza = "1."
      Ôi tình yêu cao siêu là tình yêu
      phận mòn hền
      tự ngàn đời
      ban hồng ân dẫn lần con tới bàn thánh.
    }
    \new Lyrics {
      \set stanza = "2."
      Ôi bụi tro, thân con là bụi tro,
      ngợp tầng trời,
      vào lòng Ngài,
      nên bạn thân giữa hàng vinh phúc quyền uy.
    }
    \new Lyrics {
      \set stanza = "3."
      Đây đời con xin dâng trọn đời con.
      dọi trần đời mặn lòng người,
      phúc trường sinh vững lòng tin Chúa quyền linh.
    }
  >>
  Muôn tiếng ca vang xa tới phục tụng: Con Linh mục Chúa
  vui lên bàn thánh để đáp mến thương,
  tình Chúa mến thương muôn đời.
  Nguyện dâng Cha này trót xác hồn con nên như của lễ
  thay cho trần thế ca tụng tình Ngài.
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
  %systems-per-page = 5
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
  \new ChoirStaff <<
    \new Staff = "1" \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
      >>
    \new Staff = "2" <<
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
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
