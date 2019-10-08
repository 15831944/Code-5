#pragma once
#include "ClassBase.h"

int reused = 42; //ȫ�ֱ���

class MyClass2:ClassBase
{
public:
	MyClass2();
	~MyClass2();
	void display()
	{
		//������������
		{
			cout << endl << endl << "������������" << endl;
			cout << "bool        " << sizeof(bool) << endl;
			cout << "char        " << sizeof(char) << endl;
			cout << "wchar_t     " << sizeof(wchar_t) << endl;
			cout << "char16_t    " << sizeof(char16_t) << endl;
			cout << "char32_t    " << sizeof(char32_t) << endl;
			cout << "short       " << sizeof(short) << endl;
			cout << "int         " << sizeof(int) << endl;
			cout << "long        " << sizeof(long) << endl;
			cout << "long long   " << sizeof(long long) << endl;
			cout << "float       " << sizeof(float) << endl;
			cout << "double      " << sizeof(double) << endl;
			cout << "long double " << sizeof(long double) << endl;

			//����ת��
			bool b1 = 42;
			cout << "bool b1 = 42 " << b1 << endl;

			int i = b1;
			cout << "int i = b1 " << i << endl;

			i = 3.14;
			cout << "i = 3.14 " << i << endl;

			double pi = i;
			cout << "double pi = i " << pi << endl;

			unsigned char c = -1;
			cout << "unsigned char c = -1 " << c << endl;

			signed char c2 = 256;
			cout << "signed char c2 = 256 " << c2 << endl;


			i = 20;   //10����
			cout << "i = 20 " << i << endl;
			i = 020;  //8����
			cout << "i = 020 " << i << endl;
			i = 0x20; //16����
			cout << "i = 0x20 " << i << endl;
		}

		//��ʼ���͸�ֵ
		{
			cout << endl << endl << "��ʼ���͸�ֵ" << endl;
			//��ʼ������������ʱ������һ����ʼֵ
			//��  ֵ���Ѷ���ĵ�ǰֵ����������һ����ֵ������
			long double ld = 3.1415926;
			//int a{ ld }, b = { ld }; //ʹ��{}���б��ʼ���������������͵ĸ�ֵ����о��ȼ�飬������
			int c(ld), d = ld;
		}

		//����������
		{
			cout << endl << endl << "����������" << endl;
			int sum = 0;
			for (int val = 1; val <= 10; val++)
			{
				sum += val;
			}
			cout << "sum:" << sum << endl;
		}
		//Ƕ�׵�������
		{
			cout << endl << endl << "Ƕ�׵�������" << endl;
			int unique = 0;
			cout << reused << " " << unique << endl;
			int reused = 0;
			cout << reused << " " << unique << endl;   //�ڲ�ͬ��������ͬ������֮��ʹ���µı���
			cout << ::reused << " " << unique << endl; //��ʽʹ��ȫ�ֱ���
		}

		//����
		{
			cout << endl << endl << "����" << endl;
			int ival = 1024;
			int &refval = ival;
			//int &refval2;   //���ñ����ʼ�� 

			int i, &ri = i;
			i = 5; ri = 10;
			cout << i << " " << ri << endl;
		}

		//ָ��
		{
			cout << endl << endl << "ָ��" << endl;
			int i = 42;
			int *p;         //int��ָ��
			int *&r = p;    //r��һ����ָ��p������

			r = &i;         //pָ��i
			*r = 0;         //i��ֵ��Ϊ0
		}
		//const�޶���
		{
			cout << endl << endl << "const�޶���" << endl;

			double dval = 3.14;
			const int &ri = dval;
			//���Ͳ�ƥ�䣬��������һ����ʱ����
			const int tmp = dval;
			const int &tmpri = tmp;

			int i = 1;
			int j = 2;
			int*const p1 = &i;         //p1ֻ��ָ��i
			const int ci = 42;         //ci��ֵ���ܸı�
			const int *p2 = &ci;       //*p2��ֵ���ܸı䣬p2��ֵ���Ըı�

			//p1 = &j;  //����,p1ֻ��ָ��i
			*p1 = 3;    //p1ֻ��ָ��i

			//*p2 = 4;  //����,*p2��ֵ���ܸı�
			p2 = &j;    //p2��ֵ���Ըı�
		}

		//auto���ͺ�decltype�����ƶ�
		{
			cout << endl << endl << "auto���ͺ�decltype�����ƶ�" << endl;

			const auto ci = 0, &ck = ci;
			decltype(ci)x = 0;    //x��������const int
			decltype(ck)y = x;    //y��������const int&
			//decltype(ck)z;       //z��δ��ʼ�������ã�����
		}
	}
private:

};

MyClass2::MyClass2()
{
}

MyClass2::~MyClass2()
{
}