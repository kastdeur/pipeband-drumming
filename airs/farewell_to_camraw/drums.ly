\version "2.19.0"

\include "config.ily"
%\include "notes.bass.ily"
\include "notes.tenor.ily"
\include "notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = #"Side "
			\set PipeBandDrumStaff.shortInstrumentName = #"S.D. "

			\global
			<<
				\formatA
				\snareA
			>>
		}
		%\new PipeBandDrumStaff = "bass" {
		%	\set PipeBandDrumStaff.instrumentName = #"Bass "
		%	\set PipeBandDrumStaff.shortInstrumentName = #"B.D. "
        %
		%	\bassA
		%	\bassB
		%}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = #"Tenor"
			\set PipeBandDrumStaff.shortInstrumentName = #"T.D. "

			\tenorA
		}
	>>
	\header {
		title = "Farewell to Camraw"
		meter = "Slow Air"
	}
}