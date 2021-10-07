% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Tình Yêu Chúa Nhiệm Mầu" }
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

nhacPhienKhucSop = \relative c'' {
  \partial 8 r8 |
  R2*2
  a8. a16 a8 g |
  a bf4 bf8 |
  g8. g16 g8 f |
  g a4. ~ |
  a4 r |
  r8 c c c |
  c8. bf16 bf8 bf |
  bf4. bf8 |
  bf d4 bf8 |
  g4 r8 a |
  c8. f,16 f8 g |
  g4 e8 (d) |
  c4. a'8 |
  a2 ~ |
  a8 c c c |
  c8. bf16 bf8 bf |
  bf4. bf8 |
  bf d g, bf |
  c4. a8 |
  bf4 a |
  g4 c,8 c |
  g'4 e |
  f2 ~ \bar "|."
  
  f4 r |
  R2
  r4 r8 a |
  a bf f g |
  g2 |
  R2
  r4 r8 f |
  d' d bf g |
  c2 ~ |
  c4 r |
  r4 r8 a |
  f bf g g |
  c4. d8 |
  c4 bf |
  g c8 a |
  g4 e |
  f r8 \bar "||"
}

nhacPhienKhucAlto = \relative c' {
  r8 |
  R2*2
  f8. f16 f8 e |
  f g4 g8 |
  e8. e16 e8 d |
  e8 f4. ~ |
  f4 r4 |
  r8 a a a |
  a8. g16 g8 g |
  g4. d8 |
  d f4 f8 |
  e4 r8 f |
  g8. d16 d8 c |
  b!4. b8 |
  c4. c8 |
  f2 ~ |
  f8 e e e |
  e8. g16 g8 g |
  g4. g8 |
  d f f f |
  e4. f8 |
  d4 f |
  c4 c8 c |
  bf4 bf |
  a2 ~ |
  
  a4 r |
  R2
  r4 r8 f' |
  f g c, d |
  e2 |
  R2
  r4 r8 f |
  bf bf g f |
  e2 ~ |
  e4 r |
  r r8 f |
  d g f f |
  e4. e8 |
  f4 f |
  e f8 f |
  d4 bf |
  a r8
}

nhacPhienKhucBas = \relative c {
  e8 |
  f (g) a d, |
  c2 ~ |
  c4 r8 c |
  f4 bf, |
  c4. (d8) |
  c4 r8 f |
  d e f d |
  c4 r8 c |
  d e f d |
  e f g g |
  bf,4 bf |
  c r8 f |
  e8. f16 bf8 (a) |
  g4. f8 |
  e (c d) e |
  f4. f8 |
  d g c,4 ~ |
  c r8 d |
  e f g g |
  bf, c bf (d) |
  c4. d8 |
  g4 f |
  e f8 a |
  g4 c, |
  <f f,>2 ~ |
  <f f,>4 r8 f |
  e f4 g8 |
  c,2 ~ |
  c ~ |
  c4 r8 c |
  f f e c |
  d2 ~ |
  d8 bf d4 |
  c4. a'8 |
  g c d, f |
  g4 r |
  r8 bf, d4 |
  c4. bf8 |
  a4 g |
  c a8 a |
  bf4 c |
  f, r8
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Yêu thương con từ xa trước
  Chúa nâng con lên hàng tâm phúc.
  Bao nhiêu năm qua, bao nhiêu năm qua
  trong thiên chức Linh Mục.
  Ơn Chúa thực hiện tron con những gì Chúa muốn.
  Bao nhiêu năm qua, bao nhiêu năm qua
  hồn con vững một niềm tin,
  tin Chúa yêu con vì Ngài đã chọn con.
  
  \set stanza = "1."
  Nhưng ơn Chúa dìu con lên
  là lúc Chúa nổi bật lên.
  Sức mạnh Chúa tỏ hiện ra:
  Mấy mươi tuổi đời bấy nhiêu năm hồng ân.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 59 { _ }
  \set stanza = "2."
  Muôn ơn phúc Ngài thương ban làm hiễn lễ của tình yêu.
  Với lời chân thành cảm mến:
  Mấy mươi tuổi đời bấy nhiêu năm hồng ân.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 59 { _ }
  \set stanza = "3."
  Xin theo bước Ngài trung kiên tìm ý Chúa để thực thi.
  Vẫn còn thắm đượm tình Chúa:
  Mấy mươi tuổi đời bấy nhiêu năm hồng ân.
}

loiPhienKhucBasMot = \lyricmode {
  Tình yêu Chúa nhiệm mầu
  Ngài đã dìu nâng lên.
  Ôi tình yêu Chúa nhiệm mầu đà qua bao năm,
  đà qua bao năm trong đời Linh Mục.
  Ơn Ngài đà hiến con những gì Ngài muốn,
  ơn Ngài thấm nhuần.
  Đà qua bao năm con luôn vững niềm tin,
  tin Chúa yêu con vì Ngài đã chọn con.
  
  \set stanza = "1."
  Thân phận con thấp hèn
  vì khi con lu mờ đi
  Ngài trổi lên.
  Nơi sụ yếu hèn của con Ngài tỏ rõ:
  Mấy mươi tuổi đời bấy nhiêu năm hồng ân.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 40 { _ }
  \set stanza = "2."
  Con làm sao đáp đền chỉ xin dâng Ngài đời con lễ mến yêu.
  Xin được suốt đời ngợi ca và cảm mến:
  Mấy mươi tuổi đời bấy nhiêu năm hồng ân.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 40 { _ }
  \set stanza = "3."
  Bao ngày qua tháng lại
  hành trang luôn là tình yêu và thực thi.
  Mong trọn bước đường tương lai vẫn thiết tha:
  Mấy mươi tuổi đời bấy nhiêu năm hồng ân.
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
  %ragged-bottom = ##t
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
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
