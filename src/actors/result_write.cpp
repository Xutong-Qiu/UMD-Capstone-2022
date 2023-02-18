/*******************************************************************************
@ddblock_begin copyright

Copyright (c) 1997-2022
Maryland DSPCAD Research Group, The University of Maryland at College Park 

Permission is hereby granted, without written agreement and without
license or royalty fees, to use, copy, modify, and distribute this
software and its documentation for any purpose, provided that the above
copyright notice and the following two paragraphs appear in all copies
of this software.

IN NO EVENT SHALL THE UNIVERSITY OF MARYLAND BE LIABLE TO ANY PARTY
FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES
ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF
THE UNIVERSITY OF MARYLAND HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGE.

THE UNIVERSITY OF MARYLAND SPECIFICALLY DISCLAIMS ANY WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE SOFTWARE
PROVIDED HEREUNDER IS ON AN "AS IS" BASIS, AND THE UNIVERSITY OF
MARYLAND HAS NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES,
ENHANCEMENTS, OR MODIFICATIONS.

@ddblock_end copyright
*******************************************************************************/

#include <iostream>
#include <typeinfo>
#include "result_write.h"

using namespace std;

result_write::result_write (welt_c_fifo_pointer in_fifo, char* output_file_name) {
    in = (welt_c_fifo_pointer)in_fifo;
    file_name = output_file_name;
    reset();
}

bool result_write::enable() {
    bool result = false;
    switch (mode) {
        case FILE_SINK_MODE_PROCESS:
            result =(welt_c_fifo_population(in) > 0);
            break;
        case FILE_SINK_MODE_ERROR:
            /* Modes that don't produce or consume data are always enabled. */
            result = true;
            break;
        default:
            result = false;
            break;
    }
    return result;
}

void result_write::invoke() {
    switch (mode) {
        case FILE_SINK_MODE_PROCESS: {
            
            welt_c_fifo_read(in, &data);
            //outStream.open(file_name, std::ios_base::app);
            outStream << data<<endl;
            //outStream.close();
            /*
            FILE* f = fopen(this->file_name, "a");
            fprintf(f,"%d",data);
            */
            mode = FILE_SINK_MODE_PROCESS;
            break;
        }
        case FILE_SINK_MODE_ERROR: {
            /* Remain in the same mode, and do nothing. */
            break;
        }
        default:
            mode = FILE_SINK_MODE_ERROR;
        break;
    }

}

void result_write::reset() {
    /* Close the file it is open, and then open/re-open the file so that
    subsequent invocations of the PROCESS MODE write from the beginning of 
    the file. 
    */
    if (outStream.is_open()) {
        outStream.close();
    }
    outStream.open(file_name, std::ios_base::app);
    if (outStream.fail()) {
        cerr << "Could not open file \"" << file_name << "\"" << endl;
        mode = FILE_SINK_MODE_ERROR;
    } else {
        mode = FILE_SINK_MODE_PROCESS;
    }
}

result_write::~result_write() {
    cout << "delete result write actor" << endl;

}

void result_write::connect(welt_cpp_graph *graph) {
    int port_index;
    int direction;

    direction = GRAPH_OUT_CONN_DIRECTION;
    port_index = 0;
    graph->add_connection( this, port_index, direction);

}

