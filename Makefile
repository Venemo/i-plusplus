
CXXFLAGS = -std=c++11 -O1
all: ipp.s ppi.s ipp2.s ppi2.s

ipp.s: ipp.cpp
	g++ $(CXXFLAGS) -S ipp.cpp

ppi.s: ppi.cpp
	g++ $(CXXFLAGS) -S ppi.cpp

ipp2.s: ipp2.cpp
	g++ $(CXXFLAGS) -S ipp2.cpp

ppi2.s: ppi2.cpp
	g++ $(CXXFLAGS) -S ppi2.cpp

clean:
	rm -f ppi.s ppi2.s ipp.s ipp2.s

