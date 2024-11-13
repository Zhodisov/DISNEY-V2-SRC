import os
import re
import tkinter as tk
from tkinter import ttk, filedialog, messagebox
from typing import List, Dict

class a:
    def b(self, c: List[str], d: List[Dict[str, str]]) -> List[str]:
        e = []
        for f in range(len(c)):
            g = True
            for h in d:
                i = int(h['relative_line'])
                j = h['pattern']
                k = f + i

                if k >= len(c):
                    g = False
                    break

                l = c[k]
                if not re.search(re.escape(j), l):
                    g = False
                    break

            if g:
                m = [f"Ligne {f + 1}: {c[f].strip()}"]
                for h in d:
                    i = int(h['relative_line'])
                    k = f + i
                    m.append(f"Ligne {k + 1}: {c[k].strip()}")
                e.append("\n".join(m))
        return e

    def n(self, c: List[str], j: str) -> List[str]:
        o = []
        for k, l in enumerate(c):
            if re.search(re.escape(j), l):
                o.append(f"Ligne {k + 1}: {l.strip()}")
        return o

class p:
    def __init__(self, q):
        self.q = q
        self.q.title("SafeMarket - Parser")
        self.q.configure(bg="#1e1e1e")
        
        self.r = []
        
        self.s()

    def s(self):
        self.t = ttk.Style()
        self.t.configure('TButton', background='#444', highlightbackground='#3E4149', font=('Helvetica', 10))
        self.t.configure('TLabel', background='#1e1e1e', foreground='white', font=('Helvetica', 10))
        self.t.configure('TEntry', background='#444', highlightbackground='#3E4149', fieldbackground='#444', font=('Helvetica', 10))
        self.t.configure('TFrame', background='#1e1e1e')

        self.u = ttk.Frame(self.q, padding="10", style='TFrame')
        self.u.grid(row=0, column=0, sticky=(tk.W, tk.E, tk.N, tk.S))

        self.v = ttk.Frame(self.u, style='TFrame')
        self.v.grid(row=0, column=0, columnspan=6, sticky=(tk.W, tk.E), pady=5)

        self.w = ttk.Button(self.v, text="Ligne", command=self.x)
        self.w.grid(row=0, column=0, sticky=tk.W, padx=5)

        self.y = ttk.Button(self.v, text="Fichier", command=self.z)
        self.y.grid(row=0, column=1, sticky=tk.W, padx=5)

        self.aa = ttk.Button(self.v, text="Chercher", command=self.ab)
        self.aa.grid(row=0, column=2, sticky=tk.W, padx=5)

        self.ac = ttk.Label(self.v, text="Recherche générale :", style='TLabel')
        self.ac.grid(row=0, column=3, sticky=tk.W, padx=5)
        
        self.ad = ttk.Entry(self.v, width=30, style='TEntry')
        self.ad.grid(row=0, column=4, sticky=(tk.W, tk.E))

        self.ae = ttk.Button(self.v, text="Chercher", command=self.af)
        self.ae.grid(row=0, column=5, sticky=tk.W, padx=5)

        self.ag = ttk.Frame(self.u, style='TFrame')
        self.ag.grid(row=1, column=0, columnspan=6, sticky=(tk.W, tk.E), pady=5)

        self.ah = ttk.Frame(self.u, style='TFrame')
        self.ah.grid(row=2, column=0, columnspan=6, pady=10, sticky=(tk.W, tk.E, tk.N, tk.S))

        self.ai = tk.Text(self.ah, wrap="word", state=tk.DISABLED, bg="#444", fg="white", insertbackground="white")
        self.ai.grid(row=0, column=0, sticky=(tk.W, tk.E, tk.N, tk.S))

        self.aj = ttk.Scrollbar(self.ah, orient=tk.VERTICAL, command=self.ai.yview)
        self.aj.grid(row=0, column=1, sticky=(tk.N, tk.S))

        self.ak = ttk.Scrollbar(self.ah, orient=tk.HORIZONTAL, command=self.ai.xview)
        self.ak.grid(row=1, column=0, sticky=(tk.W, tk.E))

        self.ai.config(yscrollcommand=self.aj.set, xscrollcommand=self.ak.set)

        self.x()

    def x(self):
        al = len(self.r)
        
        am = ttk.Entry(self.ag, width=5, style='TEntry')
        am.grid(row=al, column=0, sticky=tk.W, padx=5)
        am.insert(0, str(al))

        an = ttk.Entry(self.ag, width=50, style='TEntry')
        an.grid(row=al, column=1, sticky=(tk.W, tk.E))

        ao = ttk.Button(self.ag, text="Retirer", command=lambda: self.ap(al))
        ao.grid(row=al, column=2, sticky=tk.W, padx=5)

        self.r.append((am, an, ao))

    def ap(self, aq):
        if self.r[aq]:
            am, an, ao = self.r[aq]
            am.destroy()
            an.destroy()
            ao.destroy()
            self.r[aq] = None
        self.r = [ar for ar in self.r if ar is not None]
        for i, (am, an, ao) in enumerate(self.r):
            am.delete(0, tk.END)
            am.insert(0, str(i))

    def z(self):
        self.asx = filedialog.askopenfilename(title="Sélectionnez le fichier output.txt", filetypes=[("Text files", "*.txt")])
        if self.asx:
            self.aa.config(state=tk.NORMAL)
            self.ae.config(state=tk.NORMAL)
            self.ai.config(state=tk.NORMAL)
            self.ai.delete("1.0", tk.END)
            self.ai.insert(tk.END, f"Fichier sélectionné: {self.asx}")
            self.ai.config(state=tk.DISABLED)

    def ab(self):
        if not hasattr(self, 'as'):
            messagebox.showerror("Erreur", "Aucun fichier sélectionné.")
            return

        self.ai.config(state=tk.NORMAL)
        self.ai.delete("1.0", tk.END)

        with open(self.asx, 'r', encoding='utf-8') as f:
            at = f.readlines()

        au = []
        for am, an, _ in self.r:
            if am is not None and an is not None:
                av = am.get()
                aw = an.get()
                if av and aw:
                    au.append({'relative_line': av, 'pattern': aw})

        ax = a()
        ay = ax.b(at, au)

        if ay:
            az = f"Correspondances trouvées dans {self.asx}:\n\n" + "\n\n".join(ay)
        else:
            az = "Aucune correspondance trouvée."
        
        self.ai.insert(tk.END, az)
        self.ai.config(state=tk.DISABLED)

    def af(self):
        if not hasattr(self, 'as'):
            messagebox.showerror("Erreur", "Aucun fichier sélectionné.")
            return

        self.ai.config(state=tk.NORMAL)
        self.ai.delete("1.0", tk.END)

        ba = self.ad.get()
        if not ba:
            messagebox.showerror("Erreur", "Le champ de recherche générale est vide.")
            return

        with open(self.asx, 'r', encoding='utf-8') as f:
            at = f.readlines()

        ax = a()
        ay = ax.n(at, ba)

        if ay:
            az = f"Correspondances trouvées dans {self.asx}:\n\n" + "\n".join(ay)
        else:
            az = "Aucune correspondance trouvée."
        
        self.ai.insert(tk.END, az)
        self.ai.config(state=tk.DISABLED)

def main():
    bb = "safemarket.ico"
    q = tk.Tk()
    bc = p(q)
    q.iconbitmap(bb)
    q.mainloop()

if __name__ == "__main__":
    main()
