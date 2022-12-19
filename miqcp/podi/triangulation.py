######################################
# IMPORTS                            #
######################################


from math import sqrt, floor, ceil
from numpy import array_equal
from matplotlib.pyplot import plot, figure, show
from numpy import empty, insert, array, dot
from numpy.linalg import norm
from podi import log_info



######################################
# CONSTANTS                          #
######################################


TRIANGULATION_1D_PREFIX = 'triangulation_1d'
TRIANGULATION_2D_ID_PREFIX = 'triangulation_2d'
NUMBER_INITIAL_SEGMENTS =2    
SHIFT = 0.01  
DIGIT_NUMBER = 7
EPS = 1/(10**DIGIT_NUMBER)


######################################
# CLASSES                            #
######################################


class Triangulation1d(object):
    
    def __init__(self, id, bounds=[0,0], number_of_desired_segments=NUMBER_INITIAL_SEGMENTS):
        self.id = create_triangulation1d_id(id)
        self.create_triangulation_from_boundaries(bounds, number_of_desired_segments)
        
    def create_triangulation_from_boundaries(self, bounds, number_of_desired_segments):
        number_vertices = int(number_of_desired_segments)+1
        if bounds[1]-bounds[0] == 0:

            bounds[0] = bounds[0] - SHIFT
            bounds[1] = bounds[1] + SHIFT
        vertices = empty(int(number_vertices), dtype=float)
        for i in range(number_vertices):
            vertices[i] = bounds[0] + i * (bounds[1]-bounds[0])/int(number_of_desired_segments)
        self.vertices = vertices
        self.number_of_segments = int(number_of_desired_segments)
                
    def longest_edge_bisection(self, segment_number):
        segment_number = int(segment_number)
        if segment_number >=1 and segment_number <= self.number_of_segments:
            edge = [self.vertices[segment_number-1], self.vertices[segment_number]]
            new = 0.5 * (edge[0]+edge[1])
            self.vertices = insert(self.vertices, segment_number, new )
            self.number_of_segments = self.number_of_segments + 1
        
    def plot_triangulation(self,point=''):
        for vertex_counter in range(self.number_of_segments+1):
            plot(self.vertices[vertex_counter],0, 'bo')
            start = self.vertices[0]
            end = self.vertices[self.number_of_segments]
            plot([start, end],[0,0],'b')
        if str(point) != '':
            plot(point,0,'bo')
        show()
            
    def get_segment_number_of_point(self, point):
        number = 0
        for i in range(1, self.number_of_segments+1):
            if floor(self.vertices[i-1]*10**DIGIT_NUMBER)/10**DIGIT_NUMBER <= point and point <= ceil(self.vertices[i]*10**DIGIT_NUMBER)/10**DIGIT_NUMBER:
                number = i
                return number
        return number
    
    
    def test_if_point_is_interior(self, point, simplex_number):
        vertices_1 = self.vertices[simplex_number-1]
        vertices_2 = self.vertices[simplex_number]
        
        if vertices_1 < point and point < vertices_2:
            return True
        else:
            return False
        
        
    def add_point( self, point ):
        segment_number = self.get_segment_number_of_point( point )
        self.vertices = insert(self.vertices, segment_number, point )
        self.number_of_segments = self.number_of_segments + 1

            

            
class Triangulation2d(object):
    
    def __init__(self, id, x_bounds=[0,0], y_bounds=[0,0], number_of_desired_segments=NUMBER_INITIAL_SEGMENTS):
        self.id = create_triangulation2d_id(id)
        self.create_triangulation_from_boundaries(x_bounds, y_bounds, number_of_desired_segments)
        
    def create_triangulation_from_boundaries(self, x_bounds, y_bounds, number_of_desired_segments):
        number_of_desired_segments = int(number_of_desired_segments)
        if x_bounds[1] - x_bounds[0] == 0:

            x_bounds[0] = x_bounds[0] - SHIFT
            x_bounds[1] = x_bounds[1] + SHIFT
        if y_bounds[1] - y_bounds[0] == 0:

            y_bounds[0] = y_bounds[0] - SHIFT
            y_bounds[1] = y_bounds[1] + SHIFT
            
        if number_of_desired_segments == 1:
            self.vertices = [[[x_bounds[0], y_bounds[0]], [x_bounds[1], y_bounds[0]], [x_bounds[1], y_bounds[1]], [x_bounds[0], y_bounds[1]] ]]
            self.number_of_segments = 1            
        else:
            self.vertices = [[[x_bounds[0], y_bounds[0]], [x_bounds[1], y_bounds[0]], [x_bounds[1], y_bounds[1]]], [[x_bounds[1], y_bounds[1]], [x_bounds[0], y_bounds[0]], [x_bounds[0], y_bounds[1]]]]
            self.number_of_segments = 2
        
        if int(number_of_desired_segments) > 2:
            simplex_counter = 1    #go through all simplices, maybe several times
            while self.number_of_segments < number_of_desired_segments:
                if simplex_counter > self.number_of_segments:
                    simplex_counter = 1    #go to first simplex
                self.longest_edge_bisection(simplex_counter)
                simplex_counter = simplex_counter + 2    #because this function adds one simplex
                
    def longest_edge_bisection(self, simplex_counter):
        if self.number_of_segments == 1:
            point1 = self.vertices[0][0]
            point2 = self.vertices[0][1]
            point3 = self.vertices[0][2]
            point4 = self.vertices[0][3]            
            self.vertices = [[point1, point2, point3],[point3, point1, point4]]
            self.number_of_segments = 2           
        else:        
            simplex_counter = int(simplex_counter)-1    #python counts from 0
            vertices = self.vertices[simplex_counter]    #vertices of simplex to refine
            edge1 = [vertices[0], vertices[1]]
            edge2 = [vertices[0], vertices[2]]
            edge3 = [vertices[1], vertices[2]]
            
            norm1=sqrt((edge1[0][0]-edge1[1][0])**2+(edge1[0][1]-edge1[1][1])**2)
            norm2=sqrt((edge2[0][0]-edge2[1][0])**2+(edge2[0][1]-edge2[1][1])**2)
            norm3=sqrt((edge3[0][0]-edge3[1][0])**2+(edge3[0][1]-edge3[1][1])**2)
            
            if norm1>=norm2 and norm1>=norm3:
                new=[0.5*(edge1[0][0]+edge1[1][0]),0.5*(edge1[0][1]+edge1[1][1])]    #new added point
                link=vertices[2]    #link point
            if norm2>=norm1 and norm2>=norm3:
                new=[0.5*(edge2[0][0]+edge2[1][0]),0.5*(edge2[0][1]+edge2[1][1])]
                link=vertices[1]    #link point
            if norm3>=norm1 and norm3>=norm2:
                new=[0.5*(edge3[0][0]+edge3[1][0]),0.5*(edge3[0][1]+edge3[1][1])]
                link=vertices[0]    #link point
            
            edge=[new,link]    #new edge
            x0=vertices[0]    #old start
            link=vertices[1]    #old link
            xd=vertices[2]    #old end
                           
            if array_equal(x0,edge[0])==True or array_equal(x0,edge[1])==True:
                self.vertices[simplex_counter] = [x0,link,new]
                self.vertices.insert( simplex_counter+1, [new,x0,xd] )
            elif array_equal(xd,edge[0])==True or array_equal(xd,edge[1])==True:
                self.vertices[simplex_counter] = [x0,xd,new]
                self.vertices.insert( simplex_counter+1, [new,link,xd] )
            else:
                self.vertices[simplex_counter] = [x0,link,new]
                self.vertices.insert( simplex_counter+1 , [new,link,xd] )
            self.number_of_segments = self.number_of_segments + 1
        
    def plot_triangulation(self, point=0):
        if self.number_of_segments == 1:
            vertices = self.vertices[0]
            x_coord = [vertices[0][0], vertices[1][0], vertices[2][0], vertices[3][0], vertices[0][0]]
            y_coord = [vertices[0][1], vertices[1][1], vertices[2][1], vertices[3][1], vertices[0][1]]
            plot(x_coord[0], y_coord[0], 'bo')
            plot(x_coord[1], y_coord[1], 'bo')
            plot(x_coord[2], y_coord[2], 'bo')
            plot(x_coord[3], y_coord[3], 'bo')
            plot(x_coord, y_coord, 'b')            
        else: 
            for simplex_counter in range(self.number_of_segments):
                vertices = self.vertices[simplex_counter]
                x_coord = [vertices[0][0], vertices[1][0], vertices[2][0], vertices[0][0]]
                y_coord = [vertices[0][1], vertices[1][1], vertices[2][1], vertices[0][1]]
                plot(x_coord[0], y_coord[0], 'bo')
                plot(x_coord[1], y_coord[1], 'bo')
                plot(x_coord[2], y_coord[2], 'bo')
                plot(x_coord, y_coord, 'b')
        if str(point) != '0':
            plot(point[0],point[1],'b+')
        show()
            
            
    def get_segment_number_of_point(self, point):
        if self.number_of_segments == 1:
            return 1
        else:
            for i in range(1, self.number_of_segments+1):    #over all segments
                
                vertices = array(self.vertices[i-1])    #actual segment as numpy array
                point = array(point)
                
                
                normal1=array([-vertices[0,1]+vertices[1,1],vertices[0,0]-vertices[1,0]]) 
                if dot(normal1,(vertices[2]-0.5*(vertices[0]+vertices[1])))<0:
                    normal1=-normal1
            
                normal2=array([-vertices[0,1]+vertices[2,1],vertices[0,0]-vertices[2,0]])
                if dot(normal2,(vertices[1]-0.5*(vertices[0]+vertices[2])))<0:
                    normal2=-normal2
                    
                normal3=array([-vertices[1,1]+vertices[2,1],vertices[1,0]-vertices[2,0]]) 
                if dot(normal3,(vertices[0]-0.5*(vertices[1]+vertices[2])))<0:
                    normal3=-normal3        
                
                sklpr1=dot(normal1, (point-0.5*(vertices[0]+vertices[1])) ) 
                sklpr2=dot(normal2, (point-0.5*(vertices[0]+vertices[2])) )
                sklpr3=dot(normal3, (point-0.5*(vertices[1]+vertices[2])) )
                
                sklpr1 = round(sklpr1 * 10**DIGIT_NUMBER)/10**DIGIT_NUMBER
                sklpr2 = round(sklpr2 * 10**DIGIT_NUMBER)/10**DIGIT_NUMBER
                sklpr3 = round(sklpr3 * 10**DIGIT_NUMBER)/10**DIGIT_NUMBER
                
                if sklpr1>=0 and sklpr2>=0 and sklpr3>=0: 
                    return i       
        return 0


    def labeling_test(self):
        answer = True
        for simplex_counter in range(self.number_of_segments - 1):
            if self.vertices[simplex_counter][2] != self.vertices[simplex_counter+1][0]:
                answer = False
        return answer
            
    
    def delaunay_test(self):
        answer = True
        for simplex_counter in range(self.number_of_segments):
            vertices = self.vertices[simplex_counter]
            x_coord = [vertices[0][0], vertices[1][0], vertices[2][0], vertices[0][0]]
            y_coord = [vertices[0][1], vertices[1][1], vertices[2][1], vertices[0][1]]
            d = 2*( x_coord[0] * (y_coord[1]-y_coord[2]) + x_coord[1]*(y_coord[2] - y_coord[0]) + x_coord[2]*(y_coord[0] - y_coord[1]) )
            x_circle =( (x_coord[0]**2 + y_coord[0]**2)*(y_coord[1] - y_coord[2]) + (x_coord[1]**2 + y_coord[1]**2)*(y_coord[2] - y_coord[0]) + (x_coord[2]**2 + y_coord[2]**2)*(y_coord[0] - y_coord[1]) ) / d
            y_circle =( (x_coord[0]**2 + y_coord[0]**2)*(x_coord[2] - x_coord[1]) + (x_coord[1]**2 + y_coord[1]**2)*(x_coord[0] - x_coord[2]) + (x_coord[2]**2 + y_coord[2]**2)*(x_coord[1] - x_coord[0]) ) / d
            radius = sqrt( (x_circle - x_coord[0])**2 + (y_circle - y_coord[0])**2 )
            for simplex_counter2 in range(self.number_of_segments):
                for i in range(3):
                    if self.vertices[simplex_counter2][i] == self.vertices[simplex_counter][0] or self.vertices[simplex_counter2][i] == self.vertices[simplex_counter][1] or self.vertices[simplex_counter2][i] == self.vertices[simplex_counter][2]:
                        pass
                    else:
                        if sqrt( (x_circle - self.vertices[simplex_counter2][i][0])**2 + (y_circle -  self.vertices[simplex_counter2][i][1])**2 ) < radius:
                            print(x_circle, y_circle)
                            print(simplex_counter)
                            answer = False
        return answer
                        
        

######################################
# FUNCTIONS                          #
######################################


def create_triangulation1d_id(*id):
    return TRIANGULATION_1D_PREFIX + '_' + str(*id)

def create_triangulation2d_id(*id):
    return TRIANGULATION_2D_ID_PREFIX + '_' + str(*id)

def test_if_point_on_boundary(point, vertices):
    x_min = min(vertices[0,0],vertices[1,0],vertices[2,0])
    x_max = max(vertices[0,0],vertices[1,0],vertices[2,0])
    
    y_min = min(vertices[0,1],vertices[1,1],vertices[2,1])
    y_max = max(vertices[0,1],vertices[1,1],vertices[2,1])
    
    if x_min > point[0] or point[0] > x_max:
        return False
    if y_min > point[1] or point[1] > y_max:
        return False
    
    point = array(point, float)
    vertices = array(vertices, float)
    
    line1 = vertices[1]-vertices[0]
    point_line1 = point-vertices[0]
    
    if norm(point_line1) < EPS:

        return True
    
    value = dot(line1,point_line1)/(norm(line1)*norm(point_line1))

    if value == 1:
 
        return True
    
    line2 = vertices[2]-vertices[0]
    point_line2 = point-vertices[0]

    if norm(point_line2) < EPS:

        return True

    value = dot(line2,point_line2)/(norm(line2)*norm(point_line2))
    if value == 1:

        return True    
    
    line3 = vertices[2]-vertices[1]
    point_line3 = point-vertices[1]
    
    if norm(point_line3) < EPS:
      
        return True

    value = dot(line3,point_line3)/(norm(line3)*norm(point_line3))
    if value == 1:
     
        return True   
    
    return False
