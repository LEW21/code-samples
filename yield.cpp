// https://github.com/LEW21/yieldxx

#include <iostream>
#include "yieldxx/generated.hpp"

template <class T>
auto range(T min, T max) -> xx::generated<T>
{
	return xx::generated<T>([=](typename xx::generator<T>::yield&& yield) {
		for (T i = min; i < max; ++i)
			yield(i);
	});
}

int main()
{
	for (auto i : range(0, 5))
		std::cout << i << std::endl;
}
