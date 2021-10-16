% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ngày Thái Hòa" }
  composer = "Nhạc: Ngoại Quốc"
  arranger = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d'8. b16 |
  a2 r4 | \break
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d'8. b16 |
  e2 c8. b16 |
  a4. fs8 g (a) |
  d,2 r4 |
  R2.*2
  r2 g4 |
  a g (fs8.) fs16 |
  g4 r g |
  a g8. g16 fs8. fs16 |
  g4 r2 |
  r2
  \afterGrace d'4 ({
    \override Flag.stroke-style = #"grace"
    e16)}
  \revert Flag.stroke-style
  d4 r2 |
  r2
  \afterGrace d4 ({
    \override Flag.stroke-style = #"grace"
    e16)}
  \revert Flag.stroke-style
  d4 r8 d ([b]) g |
  e'4 (c) a |
  g2 fs8. fs16 |
  g2 r4 \bar "||" \break
  
  r2 a8. a16 |
  a4. (fs8) g (a) |
  b (a) a4 d |
  d4 (cs) e8. e16 |
  e4 (d) d |
  d8 (c) b (a) g (fs) | \break
  fs8. e16 e4 r |
  R2.*5
  r2 r8 a |
  a4 a r8 d |
  c8. c16 c4 r8 a |
  a4 a r8 d |
  b4 b e |
  d (c8 b a8.) g16 |
  fs4 (e) r8 a |
  a4 a r8 d |
  c8. c16 c4 r8 a |
  a4 a r8 d |
  b4 b e |
  d2 (cs8.) cs16 |
  d2 r4 |
  R2.*2
  r2 d4 |
  d d d |
  d2 (cs8.) cs16 |
  d2 r4 |
  g,4. d8 b'8. (a16) |
  a4. d,8 b' (a) |
  g d b' g d'8. b16 |
  a2 r4 |
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d'8. b16 |
  e2 c8. b16 |
  a4. fs8 g (a) |
  d,4 r r |
  R2.
  r4 r8 d e fs |
  g4 a b |
  c (a fs) |
  d2 r4 |
  g8. g16 g4 a8 b |
  c4 b b8 b |
  d4. b8 c (b) |
  a2 r4 |
  g8. g16 g4 a8 b |
  c4 b b8 b |
  d4. b8 c (b) |
  a2 c8. c16 |
  b4 a8 (g) fs (e) |
  b'4 b b8. b16 |
  b4 a8 (g) fs (e) |
  c'2 a4 |
  g2 (fs4) |
  g r r |
  r a2 |
  b4 r2 |
  r4 a4. a8 |
  g2 r4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d'8. b16 |
  a2 r4 | \break
  
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d8. g16 |
  g2 c8. b16 |
  a4. fs8 g (a) |
  d,2 r4 |
  R2.*2
  r2 d4 |
  d d ~ d8. d16 |
  d4 r d |
  d d8. d16 d8. d16 |
  d4 r2 |
  r2 fs4 |
  g r2 |
  r2 fs4 |
  g r8 d' ([b]) g |
  e'4 (c) e, |
  d2 c8. c16 |
  b2 r4 |
  
  r2 fs'8. fs16 |
  fs4. (d8) e (fs) |
  g (fs) fs4 fs |
  fs (e) g8. g16 |
  g4 (fs) b |
  b8 (a) g (fs) e (d) |
  d8. cs16 cs4 r |
  R2.*5
  r2 r8 g' |
  fs4 fs r8 fs |
  e8. e16 e4 r8 e |
  fs4 fs r8 fs |
  g4 g g |
  fs (a8 g fs8.) e16 |
  d4 (cs) r8 g' |
  fs4 fs r8 fs |
  e8. e16 e4 r8 e |
  fs4 fs r8 fs |
  g4 g g |
  fs2 (e8.) e16 |
  fs2 r4 |
  R2.*2
  r2 d'8 (c) |
  bf4 bf bf |
  g2 ~ g8. g16 |
  fs2 r4 |
  g4. d8 b'8. (a16) |
  a4. d,8 b' (a) |
  g d b' g d'8. b16 |
  a2 r4 |
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d8. g16 |
  g2 c8. b16 |
  a4. fs8 g (a) |
  d,4 r r |
  R2.
  r4 r8 d e fs |
  g4 a b |
  c (a fs) |
  d2 r4 |
  b8. b16 b4 c8 d |
  e4 d g8 g |
  b4. g8 a (g) |
  fs2 r4 |
  b,8. b16 b4 c8 d |
  e4 d g8 g |
  b4. g8 a (g) |
  fs2 c'8. c16 |
  b4 a8 (g) fs (e) |
  ds4 ds b'8. b16 |
  b4 a8 (g) fs (e) |
  e2 a4 |
  d,2. |
  d4 r r |
  r fs2 |
  g4 r2 |
  r4 fs4. fs8 |
  g2 r4
}

nhacDiepKhucTenor = \relative c' {
  R2.*4
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d'8. b16 |
  c2 r4 |
  R2.
  r4 r8 d, c'8. (b16) |
  a4. fs8 g a |
  d,2 r4 |
  r2 b'4 |
  c b (a8.) a16 |
  b4 r b |
  c b8. b16 a8. a16 |
  b4 r8 d, ([g]) b |
  a4 (fs) c' |
  b r8 d, ([g]) b |
  a4 (fs) c' |
  b r8 d, ([g]) b |
  c4 (e) c |
  b2 a8. a16 |
  g2 r4 |
  R2.*6
  
  r2 a4 |
  a4. (fs8) g a |
  b (a) a4 d |
  d8 (c) c4 e |
  e8 d d4 d |
  d8 (c) b (a) g (fs) |
  fs8. e16 e4 r8 cs' |
  d4 d r8 a |
  a8. a16 a4 r8 cs |
  d4 d r8 d |
  d4 d b |
  a2 (a8.) a16 |
  a2 r8 cs |
  d4 d r8 a |
  a8. a16 a4 r8 cs |
  d4 d r8 d |
  d4 d b |
  a2 ~ a8. a16 |
  a2 d8 (c) |
  b4 b a |
  g4. (fs8) e8. e16 |
  b4 r d'8 (c) |
  bf4 bf bf |
  bf2 g8. g16 |
  a2 r4 |
  R2.*4
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d'8. b16 |
  c2 r4 |
  R2.
  r4 r8 d, c' (b) |
  a4. fs8 g (a) |
  d,4 r8 d e fs |
  g4 a b |
  c (a fs) |
  d2 r4 |
  R2.*4
  g8. g16 g4 g8 g |
  g4 g d'8 d |
  d4. d8 d4 |
  d2 c8. c16 |
  b4 a8 (g) fs (e) |
  d4 d b'8. b16 |
  b4 a8 (g) fs (e) |
  g2 a4 |
  b2 (a4) |
  d r2 |
  r4 d2 |
  d4 r2 |
  r4 c4. c8 |
  b2 r4
}

nhacDiepKhucBas = \relative c' {
  R2.*4
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d8. g16 |
  <e c>2 r4 |
  R2.
  r4 r8 d c'8. (b16) |
  a4. fs8 g a |
  d,2 r4 |
  r2 g4 |
  fs d ~ d8. d16 |
  g,4 r g' |
  d d8. d16 d8. d16 |
  g,4 r8 d' ([g]) b |
  a4 (fs) d |
  g r8 d ([g]) b |
  a4 (fs) d |
  g r8 d ([g]) b |
  c4 (e) c, |
  d2 d8. d16 |
  g,2 r4 |
  R2.*6
  r2 fs'4 |
  fs4. (d8) e fs |
  g (fs) fs4 fs |
  fs8 (e) e4 g |
  g8 fs fs4 b |
  b8 (a) g (fs) e (d) |
  d8. c16 c4 r4 |
  r4 r8 a' fs (d) |
  a4 r8 e' cs a |
  d4 r8 a' fs (d) |
  g,2 g4 |
  fs2 ~ fs8. fs16 |
  fs2 r4 |
  r4 r8 a' fs (d) |
  a4 r8 e' cs a |
  d4 r8 a' fs (d) |
  g,2 g4 |
  a2 ~ a8. a16 |
  d2 d'8 (c) |
  b4 b a |
  g4. (fs8) e8. e16 |
  d2. ~ |
  d ~ |
  d4 d ef8. ef16 |
  d2 r4 |
  R2.*4
  g4. d8 b'8. (a16) |
  g4. d8 b' (a) |
  g d b' g d8. g16 |
  c,2 r4 |
  R2.
  r4 r8 d, c' (b) |
  a4. fs8 g (a) |
  d,4 r8 d e fs |
  g4 a b |
  c (a fs) |
  d2 r4 |
  g8. g16 g4 g8 g |
  g4 g g'8 g |
  g4. g8 fs (g) |
  d2 r4 |
  g,8. g16 g4 g8 g |
  g4 g g'8 g |
  g4. g8 fs (g) |
  d2 c'8. c16 |
  b4 a8 (g) fs (e) |
  b4 b b'8. b16 |
  b4 a8 (g) fs (e) |
  c2 c4 |
  d2. |
  g,4 r2 |
  r4 d'2 |
  g4 r2 |
  r4 d4. d8 |
  <g g,>2 r4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Đây ngày thái hòa,
  ngày thế nhân từng ngóng đợi đã khai hoa.
  Đây ngày thái hòa,
  ngày bóng đen tội lỗi trần thế mờ xóa.
  Bởi hôm nay đà xuất hiện.
  Con Chúa nay hạ sinh Vua Cứu Tinh nay đà hiển minh.
  Đã sinh hiển vinh bởi rầy Đấng Cứu Tinh đà hạ sinh.
  Hôm nay đây cả thế gian hân hoan
  lắng tiếng hát muôn muôn thiên thần đến reo vang.
  Vui lên đi hỡi muôn cơ binh, vui lên đi
  hát lên đi khắp cõi thiên đình.
  Vui lên đi hỡi muôn cơ binh, vui lên đi
  hát lên đi hỡi muôn đạo binh.
  Câu hoan ca tung bay gần xa.
  Đây ngày thái hòa, ngày chính Con Một Chúa Trời
  đã sinh ra.
  Đây ngày thái hòa,
  ngày Đấng Cứu Độ thế trần đã ngự qua.
  Bởi hôm nay hãy vui mừng
  hòa niềm hân hoan chung tiếng hát mừng.
  Nào trần đời hòa vang khắp nơi:
  vinh danh Chúa trên cõi trời.
  Nào trần đời hòa vang khắp nơi:
  vinh danh Chúa trên cõi trời.
  Khắp thế nhân chung lời hát kính,
  hát kính Chúa luôn ngời sáng muôn hiển vinh
  nhân thế vui an bình.
}

loiDiepKhucTenor = \lyricmode {
  Đây ngày thái hòa,
  ngày bóng đen tội lỗi trần thế mờ nhòa.
  Vị Cứu Tinh quyền uy thánh thiện Con Chúa nay đã sinh
  Vua Cứu Tinh nay đã hiển minh.
  Vị Cứu Tinh hạ sinh là Đức Vua hiển vinh
  thật đây Đấng Cứu Tinh đà hạ sinh.
  Bao vang hỉ hoan chứa chan
  muôn thiên thần cất tiếng reo vang,
  reo vang câu hoan ca nhịp nhàng.
  Vui lên đi hỡi muôn cơ binh, vui lên đi,
  hát lên đi khắp cõi thiên binh.
  Vui lên đi hỡi muôn cơ binh, vui lên đi hát lên đi
  hỡi muôn đạo binh.
  Khắp dương gian muôn thiên thần vang hòa.
  Câu hoan ca tung bay khắp chốn xa.
  Đây ngày thái hòa, ngày Đấng Cứu Độ thế trần đã ngự qua.
  Mọi chính nhân hãy vui mừng hòa niềm hân hoan
  chung tiếng hát mừng.
  Nào trần đời ca vang nơi nơi:
  vinh danh Chúa trên cõi trời.
  Khắp thế nhân chung lời hát kính,
  hát kính Chúa luôn ngời sáng muôn hiển vinh
  nhân thế vui an bình.
}

loiDiepKhucBas = \lyricmode {
  Đây ngày thái hòa,
  ngày bóng đen tội lỗi trần thế mờ nhòa.
  Vị Cứu Tinh quyền uy thánh thiện Con Chúa nay đã sinh
  Vua Cứu Tinh nay đã hiển minh.
  Vị Cứu Tinh hạ sinh là Đức Vua hiển vinh
  thật đây Đấng Cứu Tinh đà hạ sinh.
  Bao vang hỉ hoan chứa chan
  muôn thiên thần cất tiếng reo vang,
  reo vang cây hoan ca nhịp nhàng.
  Hãy vui mừng hỡi muôn đạo binh,
  hãy vui mừng hỡi muôn thiên binh.
  Hãy vui mừng hỡi muôn đạo binh,
  hãy vui mừng hỡi muôn đạo binh.
  Khắp dương gian muôn thiên thần vang hòa.
  bay khắp chốn xa.
  Đây ngày thái hòa, ngày Đấng Cứu Độ thế trần đã ngự qua.
  Mọi chính nhân hãy vui mừng
  hòa niềm hân hoan chung tiếng hát mừng.
  Nào trần đời ca vang nơi nơi:
  vinh danh Chúa trên cõi trời.
  Nào trần đời ca vang nơi nơi:
  vinh danh Chúa trên cõi trời.
  Khắp thế nhân chung lời hát kính,
  hát kính Chúa luôn ngời sáng muôn hiển vinh
  nhân thế vui an bình.
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
  %page-count = #4
  %ragged-bottom = ##f
}

TongNhip = {
  \key g \major \time 3/4
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
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiDiepKhucSop
    >>
    \new Staff <<
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacDiepKhucTenor
        }
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
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
    \override Lyrics.LyricSpace.minimum-distance = #0.5
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    %{
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    %}
  }
}
