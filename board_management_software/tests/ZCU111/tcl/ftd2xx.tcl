package require Tcl 8.5

load [file join [file dirname [info script]] libtclftd2xx[info sharedlibextension]]

namespace eval ftd2xx {
    namespace ensemble create -command ::ftd2xx
    namespace export ftd2xx
}
