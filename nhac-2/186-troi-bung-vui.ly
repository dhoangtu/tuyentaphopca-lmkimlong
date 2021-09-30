% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Trời Bừng Vui" }
  composer = "Nhạc: Adam"
  composer = "Lời Việt: Lm. Kim Long"
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
nhacPhienKhucSop = \relative c' {
  \partial 2 e4 e8. e16 |
  g4 ~ g8. g16 a8. a16 f8. a16 |
  c2 g8 r16 g e8. d16 |
  c4 e8. f16 g4 f8. d16 |
  c1 ~ |
  c2 e4 e8. e16 |
  g4 ~ g8. g16 a8. a16 f8. a16 |
  c2 g8 r16 g f8. e16 |
  b'4 g8. a16 b4 c8. b16 |
  e,2 r4 r8 g |
  g4 a d, g |
  a8. g16 c8. e,16 a4 g8 r16 g |
  g4 a d, g |
  a8. g16 c8. e,16 g4. r8 | \break
  c2. b8. a16 |
  b2. r8 b |
  d2 ~ d8. a16 a8. a16 |
  c2 c4 r8 c |
  e2 (d4.) g,8 |
  c2. (b8.) a16 |
  g2 ~ g8. g16 a8. g16 |
  g2. c4 |
  d2. r8 g, |
  e'2. d4 |
  c2 b4 c8. d16 |
  c2. r4 |
  d2. d4 |
  g2 ~ (g8 f) e (d) |
  c2 b4 c8. d16 |
  c2. r4 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  c4 c8. c16 |
  c4 ~ c8. c16 c8. c16 c8. d16 |
  e2 e8 r16 c c8. c16 |
  c4 c8. c16 b4 b8. b16 |
  c1 ~ |
  c2 c4 c8. c16 |
  c4 ~ c8. c16 c8. c16 c8. d16 |
  e2 e8 r16 c b8. c16 |
  e4 e8. e16 d4 d8. d16 |
  e2 r4 r8 b |
  b4 b d d |
  e8. e16 e8. c16 e4 e8 r16 c |
  b4 b d d |
  e8. e16 e8. c16 c4. r8 |
  e2. e8. e16 |
  g2. r8 e |
  f2 ~ f8. f16 f8. f16 |
  e2 e4 r8 e |
  g2 ~ g4. g8 |
  g2 ( a4 g8.) f16 |
  e2 ~ e8. e16 e8. e16 |
  e2. g4 |
  g2. r8 g |
  g2 (a4) a |
  g2 f4 e8. f16 |
  e2. r4 |
  g2. g4 |
  g2 (a4) a |
  g2 f4 e8. f16 |
  e2. r4
}

nhacPhienKhucTenor = \relative c' {
  g4 g8. g16 |
  bf4 ~ bf8. bf16 a8. a16 a8. a16 |
  g2 c8 r16 e, g8. f16 |
  e4 g8. g16 f4 g8. f16 |
  e1 ~ |
  e2 g4 g8. g16 |
  bf4 ~ bf8. bf16 a8. a16 a8. a16 |
  g2 c8 r16 e, e8. g16 |
  g4 b8. b16 a4 a8. a16 |
  g2 r4 r8 g |
  f4 f g b |
  c8. c16 g8. g16 g4 c8 r16 g |
  f4 f g b |
  c8. g16 g8. g16 e4. r8 |
  c'2. d8. c16 |
  b2. r8 g |
  a2 ~ a8. d16 d8. d16 |
  c2 c4 r8 c |
  c2 (b4.) b8 |
  c2. ~ c8. c16 |
  c2 (b8.) b16 b8. b16 |
  c2. c4 |
  b2. r8 b |
  c2. c8 (d) |
  e2 d4 c8. [b16] |
  c2. r4 |
  b2. b4 |
  c (bf a) d |
  e2 d4 c8. b16 |
  c2. r4
}

nhacPhienKhucBas = \relative c {
  c4 c8. c16 |
  e4 ~ e8. e16 f8. f16 f8. f16 |
  c2 c8 r16 c c8. c16 |
  g4 g8. g16 d'4 g,8. g16 |
  c1 ~ |
  c2 c4 c8. c16 |
  e4 ~ e8. e16 f8. f16 f8. f16 |
  c2 c8 r16 c c8. c16 |
  b4 b8. b16 f'4 f8. d16 |
  e2 r4 r8 e |
  d4 g, b g |
  c8. c16 c8. g16 c4 c8 r16 e |
  d4 g, b g |
  c8. c16 g8. g16 c4. r8 |
  a'2. a8. a16 |
  e2. r8 e |
  d2 ~ d8. d16 d8. d16 |
  a'2 a4 r8 a |
  g2 (f4.) f8 |
  e2 (f4) ~ f8. f16 |
  g2 (g,8.) g16 g8. g16 |
  c2. c4 |
  g'2. r8 f |
  e2 (f4) f |
  g2 g4 g8. [g,16] |
  c2. r4 |
  g'2. f4 |
  e2 (f4) f |
  g2 g4 g8. g16 |
  c,2. r4
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Kìa trời bừng vui tinh tú chiếu dọi muôn ánh quang,
  báo tin vui mừng: ngày cứu rỗi đã khởi đầu.
  Miệt mài ngàn năm nhân thế vẫn hằng luôn ngóng trông,
  Chúa bao từ ái đà thương đoái tiếng kêu cầu.
  Sai Ngôi Thánh Tử sinh xuống trong xác phàm thế nhân,
  đem muôn phúc lành cứu rỗi cho khắp ngàn dân.
  \set stanza = "ĐK:"
  Hãy vui mừng lên hợp tiếng cùng triều thần hát kính:
  Này Chúa vì quá yêu ta nên đã sinh ra.
  Rạng danh một Chúa trên trời
  bình an khắp nơi danh Thiên Chúa trên trời
  bình an khắp nơi.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Nào cùng về đây theo ánh sáng vì sao dẫn đường
  tới nơi hang lừa cùng nghiên gối để tôn thờ.
  Thờ lạy Hài Nhi sinh xuống giữa mùa đông tuyết sương.
  Đấng bao đời trước ngàn dân nước vẫn trông chờ.
  Ôi Vua đất trời cao sáng muôn thánh thần kính tôn,
  hôm nay giáng trần trong chốn hang đá lạnh đơn.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = "1."
  Kìa trời bừng vui tinh tú chiếu dọi muôn ánh quang,
  báo tin vui mừng:
  ngày cứu rỗi đã khởi đầu.
  Miệt mài ngàn năm nhân thế vẫn hằng luôn ngóng trông,
  Chúa bao từ ái đà thương đoái tiếng kêu cầu.
  Sai Ngôi Thánh Tử sinh xuống trong xác phàm thế nhân,
  đem muôn phúc lành cứu rỗi cho khắp ngàn dân.
  Hãy vui mừng lên hợp tiếng cùng triều thần hát kính:
  Này Chúa vì quá yêu ta nên đã sinh ra.
  Rạng danh một Chúa trên trời bình an khắp nơi
  danh Thiên Chúa trên trời binh an khắp nơi.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = "2."
  Nào cùng về đây theo ánh sáng vì sao dẫn đường
  tới nơi hang lừa cùng nghiên gối để tôn thờ.
  Thờ lạy Hài Nhi sinh xuống giữa mùa đông tuyết sương.
  Đấng bao đời trước ngàn dân nước vẫn trông chờ.
  Ôi Vua đất trời cao sáng muôn thánh thần kính tôn,
  hôm nay giáng trần trong chốn hang đá lạnh đơn.
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
  print-page-number = #f
  %page-count = #2
  %systems-per-page = 5
}

TongNhip = {
  \key c \major \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

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
      >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef "bass"
        \new Voice \TongNhip \partCombine 
        \nhacPhienKhucTenor
        \notBePhu -2 { \nhacPhienKhucBas }
      \new NullVoice = beTenor \nhacPhienKhucTenor
      \new Lyrics \lyricsto beTenor \loiPhienKhucBasMot
      \new Lyrics \lyricsto beTenor \loiPhienKhucBasHai
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
