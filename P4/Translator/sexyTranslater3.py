import os

UINS = {
            'FETCH'     :'0',
            'NOP'       :'2',
            'LDAC'      :'3',
            'LDACV'     :'5',
            'STAC'      :'9',
            'MVACR1'    :'11',
            'MVACR2'    :'12',
            'MVACR3'    :'13',
            'MVACR4'    :'14',
            'MVACR'     :'15',
            'MVACMAR'   :'16',
            'MOVR1'     :'17',
            'MOVR2'     :'18',
            'MOVR3'     :'19',
            'MOVR4'     :'20',
            'MOVR'      :'21',
            'JMNZ'      :'22',
            'JMNZY'     :'23',
            'JMNZN'     :'25',
            'INAC'      :'29',
            'DEAC'      :'30',
            'ADD'       :'31',
            'SUB'       :'32',
            'ADDV'      :'33',
            'SUBV'      :'38',
            'DIV'       :'43',
            'MUL2'      :'44',
            'MUL4'      :'45',
            'MUL512'    :'46',
            'INR1'      :'48',
            'INR2'      :'51',
            'CLAC'      :'54',
            'ADDR3'     :'55'
    }


def Translate(filename):

    a_code = []
    m_code = []
    jumps = {}

    n = 0
    with open(filename) as fp:
        for line in fp:
            x = line.strip()
            if len(x) > 0:
                if not (x[0] == '/' and x[1] == '/'):
                    if (x[0] == 'L' and x[1] != 'D'):
                        jumps.update({x: str(n)})
                    else:
                        a_code.append(x)
                        print n, x
                        if(len(x) > 3 and x[0] == 'A' and x[1] == 'D' and x[2] == 'D' and x[3] == 'V'):        #ADDV instruction
                            n = n+3
                            #print n
                        elif(len(x) > 3 and x[0] == 'S' and x[1] == 'U' and x[2] == 'B' and x[3] == 'V'):        #SUBV instruction
                            n = n+3
                            #print n
                        elif(len(x) > 3 and x[0] == 'J' and x[1] == 'M' and x[2] == 'N' and x[3] == 'Z'):        #SUBV instruction
                            n = n+3
                            #print n
                        else:
                            n = n+1

    for x in range(0, len(a_code)):
        if "//" in a_code[x]:
            t = a_code[x].split("//")
            a_code[x] = t[0].strip();

    print a_code
    print jumps

    for x in range(0, len(a_code)):

        if(a_code[x] in UINS.keys()):
            m_code.append(UINS[a_code[x]])
            
        elif(a_code[x][0] == 'J' and a_code[x][1] == 'M' and a_code[x][2] == 'N'):        #JMNZ instruction
            temp = a_code[x].split(' ')
            m_code.append(UINS[temp[0]])
            m_code.append( str(int(jumps[temp[1]])/256) )
            m_code.append( str(int(jumps[temp[1]])%256) )
            
        elif(a_code[x][0] == 'A' and a_code[x][1] == 'D' and a_code[x][2] == 'D'):        #ADDV instruction
            temp = a_code[x].split(' ')
            m_code.append(UINS[temp[0]])
            m_code.append(str(int(temp[1])/256))
            m_code.append(str(int(temp[1])%256))
            
        elif(a_code[x][0] == 'S' and a_code[x][1] == 'U' and a_code[x][2] == 'B'):        #SUBV instruction
            temp = a_code[x].split(' ')
            print temp
            m_code.append(UINS[temp[0]])
            m_code.append(str(int(temp[1])/256))
            m_code.append(str(int(temp[1])%256))
            
    print m_code

    # output machine code to .mcode file
    var_name = 'ins_memory'
    index = 0
    out = ''
    for x in m_code:
        out += var_name + '[' + str(index) + '] <= 8\'d' + x + ";\n"
        index += 1
    out = out.strip()

    f = filename.split('.')
    outname = f[0] + ".mcode"

    file = open(outname, 'w')
    file.write(out)
    file.close();
            

path = os.path.dirname(os.path.realpath(__file__))

for file in os.listdir(path):
    if file.endswith(".navo"):
        Translate(os.path.join(path, file))




            
            
