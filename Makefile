# all :
# 	g++ -I /Users/aboudarg/goinfre/.brew/include/ `sdl2-config --cflags --libs` main.cpp -I ../ -std=c++11 -lSDL2 -Wall -Wextra -Werror -o gameboi


NAME= gameboi
RM = rm -rf
LIB = -I /Users/aboudarg/goinfre/.brew/include/ `sdl2-config --cflags --libs`  -I ../
CXXFLAGS= -Wall -Wextra -Werror -std=c++98 -g
CXXOBJ = $(SRCS:.cpp=.o)
CXX = c++

CPU = cpu 
GPU = gpu
GUI = gui
OPS = arithmetic control load misc ops
MIAN = main
SRCS =  $(addsuffix .cpp, $(addprefix cpu/, $(CPU))) \
		$(addsuffix .cpp, $(addprefix cpu/, $(GPU))) \
		$(addsuffix .cpp, $(addprefix cpu/, $(GUI))) \
		$(addsuffix .cpp, $(addprefix cpu/, $(OPS))) \
		$(addsuffix .cpp, $(addprefix cpu/, $(MIAN))) 

all: $(NAME)

.cpp .o:
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(NAME): $(CXXOBJ)
	$(CXX) $(CXXFLAGS) $(CXXOBJ) -o $(NAME)

clean:
	$(RM) $(CXXOBJ) 
fclean: clean
	$(RM) $(NAME)

re: clean all

.PHONY: all clean fclean re