% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Khúc Hát Mặt Trời" }
  composer = "Lời: Thánh Phanxicô"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c'' {
  \partial 4 r4
  R2
  r4 d |
  d8 c d4 |
  e2 |
  d4. e16 (d) |
  g,8 (c) a4 |
  g2 ~ |
  g4 g |
  d'2 ~ |
  d4 b |
  c8 c c b16 c |
  d4. e16 (d) |
  c8 a c c |
  a2 |
  g4. g8 |
  a (g) e g |
  a4. g8 |
  d' e d4 |
  c2 ~ |
  c4 r |
  r g8 c |
  b8. b16 a8 b |
  c4. a8 |
  e'4 g,8 g |
  #(define afterGraceFraction (cons 1 5))
  \afterGrace d'2 ( { \stemDown e16 d ) } |
  \stemNeutral
  c2 ~ |
  c ~ |
  c4 \bar "||" \break
  
  r4
  R2
  r4 g8 g |
  e4. _(d8) g4 r |
  r c8 ^(b) |
  c4 a8 a |
  g4 d'16 (e d c) |
  a8 a a (c) |
  d d d16 (e d c) |
  g2 ~ |
  g4 r |
  r8 g e16 (g e d) |
  c2 ~ |
  c4 f8 c' |
  c8. g16 d (f) g8 |
  a4 r8 g |
  c4. _(a16 g) |
  f8 a d, f |
  g4. g8 |
  c4 b8 c |
  d e16 (d) c4 |
  d2 ~ |
  d4 r |
  R2*2
  r4 r8 a
  e'4. c8 d d d16 (e d c) |
  a4
  \once \override NoteColumn.X-offset = 2 <>
  r |
  R2*2
  r4 e8 b |
  e e a16 (g) a8 |
  b4 b8 e, |
  c' b a a |
  e'2 ~ |
  e4 c16 (d) e8 |
  e, b' c b |
  a2 ~ |
  a4 r |
  r g8 g16 g |
  c4 r |
  r c8 c16 c |
  f4 e8 e |
  a,4 b |
  c e, | \break
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 3/4
  f4. e8 d4 |
  g2 e4 |
  a4. g8 c4 |
  
  \time 2/4
  b2 ~ |
  b4 r |
  r b16 (d b a) |
  g8. g16 a8 (c) |
  d4 d8 b |
  d (b16 a) e8 (g) |
  a2 ~ |
  a4 r |
  R2*3
  r4 a |
  g8 c b c |
  d2 ~ |
  d ~ |
  d4 r |
  c4. g8 ^> |
  g ^> g ^> a (g) |
  d4 r |
  R2
  e'4. c8 ^> |
  c ^> c ^> d (c) |
  g2 ~ |
  g4 g8 a |
  g4 r8 g |
  c c16 c bf8 g |
  
  \key f \major
  f4 c |
  a' ^(bf8 a) |
  g4 g8 f |
  g2 |
  a4 f8 a |
  g (a) c8. c16 |
  a8 (c) d f |
  c2 ~ |
  c ~ |
  c4 r8 bf |
  c c bf c16 (bf) |
  g2 \bar "||"
  
  \key c \major
  e8 (d) e (g) |
  c,4 g' |
  a8 (g) a (c) |
  g2 ~ |
  g4 g |
  c a |
  a8 g c (d) |
  e2 |
  c4 d8 (c) |
  g4 e8 e |
  a4. (g8) |
  a2 ~ |
  a ~ |
  a4 r |
  r2
  R2*5
  c4. af8 ^>|
  af ^> af ^> bf4 |
  g2 ~ |
  g4 r |
  d'4. b8 ^> |
  b ^> b ^> c4 |
  g e8 (d) |
  c4. f8 |
  e2 |
  c'4. a8 |
  g g c d |
  e2 ~ |
  e8
  \once \override NoteColumn.X-offset = 1 <>
  e d4 ~ |
  d e8 e |
  a, ([g a]) b |
  c2 ~ |
  c4 r |
  c, c' |
  af g8 d |
  g2 |
  af4 g |
  d' g,8 g |
  d' (ef) d (c) |
  c4 c8 c |
  d4 c |
  af8. af16 c8 (af) |
  g2 ~ |
  g4 r |
  R2*2
  g4 c |
  a a8 (g) |
  c4 d |
  e2 |
  d8 (e) d (c) |
  g4 a8 (c) |
  d (e) d4 |
  c2 |
  g4. g8 |
  af4 g |
  c4. c,8 |
  c2 ~ \bar "||"
  c4 r |
  
  \time 3/4
  R2. | \break
  
  \time 2/4
  r4 d' |
  d8 c d4 |
  e2 |
  d4. (e16 d) |
  c8 c d (c) |
  g2 ~ |
  g4 r |
  r g8 c |
  b8. b16 a8 b |
  c4. a8 |
  e'4 g,8 g |
  \afterGrace d'2 ({\stemDown e16 d)} |
  \stemNeutral
  c2 ~ |
  c ~ |
  c ~ |
  c ~ |
  c4 \fermata  \bar "|."
}

nhacPhienKhucAltoMot = \relative c' {
  \partial 4 r4
  R2
  r4 f |
  f8 e f4 |
  g2 ~ |
  g4 f8 g16 (f) |
  c4 c ~( |
  c d8 c) |
  b2 ~ |
  b4 r |
  r8 d d c16 d |
  e8 e e d16 e |
  g2 ~ |
  g8 e g g |
  f (e) d (c) |
  b4 b8 r |
  c r c e |
  f4. c8 |
  f g g (f) |
  e2 ~ |
  e4 r |
  r e8 g16 (a) |
  g8. g16 f8 f |
  e4. f8 |
  g4 e8 e |
  a (af) g (f) |
  e4 e8 e |
  f4 f |
  e r4
  R2
  r4 e8 e |
  e4. (d8) |
  b4 r |
  r e8 _(f) |
  e4 f8 f |
  e4 r |
  r4 r8 e |
  g g f4 |
  e d8 c |
  b4 r |
  r8 g' e16 (g e d) |
  c2 ~ |
  c4 f8 c' |
  c8. g16 d (f) g8 |
  a4 r8 g |
  c4. _(a16 g) |
  f8 a d, f |
  g4. g8 |
  g4 g8 g |
  fs f! e ^(d) |
  g2 ~ |
  g4 r |
  R2*5
  r4 r8 b |
  b4 a8 c |
  c c b16 (c b a) |
  e4 e8 b |
  e e a16 (g) a8 |
  b4 b8 e, |
  c' b a a |
  gs2 ~ |
  gs4 a8 e16 ^(d) |
  c8 f e d |
  c2 ~ |
  c4 r |
  r c8 c16 c |
  e4 r |
  r g8 g16 g |
  f'4 c8 a |
  f4 g8 (f) |
  e4 e | \break
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 3/4
  f4. e8 d4 |
  g2 e4 |
  a4. g8 fs4
  
  g2 ~ |
  g4 b16 (d b a) |
  g4 d |
  e8. e16 e8 (g) |
  fs2 ~ |
  fs4 r |
  r a8 e |
  fs4 r |
  R2*3
  r4 f |e8 e d e |
  g2 ~ |
  g ~ |
  g4 r |
  c4. g8 ^> |
  g ^> g ^> a (g) |
  d4 r |
  R2
  g4. e8 ^> |
  e ^> e ^> e4 |
  d e8 f |
  e4 e8 f |
  e4 r |
  
  R2 \bar "||"
  
  \key f \major
  r4 c |
  f _(d8 f) |
  e4 e8 d |
  c4 ^(d8 e) |
  f4 r4 |
  R2*2
  r4 c8 c |
  a' f bf (a) |
  g2 ~ |
  g4 r
  R2
  \key c \major
  e8 (d) e (g) |
  c,4 c4 |
  c c |
  b2 ~ |
  b4 r4
  R2*7
  c4 f8 ^(e) |
  d8. d16 g4 |
  a8 (c) a (g) |
  g2 ~ |
  g4 r
  R2*3
  c4. af8 ^>|
  af ^> af ^> bf4 |
  g2 ~ |
  g4 r |
  d'4. b8 ^> |
  b ^> b ^> c4 |
  g e8 (d) |
  c4.  b8 |
  c2 |
  e4. f8 |
  e e e g |
  c2 ~ |
  c8
  \once \override NoteColumn.X-offset = 1 <>
  c b c |
  a4 g8 g |
  f4. f8 |
  e2 ~ |
  e4 r |
  c c' |
  af g8 d |
  g2 |
  af4 g |
  d' g,8 g |
  d' (ef) d (c) |
  c4 c8 c |
  d4 c |
  af8. af16 c8 (af) |
  g4 ef8 g |
  d ef c d |
  g,2 |
  g' |
  g4 c |
  a a8 (g) |
  a4 a |
  gs2 |
  a4 a |
  d, e |
  g g |
  a2
  g4. g8 |
  af4 g |
  c4. c,8 |
  c2 ~ |
  c4 r |
  
  R2. |
  
  r4 f |
  f8 e f4 |
  g2 ~ |
  g4 f8 (g16 f) |
  c8 c c4 |
  b2 ~ |
  b4 r |
  r e8 g16 (a) |
  g8. g16 f8 f |
  e4. f8 |
  g4 e8 e |
  a (af) g (f) |
  e4 e8 e |
  f4 f |
  e e8 e |
  f4 f |
  e \fermata
}

nhacPhienKhucBasMot = \relative c' {
  \partial 4 g4 |
  c8. g16 a8 (g) |
  d2 ~ |
  d4 d |
  c8 c c g16 c |
  d8 d d c16 d |
  e8 e f fs |
  g2 ~ |
  g4 r |
  r d |
  g8 g g e16 g |
  c4 a |
  b8 b b a16 b |
  c4 c, |
  d8 c d f |
  g4 f8 r |
  e r r c' |
  f,8. g16 f8 e |
  d4 g |
  a2 ~ |
  a4 d,8 f |
  e8. d16 d8 e |
  g4. g8 |
  a g c (d |
  c4) r8 c |
  <c f,>4 <b g> |
  <c c,> <g c,>8 <g c,> |
  <a f>4 <af f> |
  <g c,> g8 c |
  a8. f16 g (f) d8 |
  c2 ~ |
  c4 r |
  r g'8 g |
  a4. (g8) |
  c2 ~ |
  c4 r |
  R2*3
  g8 f g g |
  d g e16 (g e d) |
  c2 ~ |
  c4 r |
  R2
  r4 r8 g' c4. (a16 g) |
  f8 a d, f |
  g4. f8 |
  e4 e8 e |
  d d a'4 |
  <b g>2 ~ |
  <b g>4 c, |
  f8 e4 e8 |
  d4 g |
  a2 ~ |
  a4 r |
  R2*4
  r4 e8 b |
  e e a16 (g) a8 |
  b4 b8 e, |
  c' b a f |
  e2 ~ |
  e4 a8 g |
  a d, e e |
  a,2 ~ |
  a8 c g c16 (d) |
  e2 ~ |
  e8
  \once \override NoteColumn.X-offset = 1 <>
  c' g c16 (d) |
  e2 ( |
  d4) c8 c |
  d4 g, |
  c r |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 3/4
  R2. |
  r2 c,4 |
  f4. e8 d4 |
  
  \time 2/4
  g2 ~ |
  g4 r |
  b16 (d b a) g4 |
  c4. (e8) |
  d2 ~ |
  d4 r |
  r a8 a, |
  d4 d |
  g (fs8) e |
  a4. (b16 a) |
  g8 g e g |
  c2 ~ |
  c4 r |
  r g8 b16 (a) |
  g8 (a) b8. a16 |
  b8 d a4 ~ |
  a r |
  R2
  g4. d8 ^> |
  d ^> d ^> e (d) |
  c4 r |
  r r8 c' |
  b8. b16 c8 d |
  c2 ~ |
  c4 r |
  R2
  
  \key f \major
  R2*7
  r4 c,8 c |
  f d g (f) |
  <e c>2 ~ |
  <e c>4 r |
  R2 \bar "||"
  
  \key c \major
  e8 (d) e (g) |
  c,4 e |
  f f |
  g2 ~ |
  g4 r |
  R2*2
  r8 c, e g |
  c e, f4 |
  e8 (d) c c |
  e4 (d8 e) |
  f2 |
  f2 ~ |
  f4 e |
  f f |
  g2 |
  c,4 ef8 (d) |
  c4 c8 c |
  d (ef) f (af) |
  g2 ~ |
  g4 r |
  R2
  ef'4. c8 ^> |
  c ^> c ^> d4 |
  g,2 ~ |
  g4 r |
  r8 g c, d |
  e (f) g (g,) |
  c2 ~ |
  c4 r |
  R2
  r4 c g'4. g8 |
  c4 c8 c, |
  f ([e d]) g, |
  c2 ~ |
  c4 r |
  c c' |
  af g8 d |
  g2 |
  af4 g |
  d' g,8 g |
  d' (ef) d (c) |
  c4 c8 c |
  d4 c |
  af8. af16 c8 (af) |
  g2 ~ |
  g4 r |
  R2*2
  g4 c |
  a a8 (g) |
  f4 f |
  e2 |
  f4 f |
  g g |
  g e |
  f2 |
  g4. g8 |
  af4 g |
  c4. c,8 |
  c2 ~ |
  c4 g' |
  
  \time 3/4
  c8. c16 g8 g a (g)
  
  \time 2/4
  d2 ~ |
  d4 d |
  c8 c c g16 c |
  d8 d d c16 d |
  e8 e f fs |
  g2 ~ |
  g4 d8 f |
  e8. e16 c8 e |
  g4. g8 |
  a g c (d |
  c4) r8 c |
  <c f,>4 <b g> |
  <c c,> <g c,>8 <g c,> |
  <a f>4 <a f> |
  <g c,> <g c,>8 <g c,> |
  <a f>4 <af f> |
  <g c,> \fermata
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  Muôn cao và phép tắc
  Riêng Chúa hưởng muôn kinh.
  Ngợi khen, ngợi khen tôn vinh và tôn đức,
  Chúa ơi, riêng Chúa xứng muôn kinh.
  Ai dám gọi tên Chúa, gọi tên Chúa uy linh.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa tạo dựng muôn loài.
  Anh phân ngày đêm ánh sáng chiếu khắp nơi.
  Anh đẹp và hào quang anh chiếu rạng
  Chúa cao vời.
  Lạy Chúa tôi, tôi ngợi khen Chúa,
  Vì Chúa dựng các chị trăng sao,
  đẹp tươi và lấp lánh giữa trời cao.
  Vì Chúa dựng nên anh Gió trời.
  Anh Trời quang và anh Không Khí,
  Chúa đặt các anh là vật quý để giữ gìn nuôi dưỡng sinh linh.
  Lạy vạn lạy Chúa,
  lạy vạn lạy Chúa tôi, tôi ngợi khen Chúa
  vì Chúa đã dựng nên dòng nước chị chúng tôi.
  Nước cần (mà) nước quý,
  nước trong trắng đầy vơi
  Chúa tôi, tôi ngợi khen Chúa.
  Anh hùng mạnh và anh đẹp.
  Anh hùng mạnh và anh đẹp anh dễ coi.
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn) __ _ _ _ _ _ _
  \revert Lyrics.LyricText.font-shape
  Lạy Chúa tôi, tôi ngợi khen Chúa
  vì Chúa dựng nên (đây) Mẹ Đất chúng tôi
  Mẹ sinh hoa đồng cỏ nội.
  Và bốn mùa sinh trái tốt tươi.
  Lạy Chúa tôi, tôi ngợi khen Chúa
  vì bao người một lòng mến Chúa.
  Vẫn một lòng mà vui chịu,
  vẫn một lòng mà vui chịu, vui chịu trước sau.
  Phúc cho người bình an vững chí.
  Chúa ơi Chúa sẽ thưởng triều thiên.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa dựng chị chết
  chúng tôi, ai mong thoát tay chị ở trên đời
  Hạnh phúc thay người khi hấp hối biết tuân phục thánh ý Chúa tôi
  vì người ấy không chết đời đời.
  Ca khen tạ hơn Chúa suốt đời (mà) khiêm hạ.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa tạo dựng muôn loài.
}

loiPhienKhucAltoMot = \lyrics {
  Muôn cao va phép tắc
  riêng Chúa hưởng muôn kinh.
  Tôn vinh và tôn đức,
  tôn vinh và tôn đức riêng Chúa xứng muôn muôn kinh.
  Ai, ai gọi tên Chúa,
  gọi tên Chúa uy linh.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa tạo dựng muôn muôn loài,
  tạo dựng muôn muôn loài.
  Anh phân ngày đêm ánh sáng chiếu khắp nơi.
  hào quang anh chiếu rạng anh chiếu rạng
  Chúa cao vời.
  Lạy Chúa tôi, tôi ngợi khen Chúa,
  Vì Chúa dựng các chị trăng sao,
  đẹp tươi và lấp lánh giữa trời cao.
  Anh Mây và bát tiết với tứ thời
  Anh Trời quang và anh Không Khí,
  Chúa đặt các anh là vật quý để giữ gìn nuôi dưỡng sinh linh.
  Lạy vạn lạy Chúa,
  lạy vạn lạy Chúa tôi, tôi ngợi khen Chúa
  vì Chúa đã dựng nên dòng nước chị chúng tôi.
  Nước cần,
  nước cần (mà) nước quý,
  nước đầy vơi.
  Chúa tôi, tôi ngợi khen Chúa.
  Anh hùng mạnh và anh đẹp.
  Anh hùng mạnh và anh đẹp,
  anh dễ coi, anh dễ coi.
  Lạy Chúa tôi, tôi ngợi khen Chúa
  Mẹ bồng bế, mẹ dưỡng nuôi.
  Và bốn mùa sinh trái tốt tươi.
  Hằng sẵn sàng mà tha thứ cho nhau.
  Vẫn một lòng mà vui chịu,
  vẫn một lòng mà vui chịu, vui chịu trước sau.
  Phúc cho người bình an vững chí.
  Chúa ơi, Chúa ơi Chúa sẽ thưởng triều thiên.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa dựng chị chết
  chúng tôi, ai mong thoát tay chị ở trên đời
  vô phúc người chết còn vương tội lỗi.
  Hạnh phúc thay người khi hấp hối biết tuân phục thánh ý Chúa tôi
  vì người ấy không chết đời đời.
  Ca khen tạ ơn Chúa suốt đời (mà) khiêm hạ.
  Lạy Chúa tôi, tôi ngợi khen Ngài
  vì Chúa tạo dựng muôn muôn loài,
  tạo dựng muôn muôn loài,
  tạo dựng muôn muôn loài.
}

loiPhienKhucBasMot = \lyrics {
  Lạy Chúa (thật) nhân từ, nhân từ muôn cao và phép tắc,
  muôn cao và phép tắc,
  Ngài hưởng muôn kinh.
  Ngợi khen tôn vinh và tôn đức,
  ngợi khen tôn vinh và tôn đức
  vì riêng Ngài hưởng muôn kinh.
  Ai, ai dám gọi, dám gọi tên Ngài uy linh.
  Lạy Chúa tôi, tôi ngợi khen Chúa,
  ngợi khen vì Chúa đã dựng muôn loài,
  tạo dựng muôn muôn loài.
  Vì Chúa riêng dựng anh Mặt Trời,
  anh cho ánh sáng.
  Anh tượng trưng uy quyền Chúa cao vời.
  Vì Chúa dựng các chị trăng sao,
  đẹp tươi và lấp lánh giữa trời cao.
  Lạy Chúa tôi, tôi ngợi khen Chúa.
  Anh Trời quang và anh Không Khí,
  Chúa đặt các anh là vật quý để giữ gìn nuôi dưỡng sinh linh.
  Tôi ngợi khen Chúa,
  tôi ngợi khen Chúa tôi, tôi tới khen Chúa dòng Nước chị chúng tôi.
  Nước cần nước quý nước đầy vơi.
  Lạy Chúa, lạy Chúa tôi, tôi ngợi khen Chúa
  vì Anh Lửa giữa đêm tối sáng soi.
  Anh hùng mạnh và anh đẹp, Anh đẹp và anh dễ coi.
  Mẹ bồng bế, mẹ dưỡng nuôi.
  Và bốn mùa sinh trái tốt tươi.
  Ngợi khen Thiên Chúa vì bao người một lòng mến Chúa.
  Hằng tha thứ cho nhau
  Và bao người nhận cực khổ đớn đau.
  Vẫn một lòng và vui chịu,
  vẫn một lòng vui trước sau.
  Lạy Chúa, lạy Chúa, Chúa sẽ thưởng triều thiên.
  Lạy Chúa tôi, tôi ngợi khen Chúa
  vì Chúa dựng chị chết chúng tôi, ai mong thoát tay chị ở trên đời.
  Hạnh phúc thay người khi hấp hối biết tuân phục thánh ý Chúa tôi
  vì người ấy không chết đời đời.
  Lạy Chúa chúng tôi xin chúc tụng,
  chúc tụng ca khen tạ ơn Chúa,
  ca khen tạ ơn Chúa trọn đời khiêm hạ.
  Lạy Chúa tôi, tôi ngợi khen Chúa,
  ngợi khen vì Chúa đã dựng muôn loài
  tạo dựng muôn muôn loài,
  tạo dựng muôn muôn loài.
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
        \clef treble \TongNhip \nhacPhienKhucSopMot
      }
      \new Lyrics \lyricsto "beSop" \loiPhienKhucSopMot
      >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAltoMot
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
    >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacPhienKhucBasMot
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1
  } 
}
