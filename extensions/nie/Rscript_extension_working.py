#!/usr/bin/env python
# coding=utf-8

import inkex
import subprocess 

class MakeRExtension(inkex.EffectExtension):
    """Please rename this class, don't keep it unnamed"""
    def add_arguments(self, pars):
        pars.add_argument("--my_option", type=inkex.Boolean,\
            help="An example option, put your options here")

    def effect(self):
        file = 'output1.svg'
        args = ['Rscript', 'Rscript.R', file]
        p = subprocess.Popen(args)
        args = ['inkscape', '--with-gui', '--actions=file-open-window:', file]		
        p = subprocess.Popen(args)
        #self.msg("This is an empty extension, please see tutorials for more details.")
        for elem in self.svg.selection:
            elem.style['fill'] = 'red'
            elem.style['fill-opacity'] = 1
            elem.style['opacity'] = 1

if __name__ == '__main__':
    MakeRExtension().run()
