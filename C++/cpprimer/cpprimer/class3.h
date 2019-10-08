#pragma once
#include"ClassBase.h"
#include <string>
#include <thread>
#include <cctype>
#include <Windows.h>
#include <vector>


class MyClass3:ClassBase
{
public:
	MyClass3();
	~MyClass3();

	bool binarySearch(vector<int> v, int val)//ʹ�õ������Ķ��ֲ���
	{
		auto beg = v.begin(), end = v.end();
		auto mid = v.begin() + (end - beg) / 2;

		while (mid != end && *mid != val)
		{
			if (val < *mid)
			{
				end = mid;
			}
			else
			{
				beg = mid + 1;
			}
			mid = beg + (end - beg) / 2;
		}

		return *mid == val;
	}

	void Display1(int *arr, int count)
	{
		for (int i = 0; i < count; i++)
		{
			cout << arr[i] << " ";
		}
		cout << endl;
	}
	void Display2(int arr[3][4])
	{
		for (int i = 0; i < 3; i++)
		{
			for (int j = 0; j < 4; j++)
			{
				cout << arr[i][j] << " ";
			}
		}
		cout << endl;
	}
	void Display3(int arr[][4], int row)
	{
		for (int i = 0; i < row; i++)
		{
			for (int j = 0; j < 4; j++)
			{
				cout << arr[i][j] << " ";
			}
		}
		cout << endl;
	}
	void Display4(int(&arr)[3][4])
	{
		for (int i = 0; i < 3; i++)
		{
			for (int j = 0; j < 4; j++)
			{
				cout << arr[i][j] << " ";
			}
		}
		cout << endl;
	}
	void Display5(int(*arr)[4], int row)
	{
		for (int i = 0; i < row; i++)
		{
			for (int j = 0; j < 4; j++)
			{
				cout << arr[i][j] << " ";
			}
			cout << endl;
		}
	}


	void display()
	{
		//string��ֵ
		{
			goto fo;
			cout << endl << endl << "string " << endl;
			string s1;
			string s2 = s1;
			string s3 = "hiya";
			string s4("hello");
			string s5(10, 'x');

			cin >> s1;          //" string "����ǰ��Ŀհף����ַ���ĵ�һ���հ�Ϊ���
			cout << s1 << endl;
			getline(cin, s1);   //��ȡһ��
			cout << "s1 " + s1 << endl;

			string s6;
			string s7;
			while (cin >> s6)
			{
				s7 += s6;
			}
			cout << s7;
		}
	fo:

		//cctype�а��������ַ���������
		{
			char ch = 1;

			cout << "isalnum " << isalnum(ch) << endl;
			cout << "isalpha " << isalpha(ch) << endl;
			cout << "iscntrl " << iscntrl(ch) << endl;
			cout << "isdigit " << isdigit(ch) << endl;
			cout << "isgraph " << isgraph(ch) << endl;

			ch = 'b';
			cout << "islower " << islower(ch) << endl;
			cout << "isprint " << isprint(ch) << endl;
			cout << "ispunct " << ispunct(ch) << endl;
			cout << "isspace " << isspace(ch) << endl;
			cout << "isupper " << isupper(ch) << endl;
			cout << "tolower " << (char)tolower(ch) << endl;
			cout << "toupper " << (char)toupper(ch) << endl;
		}


		//��Χfor,�ȼ���foreach(var c in s1)
		{
			string s1 = "abcdefg";
			for (auto a : s1)
			{
				cout << a << endl;
				Sleep(300);
			}

			// auto&a,�������ѭ�����޸�a����
			for (auto &a : s1)
			{
				a = toupper(a);
			}
			cout << s1 << endl;
		}

		//ʹ���±��������
		{
			const string hexdigits = "0123456789ABCDEF";
			cout << "����һϵ��ʹ�ÿո���������" << endl;
			string result;
			string::size_type n;
			while (cin >> n)
			{
				n = n % 16;
				result += hexdigits[n];
			}
			cout << "16��������" << result << endl;
		}

		//vector����ͺͳ�ʼ��
		{
			cout << endl << "vector����ͺͳ�ʼ��" << endl;
			vector<int> v1;
			vector<int> v2(v1);
			vector<int> v3 = v2;
			vector<int> v4(4, 1);
			vector<int> v5(5);
			vector<int> v6{ 1, 2, 3, 4, 5, 6 };
			vector<char>v7 = { 'a', 'b', 'c', 'd' };

			cout << "v1 ";
			for (auto a : v1)
			{
				cout << " " << a;
			}

			cout << endl << "v2 ";
			for (auto a : v2)
			{
				cout << " " << a;
			}

			cout << endl << "v3 ";
			for (auto a : v3)
			{
				cout << " " << a;
			}

			cout << endl << "v4 ";
			for (auto a : v4)
			{
				cout << " " << a;
			}

			cout << endl << "v5 ";
			for (auto a : v5)
			{
				cout << " " << a;
			}

			cout << endl << "v6 ";
			for (auto a : v6)
			{
				cout << " " << a;
			}

			cout << endl << "v7 ";
			for (auto a : v7)
			{
				cout << " " << a;
			}
		}

		//vector����
		{
			cout << endl << "vector����" << endl;
			vector<int> v1;
			for (int i = 0; i < 10; i++)
			{
				v1.push_back(i);
			}
			cout << endl;
			for (auto a : v1)
			{
				cout << " " << a;
			}
			cout << endl;

			cout << "" << v1.empty() << endl;
			cout << "" << v1.size() << endl;
		}

		//������
		{
			cout << endl << endl << "������" << endl;
			vector<char> ch;
			for (char c = 'a'; c <= 'z'; c++)
			{
				ch.push_back(c);
			}


			if (ch.begin() != ch.end())
			{
				auto it = ch.begin();
				*it = toupper(*it);
			}
			for (auto it = ch.begin(); it != ch.end(); it++)
			{
				cout << *it << " ";
			}
			cout << endl << ch.cend() - ch.cbegin() << endl;
		}

		//����
		{
			cout << endl << endl << "����" << endl;
			const unsigned sz = 3;
			int arr1[sz] = { 0, 1, 2 };
			int arr2[] = { 4, 5, 6 };
			int arr3[10] = { 4, 5, 6 };  //����7��Ĭ��Ϊ0
			string arr4[3] = { "hi", "bye" };  //����һ��Ĭ��Ϊ""

			cout << "arr1  " << arr1 << " count " << sizeof(arr1) / sizeof(arr1[0]) << endl;
			cout << "arr2  " << arr2 << " count " << sizeof(arr2) / sizeof(arr2[0]) << endl;
			cout << "arr3  " << arr3 << " count " << sizeof(arr3) / sizeof(arr3[0]) << endl;
			cout << "arr4  " << arr4 << " count " << sizeof(arr4) / sizeof(arr4[0]) << endl;

			char arr5[] = { 'c', '+', '+' };          //��ӡʱԽ����
			char arr6[] = { 'c', '+', '+', '\0' };   //��ӡ����
			char arr7[] = "c++";                     //�Զ���\0

			cout << "arr5  " << arr5 << " count " << sizeof(arr5) / sizeof(arr5[0]) << endl;
			cout << "arr6  " << arr6 << " count " << sizeof(arr6) / sizeof(arr6[0]) << endl;
			cout << "arr7  " << arr7 << " count " << sizeof(arr7) / sizeof(arr7[0]) << endl;
		}

		//�����ָ��
		{
			cout << endl << endl << "�����ָ��" << endl;
			string nums[] = { "one", "two", "three" };
			string *p1 = &nums[0];   //��Ԫ�ص�ַ
			string *p2 = nums;       //������

			//����ֵ��ͬ
			cout << nums << endl; //nums����nums[0],ָ����Ԫ�ص�ַ��ָ��
			cout << p1 << endl;   //
			cout << p2 << endl;   //


			int arr[] = { 0, 1, 2, 3 };
			int *p = arr;
			auto a1(arr);   //a1 ��int*
			a1[0] = 1;
			cout << arr << endl;
			cout << p << endl;
			cout << a1 << endl;

			decltype(arr)a2 = { 3, 2, 1, 0 };

			char str[] = "abcdefg";
			char*ch = str;
			while (*ch)
			{
				printf("%c", *ch);
				ch++;
			}

		}

		//C����ַ���
		{
			cout << endl << endl << "C����ַ���" << endl;
			char str1[] = "c style string";
			char str2[] = "another string";
			char str3[1];
			char str4[100];
			//strcpy_s(str3, str1);   //����strcpy()������ȷ��dst�����㹻�Ŀռ�洢src
			strcpy_s(str4, str1);   //strcat()������ȷ��dst�Ŀռ��㹻�洢���Ӻ���ַ���
			strcat_s(str4, str2);

			cout << strlen(str1) << endl;
			cout << strlen(str2) << endl;
			cout << strcmp(str1, str2) << endl;
			cout << str4 << endl;
		}

		//��ά����
		{
			cout << endl << endl << "��ά����" << endl;

			int arr1[3][4] = {
				{ 0, 1, 2, 3 },
			{ 4, 5, 6, 7 },
			{ 8, 9, 10, 11 }
			};
			int arr2[3][4] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 }; //�ڴ��е�ʵ�ʴ洢
			int arr3[3][4] = { { 0 }, { 4 }, { 8 } }; //��ʼ��ÿ����Ԫ��
			int arr4[3][4] = { 0, 1, 2, 3 };    //��ʼ����һ��Ԫ��

			int(&row)[4] = arr2[1];

			cout << arr1 << endl;
		}

		//��ά���鴫��
		{
			cout << endl << endl << "��ά���鴫��" << endl;
			int arr[3][4] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
			Display1((int*)arr, 12);
			Display2(arr);
			Display3(arr, 3);
			Display4(arr);
		}

		//��ά����ı���
		{
			cout << endl << endl << "��ά���鴫��" << endl;
			char arr[4][4] = { "abc", "def", "ghi", "jkl" };


			//��Χfor
			for (auto &row : arr)  //row,���������ã������ܶ�һ��char*�����ڲ�ķ�Χfor
			{
				for (auto col : row)
				{
					cout << col;
				}
			}
			cout << endl;

			//ʹ�õ�������������
			for (auto p = begin(arr); p != end(arr); p++)
			{
				for (auto q = begin(*p); q != end(*p); q++)
				{
					cout << *q;
				}
			}
			cout << endl;


		}
	}

private:

};

MyClass3::MyClass3()
{
}

MyClass3::~MyClass3()
{
}
