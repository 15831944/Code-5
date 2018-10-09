#include "Password.h"
#include "dbmanger.h"

Password::Password(QWidget *parent)
	: QWidget(parent)
{
	ui.setupUi(this);

	InitWidget();
	Inituserlist();
	Initapplist();
	InitConnect();
}
Password::~Password()
{

}

void Password::InitWidget()
{
	{
		this->setFixedSize(345, 120);
		this->setWindowTitle("���뱾");
		this->setWindowIcon(QIcon("./pass.ico"));
	}
	{   //�û�����
		userBox = new QComboBox(this);
		userBox->setFixedSize(100, 25);
		userBox->move(5, 5);
		username = new QLineEdit(this);
		username->setFixedSize(100, 25);
		username->move(110, 5);
		btn_adduser = new QPushButton(this);
		btn_adduser->setFixedSize(70, 25);
		btn_adduser->move(215, 5);
		btn_adduser->setText("����û�");
		btn_eraseuser = new QPushButton(this);
		btn_eraseuser->setFixedSize(50, 25);
		btn_eraseuser->move(290, 5);
		btn_eraseuser->setText("ɾ��");
		//�������
		itemBox = new QComboBox(this);
		itemBox->setFixedSize(100, 25);
		itemBox->move(5, 35);
		appname = new QLineEdit(this);
		appname->setFixedSize(100, 25);
		appname->move(110, 35);
		btn_addapp = new QPushButton(this);
		btn_addapp->setFixedSize(70, 25);
		btn_addapp->move(215, 35);
		btn_addapp->setText("ȷ��ת��");
		btn_eraseapp = new QPushButton(this);
		btn_eraseapp->setFixedSize(50, 25);
		btn_eraseapp->move(290, 35);
		btn_eraseapp->setText("ɾ��");
		//��ע
		QLabel *lab_mark = new QLabel(this);
		lab_mark->setFixedSize(70,25);
		lab_mark->setText("��������ע");
		lab_mark->move(215, 65);
		btn_markmodif = new QPushButton(this);
		btn_markmodif->setFixedSize(50, 25);
		btn_markmodif->move(290, 65);
		btn_markmodif->setText("�޸�");
		appRemark= new QLineEdit(this);
		appRemark->setFixedSize(205, 25);
		appRemark->move(5, 65);
		//��ʾ
		labord = new QLabel(this);
		labord->setFixedWidth(250);
		labord->move(5, 100);
	}
	{
		userlist = new QStringList();
		applist = new QList<appitem>();
		App = new QString();
		Pass = new QString();
	}
}

void Password::InitConnect()
{
	connect(btn_adduser, &QPushButton::clicked, this, &Password::ON_btnAddClick);
	connect(btn_addapp, &QPushButton::clicked, this, &Password::ON_btnPassClick);
	connect(btn_eraseuser, &QPushButton::clicked, this, &Password::ON_btnEreaseUser);
	connect(btn_eraseapp, &QPushButton::clicked, this, &Password::ON_btnEreaseApp);
	connect(userBox, SIGNAL(currentIndexChanged(int)), this, SLOT(ON_comboxAddChange()));
	connect(itemBox, SIGNAL(currentIndexChanged(int)), this, SLOT(ON_comboxPassChange()));
	connect(btn_markmodif, &QPushButton::clicked, this, &Password::ON_labRemarkChange);
	//connect(appRemark, &QLineEdit::textChanged, this, &Password::ON_btnEreaseApp);

}


void Password::Inituserlist()//��ʼ���û�����
{
	DBManager::getInstance()->getuserlist(userlist);//�����ݿ��ȡ����
	if (!userlist->isEmpty())//��Ϊ��
	{
		userBox->clear();
		userBox->addItems(*userlist);//����������
		username->setText((*userlist)[0]);//�����б༭��
		labord->setText("��ǰ�û�:" + (*userlist)[0]);
	}
	else
	{
		labord->setText("������û���");
		userBox->clear();
		username->clear();
	}
}

void Password::Initapplist()//��ʼ��Ӧ������
{
	QStringList liststring;
	if ((*userlist).isEmpty())
	{
		labord->setText("������û�!");
		itemBox->clear();
		appname->clear();
		appRemark->clear();
		return;
	}
	DBManager::getInstance()->getapplist(applist, username->text());//�����ݿ��ȡ����
	if ((*applist).count() <= 0)
	{
		labord->setText("���뱾Ϊ��!");
		itemBox->clear();
		appname->clear();
		appRemark->clear();
		return;
	}
	else
	{
		//��������ѡ��
		for (int i = 0; i < (*applist).count(); i++)
		{
			liststring.append((*applist)[i].app);
		}
		itemBox->clear();
		itemBox->addItems(liststring);
		//��ʾӦ�ü����룬���Ƶ����а�
		appname->setText((*applist)[0].app);
		appRemark->setText((*applist)[0].remark);
		clipboard = QApplication::clipboard();
		clipboard->setText((*applist)[0].pass);
		labord->setText((*applist)[0].app + " ����Ϊ��" + (*applist)[0].pass + " �Ѹ��Ƶ����а壡");
	}
}

void Password::ON_btnPassClick()//���Ӧ��
{
	QString use = username->text();
	QString app = appname->text();
	QString rec = use + app;
	//�п�
	if (use == NULL)
	{
		labord->setText("�û�Ϊ�գ��������û���!");
		return;
	}
	if (app == NULL)
	{
		labord->setText("������Ӧ������!");
		return;
	}
	if (DBManager::getInstance()->isexitapp(use, app))//�Ѿ����ڣ���ѯ
	{
		appitem *tmp = new appitem();
		DBManager::getInstance()->getappitem(use, app, tmp);
		if (appRemark->text() != tmp->remark)
		{
			appRemark->setText(tmp->remark);
		}
		clipboard = QApplication::clipboard();
		clipboard->setText(tmp->pass);
		labord->setText(app + " ����Ϊ��" + tmp->pass + " �Ѹ��Ƶ����а壡");
		delete tmp;
	}
	else//�����ڣ����ɲ��洢
	{
		//����ѡ���±�
		int index = 0;
		for (int i = 0; i < rec.count(); i++)
		{
			index += rec[i].unicode();
		}
		index %= 25;
		//MD5����
		QString pas;
		pas = (QCryptographicHash::hash(rec.toUtf8(), QCryptographicHash::Md5)).toHex();
		pas = pas.mid(index, 6);
		DBManager::getInstance()->addapp(new appitem(use, app, pas, appRemark->text()));//�洢�����ݿ�
		Initapplist();//ˢ��
	}
}

void Password::ON_btnAddClick()//����û�
{
	if (username->text() == NULL)//����Ϊ��
	{
		labord->setText("�û�Ϊ�գ��������û���!");
		return;
	}
	if (DBManager::getInstance()->isexituser(username->text()))//�Ѿ������û�
	{
		Initapplist();//ˢ��
		return;
	}
	else//�����û�
	{
		DBManager::getInstance()->adduser(username->text());//�洢�����ݿ�
		Inituserlist();//ˢ��
		Initapplist();
	}
}


void Password::ON_comboxAddChange()
{
	username->setText(userBox->currentText());
	Initapplist();//ˢ��
}

void Password::ON_comboxPassChange()
{
	appname->setText(itemBox->currentText());
	appitem *tmp = new appitem();
	if (DBManager::getInstance()->getappitem(username->text(), appname->text(), tmp))
	{
		clipboard = QApplication::clipboard();
		clipboard->setText(tmp->pass);
		appRemark->setText(tmp->remark);
		labord->setText(appname->text() + " ����Ϊ��" + tmp->pass + " �Ѹ��Ƶ����а壡");
	}
	else
	{
		labord->setText("Ӧ���б�Ϊ�գ�");
	}
	delete tmp;
}

void Password::ON_btnEreaseUser()
{
	int ret = QMessageBox::warning(this, tr("����"), tr("ȷ��ɾ�����û���"), QMessageBox::Ok, QMessageBox::Abort);
	if (ret == QMessageBox::Ok)
	{
		if (DBManager::getInstance()->ereaseuser(username->text()))
		{
			Inituserlist();
			Initapplist();
		}
	}
}

void Password::ON_btnEreaseApp()
{
	int ret = QMessageBox::warning(this, tr("����"), tr("ȷ��ɾ���˼�¼��"), QMessageBox::Ok, QMessageBox::Abort);
	if (ret == QMessageBox::Ok)
	{
		if (DBManager::getInstance()->ereaseapp(username->text(),appname->text()))
		{
			Initapplist();
		}
	}
}

void Password::ON_labRemarkChange()
{
	//app�Ƿ�Ϊ��
	if (appname->text() == NULL)
	{
		return;
	}
	else
	{
		appitem *tmp = new appitem();
		if (DBManager::getInstance()->getappitem(username->text(), appname->text(), tmp))
		{
			//�޸ı�ע
		}
		else
		{
			return;
		}
		DBManager::getInstance()->modifyappremark(tmp, appRemark->text());
		delete tmp;
	}
}
