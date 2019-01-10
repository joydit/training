#include <iostream>

using namespace std;

typedef struct bnode {
	int v;
	struct bnode *l;
	struct bnode *r;
} bnode, *bnodep;

class btree
{
	public:
		btree()
		{
			root = NULL;
			create(root);
		}

		void lnr() const
		{
			cout << "lnr:" << endl; 
			_lnr(root);		
		}

		void nlr() const
		{
			cout << "nlr:" << endl; 
			_nlr(root);		
		}

		void lrn() const
		{
			cout << "lrn:" << endl; 
			_lrn(root);		
		}

	private:
		bnodep root;
		void create(bnodep &r)
		{
			int v;
			cin >> v;
			if (v != 0) {
				r = new bnode;
				r->v = v;
				r->l = NULL;
				r->r = NULL;
				create(r->l);
				create(r->r);
			}
		}

		void _lnr(bnodep r) const
		{
			if (r == NULL)
				return;
			_lnr(r->l);
			cout << r->v << endl;
			_lnr(r->r);
		}

		void _nlr(bnodep r) const
		{	if (r == NULL)
				return;
			cout << r->v << endl;
			_nlr(r->l);
			_nlr(r->r);
		}

		void _lrn(bnodep r) const
		{	if (r == NULL)
				return;
			_lnr(r->l);
			_lnr(r->r);
			cout << r->v << endl;
		}
};

main()
{
	btree bt;
	bt.lnr();
	bt.lrn();
	bt.nlr();
}
