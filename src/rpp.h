#ifndef RPP_H_
#define RPP_H_

#include <cstdint>

class RPP
{
 public:
  RPP();
  uint32_t GetTempo(void) const;

 private:
  uint32_t tempo_;
};


#endif /* RPP_H_ */
