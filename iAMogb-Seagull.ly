\version "2.18.2"

\header {
  title = "Seagull;"
  subtitle = "part II, sec. b"
  composer = "iAMogb"
  tagline = ##f
  copyright = "v.1.20180216.1"
}

global = {
  \key c \major
  \numericTimeSignature
  \time 9/8
}

violin = \relative c'' {
  \global
  ees,8-> ees ees4-> ees8 ees ees8-> ees ees |%m1
  ees8-> ees ees4-> ees8 ees ees8-> ees ees |%m2
  r1 |%m3
  r1 |%m4
  ees8 r8 a r8 aes r8 e' r8 |%m5
  r1 |%m6
  r1 |%m7
  ees,8 r8 a r8 aes r8 e' r8 |%m8
  des,8 c b ges' f e ces' bes a ges f e |%m9
  des8 c b ges' f e ces' bes a ges f e |%m10
  b16 b8 b b16 b8 b b r4. r4. |%m11
  r1. |%m12
  g''4. fis d cis |%m13
  g'8. g fis fis d d cis cis |%m14
  g'4. fis d cis |%m15
  r4. |%m16
  des,8 c b ges' f e ces' bes a ges f e |%m17
  des8 c b ges' f e ces' bes a ges f e |%m18
  b16 b8 b b16 b8 b b r4. r4. |%m19
  r1 |%m20
  r1 |%m21
  ees8 r8 a r8 aes r8 f' r8 |%m22
  g8 r8 ees r8 a,2 \startTrillSpan |%m23
  ees'4 \stopTrillSpan r4 r2 |%m24
  
}

contrabass = \relative c {
  \global
  <e,-> b' dis>8<e b' dis>8<e-> b' dis>4<e b' dis>8
    <e b' dis>8<e-> b' dis>8<e b' dis>8<e b' dis> |%m1
  <e-> b' dis>8<e b' dis>8<e-> b' dis>4<e b' dis>8
    <e b' dis>8<e-> b' dis>8<e b' dis>8<e b' dis> |%m2  
      \time 4/4
  b'16 c cis cis e f fis fis b,c cis cis e f fis fis |%m3
  b,16 c cis cis e f fis fis b,c cis cis e f fis fis |%m4
  b,8 r8 b r8 b r8 b r8 |%m5
  b16 c cis cis e f fis fis b,c cis cis e f fis fis |%m6
  b,16 c cis cis e f fis fis b,c cis cis e f fis fis |%m7
  b,8 r8 b r8 b r8 b r8 |%m8
      \time 12/8
  des8 c b ges' f e ces' bes a ges f e |%m9
  des8 c b ges' f e ces' bes a ges f e |%m10
  des8 c b ges' f e r4. r4. |%m11
  g8 g16 g g g fis8 fis16 fis fis fis d8 d16 d d d cis8 cis16 cis cis cis |%m12 
  g'8 g16 g g g fis8 fis16 fis fis fis d8 d16 d d d cis8 cis16 cis cis cis |%m13
  g'16 g8 g16 g8 fis8 fis8 fis8 d16 d8 d16 d8 cis8 cis cis |%m14
  g'8 g16 g g g fis8 fis16 fis fis fis d8 d16 d d d cis8 cis16 cis cis cis |%m15
      \time 3/8
  r4. |%m16
      \time 12/8
  des8 c b ges' f e ces' bes a ges f e |%m17
  des8 c b ges' f e ces' bes a ges f e |%m18
  des8 c b ges' f e r4. r4. |%m19
      \time 4/4
  b16 c cis cis e f fis fis b,c cis cis e f fis fis |%m20
  b,16 c cis cis e f fis fis b,c cis cis e f fis fis |%m21
  b,8 r8 cis r8 d r8 e r8 |%m22
  fis8 r8 g r8 c2 \startTrillSpan |%m23
  b,4 \stopTrillSpan r4 r2\bar "|." |%m24
  
  
}

violinPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \violin

contrabassPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "contrabass"
} { \clef bass \contrabass }

\score {
  <<
    \violinPart
    \contrabassPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
