# all :
# 	g++ -I /Users/aboudarg/goinfre/.brew/include/ `sdl2-config --cflags --libs` main.cpp -I ../ -std=c++11 -lSDL2 -Wall -Wextra -Werror -o gameboi


NAME= gameboi
RM = rm -rf
CXXLIB = -I /Users/aboudarg/goinfre/.brew/include/ `sdl2-config --cflags --libs`  -I ../
CXXFLAGS= -fsanitize=address -Wall -Wextra -Werror -std=c++98 -g 
CXXOBJ = $(SRCS:.cpp=.o)
CXX = c++

CPU = cpu 
GPU = gpu
GUI = gui
OPS = arithmetic control load misc ops
MIAN = main
SRCS =  $(addsuffix .cpp, $(addprefix cpu/, $(CPU))) \
		$(addsuffix .cpp, $(addprefix gpu/, $(GPU))) \
		$(addsuffix .cpp, $(addprefix gui/, $(GUI))) \
		$(addsuffix .cpp, $(addprefix ops/, $(OPS))) \
		$(addsuffix .cpp, $(addprefix ./, $(MIAN))) 

all: $(NAME)

.cpp .o:
	$(CXX)  $(CXXLIB) $(CXXLIB) $(CXXFLAGS)  -c $< -o $@ 

# $(NAME): $(CXXOBJ)
# 	$(CXX)  $(CXXLIB) $(CXXFLAGS) $(CXXOBJ) -o $(NAME)


$(NAME): $(SRCS)
	$(CXX)  $(CXXLIB) $(CXXFLAGS) $(SRCS) -o $(NAME)
 
clean:
	$(RM) $(CXXOBJ) 
fclean: clean
	$(RM) $(NAME)

re: clean all

.PHONY: all clean fclean re