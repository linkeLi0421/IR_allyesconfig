; ModuleID = '/llk/IR_all_yes/fs/afs/misc.c_pt.bc'
source_filename = "../fs/afs/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.afs_error = type { i16, i8 }

@__sancov_gen_cov_switch_values = internal global [77 x i64] [i64 75, i64 32, i64 13, i64 27, i64 30, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 363520, i64 363521, i64 363522, i64 363523, i64 363524, i64 363525, i64 363526, i64 363527, i64 363528, i64 363529, i64 363530, i64 363531, i64 363532, i64 363533, i64 363534, i64 363535, i64 363536, i64 363537, i64 363538, i64 363539, i64 363540, i64 363541, i64 363542, i64 363543, i64 363544, i64 363545, i64 363546, i64 363547, i64 19270400, i64 19270401, i64 19270402, i64 19270403, i64 19270404, i64 19270405, i64 19270406, i64 19270407, i64 19270408, i64 19270409, i64 19270410, i64 19270411, i64 19270412, i64 49733376, i64 49733377, i64 49733388, i64 49733391, i64 49733392, i64 49733395, i64 49733396, i64 49733402, i64 49733403, i64 49733405, i64 49733406, i64 49733410, i64 49733411, i64 49733412, i64 49733414, i64 49733415, i64 49733449, i64 49733496, i64 49733497, i64 4294966841]
@__sancov_gen_cov_switch_values.1 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 4294967164, i64 4294967183, i64 4294967184, i64 4294967185, i64 4294967186, i64 4294967192, i64 4294967193, i64 4294967195, i64 4294967197, i64 4294967232, i64 4294967234, i64 4294967284]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 65426, i64 65474]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 65472, i64 65524]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @afs_abort_to_error(i32 noundef %abort_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %abort_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %abort_code, label %sw.default [
    i32 13, label %entry.return_crit_edge
    i32 27, label %sw.bb1
    i32 30, label %sw.bb2
    i32 101, label %sw.bb3
    i32 102, label %sw.bb4
    i32 103, label %sw.bb5
    i32 104, label %sw.bb6
    i32 105, label %sw.bb7
    i32 106, label %sw.bb8
    i32 107, label %sw.bb9
    i32 108, label %sw.bb10
    i32 109, label %sw.bb11
    i32 110, label %sw.bb12
    i32 111, label %sw.bb13
    i32 363520, label %sw.bb14
    i32 363521, label %sw.bb15
    i32 363522, label %sw.bb16
    i32 363523, label %sw.bb17
    i32 363524, label %sw.bb18
    i32 363525, label %sw.bb19
    i32 363526, label %sw.bb20
    i32 363527, label %sw.bb21
    i32 363528, label %sw.bb22
    i32 363529, label %sw.bb23
    i32 363530, label %sw.bb24
    i32 363531, label %sw.bb25
    i32 363532, label %sw.bb26
    i32 363533, label %sw.bb27
    i32 363534, label %sw.bb28
    i32 363535, label %sw.bb29
    i32 363536, label %sw.bb30
    i32 363537, label %sw.bb31
    i32 363538, label %sw.bb32
    i32 363539, label %sw.bb33
    i32 363540, label %sw.bb34
    i32 363541, label %sw.bb35
    i32 363542, label %sw.bb36
    i32 363543, label %sw.bb37
    i32 363544, label %sw.bb38
    i32 363545, label %sw.bb39
    i32 363546, label %entry.return_crit_edge75
    i32 363547, label %sw.bb41
    i32 49733376, label %sw.bb42
    i32 49733377, label %sw.bb43
    i32 49733388, label %entry.return_crit_edge76
    i32 49733391, label %sw.bb45
    i32 49733392, label %sw.bb46
    i32 49733395, label %sw.bb47
    i32 49733396, label %sw.bb48
    i32 49733402, label %sw.bb49
    i32 49733403, label %sw.bb50
    i32 49733405, label %sw.bb51
    i32 49733406, label %sw.bb52
    i32 49733410, label %sw.bb53
    i32 49733411, label %sw.bb54
    i32 49733412, label %sw.bb55
    i32 49733414, label %sw.bb56
    i32 49733415, label %sw.bb57
    i32 49733449, label %sw.bb58
    i32 49733497, label %sw.bb59
    i32 49733496, label %sw.bb60
    i32 19270400, label %sw.bb61
    i32 19270401, label %sw.bb62
    i32 19270402, label %sw.bb63
    i32 19270403, label %sw.bb64
    i32 19270404, label %sw.bb65
    i32 19270405, label %sw.bb66
    i32 19270406, label %sw.bb67
    i32 19270407, label %sw.bb68
    i32 19270408, label %sw.bb69
    i32 19270409, label %sw.bb70
    i32 19270410, label %sw.bb71
    i32 19270411, label %sw.bb72
    i32 19270412, label %sw.bb73
    i32 -455, label %sw.bb74
  ]

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb69:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge75, %entry.return_crit_edge76
  %retval.0 = phi i32 [ -121, %sw.default ], [ -524, %sw.bb74 ], [ -129, %sw.bb73 ], [ -129, %sw.bb72 ], [ -129, %sw.bb71 ], [ -127, %sw.bb70 ], [ -129, %sw.bb69 ], [ -129, %sw.bb68 ], [ -129, %sw.bb67 ], [ -129, %sw.bb66 ], [ -71, %sw.bb65 ], [ -129, %sw.bb64 ], [ -129, %sw.bb63 ], [ -71, %sw.bb62 ], [ -71, %sw.bb61 ], [ -122, %sw.bb60 ], [ -123, %sw.bb59 ], [ -75, %sw.bb58 ], [ -40, %sw.bb57 ], [ -39, %sw.bb56 ], [ -37, %sw.bb55 ], [ -36, %sw.bb54 ], [ -35, %sw.bb53 ], [ -31, %sw.bb52 ], [ -30, %sw.bb51 ], [ -28, %sw.bb50 ], [ -27, %sw.bb49 ], [ -21, %sw.bb48 ], [ -20, %sw.bb47 ], [ -17, %sw.bb46 ], [ -16, %sw.bb45 ], [ -2, %sw.bb43 ], [ -1, %sw.bb42 ], [ -121, %sw.bb41 ], [ -22, %sw.bb39 ], [ -121, %sw.bb38 ], [ -22, %sw.bb37 ], [ -56, %sw.bb36 ], [ -16, %sw.bb35 ], [ -22, %sw.bb34 ], [ -22, %sw.bb33 ], [ -22, %sw.bb32 ], [ -22, %sw.bb31 ], [ -22, %sw.bb30 ], [ -2, %sw.bb29 ], [ -17, %sw.bb28 ], [ -2, %sw.bb27 ], [ -27, %sw.bb26 ], [ -22, %sw.bb25 ], [ -22, %sw.bb24 ], [ -22, %sw.bb23 ], [ -22, %sw.bb22 ], [ -22, %sw.bb21 ], [ -123, %sw.bb20 ], [ -123, %sw.bb19 ], [ -123, %sw.bb18 ], [ -121, %sw.bb17 ], [ -17, %sw.bb16 ], [ -121, %sw.bb15 ], [ -17, %sw.bb14 ], [ -6, %sw.bb13 ], [ -16, %sw.bb12 ], [ -122, %sw.bb11 ], [ -28, %sw.bb10 ], [ -17, %sw.bb9 ], [ -2, %sw.bb8 ], [ -5, %sw.bb7 ], [ -17, %sw.bb6 ], [ -123, %sw.bb5 ], [ -2, %sw.bb4 ], [ -5, %sw.bb3 ], [ -30, %sw.bb2 ], [ -27, %sw.bb1 ], [ -13, %entry.return_crit_edge ], [ -13, %entry.return_crit_edge75 ], [ -13, %entry.return_crit_edge76 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @afs_prioritise_error(ptr nocapture noundef %e, i32 noundef %error, i32 noundef %abort_code) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %error, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 -110, label %entry.sw.bb7thread-pre-split_crit_edge
    i32 -62, label %entry.sw.bb7thread-pre-split_crit_edge95
    i32 -12, label %entry.sw.bb19_crit_edge
    i32 -64, label %entry.sw.bb19_crit_edge96
    i32 -132, label %sw.bb26thread-pre-split
    i32 -99, label %entry.sw.bb33_crit_edge
    i32 -101, label %sw.bb40thread-pre-split
    i32 -113, label %entry.sw.bb47_crit_edge
    i32 -112, label %sw.bb54thread-pre-split
    i32 -111, label %entry.sw.bb61_crit_edge
    i32 -104, label %entry.sw.bb68_crit_edge
    i32 -103, label %sw.bb73
  ]

entry.sw.bb68_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb68

entry.sw.bb61_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb61

entry.sw.bb47_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb47

entry.sw.bb33_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb33

entry.sw.bb19_crit_edge96:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb19

entry.sw.bb19_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb19

entry.sw.bb7thread-pre-split_crit_edge95:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb7thread-pre-split

entry.sw.bb7thread-pre-split_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb7thread-pre-split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default:                                       ; preds = %entry
  %1 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %e, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %2, label %sw.default.sw.bb7_crit_edge [
    i16 -110, label %sw.default.return_crit_edge
    i16 -62, label %sw.default.return_crit_edge97
  ]

sw.default.return_crit_edge97:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default.sw.bb7_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb7

sw.bb7thread-pre-split:                           ; preds = %entry.sw.bb7thread-pre-split_crit_edge, %entry.sw.bb7thread-pre-split_crit_edge95
  %4 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %4)
  %.pr = load i16, ptr %e, align 2
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb7thread-pre-split, %sw.default.sw.bb7_crit_edge
  %5 = phi i16 [ %.pr, %sw.bb7thread-pre-split ], [ %2, %sw.default.sw.bb7_crit_edge ]
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %5, label %sw.bb7.sw.bb19_crit_edge [
    i16 -12, label %sw.bb7.return_crit_edge
    i16 -64, label %sw.bb7.return_crit_edge98
  ]

sw.bb7.return_crit_edge98:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb7.sw.bb19_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb7.sw.bb19_crit_edge, %entry.sw.bb19_crit_edge, %entry.sw.bb19_crit_edge96
  %7 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %e, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -132, i16 %8)
  %cmp22 = icmp eq i16 %8, -132
  br i1 %cmp22, label %sw.bb19.return_crit_edge, label %sw.bb19.sw.bb26_crit_edge

sw.bb19.sw.bb26_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb26

sw.bb19.return_crit_edge:                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb26thread-pre-split:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %9)
  %.pr92 = load i16, ptr %e, align 2
  br label %sw.bb26

sw.bb26:                                          ; preds = %sw.bb26thread-pre-split, %sw.bb19.sw.bb26_crit_edge
  %10 = phi i16 [ %.pr92, %sw.bb26thread-pre-split ], [ %8, %sw.bb19.sw.bb26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -99, i16 %10)
  %cmp29 = icmp eq i16 %10, -99
  br i1 %cmp29, label %sw.bb26.return_crit_edge, label %sw.bb26.sw.bb33_crit_edge

sw.bb26.sw.bb33_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb33

sw.bb26.return_crit_edge:                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb33:                                          ; preds = %sw.bb26.sw.bb33_crit_edge, %entry.sw.bb33_crit_edge
  %11 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %e, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -101, i16 %12)
  %cmp36 = icmp eq i16 %12, -101
  br i1 %cmp36, label %sw.bb33.return_crit_edge, label %sw.bb33.sw.bb40_crit_edge

sw.bb33.sw.bb40_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb40

sw.bb33.return_crit_edge:                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb40thread-pre-split:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %13 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %13)
  %.pr93 = load i16, ptr %e, align 2
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb40thread-pre-split, %sw.bb33.sw.bb40_crit_edge
  %14 = phi i16 [ %.pr93, %sw.bb40thread-pre-split ], [ %12, %sw.bb33.sw.bb40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -113, i16 %14)
  %cmp43 = icmp eq i16 %14, -113
  br i1 %cmp43, label %sw.bb40.return_crit_edge, label %sw.bb40.sw.bb47_crit_edge

sw.bb40.sw.bb47_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb47

sw.bb40.return_crit_edge:                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb47:                                          ; preds = %sw.bb40.sw.bb47_crit_edge, %entry.sw.bb47_crit_edge
  %15 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %e, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -112, i16 %16)
  %cmp50 = icmp eq i16 %16, -112
  br i1 %cmp50, label %sw.bb47.return_crit_edge, label %sw.bb47.sw.bb54_crit_edge

sw.bb47.sw.bb54_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb54

sw.bb47.return_crit_edge:                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb54thread-pre-split:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %17 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr94 = load i16, ptr %e, align 2
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb54thread-pre-split, %sw.bb47.sw.bb54_crit_edge
  %18 = phi i16 [ %.pr94, %sw.bb54thread-pre-split ], [ %16, %sw.bb47.sw.bb54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -111, i16 %18)
  %cmp57 = icmp eq i16 %18, -111
  br i1 %cmp57, label %sw.bb54.return_crit_edge, label %sw.bb54.sw.bb61_crit_edge

sw.bb54.sw.bb61_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb61

sw.bb54.return_crit_edge:                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb61:                                          ; preds = %sw.bb54.sw.bb61_crit_edge, %entry.sw.bb61_crit_edge
  %19 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %e, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -104, i16 %20)
  %cmp64 = icmp eq i16 %20, -104
  br i1 %cmp64, label %sw.bb61.return_crit_edge, label %sw.bb61.sw.bb68_crit_edge

sw.bb61.sw.bb68_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb68

sw.bb61.return_crit_edge:                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb68:                                          ; preds = %sw.bb61.sw.bb68_crit_edge, %entry.sw.bb68_crit_edge
  %responded = getelementptr inbounds %struct.afs_error, ptr %e, i32 0, i32 1
  %21 = ptrtoint ptr %responded to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %responded, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %sw.bb68.return.sink.split_crit_edge, label %sw.bb68.return_crit_edge

sw.bb68.return_crit_edge:                         ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb68.return.sink.split_crit_edge:              ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #4
  br label %return.sink.split

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %responded74 = getelementptr inbounds %struct.afs_error, ptr %e, i32 0, i32 1
  %23 = ptrtoint ptr %responded74 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %responded74, align 2
  %call = tail call i32 @afs_abort_to_error(i32 noundef %abort_code)
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb73, %sw.bb68.return.sink.split_crit_edge
  %call.sink = phi i32 [ %call, %sw.bb73 ], [ %error, %sw.bb68.return.sink.split_crit_edge ]
  %conv75 = trunc i32 %call.sink to i16
  %24 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv75, ptr %e, align 2
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb68.return_crit_edge, %sw.bb61.return_crit_edge, %sw.bb54.return_crit_edge, %sw.bb47.return_crit_edge, %sw.bb40.return_crit_edge, %sw.bb33.return_crit_edge, %sw.bb26.return_crit_edge, %sw.bb19.return_crit_edge, %sw.bb7.return_crit_edge, %sw.bb7.return_crit_edge98, %sw.default.return_crit_edge, %sw.default.return_crit_edge97, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
