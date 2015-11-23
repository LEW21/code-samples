// https://github.com/LEW21/variantxx

#include <iostream>
#include "variantxx/variant.hpp"

int main()
{
	using IntOrFloat = xx::variant<int, float>;

	auto v = IntOrFloat{5};

	for (auto i = 0; i < 5; ++i)
	{
		if (rand()%2)
			v = 0.5f;

		if (v.is<int>())
		{
			std::cout << v.get<int>() << std::endl;
			assert(v.get<int>() == 5);
		}
		else
		{
			std::cout << v.get<float>() << std::endl;
			assert(v.get<float>() == 0.5);
		}
	}
}
