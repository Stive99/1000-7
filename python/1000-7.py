from time import sleep

def main():
	try :
		n = 1000
		while n > 0:
			if n > 13:
				n -= 7
				sleep (0.08)
				print(f'{n} - 7 = {n - 7}')
			if n == 13:
				print('Я гуль!')
				break
	except:
		print('Ошибка')

if __name__ == '__main__':
	main()