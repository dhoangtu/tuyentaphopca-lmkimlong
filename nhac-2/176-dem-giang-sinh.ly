% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Đêm Giáng Sinh" }
  composer = "Thơ: Lm. Đỗ Xuân Quế"
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

% Nhạc
nhacDiepKhucSop = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \partial 4
  <<
    {
      f8 d16 f |
      g4 bf8 g16 bf |
      c4 a16 c a g |
      e4. f8 |
      <f a,>4
    }
    \\
    {
      \skip 4
      <f d>4 r |
      <e c> f8. e16 |
      c4 bf |
      \skip 4
    }
  >>
  
  r4 |
  R2
  r8 c'16 d c8 bf |
  a2 ~ |
  a8 d16 f d8 c |
  g (bf) c4 ~ |
  c8 c16 d c8 a16 (g) |
  f8 g4 a8 |
  d,4 f |
  g e16 (d) g8 |
  b,!4. c8 |
  c2 ~ |
  <<
    {
      \voiceOne
      \stemDown c4 f,\rest
    }
    \new Voice = "splitpart" \notBePhu -2 {
	    \voiceTwo
	    \stemUp
      <>_\markup {
        \lower #3.3 \halign #-0.5 \italic "(Đàn)"
      }
      c'8. c16 d8 e
    }
  >>
  \oneVoice
  \stemNeutral
  f4. d16 (f) |
  g2 |
  bf4. (g16 bf) |
  c2 |
  a16 (c) a (g) f8 f |
  g16 (a) g (f) d4 ~ |
  d e16 (g) e (d) |
  c4. e8 |
  f2 ~ |
  <<
    {
      \voiceOne
      \stemDown
      <>_\markup {
        \lower #3.3 \halign #-0.5 \italic "(Đàn)"
      }
      f4 b,\rest
    }
    \new Voice = "splitpart" \notBePhu -2 {
	    \voiceTwo
	    \stemUp \tupletUp
      \tuplet 3/2 { f'8 g a } \tuplet 3/2 { g a b! }
    }
  >>
  \oneVoice
  \stemNeutral
  c4 \tuplet 3/2 { d8 c a } |
  g2 |
  d'4 \tuplet 3/2 { e8 d c } |
  b!4. c16 d |
  g,4. gs8 |
  a2 |
  fs4. d8 |
  g4. a8 |
  b!4 e8 e |
  cs4. d8 |
  d2 ~ \bar "||"
  
  \key bf \major
  d4 a
  
  \time 3/4
  
  \repeat volta 2
  {
    bf4 g4. ef8 |
    d2 bf'4 |
    d g,4. a8 |
    \time 2/4
    a2 ~ |
    a4 g |
    \time 3/4
    fs g4. a8 |
    bf2 d4 |
    d g,4. a8 |
    \time 2/4
    a2 ~ |
    a8 r r4 |
    \key g \major
    R2
    r8 d16 e d8 c |
    b2 ~ |
    b8 e16 g e8 d |
    a (c) d4 ~ |
    d8 d16 e d8 b16 (a) |
    g8 a4 b8 |
    e,4 g |
    a fs16 (e) a8 |
    cs,4. d8 |
    d2 ~ |
    <<
      {
        \voiceOne
        \stemDown
        d4 a\rest |
      }
      \new Voice = "splitpart" \notBePhu -2 {
	      \voiceTwo
	      \stemUp
        <>_\markup {
          \halign #-0.5 \italic "(Đàn)"
        }
        d8. d16 e8 fs
      }
    >>
    \oneVoice
    g4. e16 (g) |
    a2 |
    c4. (a16 c) |
    d2 |
    b16 (d) b (a) g8 g |
    a16 (b) a (g) e4 ~ |
    e fs16 (a) fs (e) |
    d4. fs8
  }
  \alternative {
    {
      g4 e'8 e |
      cs4. d8 |
      d2 ~ |
      d4 a
    }
    {
      g4
      <<
        {
          \voiceOne
          c8 c |
          a4. b8 |
          b2 ~ |
          b4
        }
        \new Voice = "splitpart" \notBePhu -2 {
	        \voiceTwo
          g8 g |
          g4 fs |
          g2 ~ |
          g4
        }
      >>
    }
  }
  \bar "|."
  
  
}

nhacDiepKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  r4
  R2*3
  R2
  r8 g16 a g8 f |
  e4. e8 |
  f2 ~ |
  f8 f16 a f8 e |
  d4 f ~ |
  f8 g16 a g8 e |
  d d4 cs8 |
  d4 d8 (c) |
  b!4 c8 c |
  g4. g8 |
  g2 ~ |
  g4 r |
  f'4. d16 (f) |
  e2 |
  f4 (g8 f) |
  e2 ~ |
  e4 r |
  e16 (f) e (d) a4 |
  bf g |
  a (bf) |
  a2 ~ |
  a4 r |
  R2
  r4 \tuplet 3/2 { e'8 e e } |
  d4 r |
  r \tuplet 3/2 { d8 d d } |
  e4 \tuplet 3/2 { d8 d d } |
  c4 \tuplet 3/2 { c8 c c } |
  d4 d8 c |
  b!4. d8 |
  g4 b!8 b |
  a4 g |
  fs2 ~ |
  
  \key bf \major
  fs!4 fs
  \time 3/4
  g4 bf,4. bf8 |
  a2 d4 |
  c bf4. c8 |
  \time 2/4
  d2 ~ |
  d4 bf |
  \time 3/4
  a d4. f8 |
  g2 a4 |
  bf d,4. <g ef>8 |
  \time 2/4
  <fs d>2 ~ |
  <fs! d>8 r r4 |
  \key g \major
  r8 a16 b a8 g |
  fs4. fs8 |
  g2 ~ |
  g8 g16 b g8 fs |
  e4 g ~ |
  g8 a16 b a8 fs |
  e e4 ds8 |
  e4 e8 (d) |
  cs4 d8 d |
  a4. a8 |
  a2 ~ |
  a4 r |
  g'4. e16 (g) |
  a2 |
  g4 (a8 g) |
  fs2 ~ |
  fs4 r |
  fs16 (a) fs (e) b4 |
  c a |
  b (c) |
  b b'8 b |
  a4 g |
  fs2 ~ |
  fs4 fs |
  b,4 e8 e |
  ef4 d |
  d2 ~ |
  d4
  
}

nhacDiepKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  r4
  <<
    {
      bf r |
      g f8. g16 |
      g4 g |
    }
    {
      g4 r |
      c, d8. bf16 |
      c4 c |
    }
  >>
  <<
    {
      \voiceOne
      r8 f16 g f8 d
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      <f c f,>4 r
    }
  >>
  \oneVoice
  c2 ~ |
  c8 a'16 bf a8 g |
  f f16 g f8 e |
  d4. a'8 |
  bf (g) a f |
  e4. c8 |
  d bf4 a8 |
  bf4 d |
  <<
    {
      g2 ~ |
      g8 d f f |
      e2 ~ |
      e4
    }
    {
      g,2 ~ |
      g8 af g g |
      c2 ~ |
      c4
    }
  >>
  r4 |
  f4. d16 (f) |
  g2 |
  d |
  c ~ |
  c4 f16 (g) f (d) |
  c8 c d16 (f) d (c) |
  bf8. g16 bf8 bf |
  c4 c |
  <c f,>2 ~ |
  <c f,>4 r |
  R2
  r4 \tuplet 3/2 { c'8 c c } |
  b!4 r |
  r \tuplet 3/2 { g8 g b! } |
  c4 \tuplet 3/2 { bf8 bf bf } |
  a4 \tuplet 3/2 { a8 a a } |
  b!4 b8 a |
  g4. fs8 |
  g4 g8 gs |
  a4 a, |
  d2 ~ |
  
  \key bf \major
  d4 d |
  \time 3/4
  g4 g4. g8 |
  fs2 g4 |
  fs g4. <g ef>8 |
  \time 2/4
  <fs d>2 ~ |
  <fs! d>4 <g ef> |
  \time 3/4
  c, bf bf'8 (a) |
  g2 f4 |
  g8 (bf) bf4 bf,8 c |
  d2 ~ |
  d8 g16 a g8 e! |
  \key g \major
  d2 ~ |
  d8 b'16 c bf8 a |
  g g16 a g8 fs |
  e4. b'8 |
  c (a) b g |
  fs4. d8 |
  fs c4 b8 |
  c4 e |
  <<
    {
      a2 ~ |
      a8 e g g |
      fs2 ~ |
      fs4
    }
    {
      a,2 ~ |
      a8 bf a a |
      d2 ~ |
      d4
    }
  >>
  r4 |
  g4. e16 (g) |
  a2 |
  e |
  d ~ |
  d4 g16 (b) g (e) |
  d8 d e16 (g) e (d) |
  c8. a16 c8 cs |
  d4 d |
  g g8 gs |
  a4 a, |
  d2 ~ |
  d4 d |
  e4 c8 a |
  c4 d |
  <g d g,>2 ~ |
  <g d g,>4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Đêm Giáng Sinh tưng bừng,
  đêm Giáng Sinh tưng bừng đây đêm Giáng Sinh tưng bừng
  con thấy lòng lâng lâng, con thấy lòng lâng lâng.
  Đêm bình an, đêm thánh đất với trời (mà) đất với trời,
  đất với trời hân hoan.
  Nghe tiếng ca vang trời,
  nghe tiếng ca vang trời con thấy lòng reo vui.
  Đêm hồng ân, đêm thánh Chúa đến cùng nhân gian.
  Đêm
  \repeat volta 2 {
    <<
      {
        Giáng Sinh âm thầm dâng tấc lòng tri ân.
        Dâng tình yêu chan chứa hát kính bài vinh danh.
        Nghe tiếng ca vang trời,
        nghe tiếng ca vang trời nay nghe tiếng ca vang trời
        con thấy lòng reo vui, con thấy lòng reo vui.
        Đêm hồng ân, đêm thánh Chúa đến cùng (rầy) Chúa đến cùng,
        Chúa đến cùng nhân
      }
      \new Lyrics = "phienKhucSopHai"
        \with { alignBelowContext = "phienKhucSopMot" }
        {
	        \set associatedVoice = "beSop"
          xuống nơi cơ hàn chung sống cùng nhân gian.
          Đem tình yêu chân lý Chúa đón mời muôn dân.
          Đêm Giáng Sinh tưng bừng,
          đêm Giáng Sinh tưng bừng đây
          đêm Giáng Sinh tưng bừng con thấy lòng lâng lâng,
          con thấy lòng lâng lâng.
          Đêm bình an, đêm thánh đất với trời (mà)
          đất với trời, đất với trời hân
        }
    >>
  }
  \alternative {
    {
  gian,
  Chúa đến cùng nhân gian.
  Sinh
    }
    {
  hoan, đất với trời hân hoan.
    }
  }
}

loiDiepKhucAlto = \lyricmode {
  Đêm Giáng Sinh tưng bừng, tưng bừng
  đêm Giáng Sinh tưng bừng đây đêm Giáng Sinh tưng bừng
  con đầy lòng lâng lâng, con thấy lòng lâng lâng.
  Đêm bình an, đêm lành dất với trời, đất trời hân hoan.
  La la la la la la la la la la la la la la la la.
  Đêm muôn ân, đêm thánh Chúa đến cùng nhân gian.
  Đêm
  \repeat volta 2 {
    <<
      {
        Giáng Sinh âm thầm dâng tấc lòng tri ân.
        Dâng tình yêu chan chứa hát kính bài vinh danh.
        Nghe tiếng ca vang trời, vang trời
        nghe tiếng ca vang trời nay nghe tiếng ca vang trời
        con dậy lòng reo vui, con thấy lòng reo vui.
        Đêm hồng ân, đêm lành Chúa đến cùng, đến cùng nhân
      }
      \new Lyrics = "phienKhucAltoHai"
        \with { alignBelowContext = "phienKhucAltoMot" }
        {
	        \set associatedVoice = "beAlto"
	        xuống nơi cơ hàn chung sống cùng nhân gian.
          Đem tình yêu chân lý Chúa đón mời muôn dân.
          Đêm Giáng Sinh tưng bừng,
          tưng bừng 
          đêm Giáng Sinh tưng bừng đây đêm Giáng Sinh tưng bừng
          con đầy lòng lâng lâng, con thấy lòng lâng lâng.
          Đêm bình an, đêm lành đất với trời, đất trời hân
      }
    >>
  }
  \alternative {
    {
      gian,
      Chúa đến cùng nhân gian.
      Sinh
    }
    {
      hoan đất với trời hân hoan.
    }
  }
}

loiDiepKhucBas = \lyricmode {
  \repeat unfold 6 { _ }
  Đêm Giáng Sinh tưng bừng, đêm Giáng Sinh tưng bừng,
  đêm Giáng Sinh tưng bừng, đêm Giáng Sinh tưng bừng,
  tưng bừng con đầy lòng lâng lâng, lòng thấy lâng lâng.
  Đêm bình an, đêm lành đất với trời (mà) đất với trời,
  trời đất hân hoan, hân hoan.
  La la la la la la la la la la la la la la la la.
  Đêm muôn ân, đêm thánh Chúa đến với trần gian.
  Đêm
  \repeat volta 2 {
  <<
    {
      Giáng Sinh âm thầm dâng tấc lòng tri ân.
      Dâng tình yêu chan hòa hát kính vài Ngài vinh danh.
      Nghe tiếng ca vang trời, nghe tiếng ca vang trời,
      nghe tiếng ca vang trời, nghe tiếng ca vang trời,
      vang trời con dậy lòng reo vui, dậy lòng reo vui.
      Đêm hồng ân, đêm lành Chúa đến cùng (rầy)
      Chúa đến cùng (rầy) Chúa đến với trần
    }
    \new Lyrics = "phienKhucBasHai"
      \with { alignBelowContext = "phienKhucBasMot" }
      {
	      \set associatedVoice = "beBas"
	      xuống nơi cơ hàn chung sống cùng nhân gian.
	      Đem tình yêu chân thật Ngài mong đón mời muôn dân.
	      Đêm Giáng Sinh tưng bừng,
	      đêm Giáng Sinh tưng bừng, đêm Giáng Sinh tưng bừng,
	      đêm Giáng Sinh tưng bừng,
	      tưng bừng con đầy lòng lâng lâng, đầy lòng lâng lâng.
	      Đêm bình an, đêm lành đất với trời (mà)
	      đất với trời (mà) đất với trời hân
      }
  >>
  }
  \alternative {
    {
      gian,
      Chúa đến với trần gian.
      Sinh
    }
    {
      hoan, đất với trời hân hoan.
    }
  }
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
  %page-count = #4
  %ragged-bottom = ##f
  systems-per-page = 4
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics = "phienKhucSopMot" \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics = "phienKhucAltoMot" \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics = "phienKhucBasMot" \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
