% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hiến Lễ Đời Con" }
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
  %\autoPageBreaksOff
  \partial 8 d8
  _\markup { \bold "Intr." }
  <<
    {
      \voiceOne
      ef d bf16 a d8 |
      d4. bf8
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      g2
      fs4 g
    }
  >>
  \oneVoice
  <g d bf>4 <bf g>8 <bf g> |
  <a ef>4 <g d>8 <fs c> |
  <g bf>4 r8 \bar "||" \break
  
  bf8 |
  a4. g16 a |
  fs2 |
  g8. g16 g8 a |
  bf4. d8 |
  ef (d) bf16 [(a) d8] |
  d4. bf8 |
  g4 bf8 bf |
  a2 |
  bf8. bf16 a8 c |
  d4.
  <bf \tweak font-size #-2 g>8
  c8. c16 d8 bf |
  a4. bf8 |
  a4. g16 a |
  fs2 |
  g8 d bf' a |
  g2 \bar "||" \break
  
  %\pageBreak
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major
  b8. b16 b8 b |
  a g4 c8 |
  c4 c8 a |
  b4. b8 |
  a8. g16 c8 cs |
  d2 |
  c8. c16 c8 c |
  c a4 b8 |
  b4 b8 g |
  a4. a8 |
  fs fs a a |
  g2 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  r8 |
  R2*4
  r4.
  
  bf8 |
  a4. g16 ef |
  d2 |
  d8. d16 d8 ef |
  g4. fs8 |
  g4 g8 fs |
  g4. f8 |
  ef4 d8 d |
  d2 |
  g8. g16 fs8 a |
  bf4.
  \once \override NoteColumn.force-hshift = #-2
  <\tweak font-size #0 bf g>16
  <\tweak font-size #0 bf g> |
  f8. f16 f8 g |
  d4. d8 |
  ef4. ef16 ef |
  d4 (c) |
  d8 bf g' fs |
  g2 |
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major
  d8. d16 d8 d |
  cs e4 e8 |
  e4 e8 e |
  ds4. e8 |
  e8. d16 g8 g |
  fs2 |
  e8. e16 e8 e |
  g fs4 g8 |
  g4 g8 e |
  e4. e8 |
  d d c c |
  b2
}

nhacPhienKhucBas = \relative c' {
  r8 |
  <bf g>2 |
  <a d,>4 <bf g>8 r |
  ef,2 |
  c4 d |
  g8 d g,
  
  r |
  r4 c |
  d8 d16 d d8 c |
  bf4. a8 |
  g g' ef (d) |
  c4. c8 |
  bf8. bf16 c8 d |
  ef4 g8 g |
  <fs d>2 |
  R2
  g8. g16 fs8 g |
  a (bf) a g |
  fs4 d8 (g) |
  c,4. c16 c |
  d2 |
  d8 d d d |
  g2 |
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major
  g8. g16 g8 g |
  fs e4 c8 |
  a4 a8 c |
  b4 (a8) g |
  c8. f!16 e8 ef |
  d2 |
  a'8. a16 a,8 a |
  c d4 g8 |
  e4 e8 e |
  c4 cs |
  d8 d
  <e d> <fs d> |
  <g d g,>2
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  \repeat unfold 15 { _ }
  \set stanza = "1."
  Chúa ơi con nhớ lại hai mươi lăm năm trước
  Chúa đã dủ thương con
  Xức dầu thánh hiến con
  Sai đi làm nhân chứng và đi gieo rắc Tin Mừng
  Chúa ơi con đã nguyện trung thành với Chúa liên.
  
  Hai mươi lăm năm Linh Mục Chúa vẫn dắt dìu con
  khứng ban đầy dư ân phúc
  Nay con xin dâng lên Ngài hiến lễ chính đời con
  với niềm cảm mến, Chúa ơi!
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 15 { _ }
  \set stanza = "2."
  Chúa ơi theo bước Ngài khi hân hoan vui sướng
  hay lúc gặp đau thương,
  Con tìm Chúa náu nương
  Bao danh vọng không vương và bao lư luyến coi thường
  Ước mong nên muối đời, mong rọi sáng nơi nơi.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 15 { _ }
  \set stanza = "3."
  Chúa ơi qua tháng ngày đôi phen con yếu đuối
  đôi lúc chẳng trung trinh,
  Nhưng lòng vẫn vững tin
  Nơi đâu ngập tội lỗi 
  \override Lyrics.LyricText.font-shape = #'italic
  "thì hồng"
  \revert Lyrics.LyricText.font-shape
  ân Thiên Chúa phủ đầy
  Chúa nâng con chỗi dậy,
  xin lại chắp cánh bay.
}

loiPhienKhucSopBon = \lyricmode {
  \repeat unfold 15 { _ }
  \set stanza = "4."
  Phút đây khi nhớ lại
  hai mươi lăm năm cũ
  xin hướng về tương lai,
  Tuổi đời dẫu trĩu vai
  Luôn băng mình đi tới nhờ muôn ân phúc bởi trời
  Nhất tâm theo bước Ngài,
  Mong tình mến khôn vơi.
}

loiPhienKhucBasMot = \lyricmode {
  \repeat unfold 9 { _ }
  \set stanza = "1."
  Ngài ơi hai mươi lăm năm rồi Chúa đã khấng rủ tình
  thương con một niềm yêu dấu thánh hiến con
  Sai đi làm nhân chứng gieo Tin Mừng
  Chúa ơi con đã nguyện trung thành cùng Ngài liên.
  
  Hai mươi lăm năm Linh Mục, Chúa vẫn dìu dắt con
  rộng ban đầy dư ân lộc
  Nay con nguyện dâng lên Ngài hiến lễ chính đời con
  và niềm cảm mến, Chúa ơi!
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 9 { _ }
  \set stanza = "2."
  Ngài ơi khi hân hoan vui cười hay là lúc phải gặp đau thương
  tìm Ngài con xin mãi náu nương
  Bao danh vọng không vương vấn coi thường
  Ước mong nên muối đời,
  mong chói rạng mọi nơi.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 9 { _ }
  \set stanza = "3."
  Ngài ơi đôi phen con yếu hèn đôi lần cũng chẳng trọn trung trinh
  mà lòng thầm mong vẫn vững tin
  Nơi đâu ngập tội lỗi Chúa phủ đầy
  Chúa nâng con chỗi dậy,
  chắp cánh lại nhẹ bay.
}

loiPhienKhucBasBon = \lyricmode {
  \repeat unfold 9 { _ }
  \set stanza = "4."
  Giờ đây hai mươi lăm năm rồi
  xin cùng ngước trông về tương lai
  tuổi đời tuy tới lúc trĩu vai
  luôn băng mình đi tới phúc bởi trời,
  Nhất tâm theo bước Ngài, mong sinh lực chẳng vơi.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
  \key bf \major \time 2/4
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
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBon
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBon
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
