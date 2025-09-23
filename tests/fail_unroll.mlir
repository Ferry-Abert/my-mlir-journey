// fail_unroll.mlir
// RUN: tutorial-opt %s --affine-full-unroll -verify-diagnostics

func.func @test_dynamic_bound(%buffer: memref<4xi32>, %dy_bound: index) {
  affine.for %i = 0 to %dy_bound {
    %v = affine.load %buffer[%i] : memref<4xi32>
  }
  return
}
