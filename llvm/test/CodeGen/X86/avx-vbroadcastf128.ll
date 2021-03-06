; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i686-unknown-unknown -mattr=+avx | FileCheck %s --check-prefix=X32
; RUN: llc < %s -mtriple=x86_64-unknown-unknown -mattr=+avx | FileCheck %s --check-prefix=X64

define <4 x double> @test_broadcast_2f64_4f64(<2 x double> *%p) nounwind {
; X32-LABEL: test_broadcast_2f64_4f64:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_2f64_4f64:
; X64:       # %bb.0:
; X64-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X64-NEXT:    retq
 %1 = load <2 x double>, <2 x double> *%p
 %2 = shufflevector <2 x double> %1, <2 x double> undef, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
 ret <4 x double> %2
}

define <4 x i64> @test_broadcast_2i64_4i64(<2 x i64> *%p) nounwind {
; X32-LABEL: test_broadcast_2i64_4i64:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_2i64_4i64:
; X64:       # %bb.0:
; X64-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X64-NEXT:    retq
 %1 = load <2 x i64>, <2 x i64> *%p
 %2 = shufflevector <2 x i64> %1, <2 x i64> undef, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
 ret <4 x i64> %2
}

define <8 x float> @test_broadcast_4f32_8f32(<4 x float> *%p) nounwind {
; X32-LABEL: test_broadcast_4f32_8f32:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_4f32_8f32:
; X64:       # %bb.0:
; X64-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X64-NEXT:    retq
 %1 = load <4 x float>, <4 x float> *%p
 %2 = shufflevector <4 x float> %1, <4 x float> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
 ret <8 x float> %2
}

define <8 x i32> @test_broadcast_4i32_8i32(<4 x i32> *%p) nounwind {
; X32-LABEL: test_broadcast_4i32_8i32:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_4i32_8i32:
; X64:       # %bb.0:
; X64-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X64-NEXT:    retq
 %1 = load <4 x i32>, <4 x i32> *%p
 %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
 ret <8 x i32> %2
}

define <16 x i16> @test_broadcast_8i16_16i16(<8 x i16> *%p) nounwind {
; X32-LABEL: test_broadcast_8i16_16i16:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_8i16_16i16:
; X64:       # %bb.0:
; X64-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X64-NEXT:    retq
 %1 = load <8 x i16>, <8 x i16> *%p
 %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
 ret <16 x i16> %2
}

define <32 x i8> @test_broadcast_16i8_32i8(<16 x i8> *%p) nounwind {
; X32-LABEL: test_broadcast_16i8_32i8:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_16i8_32i8:
; X64:       # %bb.0:
; X64-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X64-NEXT:    retq
 %1 = load <16 x i8>, <16 x i8> *%p
 %2 = shufflevector <16 x i8> %1, <16 x i8> undef, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
 ret <32 x i8> %2
}

; PR38949 - https://bugs.llvm.org/show_bug.cgi?id=38949
; Don't limit the transform based on extra uses of the load itself (the store is a user of the load's chain value).

define void @subv_reuse_is_ok(<4 x float>* %a, <8 x float>* %b) {
; X32-LABEL: subv_reuse_is_ok:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X32-NEXT:    vmovups %ymm0, (%eax)
; X32-NEXT:    vzeroupper
; X32-NEXT:    retl
;
; X64-LABEL: subv_reuse_is_ok:
; X64:       # %bb.0:
; X64-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X64-NEXT:    vmovups %ymm0, (%rsi)
; X64-NEXT:    vzeroupper
; X64-NEXT:    retq
  %ld = load <4 x float>, <4 x float>* %a, align 1
  %splat128 = shufflevector <4 x float> %ld, <4 x float> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  store <8 x float> %splat128, <8 x float>* %b, align 16
  ret void
}

define <4 x double> @test_broadcast_2f64_4f64_reuse(<2 x double>* %p0, <2 x double>* %p1) {
; X32-LABEL: test_broadcast_2f64_4f64_reuse:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    vmovaps (%ecx), %xmm1
; X32-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X32-NEXT:    vmovaps %xmm1, (%eax)
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_2f64_4f64_reuse:
; X64:       # %bb.0:
; X64-NEXT:    vmovaps (%rdi), %xmm1
; X64-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X64-NEXT:    vmovaps %xmm1, (%rsi)
; X64-NEXT:    retq
 %1 = load <2 x double>, <2 x double>* %p0
 %2 = shufflevector <2 x double> %1, <2 x double> undef, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
 store <2 x double> %1, <2 x double>* %p1
 ret <4 x double> %2
}

define <4 x i64> @test_broadcast_2i64_4i64_reuse(<2 x i64>* %p0, <2 x i64>* %p1) {
; X32-LABEL: test_broadcast_2i64_4i64_reuse:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    vmovaps (%ecx), %xmm1
; X32-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X32-NEXT:    vmovaps %xmm1, (%eax)
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_2i64_4i64_reuse:
; X64:       # %bb.0:
; X64-NEXT:    vmovaps (%rdi), %xmm1
; X64-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X64-NEXT:    vmovaps %xmm1, (%rsi)
; X64-NEXT:    retq
 %1 = load <2 x i64>, <2 x i64>* %p0
 %2 = shufflevector <2 x i64> %1, <2 x i64> undef, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
 store <2 x i64> %1, <2 x i64>* %p1
 ret <4 x i64> %2
}

define <8 x float> @test_broadcast_4f32_8f32_reuse(<4 x float>* %p0, <4 x float>* %p1) {
; X32-LABEL: test_broadcast_4f32_8f32_reuse:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    vmovaps (%ecx), %xmm1
; X32-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X32-NEXT:    vmovaps %xmm1, (%eax)
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_4f32_8f32_reuse:
; X64:       # %bb.0:
; X64-NEXT:    vmovaps (%rdi), %xmm1
; X64-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X64-NEXT:    vmovaps %xmm1, (%rsi)
; X64-NEXT:    retq
 %1 = load <4 x float>, <4 x float>* %p0
 %2 = shufflevector <4 x float> %1, <4 x float> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
 store <4 x float> %1, <4 x float>* %p1
 ret <8 x float> %2
}

define <8 x i32> @test_broadcast_4i32_8i32_reuse(<4 x i32>* %p0, <4 x i32>* %p1) {
; X32-LABEL: test_broadcast_4i32_8i32_reuse:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    vmovaps (%ecx), %xmm1
; X32-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X32-NEXT:    vmovaps %xmm1, (%eax)
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_4i32_8i32_reuse:
; X64:       # %bb.0:
; X64-NEXT:    vmovaps (%rdi), %xmm1
; X64-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X64-NEXT:    vmovaps %xmm1, (%rsi)
; X64-NEXT:    retq
 %1 = load <4 x i32>, <4 x i32>* %p0
 %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
 store <4 x i32> %1, <4 x i32>* %p1
 ret <8 x i32> %2
}

define <16 x i16> @test_broadcast_8i16_16i16_reuse(<8 x i16> *%p0, <8 x i16> *%p1) nounwind {
; X32-LABEL: test_broadcast_8i16_16i16_reuse:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    vmovaps (%ecx), %xmm1
; X32-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X32-NEXT:    vmovaps %xmm1, (%eax)
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_8i16_16i16_reuse:
; X64:       # %bb.0:
; X64-NEXT:    vmovaps (%rdi), %xmm1
; X64-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X64-NEXT:    vmovaps %xmm1, (%rsi)
; X64-NEXT:    retq
 %1 = load <8 x i16>, <8 x i16> *%p0
 %2 = shufflevector <8 x i16> %1, <8 x i16> undef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
 store <8 x i16> %1, <8 x i16>* %p1
 ret <16 x i16> %2
}

define <32 x i8> @test_broadcast_16i8_32i8_reuse(<16 x i8> *%p0, <16 x i8> *%p1) nounwind {
; X32-LABEL: test_broadcast_16i8_32i8_reuse:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    vmovaps (%ecx), %xmm1
; X32-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X32-NEXT:    vmovaps %xmm1, (%eax)
; X32-NEXT:    retl
;
; X64-LABEL: test_broadcast_16i8_32i8_reuse:
; X64:       # %bb.0:
; X64-NEXT:    vmovaps (%rdi), %xmm1
; X64-NEXT:    vinsertf128 $1, %xmm1, %ymm1, %ymm0
; X64-NEXT:    vmovaps %xmm1, (%rsi)
; X64-NEXT:    retq
 %1 = load <16 x i8>, <16 x i8> *%p0
 %2 = shufflevector <16 x i8> %1, <16 x i8> undef, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
 store <16 x i8> %1, <16 x i8>* %p1
 ret <32 x i8> %2
}

define <8 x i32> @PR29088(<4 x i32>* %p0, <8 x float>* %p1) {
; X32-LABEL: PR29088:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    vxorps %xmm1, %xmm1, %xmm1
; X32-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X32-NEXT:    vmovaps %ymm1, (%eax)
; X32-NEXT:    retl
;
; X64-LABEL: PR29088:
; X64:       # %bb.0:
; X64-NEXT:    vxorps %xmm1, %xmm1, %xmm1
; X64-NEXT:    vbroadcastf128 {{.*#+}} ymm0 = mem[0,1,0,1]
; X64-NEXT:    vmovaps %ymm1, (%rsi)
; X64-NEXT:    retq
  %ld = load <4 x i32>, <4 x i32>* %p0
  store <8 x float> zeroinitializer, <8 x float>* %p1
  %shuf = shufflevector <4 x i32> %ld, <4 x i32> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  ret <8 x i32> %shuf
}
