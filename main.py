#!/usr/bin/env python3
# -*- codign: utf-8 -*-

from kivy.app import App
from kivymd.app import MDApp
from kivy.core.window import Window 
from kivy.uix.boxlayout import BoxLayout

class MainApp(App):
	
	def build(self):
		self.icon = ""
		self.title = "Gestione"

		if 1 == 3:
			Window.size = (300,580)
			self.theme_cls.primary_palette = "Teal"
		
		else:
			Window.top = 100
			Window.size = (1300,850)

		return MainWindow()

class MainWindow(BoxLayout):
	pass

if __name__ == "__main__":
	MainApp().run()
