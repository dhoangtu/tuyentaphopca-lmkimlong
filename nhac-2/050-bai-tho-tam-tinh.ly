% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bài Thơ Tâm Tình" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \partial 8 r8 |
  R2*2
  r4 r8 d |
  c4 \tuplet 3/2 { c8 d c } |
  a4 a ~ |
  a8 bf e, a |
  d,2 ~ |
  d4 \tuplet 3/2 { d'8 e d } |
  cs2 ~ |
  cs4 r |
  R2
  r4 \tuplet 3/2 { c8 d bf } |
  bf4. d16 d |
  a2 |
  g8. f16 e8 a |
  d,2 ~ |
  d4 r |
  R2*2
  c'8. c16 d8 c |
  a2 |
  r4 r8 a16 a |
  \tuplet 3/2 { g8 a bf } \tuplet 3/2 { g a d } |
  e4. cs8 |
  d2 ~ |
  d4 r \bar "||" \break
  
  R2*5 \break
  
  r4 r8 d16 d |
  bf4 \tuplet 3/2 { d8 ^> g, ^> bf ^> } |
  a2 ~ |
  a4 r |
  r \tuplet 3/2 { e'8 f e } |
  d4. d16 e |
  cs4. cs8 |
  d bf4 d8 |
  a2 ~ |
  a ~ |
  
  a4 r8 \bar "|." \break
  a |
  bf a g4 ~ |
  g8 g16 f d8 c |
  d4 r8 d16 g |
  g4. g16 (a) |
  d8 d4 b!8 |
  \slashedGrace { b!16 ( } a2) ~ |
  a8 a4 g8 |
  fs4. g8 |
  ef bf'4 g8 |
  c4 r8 bf16 c |
  a4 (bf8) a16 g |
  fs8 fs4 g8 |
  ef4 (d) ~ |
  d8 \bar "||" \break
  
  \key g \major
  d'8 b c |
  a g16 a e8 e |
  e2 ~ |
  e8 fs16 g d8 d |
  d2 |
  r4 g8. ^> g16 |
  fs4. b8 |
  a e4 g8 |
  fs2 ~ |
  fs8 d'4 c8 |
  b2 ~ |
  b ~ |
  b8 b4 ^> g8 |
  e4 fs ^> ~ |
  fs8 a a d, |
  g2 ~ |
  g ~ |
  g4 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  r8 |
  r4 r8 f |
  e4 \tuplet 3/2 { f8 f e } |
  d4 bf' ~ |
  bf8 g a e |
  d2 |
  d8 d16 (e) cs8 cs |
  d2 ~ |
  d4 \tuplet 3/2 { f8 g g } |
  e4. e16 d |
  e4. f8 |
  f g4 a8 |
  a4 \tuplet 3/2 { g8 a g } |
  g4. g16 g |
  f2 |
  e8. d16 c8 c |
  a2 ~ |
  a4 r |
  e'8. e16 f8 e |
  d4 bf' ~ |
  bf8 g a e |
  d2 |
  r4 r8 cs16 cs |
  \tuplet 3/2 { d8 f f } \tuplet 3/2 { e d a' } |
  bf4. bf8 |
  a2 ~ |
  a4 r
  
  R2*5
  
  r4 r8 f16 f |
  d4 \tuplet 3/2 { f8 ^> d ^> g ^> } |
  e2 ~ |
  e4 r |
  r \tuplet 3/2 { g8 a g } |
  g4. g16 f |
  e4. e8 |
  d d4 f8 |
  e2 ~ |
  e ~ |
  e4 r8
  
  r8
  R2*13
  r8
  
  \key g \major
  r8 r4 |
  r8 d cs r |
  r4 r8 e |
  d d16 d c8 c |
  b2 |
  R2
  r4 d8. ^> d16 |
  cs4. cs8 |
  d2 ~ |
  d4 r |
  r8
  <<
    {
      a'4 ^> g8 |
      fs4. \afterGrace fs8 ^({
        \override Flag.stroke-style = #"grace"
        g16
      )} |
      \revert Flag.stroke-style
      e4
    }
    {
      fs4 e8 |
      ds4. ds8 |
      b4
    }
  >>
  e8 ^> c |
  b4 c ^> ~ |
  c8 c a a |
  b4 d ^> ~ |
  d8 e e c |
  d4
}

nhacDiepKhucTenor = \relative c' {
  r8
  R2
  r4 r8 g |
  f4 \tuplet 3/2 { f8 g f } |
  e4 g8 g |
  f2 |
  e8 g e e |
  f4 \tuplet 3/2 { f8 d g } |
  g4 \tuplet 3/2 { a8 bf bf } |
  a2 ~ |
  a4 r8 a |
  a d4 ds8 |
  e4 \tuplet 3/2 { e8 f e } |
  d2 |
  r8 d ^> d ^> d |
  bf c16 d a8 g |
  f2 ~ |
  f4 r |
  R2
  f8. f16 g8 f |
  e4 g8 g |
  f f4 g16 (f) |
  e2 ~ |
  \tuplet 3/2 { e8 d d } \tuplet 3/2 { bf' a f } |
  e4 g ^> |
  f2 ~ |
  f4 r |
  
  R2*5
  
  r4 r8 a16 a |
  g4 \tuplet 3/2 { a8 ^> d ^> d ^> } |
  cs2 ~ |
  cs4 r |
  r \tuplet 3/2 { bf8 a bf } |
  bf4. bf16 d |
  a4. g8 |
  f g4 d'8 |
  cs2 ~ |
  cs ~ |
  cs4 r8
  r
  R2*13
  r8
  
  \key g \major
  r8 r4 |
  r8 b a r |
  r c b c |
  a4 fs8 fs |
  g2 |
  c8. ^> c16 b8 g' |
  d16 (c) a4 g8 |
  a2 ~ |
  a4 a8 e |
  a (g) fs4 |
  r8 b4 ^> b16 (c) |
  a4. \afterGrace a8 ({
    \override Flag.stroke-style = #"grace"
    b16
  )}
  \revert Flag.stroke-style
  |
  g2 ~ |
  g4 a ^> ~ |
  a8 a16 (g) fs8 fs |
  g4 b ^> ~ |
  b8 c c a |
  b4
}

nhacDiepKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  d,8 |
  c4 \tuplet 3/2 { c8 d c } |
  a4. a8 |
  bf4. g8 |
  a4 a |
  d2 |
  g,8 g a a |
  bf2 ~ |
  bf4 \tuplet 3/2 { a8 g g } |
  a2 ~ |
  a4 r8 d |
  d bf4 a8 |
  a4 \tuplet 3/2 { a'8 f f } |
  g2 |
  r8 d' ^> d ^> d ^> |
  g, g16 gs a8 (a,) |
  d2 |
  c8. c16 d8 c |
  a4. a8 |
  bf4. g8 |
  a4 a |
  d2 |
  cs8 d a a16 a |
  \tuplet 3/2 { a8 a a } \tuplet 3/2 { d8 d d } |
  g,4 a ^> |
  d2 ~ |
  d4 r |
  a'4. bf16 (a) |
  g2 ~ |
  g8 e g g |
  f4. g16 e |
  e8 g4 a8 |
  d,2 ~ |
  d4 \tuplet 3/2 { d8 ^> bf' ^> g ^> } |
  a2 |
  a8 a4 d8 |
  g,2 ~ |
  g8 e4 g8 |
  a8. a16 a,8 a |
  bf g4 g8 |
  a2 ~ |
  a ~ |
  a4 r8
  
  r8
  R2*13
  r8
  
  \key g \major
  r8 r a'16 (g) |
  fs8 r r gs |
  a a gs a |
  d,4. d8 |
  g,4 g'8. ^> g16 |
  e4. c8 |
  d2 |
  e8 d16 (c) a8 a |
  d2 ~ |
  d4 r |
  r8 ds4 ^> e8 |
  b4. b8 |
  e2 ~ |
  e4 e ^> ~ |
  e8 d d d |
  g,2 ~ |
  g8 c c c |
  g4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ta dệt bài thơ tâm tình trong những chiều ngưỡng mộ khi trí chưa bưa.
  Khi gió lạnh về nói với hồn bao nỗi niềm bí mật.
  Về bài thơ tâm tình
  không bao giờ em viết nổi bài thơ ấy, người ơi!
  Dẫu biết mình bất lực đến đâu nhưng đã chôn sâu trong cõi lòng
  một khối tình bất tận.
  Ta hát ta ca trong y huyền trầm lặng.
  Tình thiên thu ẩm ướt quá trăng sao.
  Đến bao giờ thơ đọng chốn trời cao.
  Là no thỏa hết tâm tình và tư tưởng.
  Gió ơi gió ơi cho đến một ngày nào,
  cho đến một ngày nào.
  Thơ tâm tình sẽ sang cầu tao ngộ.
  Hết cô liêu viết trọn bài cho ý thắm tình xanh.
}

loiDiepKhucAlto = \lyricmode {
  Ta dệt bài thơ tâm tình, ta dệt thơ tâm tình.
  Trong những chiều ngưỡng mộ khi trí chưa bưa
  khi hoàng hôn đầy tràn trong khóe mắt
  khi gió lạnh về nói với hồn bao nỗi niềm bí mật.
  Về bài thơ tâm tình nói bài thơ tâm tình
  không bao giờ em viết nổi bài thơ ấy hỡi ơi!
  Dẫu biết mình bất lực đến đâu nhưng đã chôn sâu trong cõi lòng
  một cuộc tình bất tận.
  Gió ơi, gió ơi cho đến một ngày nào.
  Thơ tâm tình hội ngộ hết kêu gào nức nở
  viết trọn bài cho ý thắm tình xanh,
  cho ý thắm tình xanh.
}

loiDiepKhucTenor = \lyricmode {
  Ta dệt bài thơ tâm tình, thơ tâm tình.
  Trong những chiều ngưỡng mộ khi hồn say sưa
  khi trí chưa bưa.
  Đầy tràn trong khóe mắt khi gió lạnh về.
  Gió nói với hồn bao nỗi niềm bí mật.
  Về bài thơ tâm tình, thơ tâm tình và thêm rằng:
  không dệt nỗi bài thơ này hỡi ơi!
  Dẫu biết mình thật sức đến đâu
  nhưng đã chôn sâu trong cõi lòng một cuộc tình bất tận.
  Gió ơi, gió ơi gió ơi một ngày nào.
  Thơ tâm tình sẽ sang cầu hội ngộ,
  qua cầu tao ngộ hết kêu gào nức nở
  cho ý thắm tình xanh, cho ý thắm tình xanh.
}

loiDiepKhucBas = \lyricmode {
  Ta dệt bài thơ tâm tình bài thơ, bài thơ tâm tình.
  Trong những chiều ngưỡng mộ khi lòng chưa bưa.
  Đầy tràn trong khóe mắt khi gió lạnh về.
  Gió nói với hồn bao nỗi bí mật.
  Về bài thơ tâm tình bài thơ, bài thơ tâm tình.
  Và thêm rằng không bao giờ em dệt nổi câu thơ này, người ơi!
  Vâng, gió ơi! Bài thơ tâm tình hơn một lần ta đã dệt
  thật sức đến đâu.
  Là người hữu hạn đà chôn trong cõi lòng một khối tình vô tận.
  Gió ơi! Ngày nao gió ơi gió ơi khi nào thơ tâm tình sẽ sang,
  sẽ sang cầu hội ngộ
  hết kêu gào nức nở cho ý thắm tình lành, ý thắm tình lành.
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
  page-count = #4
  %ragged-bottom = ##f
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
    \override Lyrics.LyricSpace.minimum-distance = #0.4
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
