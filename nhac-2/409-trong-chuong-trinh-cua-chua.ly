% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Trong Chương Trình Của Chúa" }
  composer = "Lm. Kim Long"
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
nhacDiepKhucSop = \relative c' {
  \partial 4 d8 f16 e |
  d8 bf' bf g |
  a2 ~ |
  a4 f8 f16 f |
  bf4 r8 a \bar "||"
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  fs8. g16 a8 b |
  a4. a8 |
  d fs,4 d8 |
  g4. g8 |
  e (a) fs (e) |
  d2 |
  fs8. fs16 fs8 fs |
  d4. d8 |
  g8. g16 e8 a |
  a2 |
  r8 fs b b |
  b4. a8 |
  a a a d |
  cs4. b8 |
  b b b16 (e) d8 |
  a4. a8 |
  g4 e8 (a) |
  d,2 ~ |
  d4 r8
  \notBePhu -2 {
    d16 cs |
    d8 b a d16 cs |
    d8 e fs16 e fs g
  }
  \bar "||"
  
  a8. a16 fs8 d |
  b'4. d8 |
  cs
  \afterGrace cs ({
    \override Flag.stroke-style = #"grace"
    d16 )}
  \revert Flag.stroke-style
  e8 fs, |
  a4 r8 a |
  g g r a |
  fs fs r g |
  e8. e16 d8 d |
  b'2 |
  g8. g16 gs8 a |
  r a fs a |
  d4. d8 |
  cs d e fs, |
  a4 r8 a |
  g g r a |
  fs fs r g |
  fs e4 a8 |
  d,2 ~ \bar "|."
  d4 r8 a' | \break
  
  d4 b16 (a) fs8 |
  g4. e8 |
  e4 a8 fs16 (e) |
  d4 r8 f!16 f |
  d8 bf' g a |
  a4. a8 |
  d4 b16 (a) fs8 |
  g4. e8 |
  a4 fs16 (e) cs8 |
  d4 r8 a'16 a |
  fs8 e fs a |
  b4. b16 b |
  a8 a cs d |
  e4 \tuplet 3/2 { fs8 fs fs } |
  d4 \tuplet 3/2 { e8 e e } |
  cs4. cs16 d |
  a8 g e a |
  d,2 ~ |
  d4 r8 a' \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  d8 f16 e |
  d8 bf' bf g |
  a2 ~ |
  a4 f8 f16 f |
  bf4 r8 a |
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  fs8. e16 d8 d |
  cs4. cs8 |
  d d4 c!8 |
  b4. d8 |
  cs4 cs |
  d2 |
  fs8. fs16 fs8 fs |
  d4. d8 |
  g8. g16 e8 a |
  a2 |
  r8 fs g g |
  g4. fs8 |
  e e fs g |
  e4. ds8 |
  e e d d |
  cs4. d8 |
  d4 cs |
  d2 ~ |
  d4 r |
  \skip 2
  \skip 2
  a'8. a16 fs8 d |
  b'4. b8 |
  a [a] e d |
  cs4 r8 d |
  b b r e |
  d d r d |
  a8. a16 b8 a |
  d2 |
  d8. d16 d8 cs |
  r d d e |
  fs4. b8 |
  a a e d |
  cs4 r8 d |
  b b r e |
  d d r d |
  d cs4 cs8 |
  <<
    {
      d2 ~ |
      d4 r8 a' |
    }
    {
      \new Staff = "oasis" \with {
        alignAboveContext = #"1"
        \override VerticalAxisGroup.staff-staff-spacing =
          #'((basic-distance . 3))
        \remove "Time_signature_engraver"
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
        firstClef = ##f
      } {
        \key d \major
        r4. d,16 
        \tweak extra-offset #'(-8 . 2)
        _\markup { \fontsize #2 \italic "Đàn" }
        a |
        d8. e16 fs g a8
      }
    }
  >>
  d4 b16 (a) fs8 |
  g4. e8 |
  e4 a8 fs16 (e) |
  d4 r8 f!16 f |
  d8 bf' g a |
  a4. a8 |
  d4 b16 (a) fs8 |
  g4. e8 |
  a4 fs16 (e) cs8 |
  d4 r8 cs16 cs |
  d8 cs d fs |
  g4. g16 g |
  fs8 fs e fs |
  a4 \tuplet 3/2 { a8 a as } |
  b4 \tuplet 3/2 { g8 g gs } |
  a4. a16 g |
  fs8 e cs cs |
  <<
    {
      d2 ~ |
      d4 r8 a'
    }
    {
      \new Staff = "oasis" \with {
        instrumentName = "Đàn"
        alignAboveContext = #"1"
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 6))
        \remove "Time_signature_engraver"
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
        firstClef = ##f
      } {
        \key d \major
        r4. d,16 
        _\markup { \fontsize #2 \italic "Đàn" }
        a |
        d8. e16 fs g a8
      }
    }
  >>
}

nhacDiepKhucBas = \relative c {
  d8 f16 f |
  d8 bf' bf g |
  a4. a16 a |
  d2 ~ |
  d4 r8 cs |
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  d8. b16 a8 (gs) |
  a4. a8 |
  fs d4 a'8 |
  g4. g8 |
  a4 a, |
  d2 |
  fs8. fs16 fs8 fs |
  d4. d8 |
  g8. g16 e8 a |
  a2 |
  r8 d, g g |
  g4. d8 |
  cs cs d b |
  a4. a'8 |
  g g gs gs |
  a4. fs8 |
  e4
  <<
    {
      \voiceOne
      a8 ([g])
    }
    \new Voice = "splitpart" {
      \voiceTwo
      a8 ([a,])
    }
  >>
  \oneVoice
  <fs' d>2 ~ |
  <fs d>4 r |
  R2*2
  a8. a16 fs8 d |
  b'4. g8 |
  a a g (b) |
  a4 r8 fs |
  g g r cs, |
  d d r b |
  cs8. cs16 d8 fs |
  g2 |
  b8. b16 b8 a |
  r fs fs e |
  d4. g8 |
  a a g (b) |
  a4 r8 fs |
  g g r cs, |
  d d r e |
  a a <g a,>4 |
  <fs d>2 ~ |
  <fs d>4 r |
  
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Từ thuở ban đầu Chúa đã dựng nên và một người nữ.
  Cho họ chung sống có đôi
  họ không còn là hai nhưng đã nên một.
  Chính Chúa đã kết hợp và chính Chúa đã chúc phúc.
  Lời chúc phúc đó dù hình phạt tội tổ tông,
  dù lụt hồng thủy tuôn tràn cũng không xóa được.
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn) __ \repeat unfold 12 { _ }
  \revert Lyrics.LyricText.font-shape
  Trong chương trình của Chúa đôi bạn trẻ đã gặp nhau,
  đã quen nhau, đã yêu nhau, đã trao nhau lời hẹn ước.
  Và cùng dìu nhau lên bàn thờ Chúa
  xin Người niêm ấn tình yêu.
  Hứa bên nhau, hứa thương nhau,
  hứa thủy chung suốt đời.
  Ngày tháng sẽ lần qua cuộc đời lắm thăng trầm.
  Nhưng hai người vẫn dìu nhau đi từng lúc hoen lệ mi,
  từng lúc tươi miệng cười.
  Luôn chung lời nguyện cầu Thiên Cháu cho ân tình
  ngày thêm chan chứa xóa hết oán sầu
  luôn luôn tâm đầu chung sức xây gia đình phục hậu.
  <<
  { Mong }
  \new Lyrics {
	  \set associatedVoice = "beSop"
	  \override Lyrics.LyricText.font-shape = #'italic
	  Hai
	}
  >>
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 71 { _ }
  qua bao nhiêu ngày tháng luôn trọn vẹn nghĩa thủy chung
  mãi bên nhau, mãi yêu nhau, mãi trong ân tình của Chúa.
  Hiệp từng lời kinh bên bàn thờ Chúa cho tình yêu mãi đẹp xinh.
  Chúa yêu thương xuống muôn ơn dẫn đưa từng bước đường.
}

loiPhienKhucSopBa = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  \repeat unfold 71 { _ }
  (mươi lăm năm rồi đó)
  \repeat unfold 18 { _ }
  (Rầy cùng dìu nhau lên bàn thờ Chúa dâng lời cám mến hồng ân).
}

loiPhienKhucBasMot = \lyricmode {
  Từ thuở ban đầu Chúa đã dựng nên một người nam.
  Cho họ chung đẹp đôi
  họ không còn là hai nhưng đã nên một.
  Chính Chúa đã kết hợp và chính Chúa đã chúc phúc.
  Lời chúc phúc đó dù hình phạt tội tổ tông,
  dù lụt hồng thủy tuôn tràn cũng không xóa được.
  Trong chương trình của Chúa đôi bạn trẻ gặp nhau,
  đã quen nhau, đã yêu nhau, đã trao nhau lời hẹn ước.
  Và cùng dìu nhau lên bàn thờ Chúa
  xin Người niêm tình yêu.
  Hứa bên nhau, hứa thương nhau, hứa thủy chung trọn đời.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 56 { _ }
  qua bao nhiêu ngày tháng luôn trọn vẹn thủy chung
  mãi bên nhau, mãi yêu nhau, mãi trong ân tình của Chúa.
  Hiệp từng lời kinh bên bàn thờ Chúa cho tình yêu đẹp xinh.
  Chúa yêu thương xuống muôn ơn dẫn đưa từng nẻo đường.
}

loiPhienKhucBasBa = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  \repeat unfold 56 { _ }
  (mươi lăm năm rồi đó)
  \repeat unfold 17 { _ }
  (Rầy cùng dìu nhau lên bàn thờ Chúa dâng lời cám hồng ân).
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin =15\mm
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
  %page-count = #1
  ragged-last-bottom = ##t
  %ragged-bottom = ##t
  %ragged-last = ##t
  systems-per-page = 5
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
}

\score {
  \new ChoirStaff <<
    \new Staff = "1" \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -3 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}