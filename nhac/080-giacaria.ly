% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Giacaria" }
  composer = "Thơ: Xuân Ly Băng"
  poet = "Lời: Lc. 1, 5-25"
  arranger = "Lm. Kim Long"
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

nhacIntroSop = \relative c'' {
  \key bf \major \time 2/4
  <bf g>8. <bf g>16 <a f>8 <g ef> |
  <a d,>2 |
  <ef' bf>8. <ef c>16 <d bf>8 <c a> |
  <d g,>2 |
  <<
    {
      \voiceOne
      c8. d16 g,8 g |
      bf8. a16
    }
    \new Voice = "splitpart" {
	    \voiceTwo
	    ef2 |
	    d4
    }
  >>
  \oneVoice
  \tuplet 3/2 { <f c>8 <f c> <f c> } |
  <g bf,>4 \bar "||"
}

nhacIntroBas = \relative c {
  \key bf \major \time 2/4
  R2
  r4 \tuplet 3/2 { d8 f fs } |
  g2 |
  r4 \tuplet 3/2 { g8 bf b! } |
  c4. c,8 |
  d4 \tuplet 3/2 { d8 d d } |
  <g g,>4 \bar "||"
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \key bf \major \time 2/4
  \once \omit Staff.TimeSignature
  \partial 4 \tuplet 3/2 { d8 f f } |
  g4. f8 |
  c8. ef16 d8 d |
  d2 |
  ef8 d g a |
  bf8. g16 \tuplet 3/2 { c8 c c } |
  c4 \slashedGrace { bf16( } \tuplet 3/2 { c8) a a } |
  d4 \tuplet 3/2 { bf8 g g } |
  a2 |
  g8. g16 g8 ef |
  ef8. g16 \tuplet 3/2 { g8 f ef } |
  d8. bf'16 \tuplet 3/2 { a8 a c } |
  \slashedGrace { g16 (a } g2 ~ ) |
  g4 r \break
  
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  bf2 bf4 |
  c2 d4 |
  g,2. |
  bf2 g4 |
  a2 a4 |
  a2. |
  r2 r4 |
  r bf8 bf c4 |
  d2 bf4 |
  ef4. c8 a4 |
  a2 c4 |
  d4. a8 a (bf) |
  g2 b!4 \bar "||"
  
  \key g \major
  b4 g c |
  c2 e4 |
  a,2 d4 |
  d2 b4 |
  b (a) fs |
  g2. ~ |
  
  \time 2/4
  g4
  
  \notBePhu -2 \tuplet 3/2 { d8 ef d } | \break
  \notBePhu -2 g4
  \once \override NoteColumn.X-offset = 2 <>
  \tuplet 3/2 { g8 g g } \bar "||"
  
  \key bf \major
  g4. d8 |
  bf'4 \tuplet 3/2 { a8 ef' d } |
  c8. a16 \tuplet 3/2 { a8 bf g } |
  g4 r8 a |
  bf4 \tuplet 3/2 { g8 g g } |
  a4. g8 |
  ef8 ef4 d8 |
  \partial 4 d4 \bar "||" \break
  
  \key bf \major
  \partial 4
  <>^\markup {
    \halign #-0.5 \bold "Não bạt, trống chiêng vang lên, giữa hương trầm nghi ngút"
  }
  r4 |
  r \tuplet 3/2 { g8 g g } |
  bf4 r |
  r \tuplet 3/2 { a8 a a } |
  c4 r |
  r \tuplet 3/2 { bf8 bf bf } |
  d2 ~ |
  d ~ |
  d4 r8 a |
  \tuplet 3/2 { d8 c d } \tuplet 3/2 { ef ef c } |
  d4. d8 |
  ef ef4 ef8 |
  cs4 r8 cs |
  d d4 d8 |
  b!4 r |
  r c8. bf16 |
  a4 d8. c16 |
  bf4 r |
  r r8 g |
  bf8. a16 \tuplet 3/2 { a8 c d } |
  d2 \bar "||"
  
  \key g \major
  b8. b16 b8 b |
  b (c16 b a4 ~) |
  a8 fs g4 ~ |
  g r |
  R2
  r4 b8 b |
  b8. a16 \tuplet 3/2 { a8 c d } |
  g,2 |
  b8. g16 \tuplet 3/2 { e8 e g } |
  a2 |
  b4 \tuplet 3/2 { a8 a b } |
  c4 a8. d16 |
  d2 ~ |
  d ~ |
  d ~ |
  d4 r8 g,16 g |
  g8 c16 c b8 e |
  
  \time 3/4
  a,16 (c d8 ~) d2 |
  b4 (d) b8 (a) |
  g2. |
  a4 (b) a8 (g) |
  e2 d4 |
  g e g |
  a2. | \break
  
  \time 2/4
  d8. d16 b8 b |
  c4 c8 a |
  e'4. cs8 |
  d2 ~ |
  d4 a8. a16 |
  c8 b4 a8 |
  a g4 b8 |
  b4 r8 fs |
  fs fs4 a8 |
  b e,4 d8 |
  e2 |
  a8. a16 a8 fs |
  g c4 b8 |
  a4 g8 c |
  c4. a8 |
  d e4 cs8 |
  d2 ~ |
  d4
  <<
    { \voiceOne r }
    \new Voice = "splitpart" {
	    \voiceTwo \tiny
	    <>_\markup { \lower #3 \halign #1.5 \fontsize #2 \italic "(Đàn)" }
	    \tuplet 3/2 { d,8 e fs }
    }
  >>
  \break
  \oneVoice
  
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  g2 g4 |
  c2 c4 |
  c a4. d8 |
  g,2. |
  b8 (c) b4 a |
  a4. fs8 fs4 |
  b e, a |
  d,2. |
  d4 (e) d |
  d (g) fs |
  fs8 (g) b4 b |
  a2. |
  g2 c4 |
  a (c) d |
  g,4. a8 g4 |
  
  \time 2/4
  fs4 fs8 (g) |
  
  \time 3/4
  e4. a8 g4 |
  g fs a |
  b2. |
  g2 b4 |
  c2 a4 |
  a d fs, |
  g2
  <<
    {
      \voiceOne
      d'4\rest |
      \time 2/4
      \skip 2
    }
    \new Voice = "splitpart" {
	    \voiceTwo \tiny
	    \once \override NoteColumn.X-offset = 5
	    <>_\markup { \lower #3 \halign #-1.5 \fontsize #2 \italic "(Đàn)" }
      r8 d |
      \time 2/4
      b16 a d8 g,
    }
  >>
  \bar "||" \break
  \oneVoice
  
  \partial 8 a16 b |
  e,8. d16 \tuplet 3/2 { b'8 c b } |
  a4 \tuplet 3/2 { a8 a a } |
  a4. b8 |
  fs b4 fs8 |
  e4 r8 \bar "||" \break
  
  d16 d |
  g8. a16 \tuplet 3/2 { g8 fs fs } |
  b4. b16 b |
  c8. b16 \tuplet 3/2 { b8 a a } |
  d4 r8 g,16 g |
  a8. g16 \tuplet 3/2 { b8 e, g } |
  a4 r8 \bar "||"
  
  a16 b |
  b4 r8 \bar "||" \break
  g |
  e4. g16 a |
  a4. g16 g |
  g4 \tuplet 3/2 { c8 a c } |
  d4 r8 d16 b |
  b4 \tuplet 3/2 { c8 a a } |
  b8. g16 \tuplet 3/2 { a8 b g } |
  e g4 a8 |
  a2 |
  fs8. fs16 \tuplet 3/2 { fs8 fs fs } |
  fs4. ds16 ds |
  e4. d16 cs |
  d8. e16 \tuplet 3/2 { d8 c e } |
  b4 r8 b16 c |
  a4 \tuplet 3/2 { b8 b e } |
  fs4 g16 (fs) ds8 |
  e4 r8 e |
  a8. b16 \tuplet 3/2 { g8 g e } |
  fs4. fs16 fs |
  fs8. fs16 \tuplet 3/2 { b8 fs b } |
  \slashedGrace { d,16 ( } e4) r8 \bar "||" \break
  b'16 a |
  b4. b16 g |
  a4 \tuplet 3/2 { e8 e e } |
  \slashedGrace { e16 ( } fs4) a8. a16 |
  g4 \bar "||" \break
  
  r4 |
  r4 b16 b b b |
  b8. c16  \tuplet 3/2 { e8 d c } |
  c8. c16 \tuplet 3/2 { e8 d c } |
  b4 d16 c b a |
  a4 c16 b a g |
  g8 b4 fs8 |
  e2 ~ |
  e4 r8 \bar "||" \break
  
  d16 d |
  g8. a16 \tuplet 3/2 { a8 fs fs } |
  b4 r8 g16 b |
  fs4 \tuplet 3/2 { a8 a a } |
  a4. b8 |
  e,4 \tuplet 3/2 { b8 c d } |
  e4. e8 |
  e8. d16 e8 a |
  g2 \bar "||" \break
  
  \time 3/4
  b4 c a |
  d4. e8 c4 |
  b2. |
  a2 a4 |
  a4. c8 g4 |
  a c c |
  d2. ~ |
  d2 r8 \bar "||" \break
  
  \time 2/4
  \partial 8 a8 |
  a8. b16 \tuplet 3/2 { fs8 fs b } |
  e,4. e16 d |
  d8. d16 \tuplet 3/2 { e8 g a } |
  a4 r8 g16 c |
  a8. a16 \tuplet 3/2 { a8 c c } |
  d2 ~ 
  d4 b16 (a) d8 |
  g,2 ~ |
  g4 \bar "||" \break
  
  d'8. d16
  \repeat volta 2
  {
    b8 b c4 |
    c8. c16 a8 a |
    b2 ~ |
    b4 r |
    r c8. c16 |
    a8 b b4 |
    b8. b16 g8 a |
    a b4 g8 |
    fs c'4 b8 |
    a8. c16 fs,8 a
  }
  \alternative
  {
    {
      g2 ~ |
      g4 d'8. d16
    }
    {
      g,2 ~ |
      g4 \bar "|."
    }
  }
}

nhacPhienKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \key bf \major \time 2/4
  r4 R2*13
  
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  g2 g4 |
  g2 f4 |
  ef2. |
  d2 c4 |
  ef2 g4 |
  fs2. |
  r2 r4 |
  r g8 g a4 |
  bf2 g4 |
  g4. a8 g4 |
  fs2 a4 |
  g4. g8 fs4 |
  g2 d4 |
  
  \key g \major
  d b d |
  g2 g4 |
  fs2 fs4 |
  g2 d4 |
  d2 c4 |
  b2. ~ |
  b4 r |
  R2*8 r4
  
  \key bf \major
  r4 |
  r \tuplet 3/2 { ef8 ef ef } |
  d4 r |
  r \tuplet 3/2 { d8 d d } |
  g4 r |
  r \tuplet 3/2 { g8 g g } |
  fs4 r8 d |
  \tuplet 3/2 { g8 fs g } \tuplet 3/2 { a8 a fs } |
  g4 a8 fs |
  g4 bf8 g |
  fs4. g8 |
  bf bf4 bf8 |
  a4 r8 a |
  a a4 a8 |
  g4 r |
  r2
  r4 r8 d |
  g8. f16 \tuplet 3/2 { f8 g a } |
  a4 g8 ef |
  d4 ef |
  d2 ~ \bar "||"
  
  \key g \major
  d4 r |
  R2*2
  % nốt ẩn để dòng nhạc hiện tại phải được in, không bị ẩn
  \hideNotes c2 \unHideNotes
  R2
  r4 b'8 b |
  b8. a16 \tuplet 3/2 { a8 c d } |
  g,2 |
  b8. g16 \tuplet 3/2 { e8 e g } |
  a2 |
  g4 \tuplet 3/2 { d8 d d } |
  g4 g8. g16 |
  g4 r8 fs |
  g a16 g e8 g |
  \slashedGrace { d16 (e } d4) r8 d16 d |
  d2 ~ |
  d8 e16 e g8 g |
  
  \time 3/4
  fs2. |
  g4 (fs) g8 (d) |
  e2. |
  fs4 (g) d8 (e) |
  cs2 c!4 |
  b c e8 (g) |
  fs2.
  
  \time 2/4
  R2*18
  
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  g2 f!4 |
  e2 e4 |
  a g4. fs8 |
  e2. |
  g8 (a) g4 g 
  fs4. e8 e4 |
  ds4 e cs |
  d2. |
  d4 (e) d |
  d (g) fs |
  fs8 (e) d4 g |
  fs2. |
  e2 e4 |
  fs (a) fs |
  e4. fs8 e4 |
  
  \time 2/4
  d4 fs8 (g) |
  
  \time 3/4
  e4. c8 b4 |
  c a e' |
  ds2. |
  e2 d4 |
  e2 g4 |
  fs e fs |
  b,2 r4 |
  
  \time 2/4
  R2
  r8
  R2*35 r4 r
  g'16 g g g g8 e |
  d8. d16 \tuplet 3/2 { e8 e e } |
  e8. a16 \tuplet 3/2 { c8 b a } |
  g4 b16 a g g |
  fs4 e16 d c b |
  b8 d4 d8 |
  d2 ~ |
  d4 r8
  
  r8
  R2*8
  
  \time 3/4
  g4 a e |
  a4. a8 a4 |
  g2. |
  a2 g4 |
  fs4. fs8 e4 |
  d4 g g |
  fs2. ~ |
  fs2 r8 \bar "||"
  
  \time 2/4
  \partial 8 r8
  R2*8
  r4
  fs8. fs16 |
  g8 g e4 |
  fs8. fs16 fs8 fs |
  g2 ~ |
  g4 r |
  r e8. e16 |
  fs8 fs g4 |
  g8. g16 c,8 c |
  d d4 c8 |
  b g'4 g8 |
  e8. e16 d8 c |
  b2 ~ |
  b4 fs'8. fs16
  
  b,2 ~ |
  b4
}

nhacPhienKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \key bf \major \time 2/4
  r4 R2*13
  
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  g2 f4 |
  ef2 d4 |
  ef2. |
  g2 ef4 |
  c2 c4 |
  d2. |
  d8 (g) f4 ef |
  d4. g8 f4 |
  bf,2 ef4 |
  c2 c4 |
  d2 c4 |
  bf4. c8 d4 |
  g,2 g'4 \bar "||"
  
  \key g \major
  g g f! |
  e2 c4 |
  d2 c4 |
  b2 b4 |
  c2 d4 |
  g2. ~ |
  g4 r
  
  R2*8 r4
  
  \key bf \major
  \tuplet 3/2 { g8 g g } |
  g2 ~ |
  g4 \tuplet 3/2 { f8 f f } |
  f2 ~ |
  f4 \tuplet 3/2 { ef8 ef ef } |
  ef4. ef8 |
  d4 c 
  bf r8 d |
  \tuplet 3/2 { bf' a bf } \tuplet 3/2 { c c a } |
  bf4 g8 ef |
  d4. bf'8 |
  g g4 gs8 |
  a4 r8 g |
  f f4 fs8 |
  g4 g8 f |
  f8. f16 \tuplet 3/2 { ef8 d g } |
  a4 f |
  g8 r r ef |
  d8. c16 \tuplet 3/2 { c8 d g } |
  g4 g |
  f8. d16 ef8 f \bar "||"
  
  \key g \major
  g4 r |
  R2*2
  r8 g \tuplet 3/2 { g8 a e } |
  e8. e16 \tuplet 3/2 { e8 a e } |
  d2 ~ |
  d4 r 
  r8 e \tuplet 3/2 { e g a } |
  d,4 g |
  fs8. fs16 \tuplet 3/2 { e8 e fs } |
  g4 r8 f! 
  e4 e8. e16 |
  d2 ~ |
  d8 d g g |
  fs2 ~ |
  fs8 b16 b b4 ~ |
  b8 a16 a g8 c, |
  
  \time 3/4
  d4. b8 c d |
  e4 r2 |
  g4 (fs) e |
  d2. |
  a'4 (g) fs |
  e4. e8 e4 |
  d2. |
  
  \time 2/4
  R2*18
  
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  R2.*3
  c'4 b a |
  g2 r4 |
  d'8 (e) d4 c |
  b8 (a) g4 g |
  fs2. |
  R
  c'4 b a |
  d8 (c) b a g4 |
  d2. |
  R2.
  d2 d4 |
  e4. e8 e4 |
  
  \time 2/4
  b b'8 (a) |
  
  \time 3/4
  g4. fs8 f!4 |
  e d c |
  b2. |
  c2 b4 |
  a2 c4 |
  d2 d4 |
  g2 r4 |
  
  \time 2/4
  R2
  r8
  R2*35
  r4 e16 e e e |
  e4 e16 e e e |
  b'8. a16 \tuplet 3/2 { g8 g g } |
  a8. a16 \tuplet 3/2 { a,8 b d } |
  e4 r |
  d16 e fs g a4 |
  b <a b,> |
  <g e>2 ~ 
  <g e>4 r8 \bar "||"
  
  r8
  R2*8
  
  \time 3/4
  g4 g g |
  fs4. fs8 fs4 |
  g2. |
  a2 c,4 |
  d4. d8 e4 |
  fs e e |
  d2. ~ |
  d2 r8 \bar "||"
  
  \time 2/4
  \partial 8 r8
  R2*8
  r4
  d8. d16 |
  e8 e a,4 |
  d8. d16 d8 d |
  g2 ~ |
  g4 a16 (g) e8 |
  e4 c8. c16 |
  d8 d g4 |
  e8. e16 e8 e |
  fs g4 e8 |
  d e4 e8 |
  c8. c16 d8 d |
  g2 ~ |
  
  g4 d8. d16
  
  g2 ~ |
  g4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  \set stanza = "Người kể:"
  Thời vua Hê -- rốt cai trị xứ Giu -- đê -- a,
  có một vị tư tế là Gia -- ca -- ri -- a
  bóng đời đã xế chưa được làm cha.
  I -- sa -- ve là vợ héo hắt trong tuổi già chưa một lần sinh nở.
  
  \set stanza = " Ca đoàn:"
  Nhìn mùa đông lá rụng, tiếc mùa xuân không hoa.
  là người công chính, luật Chúa luôn trọn vẹn
  không trách được điểm nào.
  Đêm đêm nhìn trăng sao hướng về Đức Chúa giơ tay cầu nguyện.
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn) _ _ _
  \revert Lyrics.LyricText.font-shape
  
  \set stanza = "Người kể:"
  Gia -- ca -- ri -- a ngày ấy làm lễ tiến hương
  trong cung thánh đền thờ,
  Dân chúng tụ tập ngoài sân đang cầu nguyện chực chờ.
  
  giật mình hoảng hốt,
  giật mình hoảng hốt,
  giật mình hoảng hốt
  vì đây một thiên sứ đã hiện ra trong ánh sáng chói lòa,
  trong ánh sáng chói lòa.
  Đứng uy nghi, đứng uy nghi và đây là lời thiên sứ phán:
  Gia -- ca -- ri -- a ơi! Đừng sợ.
  I -- sa -- ve người hiền thê thánh thiện
  sẽ sinh hạ một trẻ nam, ngươi sẽ gọi tên nó là Gio -- an
  và nhiều người trong muôn vàn thế kỷ sẽ reo mừng,
  sẽ reo mừng vì con trẻ sinh ra.
  
  \set stanza = "Người kể:"
  Nó sẽ nên cao quý trước mặt Chúa là Cha,
  Rượu và chất men không khi nào nếm tới,
  Từ lòng mẹ ơn Thánh Thần vời vợi.
  Nó dẫn dắt nhiều con cái Ích -- diên
  về với Chúa là Thiên Chúa bình yên.
  
  \set stanza = " Ca đoàn:"
  Dọn đường Chúa, nó bước đi dõng dạc.
  Giống Ê -- li xưa đầy thần trí và dũng lực,
  Để hòa giải tổ phụ với cháu con,
  Và hoán cải ngỗ nghịch những tâm hồn
  Trở về với lương tri và công chính,
  Dọn cho Chúa một đoàn dân hoàn chỉnh.
  
  \set stanza = "Người kể:"
  Nghe dứt lời của thiên sứ uy linh,
  Gia -- ca -- ri -- a đáp lại rất chân tình:
  
  \set stanza = "Giacaria:"
  Dựa vào đâu để tin lời Ngài nói,
  thưa thiên sứ thân tôi đã già cỗi,
  Bà nhà tôi lại cũng đã cao niên?
  
  \set stanza = "  (Người kể)"
  Thiên sứ nói:
  
  \set stanza = "(Thiên sứ)"
  Ta là Ga -- bri -- el hằng chầu hầu trước tòa Thiên Chúa,
  Chúa sai ta nói rõ ông biết và loan báo tin mừng để ông hay.
  Nhưng Gia -- ca -- ri -- a ơi
  kể từ này ông bị câm, sẽ không còn nói được cho đến ngày
  mọi điều sau trước sẽ xẩy ra vì ông đã không tin lời ta,
  lời thực hiện vào đúng thời đúng buổi.
  
  \set stanza = "Người kể:"
  Đám dân chúng đứng ngoài sân đợi chờ mòn mỏi nói với nhau:
  
  \set stanza = "Dân chúng (Ca đoàn):               "
  Sao Gia -- ca -- ri -- a ở mãi trong đền thờ,
  ở mãi trong đền thờ chúng ta phải đợi chờ,
  chúng ta phải đợi chờ đến bao giờ.
  
  \set stanza = "Người kể:"
  Họ ngạc nhiên đến sững sờ thảng thốt và cuối cùng
  Gia -- ca -- ri -- a xuất hiện miệng câm như hến,
  hai tay chỉ rẻo tứ tung.
  
  \set stanza = " Ca đoàn:"
  Dân chúng giờ đây đã hiểu chừng.
  Một điềm lạ đã xẩy ra nơi cung thánh.
  
  \set stanza = "Người kể:"
  Sau khi thánh vụ hoàn tất rồi ông về nhà
  và vợ ông mang thai,
  Bà ẩn mình trọn thời gian năm tháng và nói rằng:
  
  \set stanza = " Ca đoàn:"
  Chúa đã thương thăm viếng, Chúa đã thương thăm viếng
  Chúa đã làm cho tôi, Chúa đã làm cho tôi hết khổ nhục,
  hết khổ nhục trước mặt muôn người
  Chúa đã
  người.
}

loiPhienKhucAlto = \lyrics {
  Nhìn mùa đông là rụng, tiếc mùa xuân không hoa.
  là người công chính, luật Chúa luôn trọn vẹn không trách được điểm nào.
  Đêm đêm nhìn trăng sao hướng về Đức Chúa
  giơ tay cầu nguyện.
  
  giật mình hoảng hồn
  giật mình hoảng hốt
  giật mình hoảng hồn vì đây một thiên sứ đã hiện ra,
  đã hiện ra,
  đã hiện ra trong ánh sáng chói lòa,
  trong ánh sáng chói lòa.
  và đây là lời thiên sứ phán,
  đây là lời đã phán:
  _ I -- sa -- ve người hiền thê thánh thiện
  sẽ sinh hạ một trẻ nam,
  ngươi sẽ gọi tên nó là Gio -- an
  lòng ngươi sẽ tưng bừng hoan hỉ và nhiều người
  trong muôn vàn thế kỷ sẽ reo mừng,
  sẽ reo mừng vì con trẻ sinh ra.
  
  Dọn đường Chúa, nó bước đi dõng dạc.
  Giống Ê -- li xưa đầy thần trí và dũng lực,
  Để hòa giải tổ phụ với cháu con.
  Và hoán cải ngỗ nghịch những tâm hồn
  Trở về với lương tri và công chính,
  Dọn cho Chúa một đoàn dân hoàn chỉnh.
  
  Sao Gia -- ca -- ri -- a ở lại ở mãi trong đền thờ,
  ở mãi trong đền thờ chúng ta phải đợi chờ,
  chúng ta phải đợi chờ đến bao giờ.
  
  Dân chúng giờ đây đã hiểu chừng.
  Một điềm lạ đã xẩy ra nơi cung thánh.
  
  Chúa đã thương thăm viếng, Chúa đã thương thăm viếng
  Chúa đã làm cho tôi, Chúa đã làm cho tôi hết khổ nhục,
  hết khổ nhục trước mặt muôn người
  Chúa đã
  người.
}

loiPhienKhucBas = \lyrics {
  Nhìn mùa đông là rụng, tiếc mùa xuân không hoa.
  Cả hai ông bà sống công bình rất là trọn vẹn không trách được điểm nào.
  Đêm đêm nhìn trăng sao vọng về Đức Chúa giơ tay cầu nguyện.
  
  Gia -- ca -- ri -- a, Gia -- ca -- ri -- a,
  Gia -- ca -- ri -- a hoảng hồn, hoảng hồn Vì đây
  một thiên sứ đã hiện ra, đã hiện ra trong ánh sáng chói lòa,
  trong ánh sáng chói lòa,
  Đứng uy nghi bên phải bàn hương án
  vì đây, bời đây là lời thiên sứ phán,
  bởi đây lời thiên sứ phán:
  Vì lời ngươi nguyện cầu đã được chấp nhận rồi,
  người hiền thê thánh thiện sẽ sinh, sinh hạ một trẻ nam,
  tên nó là Gio -- an,
  lòng ngươi hoan hỉ và nhiều người trong muôn vàn thập kỷ
  hò reo con trẻ.
  Sẽ reo mừng, sẽ reo mừng trẻ sinh ra.
  
  Bước đi dõng dạc
  Giống Ê -- li xưa và dũng lực,
  Để giải hòa tổ phụ với cháu con và hòa giải những tâm hồn
  Trở về với lương tri và công bình,
  Dọn cho Ngài một dân hoàn chỉnh.
  
  Sao Gia -- ca -- ri -- a, sao Gia -- ca -- ri -- a ở mãi trong đền thờ,
  ở lại trong đền thờ giờ ta phải trông ngóng đến bao giờ.
  
  Dân chúng giờ đây đã hiểu chừng.
  Một điềm lạ đã xẩy ra nơi cung thánh.
  
  Ngài đã thương thăm liền,
  Ngài đã thương thăm viếng,
  Qua việc này Ngài đã làm cho tôi,
  Ngài đã làm cho tôi hết khổ nhục,
  hết khổ nhục trước mặt muôn người.
  Ngài đã
  người.
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
  system-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  score-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  page-count = 10
}

\score {
  \new ChoirStaff <<
    \new Staff<<
     \new Voice = "beSop" {
       \clef treble \nhacIntroSop
     }
     >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \nhacIntroBas
      }
    >>
  >>
  \layout {
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1
    \override Staff.VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 8)
	   (minimum-distance . 8)
	   (padding . 1))
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
