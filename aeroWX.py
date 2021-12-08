


# constants
stationsFile="stations.txt"





def getStations (path):
    file = open(path,'r')
    for row in file:
        print(row)



def main():
   getStations(stationsFile)
    

if __name__ == "__main__":
    main()