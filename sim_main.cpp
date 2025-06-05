#include "Vtop.h"
#include "verilated.h"
#include "verilated_vpi.h"
#include <iostream>

int main(int argc, char** argv) {
    VerilatedContext* contextp = new VerilatedContext;
    contextp->commandArgs(argc, argv);
    Vtop* top = new Vtop{contextp};
    contextp->internalsDump();

    vpiHandle root = NULL;
    vpiHandle sig = NULL;

    vpiHandle itr = vpi_iterate( vpiModule, 0 );
    while ( ( root = vpi_scan( itr ) ) != NULL )
    {
        sig = vpi_handle_by_name( "clk", root );
    }

    std::cout << "sig: " << sig << std::endl;

    delete top;
    delete contextp;
    return 0;
}
