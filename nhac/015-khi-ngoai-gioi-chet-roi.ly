% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Khi Ngoại Giới Chết Rồi" }
  arranger = "Nhạc: Lm. Kim Long"
  composer = "Thơ: Xuân Ly Băng"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c'' {
  \key f \major \time 2/4
  \partial 8 r8 |
  r2
  r
  r
  a4. bf8 |
  g4. a8 |
  f4 \tuplet 3/2 { e8 f e } |
  d4 r8 bf' |
  a4. a16 g |
  \slashedGrace a8 (bf4.) g8 |
  e8. g16 \tuplet 3/2 { bf8 bf a } |
  a2 ~ |
  a4 r |
  r2
  
  <<
    {
      \voiceOne
      d2 |
      d4 e8 d |
      cs4. d8 |
      bf2 |
      a4 \tuplet 3/2 { d8 cs d } |
      e4
    }
    
    \new Voice = "splitpart" {
      \voiceTwo
      a,2 |
      bf |
      a |
      g |
      e4 \tuplet 3/2 { f8 a bf } |
      a4
    }
  >>
  \oneVoice
  r8 a | \break
  
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \key d \major
  d d fs, (g) |
  a8. b16 d,8 (e) |
  fs2 |
  d8. g16 g8 g |
  b8 b4 a8 |
  a2 |
  a8. d16 d8 d |
  d fs4 cs8 |
  b2 |
  g8. d'16 b8 a |
  e g4 cs,8 |
  d2 ~ |
  d4 r |
  r8 cs' cs d |
  b4 r8 g' |
  e e fs4 |
  cs8. cs16 cs8 d |
  a a4 as8 |
  b2 |
  gs8. gs16 a8 a |
  e g4 fs8 |
  fs2 |
  d8. fs16 e8 g |
  a a4 cs,8 |
  d2 ~ |
  
  \key f \major
  d8 d4 f16 (g) |
  a4. a8 |
  a g4 g16 (a) |
  d4 cs16 (d) e8 |
  a,2 |
  e8. g16 bf8 a |
  a2 ~ |
  a8 a f'16 (e) d8 |
  e4. \slashedGrace { \stemDown e8 ^(} d8) |
  bf a a4 |
  r8 f4 g8 |
  e4 r8 d |
  g g f (g) |
  a2 ~ |
  a4 r8 a \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

nhacPhienKhucAltoMot = \relative c'' {
  \key f \major \time 2/4
  \partial 8
  <<
    {
      \voiceOne
      d8 |
      cs4 r8 d16 bf |
      g8. e16 g8 g |
      a4
    }
    \new Voice = "altoMot" {
      \voiceTwo
      r8 |
      \once \stemUp <a g e>4 r8 f |
      e8. d16 e4 |
      e
    }
  >>
  \oneVoice
  r |
  f4. g8 |
  d2 ~ |
  d4 cs |
  d2 ~ |
  d8 d d4 _> ~ |
  d8 d \staccato d \staccato d \staccato |
  cs4 r |
  r8 e f e |
  d4 r |
  r2
  f |
  g ~ |
  g4 f8 e |
  d4 e8 d |
  cs4 \tuplet 3/2 { d8 e e } |
  cs4 r8 a | \break
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \key d \major
  a' fs d4 |
  cs8. _> d16 a8 (cs) |
  d2 |
  b8. b16 d8 d |
  g g4 d8 |
  cs2 |
  d8. fs16 a8 a |
  b as4 as8 |
  fs2 |
  e8. fs16 d8 d |
  cs cs4 a8 |
  a2 ~ |
  a4 r |
  r8 e' e fs |
  d4 r8 b' |
  a a cs4 |
  a8. a16 a8 g |
  fs e4 e8 |
  ds2 |
  e8. d16 cs8 cs |
  b e4 d8 |
  cs2 |
  d8. d16 b8 d |
  cs cs4 a8 |
  a2 ~ | \break
  
  \key f \major
  a8 d4 f16 (g) |
  a4. a8 |
  a g4 g16 (a) |
  d4 r |
  r8 fs,16 fs e8 fs |
  bf,4 r |
  r8 f'16 f g8 f 
  e4 r |
  r8 a4 f8 |
  g f e4 |
  r8 f4 g8 |
  e4 r8 d |
  d e d4 |
  cs2 ~ |
  cs4 r8 a'
}

nhacPhienKhucBasMot = \relative c' {
  \key f \major \time 2/4
  \partial 8 r8 |
  <<
    {
      \voiceOne
      a4 r8 bf |
      bf2 |
      a4 r |
      d c |
      bf c8 bf |
      a4. g8 |
      f2 ~ |
      f8 fs
    }
    
    \new Voice = "basMot" {
      \voiceTwo
      a,4 d |
      d e8 d |
      c16 a cs e a e a cs |
      d,2 |
      g |
      a4 a, |
      d2 ~ |
      d8 d
    }
  >>
  \oneVoice
  g4 ^> ~ |
  g8 g \staccato g \staccato f \staccato |
  a4 r |
  r8
  <<
    {
      \voiceOne
      g a g |
      f4
    }
    \new Voice = "basHai" {
      \voiceTwo
      a,8 a cs |
      d4
    }
  >>
  \oneVoice
  r8 g16 ^> g ^> |
  g4. f8 |
  f a4 f8 |
  e4 e16 (f) d (d) |
  a4. a8 |
  g'8. f16 g8 a |
  a2 ~ |
  a4 r8 a | \break
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \key d \major
  fs a b4 |
  a8. ^> g16 fs8 (e) |
  d2 |
  g8. g16 b8 g |
  e e4 g8 |
  a2 |
  fs8. fs16 fs8 fs |
  g fs4 e8 |
  d2 |
  g8. fs16 g8 g |
  a4 <e a,>8 <g a,> |
  <fs d>2 ~ |
  <fs d>8 b, b cs |
  a2 |
  r8 g' e e |
  a2 ~ |
  a8 a a b |
  d cs4 cs8 |
  b2 |
  e,8. es16 fs8 fs |
  g <b e,>4 <b e,>8 |
  <as fs>2 |
  b8. a16 g8 b |
  a4 <e a,>8 <g a,> |
  <fs d>2 ~ | \break
  
  \key f \major
  <fs d>8 d4 f16 (g) |
  a4. a8 |
  a g4 g16 (a) |
  d4 r |
  r8 d,16 d cs8 d |
  g4 r |
  r8 <d' d,>16 <d d,> <e cs,>8 <d d,> |
  <cs a,>4 r |
  r8 cs4 d8 |
  <d g,> <d g,> <cs a>4 |
  r2
  r8 cs,4 d8 |
  bf2 |
  a2 ~ |
  a4 r8 a'
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  Hm __ _ _ _ _ _ _ _ _ Bóng ai đi lặng lẽ âm thầm
  như chiếc là rơi đêm.
  Hm __ _ _ _ _ _ _ _ sao trời lấp lánh.
  Ngoại giới chết rồi đây phút giờ thánh.
  Hồn lâng lâng chiêm ngưỡng cõi vô biên.
  Hồn say sưa trong non nước diệu huyền.
  Và ngất ngư trong tình yêu mầu nhiệm.
  Hồn gặp đây rồi Đấng hồn trìu mến.
  Ngài ngọt ngào hơn ngàn vạn mật hoa.
  Ngài từ bi hơn trời biển bao la.
  Và nhân hậu trên muôn muôn lòng mẹ.
  Lạy Thiên Chúa đêm đêm lìa khỏi xác.
  Về với Ngài hồn say đắm mê ly.
  Lời nói chẳng ra ý cảm tràn trề.
  Vì siêu việt Người ơi siêu việt quá.
  Ngoại...
}

loiPhienKhucAltoMot = \lyrics {
  (Intro...) _ _ _ _ _ _ _ _
  Hm __ _ _ _ _ Kìa ai, ai đi âm thầm như lá rơi đêm.
  Hm __ _ _ _ _ _ _ _ sao chói long lanh.
  Ngoại giới chết rồi đây phút giờ thánh.
  Hồn lâng lâng chiêm ngưỡng cõi vô biên.
  Hồn say sưa trong non nước diệu huyền.
  Và ngất ngư trong tình yêu mầu nhiệm.
  Hồn gặp đây rồi Đấng hồn trìu mến.
  Ngài ngọt ngào hơn ngàn vạn mật hoa.
  Ngài từ bi hơn trời biển bao la.
  Và nhân hậu trên muôn muôn lòng mẹ.
  Lạy Thiên Chúa đêm đêm lìa khỏi xác.
  Đêm đêm về với Ngài hồn say đắm mê ly.
  Ta ý cảm tràn trề.
  Vì siêu việt Người ơi siêu việt lạ.
  Ngoại...
}

loiPhienKhucBasMot = \lyrics {
  _ _ _ _
  Hm __ _ _ _ _ _ _ _
  Kìa ai, ai đi âm thầm như lá rơi đêm.
  Chung quanh đây cảnh vật đã im lìm.
  Gió lên nhẹ và sao trời soi lấp lánh.
  Ngoại giới chết rồi đây phút giờ thánh.
  Hồn lâng lâng chiêm ngưỡng cõi vô biên.
  Hồn say sưa trong non nước diệu huyền.
  Và ngất ngư trong chính tình mầu nhiệm.
  Hồn gặp đây rồi Đấng hồn trìu mến.
  Ngọt ngào hơn ngàn vạn mật hoa.
  Ngài từ bi hơn biển trời bao la.
  Và nhân hậu trên muôn muôn lòng mẹ.
  Lạy Thiên Chúa đêm đêm lìa khỏi xác.
  Đêm đêm về với Chúa ôi say đắm mê ly.
  Ta ý cảm tràn trề.
  Vì siêu việt lạ.
  Ngoại...
}

loiBasHai = \lyrics {
  tụa lá trời đêm
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
  page-count = 3
  systems-per-page = 4
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
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice = "beSop" {
        \clef treble \nhacPhienKhucSopMot
      }
      \new Lyrics \lyricsto "beSop" \loiPhienKhucSopMot
      >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucAltoMot
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
    >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \nhacPhienKhucBasMot
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
      \new Lyrics \lyricsto basHai \loiBasHai
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  } 
}
