% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Nỗi Niềm" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  poet = "Ý: Tv. 18-19"
  %arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c' {
  \repeat volta 2 {
  %intro
  
  \partial 4. r8 r4 |
  r \tuplet 3/2 { f8 e d } |
  e4 r |
  r \tuplet 3/2 { bf'8 a g } |
  a4 r |
  r2
  r4 r8 d, |
  bf' bf r g16 g |
  e4. g8 |
  a2 ~ |
  a4 r |
  r8 d16 d d8 d |
  cs2 |
  r8 d16 d d8 d |
  a2 |
  r8 a16 bf a8 d |
  g,2 ~ |
  g8 g16 a g8 a |
  f f'4 e8 |
  e f4 e8 |
  d2 ~ |
  d4 r |
  r2
  a8 c4 cs8 |
  d4 \tuplet 3/2 { f8 f e } |
  e2 ~ |
  e4 r |
  r2
  g,8 a4 bf8 |
  bf4 \tuplet 3/2 { a8 a cs } |
  }
  \alternative {
    {
      d2
    }
    {
      d2 |
      d4. (cs8) |
      d2 ~ |
      d4 r8 \bar "|."
    }
  }
  \break
  
  \partial 8 d16 a |
  a4 r8 bf16 g |
  g2 |
  g8 a4 f8 |
  e4 \tuplet 3/2 { e8 e a, } |
  f'4 (e8) c |
  d4 \tuplet 3/2 { d8 g a } |
  bf8. g16 e8 a |
  a2 \bar "||" \break
  
  f'8 f d4 |
  e2 |
  cs8 b! cs4 |
  d2 ~ |
  d4 r |
  r4 r8 bf16 bf |
  a4 \tuplet 3/2 { f8 f g } |
  e2 ~ |
  e4 r |
  d' e ~ |
  e d |
  cs r |
  e4. (	cs8) |
  r4 r8 a
  ^\markup { \raise #3.3 \halign #-0.3 \bold "Thiên thần:" }
  |
  a4 (bf8) g | \break
  
  g8 r16 a e8 d16 e |
  f2 ~ |
  f8 d g f16 (g) |
  a8 a16 a d8 e | \break
  e2 ~ |
  e8
  
  \override NoteHead.font-size = #-2
  f16
  _\markup { \lower #3.3 \halign #-0.3 \italic "(Đàn)" }
  e d8 e16 d |
  a4 \tuplet 3/2 { d,8 e f } |
  g4 r8
  
  \override NoteHead.font-size = #0
  g |
  g8. g16 \tuplet 3/2 { a8 e c } |
  d4 r8 f16 e |
  e4 \tuplet 3/2 { f8 d d } |
  g2 \bar "||" \break
  
  d'8. c16 d8 a |
  r4 g8. f16 |
  g8 d r f |
  e (f) g a ~ |
  a bf4 a8 |
  a2 \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \key d \major
  fs8 (a) fs e |
  d g4 b8 |
  a4 r8 a |
  a4 cs8 (d) |
  e fs4 e8 |
  e2 |
  cs8. e16 cs8 b ~ |
  b fs4 a8 |
  b2 |
  a8. a16 b8 e, |
  g (a4) e8 |
  d2 | \break
  
  \oneVoice \voiceOne \stemNeutral
  \key f \major
  \override NoteHead.font-size = #-2
  r8 d16
  _\markup { \lower #3.3 \halign #-0.3 \italic "(Đàn)" }
  c d8 a |
  f' f16 e f8 d |
  
  \revert NoteHead.font-size
  a4 \tuplet 3/2 { a'8 e \afterGrace d (e8) } |
  f4 \tuplet 3/2 { e8 d g } |
  g2 ~ |
  g8 g \tuplet 3/2 { bf d e } |
  e4. e8 |
  f cs4 d8 |
  d2 ~ |
  
  \voiceOne
  d4 r | \break
  
  \key g \major
  b4 r8 d |
  g, (a) b g |
  d2 ~ | \break
  d4 g8 g |
  fs4 (g8 a) |
  b2 |
  e8 cs4 cs8 |
  d2 |
  
  \set Staff.printKeyCancellation = ##t
  \set Staff.explicitKeySignatureVisibility = #all-invisible
  \override Staff.KeySignature #'break-visibility = #all-invisible
  \key f \major
  \oneVoice \stemNeutral
  r8 d16
  _\markup { \lower #3.3 \halign #-0.3 \italic "(Đàn)" }
  c d8 g, |  \break
  a a16 g a8 d, |
  e f16 e d c d e |
  a,4 r8 
}

nhacPhienKhucAltoMot = \relative c' {
  %intro
  
  \partial 4. r8 r4 |
  r \tuplet 3/2 { d8 a d } |
  as4 r |
  r \tuplet 3/2 { g'8 f e } |
  f4 r |
  r2
  r4 r8 d |
  g g r d16 d |
  d4. d8 |
  cs2 ~ |
  cs4 r |
  r8 f16 f f8 f |
  e2 |
  r8 d16 d d8 d |
  cs2 |
  r8 f16 g f8 f |
  e2 ~ |
  e8 e16 f e8 c |
  d a'4 bf8 |
  a <d a>4 <cs g>8 |
  <a f>2 ~ |
  <a f>4 r |
  r2
  f8 a4 a8 |
  a4 \tuplet 3/2 { d8 d d } |
  cs2 ~ |
  cs4 r |
  r2
  e,8 f4 f8 |
  d4 \tuplet 3/2 { c8 d g } |
  
  f2
  
  f2 |
  g8 (bf a g) |
  f2 ~ |
  f4 r8
  
  \skip 8
  \repeat unfold 8 { \skip 2 }
  d'8 d a4 |
  bf2 |
  a8 e g4 |
  f2 ~ |
  f4 r |
  r r8 g16 g |
  f4 \tuplet 3/2 { d8 d e } |
  cs2 ~ |
  cs4 r |
  a'2 |
  bf4 g8 f |
  e4 r |
  g8 (bf a g) |
  <d' f,>2 ^~ |
  <d f,>4 r |
  
  \repeat unfold 12 { \skip 2 }
  
  f,8. e16 d8 c |
  r4 d8. c16 |
  bf8 bf r d |
  c (d) e f ~ |
  f d4 e8 |
  cs2
  
  \key d \major
  fs8 (a) d, cs |
  b b4 g'8 |
  fs4 r8 fs |
  e4 cs'8 (d) |
  b8 a4 a8 |
  gs2 |
  e8. e16 e8 ds ~ |
  ds ds4 e8 |
  e2 |
  cs8. cs16 d8 cs  |
  b4. cs8 |
  d2 |
  
  \repeat unfold 9 { \skip 2 }
  
  \voiceTwo
  r8 d16
  _\markup { \lower #3.3 \halign #-0.3 \italic "(Đàn)" }
  d \stemDown g8 a |
  
  \key g \major
  d,4 r8 c |
  g' (a) d, b |
  a2 ~ a4 e'8 e |
  d2 |
  d2 |
  b'8 a4 g8 |
  fs2 |
  
  \repeat unfold 3 { \skip 2 }
  
}

nhacPhienKhucBasMot = \relative c {
  %intro
  
  \partial 4. r8 a a16 g |
  a2 ~ |
  a8 r d d16 c |
  d2 ~ |
  d8 r16 a g'8 f |
  e4. a16 e |
  d2 ~ |
  d8 d bf' bf |
  r g16 g g8 bf |
  a2 ~ |
  a8 a16 a a8 a |
  d,2 |
  r8 g16 g g8 g |
  f2 |
  r8 a16 bf g8 a |
  d,2 ~ |
  d8 d16 e c8 d |
  a4. a8 |
  bf r d g, |
  a4 a |
  d2 |
  d8. d16 d8 f16 (g) |
  a2 ~ |
  a4 g |
  f \tuplet 3/2 { d8 d d } |
  g4 (a) |
  a,8. a16 a8 cs16 (d) |
  e2 ~ |
  e4 d |
  g \tuplet 3/2 { a8 f e } |
  <<
    {
      \voiceTwo
      d2
    }
    \new Voice {
      \voiceOne
      \override NoteHead.font-size = #-2
      r4 r8 d'
      _\markup { \lower #3.3 \halign #-0.3 \italic "(Đàn)" }
    }
  >>
  \oneVoice
  d,2 |
  e4 ^(a) |
  <a\=1^( d,\=2_(>2 |
  <a\=1) d,\=2)>4 d,8\rest
  
  \stemNeutral
  \skip 8
  \repeat unfold 8 { \skip 2 }
  d2\rest
  g8 e g4 |
  a4. a8 |
  bf2 |
  d,8 g f4 |
  g4 d8 c |
  d4 r4 |
  r r8 a |
  a'4 f8 f ~ |
  f bf a4 |
  g r8 a |
  a4 g8 g ~ |
  g e a4 |
  d,2 ~ |
  d4 r |
  
  \repeat unfold 12 { \skip 2 }
  
  d8. e16 f8 a |
  r4 bf8. a16 |
  g8 g r d |
  g (f) e d ~ |
  d g4 f8 |
  a2
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \key d \major
  d,4 d8 fs |
  g4 g |
  d r8 d'8 |
  cs4 a |
  gs8 a4 a8 |
  e2 |
  a8. a16 a8 b ~ |
  b b4 a8 |
  gs2 |
  a8. a16 g8 a |
  e4 fs8 (a) |
  d,2 |
  
  \repeat unfold 10 { \skip 2 }
  \key g \major
  g4 r8 fs |
  g4 g8 g |
  fs8. e16 a8 g |
  fs4 e8 e |
  d4 (e8 d) |
  g2 |
  g8 (a) a, a |
  d2 ~ |
  
  
  d4 r
  
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  Đất đây là đâu?
  Đất đây là đâu?
  Lòng lữ thứ lên cơn sầu thê thiết.
  Ca -- mê -- lô xa rồi,
  Ca -- mê -- lô xa rồi
  còn đâu ngày oanh liệt,
  còn đâu ngày oanh liệt
  Bet -- sa -- bê xứ cây dầu.
  Chừ đây cát trắng,
  cát trắng mênh mang.
  Chừ đây sức yếu mà đàng xa xăm.
  
  xăm, xa xăm.
  
  \set stanza = "Êlia:"
  Chúa tôi ơi, Chúa tôi ơi!
  Thôi đã đủ rồi cho tôi về cõi đời
  đời phận tôi có tốt hơn người xưa đâu.
  Gió hú rừng sâu sương mờ cát trắng.
  Dưới gốc cây Người nằm im lặng.
  Ơ __ _ _ _ Ơ __ 
  Con ơi, con ơi!
  Ngồi lên mà ăn uống
  này đây bình nước và này đây tấm bánh.
  
  \repeat unfold 10 { _ }
  \set stanza = "Người kể:"
  Tiên tri ăn uống đoạn lại nằm
  bắt tay lên nghĩ chuyện gần xa.
  
  Ôi ngày huyết lệ,
  ôi ngày huyết lệ máu đỏ lênh láng suối Ki -- sông.
  Lửa bởi trên trời,
  lửa đốt thiêu bàn thờ của lễ cháy tan tiêu
  trong tiếng tung hô Vị Chân Chúa.
  Bao tay đối thủ đứng tiêu điều.
  
  \repeat unfold 9 { _ }
  \set stanza = "Êlia:"
  Nhớ làm chi cảnh ấy cho lòng nao nao
  làm chi nông nổi ấy cho tháng ngày lao đao.
  
  Không, đã thỏa chí anh hào
  cho thiên hạ biết Chúa nào thực hư.
  
}

loiPhienKhucBasMot = \lyrics {
  Đây, đây là đâu?
  Đây, đây là đâu?
  Chiều sương lành lạnh gió gieo sầu,
  lòng lữ thứ sầu dậy sầu thê thiết.
  Ca -- mê -- lô xa rồi,
  Ca -- mê -- lô xa rồi
  còn đâu ngày oanh liệt,
  còn đâu ngày oanh liệt,
  oanh liệt Bet -- sa -- bê còn đâu.
  Một ngày đàng heo hút im lặng
  trầm lặng mênh mang,
  một ngày đàng heo hút gầy yếu nẻo đàng xa xăm
  
  xăm, xa xăm.
  
  Sương mờ cát trắng,
  cát trắng.
  Người đi về đâu, đi về đâu.
  Thần Chúa dịu dàng đến trong mơ
  đánh thức tiên tri dậy thẫn thờ.
  
  Ôi ngày huyết lệ,
  ôi ngày tuyệt lệ màu đỏ lên tràn suối Ki -- sông.
  Lửa bới trên tới
  đốt thiêu bàn thờ của lễ cháy tan tiêu
  trong tiếng tung hô ý chan hòa.
  Bao tay địch thủ từng tiêu điều.
  
  Không, đã thỏa chí anh hào,
  thỏa chí anh hào cho thiên hạ biết
  Chúa nào thực hư.
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
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
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
            \nhacPhienKhucSopMot
            \notBePhu -2 { \nhacPhienKhucAltoMot }
      \new NullVoice = nhacThamChieuSopMot \nhacPhienKhucSopMot
      \new Lyrics \lyricsto nhacThamChieuSopMot \loiPhienKhucSopMot
    >>
    \new Staff <<
        \new Voice = "beBas" {
          \clef bass \TongNhip \nhacPhienKhucBasMot
        }
        \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1.5
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
