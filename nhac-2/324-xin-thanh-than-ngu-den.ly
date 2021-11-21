% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xin Thánh Thần Ngự Đến" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \set Timing.beatStructure = #'(1 1 1)
  \partial 8 r8 |
  R2.*2
  g4 g8 a4 bf8 |
  d c d f ([e]) d |
  c4. ~ c4 r8 |
  R2.
  r4 c8 c4. |
  a8 f' e f ([e]) d |
  c4. ~ c8 d d |
  g, c a bf ([a]) g |
  f4. \bar "||" \break
  
  c4 c8 |
  af' (g) e f4. |
  af8 c bf g ([af]) g |
  f4. df8 f df |
  ef (f) df c4. ~ |
  
  \set Timing.beatStructure = #'(1 1)
  \time 2/4
  c8 c c f |
  e (f) g g |
  \slashedGrace { f16 ( } af4) f8 af |
  g8. bf16 bf8 c |
  c4 g8 bf |
  af (bf) af g |
  f2 \bar "||" \break
  
  f8. f16 a8 g |
  c4. d8 |
  bf4 (d) |
  c4. b!8 |
  c g g4 ~ |
  g r8 g |
  g a16 g c8 c |
  c2 |
  R2*2
  c8. bf16 af8 f |
  f4 r8 f |
  c df4 af'8 |
  g4 r8 af |
  c g4 f8 |
  f2 \bar "||"
  
  \set Timing.beatStructure = #'(1 1 1)
  \time 6/8
  g8 a f bf (a) g |
  a4. ~ a4. |
  d4 f8 f (e) d |
  c4. ~ c4 c8 |
  d (d a) f4 a8 |
  g4. ~ g4 r8 |
  e (d) g c,4 a'16 (g) |
  \slashedGrace { e16 ( }f4.) ~ f4 r8 |
  
  \set Timing.beatStructure = #'(1 1)
  \time 2/4
  R2
  r4 r8 g |
  e g e (d) |
  c4 r |
  r r8 g' |
  g8. g16 a8 b! |
  c4. b!8 |
  c (a) d c16 (d) |
  e4 d8 e |
  f (e) d4 |
  c2 ~ |
  c4 r \bar "||" \break
  
  \set Timing.beatStructure = #'(1 1 1)
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 6/8
  a4 g8 a4 bf8 |
  c4. r4 a8 |
  d (c) bf a4 a8 |
  e' (d) g, d' (c) bf |
  a4. f4 g8 |
  a4 a8 c (bf) a |
  g4. ~ g4 r8 \bar "||"
  c4. ~ (c4 bf8) |
  a4. g8 a bf |
  c4. d8 (e d) |
  c4. c8 d e |
  f4. ~ f4 r8 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r8 |
  R2.*2
  e4 e8 f4 e8 |
  f f f d ([g]) f |
  e4. ~ e4 r8 |
  R2.
  r4 f8 e4. |
  f8 a c d ([c]) a |
  g4. ~ g8 f f |
  e g f f4 e8 |
  f4.
  
  c4 c8 |
  af' (g) e f4. |
  af8 c bf g ([af]) g |
  f4. df8 f df |
  ef (f) df c4. ~ |
  
  \set Timing.beatStructure = #'(1 1)
  \time 2/4
  c8 c c f |
  e (f) e e |
  f4 f8 a |
  g8. g16 g8 f |
  e4 e8 g |
  f (g) f e |
  f2 |
  
  R2*2
  d8. d16 f8 e |
  a4 g8 (f) |
  e4. d8 |
  d e d4 ~ |
  d a'8 a |
  af4 (g) |
  R2
  af8. g16 f8 c |
  c4. c8 |
  af4 r8 f' |
  c df4 f8 |
  e4 r8 f |
  f e4 f8 |
  f2 |
  
  \time 6/8
  e8 f c d4 d8 |
  cs4. ~ cs4. |
  d4 a'8 g4 g8 |
  e4. ~ e4 e8 |
  f (g e) c4 f8 |
  e4. ~ e4 r8 |
  c4 b!8 c4 bf8 |
  a4. ~ a4 r8 |
  
  \time 2/4
  R2
  r4 r8 g' |
  e d c (b!) |
  c4 r |
  R2
  r4 r8 g' |
  g8. g16 a8 f |
  e4 a8 a |
  gs4 gs8 gs |
  a4 f |
  e2 ~ |
  e4 r |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 6/8
  f4 e8 f4 g8 |
  a4 a8 g (a) f |
  bf (a) g f4 f8 |
  c4 e8 f (a) g |
  f4. f4 e8 |
  d4 f8 c (d) f |
  e4. ~ e4 r8 |
  R2.
  f8 (d f) e4. |
  a8 g a bf4. |
  g8 (a g) f4 bf8 |
  bf (c) bf a4 r8
}

nhacDiepKhucBas = \relative c' {
  c8 |
  d (c) a f4. |
  e8 (f g) a4. |
  c,4 c8 f4 g8 |
  d8 d d bf4 b!8 |
  c4. c8 d f |
  e (f) g f4 g8 |
  a4. ~ a8 c, c |
  f4 bf8 a4 f8 |
  e4 e8 a4 bf8 |
  c4.
  <<
    {
      \voiceOne
      c4 (bf8)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,4.
    }
  >>
  \oneVoice
  <a' f>4.
  r4.
  R2.*4
  R2*7
  R2
  e8. e16 g8 f |
  bf2 |
  a4. d8 |
  c4. b!8 |
  b! c g4 ~ |
  g f8 f |
  f4\=1( \=2_( <e\=1) c> \=2) |
  c'8. bf16 af8 f |
  f4. f8 |
  e2 |
  f4 r8 f |
  c df4 f8 |
  c4 r8 f |
  c4. f8 |
  f2 |
  
  \time 6/8
  c8 f a g4 bf8 |
  a4. ~ a4. |
  f4 f8 g (a) b! |
  c4. ~ c4 a8 |
  f (e f) g (a) f |
  c4. ~ c4 r8 |
  g'4 g8 a4 c,8 |
  \slashedGrace { c16 ( } f4.) ~ f4 f16 (g) |
  
  \time 2/4
  c8 c af (g) |
  f4 r |
  R2
  r4 r8 g |
  g8. g16 a8 b! |
  c4. g16 (f) |
  e4 d4 |
  c f8 f |
  e4 e8 e |
  d4 g |
  c,2 ~ |
  c4 r |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 6/8
  R2.*7
  r4. c8 (d e) |
  f4. c'8 a g |
  f4 f8 bf4. |
  c4 (bf8) a (f) c' |
  <c f,>4. ~ <c f,>4 r8
}

% Lời
loiDiepKhucSop = \lyricmode {
  Từ trời cao gửi xuống một tia ánh sáng Ngài.
  Hãy đến lạy Đấng ban phát muôn ơn
  hãy đến lạy Đấng soi sáng tâm hồn.
  Người là Đấng ủi an,
  là khách vỗ về tâm hồn,
  là Đấng bổ dưỡng dịu hiền.
  Ngài là an nghỉ trong lao khổ,
  là mát dịu trong cơn nóng sốt,
  là an ủi trong lệ sầu.
  
  Lạy mạch sáng hồng phúc
  cúi lạy xin đổ xuống tràn đầy,
  tràn đầy tâm hồn tín hữu Chúa.
  Nếu không ơn thần lực con người chẳng có chi,
  chẳng có chi vẹn sạch.
  Xin Chúa rửa chỗ nhơ nhớp,
  Xin tưới chỗ khô khan,
  xin chữa lành vết thương,
  xin uốn lòng cứng cỏi.
  Nắn lại những sai lệch.
  Xin ban cho các tín hữu những kẻ tin ở Chúa
  bảy hơn thánh của Ngài.
  
  Xin thưởng công nhân đức, xin dẫn họ về,
  về bến về bến cứu độ
  và ban cho muôn kiếp hân hoan.
  A -- men, Al -- le -- lu -- ia.
  A -- men, Al -- le -- lu -- ia.
}

loiDiepKhucAlto = \lyricmode {
  Từ trời cao gửi xuống một tia ánh sáng Ngài.
  Hãy đến lạy Đấng ban phát muôn ơn
  hãy đến lạy Đấng soi sáng tâm hồn.
  Người là Đấng ủi an,
  là khách vỗ về tâm hồn,
  là Đấng bổ dưỡng dịu hiền.
  Ngài là an nghỉ trong lao khổ,
  là mát dịu trong cơn nóng sốt,
  là an ủi trong lệ sầu.
  
  Lạy nguồn sáng hồng phúc
  xin đổ tràn đầy tâm hồn tín hữu Chúa.
  Nếu không ơn thần lực, thần lực
  con người chẳng có chi,
  chẳng có chi vẹn sạch.
  Xin Chúa rửa chỗ nhơ nhớp,
  Xin tưới chỗ khô khan,
  xin chữa lành vết thương,
  xin uốn lòng cứng cỏi.
  Nắn lại những sai lệch.
  Xin ban cho các tín hữu tin ở Ngài
  bảy ơn thánh của Ngài.
  Xin thưởng công nhân đức,
  xin dẫn họ, dẫn họ về,
  về bến về bến cứu độ
  và ban cho muôn kiếp hân hoan.
  A -- men, Al -- le -- lu -- ia.
  A -- men, Al -- le -- lu -- ia.
}

loiDiepKhucBas = \lyricmode {
  Xin Chúa Thánh Thần ngự đến.
  Từ trời cao gửi xuống một tia ánh sáng Ngài.
  Nguyện xin Cha kẻ cơ bần hãy đến,
  nguyện hãy đến ban phát muôn ơn,
  hãy đến soi sáng tâm hồn.
  Là mạch sáng hồng phúc
  xin hãy đổ tràn đầy tâm hồn tín hữu Chúa.
  Nếu không ơn thần lực, ơn thần lực
  con người chẳng có gì, chẳng gì vẹn sạch.
  Xin Chúa rửa chỗ nhơ nhớp,
  Xin dội chỗ khô khan,
  xin chữa lành vết thương,
  xin uốn lòng cứng cỏi,
  sưởi ấm chỗ lạnh lùng.
  Xin ban cho các tín hữu những kẻ tin Ngài,
  tin ở Ngài bảy ơn lành của Ngài.
  A -- men, Al -- le -- lu -- ia.
  A -- men, Al -- le -- lu -- ia.
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
  %page-count = #1
}

TongNhip = {
  \key f \major \time 6/8
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
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    %{
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    %}
  }
}
