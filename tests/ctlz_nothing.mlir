// RUN: mlir-opt %s | FileCheck %s


// CHECK: func @do_nothing
func.func @do_nothing(){
// CHECK: return
  func.return
}
