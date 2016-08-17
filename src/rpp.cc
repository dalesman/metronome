#include "rpp.h"

RPP::RPP()
    : tempo_(120) {

}

uint32_t RPP::GetTempo(void) const {
  return tempo_;
}
