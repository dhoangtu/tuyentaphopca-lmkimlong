% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Trong Cánh Đồng Belem 1" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 r4 |
  R2
  g8 a d, g |
  a4 a8 c |
  c bf a c |
  d4 d8 d |
  bf (d) bf16 (a) g8 |
  a4 g8 g |
  d g a bf |
  a (d) e16 (d) cs8 |
  d2 \bar "||" \break
  
  \set fontSize = #-1
  d4.
  \tweak extra-offset #'(0 . -2)
  _\markup {\bold "(nhạc chuyển)" }
  d8 |
  bf4 \tuplet 3/2 { bf8 d bf } |
  a8. g16 f8 e |
  \set fontSize = #0
  
  d4. d8 |
  d (g) f g |
  a2 |
  c8 g bf g |
  a bf a16 (g) e8 |
  
  \time 6/8
  d4. ~ d4 \bar "||"
  c8 |
  f4 f8 g (f) d |
  c4 c8
  <<
    {
      c'4 c8 |
      d (c) bf a4 g8 |
      a4 g8 bf (a) g
    }
    {
      a4 a8 |
      bf (a) g f4 e8 |
      f4 e8 g (f) e
    }
  >>
  
  \time 2/4
  f2 ~ |
  f4 \bar "||" \break
  
  d4 |
  f8 g16 (f) c4 |
  d8 f a c |
  g2 \bar "||" \break
  
  c2 |
  a4 f8 f |
  d'2 |
  c4 d |
  c c |
  d8 (c) bf (a) |
  g2 ~ |
  g4 f8 f |
  f'2 |
  e4 f |
  e e |
  f8 (e) c4 |
  c4. c8 |
  d (c) bf4 |
  a2 ~ |
  a4 r |
  r bf8 bf |
  g (bf) c8 d |
  c4 a8 a |
  g (a) bf16 (a) f8 |
  g2 ~ |
  g4 c8 (d16 c) |
  a2 ~ |
  a4 bf8 d |
  c2 ~ |
  c4 a8 a |
  bf4 g |
  c8 c d e |
  f2 ~ |
  f4 r \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  f8 g16 (f) |
  e4. e8 |
  f4 r |
  R2
  r4 r8 e |
  f4 f8 f |
  d4. d8 |
  cs4 g'8 g |
  d g a g |
  f4 e |
  f2 |
  
  R2*8
  
  \time 6/8
  R2.*5
  
  \time 2/4
  R2*5
  
  e4 (f8 g) |
  f4 f8 f|
  f4 (g8 f) |
  e4 bf' |
  a a |
  bf8 (a) g (f) |
  e2 ~ |
  e4 f8 f |
  \once \stemDown f4 (bf) |
  g d' |
  c c |
  d8 (c) a4 |
  a4. a8 |
  bf (a) g4 |
  f2 ~ |
  f4 r |
  r g8 g |
  e (g) a bf |
  a4 f8 f |
  e (f) g16 (f) d8 |
  e2 ~ |
  e4 r |
  r8 c c g' |
  f4 r |
  r8 a bf g |
  a4 f8 f |
  f4 f |
  e8 f bf bf |
  a2 ~ |
  a4 r
}

nhacDiepKhucBas = \relative c' {
  d8 e16 (d) |
  a4. cs8 |
  d4 r |
  R2
  r4 r8 a |
  d4 d,8 d |
  g4. bf8 |
  a4 r |
  r r8 g |
  a4 g8 a |
  d,2 |
  
  R2*8
  
  \time 6/8
  R2.*5
  
  \time 2/4
  R2*5
  
  c4 (d8 e) |
  f4 d8 d |
  bf4 (g8 bf) |
  c4 r |
  R2*2
  r8 c' g e |
  c4 d8 d |
  a4 (bf) |
  c r |
  R2*3
  r4 c |
  d8. c16 d8 e |
  f4 f |
  c2 ~ |
  c4 r8 c |
  f4 r |
  r8 f bf, (d) |
  c8. c16 e8 g |
  c4 r |
  r8 f, f e |
  d4 r |
  r8 f g e |
  f4 f8 f |
  d2 |
  c8 a' g c |
  <c f,>2 ~ |
  <c f,>4 r
}

% Lời
loiDiepKhucSopMot = \lyricmode {
  \set stanza = "Solo Nữ 1."
  Trong cánh đồng Be -- lem,
  một đêm đông lạnh lùng sương tuyết.
  Lắng tiếng gió than tịch liên,
  trăng sao buồn cô vắng khuất mờ phía trời xa
  
  \repeat unfold 10 { _ }
  \set stanza = "(Nữ)"
  Đoàn mục đồng ngồi canh thức,
  Bỗng thần sứ hiện ra báo tin vui mừng:
  Nào anh em hãy lên đường mà xem
  Con Chúa thiên tòa hạ sinh trong chốn hang lừa.
  
  \set stanza = "(Nam)"
  Rồi muôn sứ thần cùng hợp tiếng hát vang.
  
  Sáng danh, ngàn đời sáng danh,
  sáng danh Thiên Chúa trên trời.
  Ngàn đời sáng danh, sáng danh Thiên Chúa trên trời
  trên các tầng trời
  cho muôn người nơi thế gian,
  cho muôn người có lòng ngay
  An bình cho những ai
  cho ai có lòng ngay ở nơi dương thế.
}

loiDiepKhucSopHai = \lyricmode {
  \set stanza = "2."
  Đây tấm lòng tin mến
  đoàn con xin chân thành dâng tiến.
  Tiếng hát luyến theo lời kinh
  như hương trầm nghi ngút trước tòa Chúa quyền linh.
  
  \repeat unfold 10 { _ }
  Từ cuộc đời ngàn nguy khó,
  đón chờ Chúa rủ thương viếng thăm tâm hồn.
  Đoàn con tha thiết dâng lời ngợi khen Thiên Chúa trên trời
  đã thương nhân thế bao đời.
  Này muôn tấm lòng cùng hợp tiếng hát vang:
}

loiDiepKhucAltoMot = \lyricmode {
  \set stanza = "1."
  Trong cánh đồng Be -- lem
  sương tuyết.
  Lắng tiếng gió tịch liên,
  trăng sao buồn cô vắng
  khuất mờ phía xa
  
  Sáng danh, ngàn đời sáng danh,
  sáng danh Thiên Chúa trên trời.
  Ngàn đời sáng danh, sáng danh Thiên Chúa trên trời
  trên các tầng trời
  cho muôn người nơi thế gian,
  cho muôn người có lòng ngay
  đời đời an bình cho những lòng ai
  cho ai có lòng ngay ở nơi dương thế.
}

loiDiepKhucAltoHai = \lyricmode {
  \set stanza = "2."
  Đây tấm lòng tin mến
  dâng tiến.
  Tiếng hát luyến lời kinh
  như hương trầm nghi ngút trước tòa Chúa linh.
}

loiDiepKhucBasMot = \lyricmode {
  \set stanza = "1."
  Trong cánh đồng Be -- lem
  sương tuyết lặng tiếng gió tĩnh liêu
  khuất mờ phía trời xa.
  
  Rạng danh, ngàn đời rạng danh
  Sáng danh trên trời,
  ngàn đời rạng danh
  mọi nơi rạng danh nơi nơi.
  An bình
  trần gian
  có lòng ngay ở nơi dương thế.
  nơi nơi an bình
  cho những lòng ai
  cho ai lòng ngay ở nơi dương thế.
}

loiDiepKhucBasHai = \lyricmode {
  \set stanza = "2."
  Đây tấm lòng tin mến
  dâng tiến Tiếng nhạc quyến lời kinh
  trước tòa Chúa huyền linh.
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
  %page-count = #1
}

TongNhip = {
  \key f \major \time 2/4
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
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucSopMot
      \new Lyrics \lyricsto beSop \loiDiepKhucSopHai
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiDiepKhucAltoHai
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBasMot
      \new Lyrics \lyricsto beBas \loiDiepKhucBasHai
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
