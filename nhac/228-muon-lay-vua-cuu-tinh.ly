% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #5 "Muôn Lạy Vua Cứu Tinh" }
  subsubtitle = "(Trích ORATORIO The Messiah, phần III, đoạn 53)"
  composer = "Nhạc: G. F. Handel"
  arranger = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  r4 e2 e4 |
  d4. d8 a2 |
  cs4 d cs2 |
  r4 cs cs4. cs8 |
  d4. d8 d4 d8 e |
  fs4 fs2 e4 |
  fs2 r8 cs cs cs |
  d d r d e e r e |
  fs fs r d cs4 r8 cs |
  d d r d b b r e |
  cs4 cs r2 |
  r4 cs2 b4 |
  a4. a8 e'2 |
  d4 cs b2 |
  r4 b b4. b8 |
  a4. a8 a4 cs |
  d2. cs8 cs |
  cs2 d4. gs,8 |
  a2 r8 d d d |
  cs cs r cs d d r d |
  b b r e cs4 r8 cs |
  d d r d a a r a |
  fs'4 d r2 |
  R1*4
  r4 a8 b16 cs d8 d d d |
  d d d d d cs16( b) a8 g |
  fs4 r8 a b16( a) g( fs) e8 a |
  d, d'4 cs8 fs, b e, a |
  d4 d8 d d (e16 d cs8 b |
  cs) d fs e16 d e8 cs16 d e8 d16 cs |
  b8 b r4 e,8 (fs16 gs a b cs d |
  e a, b cs d e fs gs a8) fs r4 |
  R1
  r2 r4 r8 e |
  fs16( e d cs) b8 e a, d4 cs8 |
  b b b b cs4 r |
  r2 r4 a8 b16 cs |
  d8 d d d d cs16( b) a8 g |
  fs4 r r a( |
  a8) g16( fs) e8 d d'4 r |
  R1
  r2 r4 r8 a |
  b16( a) g( fs) e8 a d, d'4 cs8 |
  d16( cs) b( a) gs8 e' e( d16 cs) d4( |
  d8) cs16( b) cs8 d16 cs b2 |
  a4 e'2 b8( a) |
  b4. b8 b4 a8.( b16) |
  gs2 a4 d8 d16 d |
  d8 b b d cs e cs b16( a) |
  d8 d cs d cs4 r |
  R1*2
  d8 a r4 d8 a r4 |
  d8 a r d d d d d |
  d4 r8 a8 b16( a g fs) e8 a |
  d,( d'4 cs8) d a b cs16( d) |
  cs4 d d8( e16 fs g8) g |
  g( fs16 e fs4) r2 |
  r4 r8 g g16( fs e d) cs8 fs |
  fs16( e d cs) b8 e e16( d cs b) a8 a |
  d d r b e e r cs |
  fs fs r d g g r e |
  e e r d d d r e |
  e16( d cs b) a8 e' fs4 g8 e |
  fs4( e8. d16) d4 r8 cs |
  d2 e4 e |
  d1 |
  cs \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  r4 a2 a4 |
  fs4. fs8 a2 |
  g4 fs e2 |
  r4 a as4. as8 |
  b4. fs8 fs4 fs8 fs |
  fs2 b4. b8 |
  as2 r8 fs fs fs |
  fs fs r fs a a r a |
  a a r a g4 r8 g |
  fs fs r fs d d r e |
  e4 e r2 |
  r4 a2 e4 |
  fs4. fs8 a2 |
  gs4 a gs2 |
  r4 gs es4. es8 |
  fs4. fs8 fs4 a |
  fs2. a8 a |
  gs2 gs4. es8 |
  fs2 r8 a a a |
  g g r g a a r a |
  g g r b a4 r8 a |
  a g r g a a r a |
  a4 a r2 |
  R1*8
  r2 e4. fs16 g |
  a8 a a a a a a a |
  gs gs16( fs) e8 d cs4 r |
  r8 e fs e16 d cs8 b r b |
  e d r4 r r8 e |
  fs16( e d cs) b8 e a, (a'4 gs8 fs) fs gs8. gs16 a8 gs16( fs) e8 a |
  a a gs gs a4 r |
  r d,8 fs16 g a8 a a a |
  a g16( fs) e8 d e4 a( |
  a8) g16( fs) e8 d e4 r |
  r r8 a b16( a) g( fs) e8 a |
  d, (e16 fs g8 fs16 e fs8 g16 a b8 a16 g |
  a8 g16 fs g fs g e) fs4 r |
  r2 r4 r8 e |
  fs16 (e) d( cs) b8 gs' a4 a8 a, |
  b b a a' a4( gs) |
  a a2 fs4 |
  fs4. gs8 gs4 fs |
  fs (es) fs fs8 g16 a |
  b8 g g b a a a a |
  a a g fs e4 a,8 b16 cs |
  d8 d d d d d d d |
  d cs16( b) a8 g a4 r |
  a'8 fs r4 a8 fs r4 |
  a8 fs r a a a g b |
  a4 r8 a b16( a g fs) e8 a |
  d, _(e16 fs g8 a16 g a g fs e d8 g16 fs |
  e8 fs16 g) a8 a a4 g8 g |
  a4 r8 a b16( a g fs) e8 a |
  a16( g fs e) d8 b' a a r a |
  g g r g fs fs r fs |
  a16( g fs e) d8 d g g r e |
  a8 a r fs b b r a |
  a a r a b16( a g fs e d cs b a8) a r a' a4 g8 b |
  a2 a4 r8 a |
  a2 a4 a |
  a2( gs) |
  a1
}

nhacPhienKhucTenor = \relative c' {
  r4 fs2 e4 |
  d4. d8 d2 |
  e4 a, cs2 |
  r4 e e4. e8 |
  d4. d8 d4 d8 d |
  cs2 d4 cs |
  cs2 r8 as as as |
  b b r cs e e r e |
  d d r fs e4 r8 e |
  a, a r a b b r b |
  cs4 cs r2 |
  r4 e2 e4 |
  cs4. cs8 e2 |
  b4 e e2 |
  r4 e, gs4. cs8 |
  cs4. cs8 cs4 fs |
  d2. fs8 fs |
  fs2 es4. cs8 |
  cs2 r8 fs fs fs |
  e e r e d d r fs |
  d d r g e4 r8 fs |
  fs d r d e e r e |
  fs4 fs r2 |
  a,4. b16 cs d8 d d d |
  d d d d d cs16( b) a8 g |
  fs4 r8 a b16( a) g( fs) e8 a |
  d, d'4 cs8 b a b8. a16 |
  a4 r r2 |
  R1
  r2 r4 r8 a |
  b16( a) g( fs) e8 a d, d'4 cs8 |
  fs, b gs8. gs16 a4 r |
  r8 cs d cs16 b d8 a16 b cs8 b16 a |
  e'8 e r4 r8 e fs e16 d |
  cs8 a r4 r8 fs' gs fs16 e |
  a8 (gs16 fs e d cs b a8) a r4 |
  r1|
  r2 r4 r8 e' |
  fs16( e) d( cs) b8 e e4 r |
  R1
  r2 r4 a,8 b16 cs |
  d8 d d d d cs16( b) a8 g |
  fs4 r8 fs g a a cs |
  d4 r r2 |
  R1*2
  r2 r4 a8 cs16 d |
  e8 e e e e e e8. e16 |
  cs4 cs8 d16 e fs8 fs fs fs |
  fs fs d d cs2 |
  cs cs4 d8 e16 fs |
  g8 g g g g g g g |
  fs fs e e a,4 a8 b16 cs |
  d8 d d d d d d d |
  d cs16( b) a8 g a4 r |
  fs'8 d r4 fs8 d r4 |
  fs8 d r8 fs fs fs d g |
  fs4 r r2 |
  r4 r8 e fs16( e d cs) b8 e |
  a, a r fs' fs( d) d d |
  d4 r8 fs g16( fs e d) cs8 cs |
  d d r d cs cs r cs |
  b b r cs a a r d |
  d a r b b16( a g fs) e8 cs' |
  cs16( b a g) fs8 d' d16( cs b a) g8 e' |
  e16( d cs b) a8 fs' fs b, r cs |
  cs16( b a b) cs8 e d4 d8 d |
  d4( cs) fs r8 e |
  fs2 e4 e |
  fs2( d) |
  e1
}

nhacPhienKhucBass = \relative c' {
  r4 d2 cs4 |
  b4. b8 fs2 |
  e4 d a'2 |
  r4 g fs4. fs8 |
  b4. b8 b4 b8 b |
  a2 g4. g8 |
  fs2 r8 fs fs fs |
  b b r b cs cs r cs |
  d d, r d e4 r8 e |
  fs fs r fs gs gs r gs |
  a4 a, r2 |
  r4 a'2 g4 |
  fs4. fs8 cs'2 |
  b4 a e2 |
  r4 d cs4. cs8 |
  fs4. fs8 fs4 fs |
  b2. fs8 fs |
  cs'2 cs,4. cs8 |
  fs2 r8 d d d |
  e e r e fs fs r fs |
  g8 g r g a4 r8 a |
  b b r b cs cs r cs |
  d4 d, r2 |
  a'4. b16 cs d8 d d d |
  d d d d d cs16( b) a8 g |
  fs4 r8 a b16( a) g( fs) e8 a |
  d, d'4 cs8 b a b8. a16 |
  a4 r r2 |
  R1*5
  r4 e8 fs16 gs a8 a a a |
  a a a a a gs16( fs) e8 d |
  cs4 r8 e fs16( e d cs) b8 e |
  a,( a'4 gs) fs8 e8. e16 |
  d8 d e8. e16 fs8.( gs16 a8) a |
  d, d e e a,4 a'8 b16 cs |
  d8 d d d d cs16( b) a8 g |
  fs4 r8 b a a r4 |
  R1
  r2 r4 r8 a |
  b16( a) g( fs) e8 a d, (e16 fs g8 fs16 e |
  fs8 g16 a b a b cs d8 a d4 |
  d cs b) a |
  d,8 d d d fs4. fs8 |
  gs4 a8 a e2 |
  a,4 a'8 b16 cs d8 d d d |
  d d d d e,4 fs |
  cs2 fs4 r |
  R1
  r2 r4 a8 b16 cs |
  d8 d d d d d d d |
  d cs16( b) a8 g a4 r |
  d8 d, r4 d'8 d, r4 |
  d'8 d, r d' d d b g |
  d'4 r r r8 a |
  b16( a g fs) e8 a d,4( g |
  g8) fs16 e fs8 d b' b b a16( g) |
  d'4 r r r8 fs, |
  b b r e, a a r d, |
  g g r e fs fs r fs |
  fs16( e d cs) b8 g' g16( fs e d) cs8 a' |
  a16( g fs e) d8 b' b16( a g fs) e8 cs' |
  cs16( b a g) fs8 d' d16( cs b a g fs e d |
  cs8) cs r cs' d4 b8 g |
  a2 d,4 r8 a' |
  d2 cs4 cs |
  b1 |
  a
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Muôn lạy Vua nhân lành, Vua Cứu Tinh,
  Rầy Ngài ngự bên Ngôi Cha ngợp quang ánh giữa chư thánh.
  Này toàn cầu tôn vinh
  hòa muôn kinh xin hát kính nghiêng mình
  mừng uy linh vương quyền Ngài rất trọng đại.
  Đấng cứu độ từ ái của muôn loài.
  Hy sinh thân mình rửa sạch tội khiên
  cho nhân gian phúc bình yên.
  Mong sao nay người người từ muôn nơi
  qua ngàn đời kết lời và khôn ngơi
  ca tụng Ngài cùng đất trời.
  
  Rạng danh Con Chúa chí ái,
  Đấng đã giáng thế cứu rỗi ủi an muôn người,
  xin hãy hiển trị khắp hoàn vũ
  với cả cõi trời cao sáng qua muôn nơi.
  Xin hãy cai trị khắp cả thế giới với muôn tầng trời
  "hiển (i)" trị.
  Xin hiển trị khắp hoàn vũ và ngàn tầng trời mọi nơi.
  Rạng danh Con Chúa chí ái cứu rỗi ủi an muôn người
  Chúa hiển trị ngàn kiếp.
  Xin hãy hiển trị khắp hoàn vũ,
  Xin hãy hiển trị khắp thế gian
  và xin thống trị cung trời.
  Sáng danh Chúa thống lãnh khắp mọi nơi.
  Vinh danh Con Vua Trời đã ra đời
  cứu độ ủi an chúng nhân khắp nơi.
  Vinh dự, vinh dự, vinh dự dâng Vua "Giê -" su "Ki -" tô
  xưa chính Ngài đã đổ máu mình trên Can -- vê chuộc cả thế giới.
  Chúa thống trị khắp thế trần,
  Chúa thống trị cả thế giới
  cả thê giới Ngài thống lãnh
  cả thế giới Chúa thống lãnh
  khắp thế giới chúa thống trị
  thế giới với cả cõi trời.
  Hiển Danh Chúa đến muôn đời.
}

loiPhienKhucAlto = \lyrics {
  Muôn lạy Vua cực thánh, Vua Cứu Tinh,
  Rầy Ngài ngự bên Ngôi Cha luôn vang danh giữa chư thánh.
  Này toàn cầu tôn vinh
  hòa muôn kinh xin hát kính nghiêng mình
  chúc uy linh vương quyền Ngài thật trọng đại.
  Đấng phù hộ từ ái của muôn loài.
  Hiến mình hy sinh rửa sạch oan khiên
  cho nhân gian phúc bình yên.
  Mong sao nay người người từ muôn nơi
  qua ngàn đời kết lời 
  và khôn ngơi thờ phụng Ngài cùng đất trời.
  
  Rạng danh Con Chúa chí ái
  Đấng đã giáng thế cứu rỗi ủi an muôn người.
  Xin hãy cai trị vũ hoàn và cõi trời.
  Xin hiển trị khắp cả trần gian
  xin hãy hiển trị khắp cõi đất trời mọi nơi.
  Rạng danh Con Chúa chí ái cứu rỗi ủi an mọi nơi
  Chúa hiển trị mọi nơi.
  Xin hãy hiển trị khắp trần gian.
  Xin hãy hiển trị khắp thế giới
  và xin cai trị muôn cung trời.
  Sáng danh Ngài thống lãnh khắp mọi nơi.
  Rạng danh Con Chúa Trời
  đã ra đời cứu rỗi ủi an chúng nhân khắp nơi.
  Rạng danh Con Chúa chí ái,
  Đấng đã giáng thế cứu rỗi ủi an muôn người.
  Vinh dự, vinh dự, vinh dự dâng Vua Giê -- su Ki -- tô
  xưa chính Ngài đã "đổ (ô)" máu chí thành chuộc trần giới.
  Xin thống trị cả thế trần khắp nơi nơi
  khắp thế giới, Chúa hiển trị,
  Ngài thống trị cả thế giới
  Ngài thống lãnh cả thế giới
  Chúa thống lãnh khắp thế trần,
  thế giới và cả cõi trời.
  Hiển Danh Chúa đến muôn đời.
}

loiPhienKhucTenor = \lyrics {
  Muôn lạy Vua rất thánh, Vua cực linh,
  Rầy Ngài ngự bên Ngôi Cha
  luôn sáng danh giữa chư thánh.
  Này toàn cầu tôn vinh hòa muôn kinh
  xin hát kính nghiêng mình
  chúc uy linh vương quyền Ngài thật trọng đại
  Đấng cứu độ từ ái của muôn loài.
  Liều mình hy sinh rửa sạch oan khiên
  cho nhân gian phúc bình yên.
  Mong sao nay người người ở muôn nơi
  qua ngàn đời kết lời và khôn ngơi
  thờ phụng Ngài cùng đất trời.
  Rạng danh Con Chúa chí ái,
  Đấng đã giáng thế cứu rỗi ủi an muôn người,
  xin hãy hiển trị khắp hoàn vũ với cung trời
  tới muôn nơi.
  Xin hãy hiển trị khắp hoàn vũ với cả cõi trời mọi nơi.
  Xin hãy cai trị khắp cả thế giới khắp cả thế giới.
  Xin hãy cai trị vũ hoàn,
  xin hãy cai trị "cõi (i)" trời
  khắp cõi đất trời mọi nơi.
  Rạng danh Con Chúa chí ái cứu rỗi ủi an muôn người.
  Xin hãy hiển trị trần gian.
  Rạng Danh Con Chúa chí ái, Đấng thống lãnh khắp cung trời.
  Rạng danh Con Chúa chí ái, Đấng đã giáng thế thống trị nơi nơi.
  Rạng danh Con Chúa Trời đã giáng thế cứu rỗi ủi an chúng nhân khắp nơi.
  Rạng danh con Chúa chí ái, Đấng đã giáng thế cứu rỗi ủi an muôn người.
  Vinh dự, vinh dự,
  vinh dự dâng Vua Giê -- su Ki -- tô
  xưa chính Ngài đã đổ tràn máu thánh cứu thế giới.
  Xin thống trị cả thế giới khắp nơi nơi
  khắp thế giới, Chúa hiển trị,
  Chúa thống trị khắp thế trần,
  Chúa thống trị khắp thế trần,
  Chúa thống trị khắp thế trần,
  Chúa hiển trị cõi trời và cả mọi nơi.
  Hiển Danh Chúa đến muôn đời.
}

loiPhienKhucBass = \lyrics {
  Muôn lạy Vua nhân lành, Vua cực linh,
  Rầy Ngài ngự bên Ngôi Cha luôn sáng danh giữa các thánh.
  Này toàn cầu tôn vinh hòa muôn kinh
  xin sấp mình cung kính mừng uy linh vương quyền Ngài thật vĩ đại.
  Đấng cứu độ từ ái của muôn loài.
  Hiến mình hy sinh rửa sạch tội khiên cho nhân thế được bình yên.
  Mong sao nay người người từ muôn nơi
  và ngàn đời hiệp lời và khôn ngơi thờ phụng Ngài cùng đất trời.
  Rạng danh Con Chúa chí ái,
  Đấng đã giáng thế cữu rỗi ủi an muôn người,
  xin hãy hiển trị khắp hoàn vũ với cung trời tới muôn nơi.
  Rạng danh Con Chúa chí ái,
  Đấng đã giáng thế cứu rỗi ủi an muôn người.
  Xin hiển trị khắp cả vũ hoàn.
  Xin Ngài hiển trị hoàn vũ khắp mọi tầng trời nơi nơi.
  Rạng danh Con Chúa chí ái cứu rỗi ủi an muôn người khắp nơi nơi.
  Xin hãy hiển trị khắp trần gian
  hãy hiển trị trần thế,
  hiển trị khắp các cung trời.
  Rạng danh Con Chúa chí ái,
  Đấng đã giáng thế thống trị khắp mọi nơi.
  Rạng danh Con Chúa chí ái,
  Đấng đã giáng thế cứu rỗi ủi an muôn người.
  Vinh dự, vinh dự, vinh dự dâng Vua Giê -- su Ki -- tô
  xưa chính Ngài đã đổ máu cực thánh,
  đổ máu thánh cứu trần giới.
  cả thế giới, cả thế giới,
  cả thế giới, Ngài hiển trị,
  Chúa thống trị khắp thế trần,
  Chúa thống trị khắp thế trần,
  Chúa thống trị khắp thế trần
  thế giới với cả cõi trời.
  Hiển Danh Chúa đến muôn đời.
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
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  print-page-number = ##f
}

TongNhip = {
  \key d \major \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = #"S"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beSop" { \clef treble \TongNhip \nhacPhienKhucSop }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff \with {
      instrumentName = #"A"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacPhienKhucAlto }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff \with {
      instrumentName = #"T"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beTenor" { \clef "violin_8" \TongNhip \nhacPhienKhucTenor }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenor
    >>
    \new Staff \with {
      instrumentName = #"B"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacPhienKhucBass }
      \new Lyrics \lyricsto beBass \loiPhienKhucBass
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2.5
    \override Lyrics.LyricSpace.minimum-distance = #0.5
  } 
}
