; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_target.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_target.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@nfp_target_cpp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013NFP target: Invalid CPP target: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfp_target_cpp\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp_target.c\00", [40 x i8] zeroinitializer }, align 32
@nfp_target_cpp._entry_ptr = internal global ptr @nfp_target_cpp._entry, section ".printk_index", align 4
@nfp_target_cpp._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013NFP target: Can't encode CPP address: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nfp_target_cpp._entry_ptr.5 = internal global ptr @nfp_target_cpp._entry.3, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 5, i64 0, i64 1, i64 2, i64 6, i64 7, i64 9, i64 10, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 8192]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 8192]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 8192]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 8192]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 8192]
@__sancov_gen_cov_switch_values.11 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 256, i64 512, i64 768, i64 8192, i64 65536]
@__sancov_gen_cov_switch_values.12 = internal global [11 x i64] [i64 9, i64 32, i64 5376, i64 69632, i64 69888, i64 70912, i64 135680, i64 136448, i64 200960, i64 201216, i64 201984]
@__sancov_gen_cov_switch_values.13 = internal global [13 x i64] [i64 11, i64 32, i64 4608, i64 5376, i64 5632, i64 70144, i64 70912, i64 71168, i64 135680, i64 136192, i64 136448, i64 136704, i64 201216]
@__sancov_gen_cov_switch_values.14 = internal global [11 x i64] [i64 9, i64 32, i64 5376, i64 69632, i64 69888, i64 70912, i64 135680, i64 136448, i64 200960, i64 201216, i64 201984]
@__sancov_gen_cov_switch_values.15 = internal global [13 x i64] [i64 11, i64 32, i64 4608, i64 5376, i64 5632, i64 70144, i64 70912, i64 71168, i64 135680, i64 136192, i64 136448, i64 136704, i64 201216]
@__sancov_gen_cov_switch_values.16 = internal global [11 x i64] [i64 9, i64 32, i64 5376, i64 69632, i64 69888, i64 70912, i64 135680, i64 136448, i64 200960, i64 201216, i64 201984]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 256, i64 512, i64 768, i64 8192]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 8192]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 8192]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 256, i64 512, i64 8192]
@__sancov_gen_cov_switch_values.21 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 256, i64 512, i64 768, i64 8192, i64 65536, i64 65792, i64 66048, i64 66304, i64 73728, i64 131072, i64 131328, i64 131584, i64 131840, i64 197120, i64 197376]
@__sancov_gen_cov_switch_values.22 = internal global [28 x i64] [i64 26, i64 32, i64 0, i64 256, i64 512, i64 1024, i64 1536, i64 2304, i64 2560, i64 3584, i64 6144, i64 6400, i64 8192, i64 66048, i64 66560, i64 67072, i64 67840, i64 69376, i64 71680, i64 71936, i64 132608, i64 133120, i64 133376, i64 133632, i64 135424, i64 196608, i64 198656, i64 198912]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 8192]
@__sancov_gen_cov_switch_values.24 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 6, i64 7, i64 9, i64 10, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 14]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 14]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 14]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 14]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [44 x i64] [i64 42, i64 32, i64 0, i64 256, i64 768, i64 1024, i64 1280, i64 1536, i64 1792, i64 2048, i64 2304, i64 2560, i64 3328, i64 3840, i64 7168, i64 7936, i64 8192, i64 65536, i64 65792, i64 68864, i64 72704, i64 73472, i64 73728, i64 131072, i64 131328, i64 131840, i64 132096, i64 134400, i64 138240, i64 139008, i64 139264, i64 196608, i64 196864, i64 197632, i64 197888, i64 198144, i64 198400, i64 198656, i64 198912, i64 199168, i64 200448, i64 203776, i64 204544, i64 204800]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 711, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [59 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_target.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 733, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @nfp_target_cpp._entry, ptr @nfp_target_cpp._entry.3, ptr @nfp_target_cpp._entry_ptr, ptr @nfp_target_cpp._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_target_cpp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_target_cpp._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_target_pushpull(i32 noundef %cpp_id, i64 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %cpp_id, 24
  %0 = trunc i32 %shr.i to i5
  %1 = zext i5 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i5 %0, label %entry.return_crit_edge [
    i5 1, label %sw.bb
    i5 2, label %sw.bb2
    i5 6, label %sw.bb4
    i5 7, label %sw.bb6
    i5 9, label %sw.bb8
    i5 10, label %sw.bb10
    i5 12, label %sw.bb14
    i5 14, label %sw.bb16
    i5 15, label %sw.bb18
    i5 0, label %sw.bb20
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  %and.i = and i64 %address, 4194303
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048576, i64 %and.i)
  %cmp.i = icmp ult i64 %and.i, 1048576
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  %and.i.i = and i32 %cpp_id, 16776960
  %2 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 0, label %if.then.i.return_crit_edge
    i32 256, label %sw.bb1.i.i
    i32 8192, label %sw.bb2.i.i
  ]

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097152, i64 %and.i)
  %cmp1.i = icmp ult i64 %and.i, 2097152
  br i1 %cmp1.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  %and.i15.i = and i32 %cpp_id, 16776960
  %3 = zext i32 %and.i15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and.i15.i, label %sw.default.i18.i [
    i32 0, label %if.then2.i.return_crit_edge
    i32 256, label %sw.bb1.i16.i
    i32 8192, label %sw.bb2.i17.i
  ]

if.then2.i.return_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i16.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i17.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i18.i:                                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 3145728, i64 %and.i)
  %cmp5.i = icmp ult i64 %and.i, 3145728
  %and.i20.i = and i32 %cpp_id, 16776960
  br i1 %cmp5.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  %4 = zext i32 %and.i20.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and.i20.i, label %sw.default.i23.i [
    i32 0, label %if.then6.i.return_crit_edge
    i32 256, label %sw.bb1.i21.i
    i32 8192, label %sw.bb2.i22.i
  ]

if.then6.i.return_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i21.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i22.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i23.i:                                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end8.i:                                        ; preds = %if.end4.i
  %5 = zext i32 %and.i20.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and.i20.i, label %sw.default.i28.i [
    i32 0, label %if.end8.i.return_crit_edge
    i32 256, label %sw.bb1.i26.i
    i32 8192, label %sw.bb2.i27.i
  ]

if.end8.i.return_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i26.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i27.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i28.i:                                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2:                                           ; preds = %entry
  %and.i35 = and i32 %cpp_id, 16776960
  %6 = zext i32 %and.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and.i35, label %sw.default.i [
    i32 0, label %sw.bb2.return_crit_edge
    i32 256, label %sw.bb1.i
    i32 8192, label %sw.bb4.i
  ]

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4:                                           ; preds = %entry
  %and.i37 = and i32 %cpp_id, 16776960
  %7 = zext i32 %and.i37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and.i37, label %sw.default.i.i39 [
    i32 65536, label %sw.bb4.return_crit_edge
    i32 512, label %sw.bb4.return_crit_edge94
    i32 768, label %sw.bb2.i
    i32 0, label %sw.bb4.return_crit_edge95
    i32 256, label %sw.bb1.i.i38
    i32 8192, label %sw.bb4.i.i
  ]

sw.bb4.return_crit_edge95:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.return_crit_edge94:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i.i38:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i.i39:                                 ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 137438953472, i64 %address)
  %cmp.i41 = icmp ult i64 %address, 137438953472
  br i1 %cmp.i41, label %if.then.i43, label %if.else.i

if.then.i43:                                      ; preds = %sw.bb6
  %and.i.i42 = and i32 %cpp_id, 16776960
  %8 = zext i32 %and.i.i42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and.i.i42, label %sw.default.i.i46 [
    i32 69632, label %if.then.i43.return_crit_edge
    i32 69888, label %if.then.i43.return_crit_edge96
    i32 200960, label %sw.bb2.i.i44
    i32 135680, label %sw.bb3.i.i
    i32 201216, label %sw.bb4.i.i45
    i32 5376, label %sw.bb5.i.i
    i32 70912, label %sw.bb6.i.i
    i32 136448, label %sw.bb7.i.i
    i32 201984, label %sw.bb8.i.i
  ]

if.then.i43.return_crit_edge96:                   ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then.i43.return_crit_edge:                     ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i.i44:                                     ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3.i.i:                                       ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i.i45:                                     ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb5.i.i:                                       ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb6.i.i:                                       ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb7.i.i:                                       ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb8.i.i:                                       ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i.i46:                                 ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i = tail call fastcc i32 @nfp6000_mu_common(i32 noundef %cpp_id) #3
  br label %return

if.else.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp8(i64 549755813888, i64 %address)
  %cmp1.i47 = icmp ult i64 %address, 549755813888
  br i1 %cmp1.i47, label %if.then2.i48, label %if.else4.i

if.then2.i48:                                     ; preds = %if.else.i
  %and.i31.i = and i32 %cpp_id, 16776960
  %9 = zext i32 %and.i31.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and.i31.i, label %sw.default.i36.i [
    i32 4608, label %if.then2.i48.return_crit_edge
    i32 70144, label %if.then2.i48.return_crit_edge97
    i32 135680, label %sw.bb2.i32.i
    i32 201216, label %sw.bb3.i33.i
    i32 136192, label %sw.bb4.i34.i
    i32 5376, label %if.then2.i48.return_crit_edge98
    i32 70912, label %if.then2.i48.return_crit_edge99
    i32 136448, label %if.then2.i48.return_crit_edge100
    i32 5632, label %if.then2.i48.return_crit_edge101
    i32 71168, label %if.then2.i48.return_crit_edge102
    i32 136704, label %if.then2.i48.return_crit_edge103
  ]

if.then2.i48.return_crit_edge103:                 ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then2.i48.return_crit_edge102:                 ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then2.i48.return_crit_edge101:                 ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then2.i48.return_crit_edge100:                 ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then2.i48.return_crit_edge99:                  ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then2.i48.return_crit_edge98:                  ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then2.i48.return_crit_edge97:                  ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then2.i48.return_crit_edge:                    ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i32.i:                                     ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3.i33.i:                                     ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i34.i:                                     ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i36.i:                                 ; preds = %if.then2.i48
  call void @__sanitizer_cov_trace_pc() #5
  %call.i35.i = tail call fastcc i32 @nfp6000_mu_common(i32 noundef %cpp_id) #3
  br label %return

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 652835028992, i64 %address)
  %cmp5.i49 = icmp ult i64 %address, 652835028992
  br i1 %cmp5.i49, label %if.then6.i50, label %if.else8.i

if.then6.i50:                                     ; preds = %if.else4.i
  %and.i38.i = and i32 %cpp_id, 16776960
  %10 = zext i32 %and.i38.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and.i38.i, label %sw.default.i47.i [
    i32 69632, label %if.then6.i50.return_crit_edge
    i32 69888, label %if.then6.i50.return_crit_edge104
    i32 200960, label %sw.bb2.i39.i
    i32 135680, label %sw.bb3.i40.i
    i32 201216, label %sw.bb4.i41.i
    i32 5376, label %sw.bb5.i42.i
    i32 70912, label %sw.bb6.i43.i
    i32 136448, label %sw.bb7.i44.i
    i32 201984, label %sw.bb8.i45.i
  ]

if.then6.i50.return_crit_edge104:                 ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then6.i50.return_crit_edge:                    ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i39.i:                                     ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3.i40.i:                                     ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i41.i:                                     ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb5.i42.i:                                     ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb6.i43.i:                                     ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb7.i44.i:                                     ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb8.i45.i:                                     ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i47.i:                                 ; preds = %if.then6.i50
  call void @__sanitizer_cov_trace_pc() #5
  %call.i46.i = tail call fastcc i32 @nfp6000_mu_common(i32 noundef %cpp_id) #3
  br label %return

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 670014898176, i64 %address)
  %cmp9.i = icmp ult i64 %address, 670014898176
  br i1 %cmp9.i, label %if.then10.i, label %if.else12.i

if.then10.i:                                      ; preds = %if.else8.i
  %and.i50.i = and i32 %cpp_id, 16776960
  %11 = zext i32 %and.i50.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and.i50.i, label %sw.default.i55.i [
    i32 4608, label %if.then10.i.return_crit_edge
    i32 70144, label %if.then10.i.return_crit_edge105
    i32 135680, label %sw.bb2.i51.i
    i32 201216, label %sw.bb3.i52.i
    i32 136192, label %sw.bb4.i53.i
    i32 5376, label %if.then10.i.return_crit_edge106
    i32 70912, label %if.then10.i.return_crit_edge107
    i32 136448, label %if.then10.i.return_crit_edge108
    i32 5632, label %if.then10.i.return_crit_edge109
    i32 71168, label %if.then10.i.return_crit_edge110
    i32 136704, label %if.then10.i.return_crit_edge111
  ]

if.then10.i.return_crit_edge111:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then10.i.return_crit_edge110:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then10.i.return_crit_edge109:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then10.i.return_crit_edge108:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then10.i.return_crit_edge107:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then10.i.return_crit_edge106:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then10.i.return_crit_edge105:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then10.i.return_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i51.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3.i52.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i53.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i55.i:                                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i54.i = tail call fastcc i32 @nfp6000_mu_common(i32 noundef %cpp_id) #3
  br label %return

if.else12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 687194767360, i64 %address)
  %cmp13.i = icmp ult i64 %address, 687194767360
  br i1 %cmp13.i, label %if.then14.i, label %if.else16.i

if.then14.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i58.i = tail call fastcc i32 @nfp6000_mu_common(i32 noundef %cpp_id) #3
  br label %return

if.else16.i:                                      ; preds = %if.else12.i
  %and.i59.i = and i32 %cpp_id, 16776960
  %12 = zext i32 %and.i59.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and.i59.i, label %sw.default.i68.i [
    i32 69632, label %if.else16.i.return_crit_edge
    i32 69888, label %if.else16.i.return_crit_edge112
    i32 200960, label %sw.bb2.i60.i
    i32 135680, label %sw.bb3.i61.i
    i32 201216, label %sw.bb4.i62.i
    i32 5376, label %sw.bb5.i63.i
    i32 70912, label %sw.bb6.i64.i
    i32 136448, label %sw.bb7.i65.i
    i32 201984, label %sw.bb8.i66.i
  ]

if.else16.i.return_crit_edge112:                  ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.else16.i.return_crit_edge:                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i60.i:                                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3.i61.i:                                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i62.i:                                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb5.i63.i:                                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb6.i64.i:                                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb7.i65.i:                                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb8.i66.i:                                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i68.i:                                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i67.i = tail call fastcc i32 @nfp6000_mu_common(i32 noundef %cpp_id) #3
  br label %return

sw.bb8:                                           ; preds = %entry
  %and.i51 = and i32 %cpp_id, 16776960
  %13 = zext i32 %and.i51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %and.i51, label %sw.default.i.i55 [
    i32 512, label %sw.bb8.return_crit_edge
    i32 768, label %sw.bb1.i52
    i32 0, label %sw.bb8.return_crit_edge113
    i32 256, label %sw.bb1.i.i53
    i32 8192, label %sw.bb4.i.i54
  ]

sw.bb8.return_crit_edge113:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb8.return_crit_edge:                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i52:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i.i53:                                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i.i54:                                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i.i55:                                 ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %address)
  %cmp = icmp ult i64 %address, 65536
  %and.i57 = and i32 %cpp_id, 16776960
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb10
  %14 = zext i32 %and.i57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and.i57, label %sw.default.i60 [
    i32 0, label %if.then.return_crit_edge
    i32 256, label %sw.bb1.i58
    i32 8192, label %sw.bb4.i59
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i58:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i59:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i60:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.else:                                          ; preds = %sw.bb10
  %15 = zext i32 %and.i57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and.i57, label %sw.default.i66 [
    i32 0, label %if.else.return_crit_edge
    i32 256, label %sw.bb1.i64
    i32 8192, label %sw.bb4.i65
  ]

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i64:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i65:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i66:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb14:                                          ; preds = %entry
  %and.i69 = and i32 %cpp_id, 16776960
  %16 = zext i32 %and.i69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and.i69, label %sw.default.i.i71 [
    i32 512, label %sw.bb14.return_crit_edge
    i32 0, label %return.fold.split.i
    i32 256, label %sw.bb14.return_crit_edge114
    i32 8192, label %sw.bb4.i.i70
  ]

sw.bb14.return_crit_edge114:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb14.return_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i.i70:                                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i.i71:                                 ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return.fold.split.i:                              ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb16:                                          ; preds = %entry
  %and.i73 = and i32 %cpp_id, 16776960
  %17 = zext i32 %and.i73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and.i73, label %sw.default.i.i78 [
    i32 65536, label %sw.bb16.return_crit_edge
    i32 131072, label %sw.bb1.i74
    i32 65792, label %sw.bb2.i75
    i32 131328, label %sw.bb3.i
    i32 512, label %sw.bb16.return_crit_edge115
    i32 66048, label %sw.bb16.return_crit_edge116
    i32 131584, label %sw.bb16.return_crit_edge117
    i32 197120, label %sw.bb16.return_crit_edge118
    i32 768, label %sw.bb8.i
    i32 66304, label %sw.bb9.i
    i32 131840, label %sw.bb10.i
    i32 197376, label %sw.bb11.i
    i32 73728, label %sw.bb12.i
    i32 0, label %sw.bb16.return_crit_edge119
    i32 256, label %sw.bb1.i.i76
    i32 8192, label %sw.bb4.i.i77
  ]

sw.bb16.return_crit_edge119:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb16.return_crit_edge118:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb16.return_crit_edge117:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb16.return_crit_edge116:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb16.return_crit_edge115:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb16.return_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i74:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i75:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3.i:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb8.i:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb9.i:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb10.i:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb11.i:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb12.i:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i.i76:                                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i.i77:                                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i.i78:                                 ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18:                                          ; preds = %entry
  %and.i80 = and i32 %cpp_id, 16776960
  %18 = zext i32 %and.i80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and.i80, label %sw.default.i.i85 [
    i32 196608, label %sw.bb18.return_crit_edge
    i32 512, label %sw.bb18.return_crit_edge120
    i32 66048, label %sw.bb18.return_crit_edge121
    i32 1024, label %sw.bb18.return_crit_edge122
    i32 66560, label %sw.bb18.return_crit_edge123
    i32 1536, label %sw.bb18.return_crit_edge124
    i32 67072, label %sw.bb18.return_crit_edge125
    i32 132608, label %sw.bb18.return_crit_edge126
    i32 133120, label %sw.bb18.return_crit_edge127
    i32 198656, label %sw.bb18.return_crit_edge128
    i32 2304, label %sw.bb10.i81
    i32 67840, label %sw.bb11.i82
    i32 133376, label %sw.bb12.i83
    i32 198912, label %sw.bb13.i
    i32 2560, label %sw.bb18.return_crit_edge129
    i32 133632, label %sw.bb18.return_crit_edge130
    i32 3584, label %sw.bb18.return_crit_edge131
    i32 69376, label %sw.bb17.i
    i32 135424, label %sw.bb18.return_crit_edge132
    i32 6144, label %sw.bb19.i
    i32 71680, label %sw.bb18.return_crit_edge133
    i32 6400, label %sw.bb21.i
    i32 71936, label %sw.bb18.return_crit_edge134
    i32 0, label %return.fold.split.i86
    i32 256, label %sw.bb18.return_crit_edge135
    i32 8192, label %sw.bb4.i.i84
  ]

sw.bb18.return_crit_edge135:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge134:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge133:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge132:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge131:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge130:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge129:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge128:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge127:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge126:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge125:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge124:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge123:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge122:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge121:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge120:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18.return_crit_edge:                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb10.i81:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb11.i82:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb12.i83:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb13.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb17.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb19.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb21.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i.i84:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i.i85:                                 ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return.fold.split.i86:                            ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb20:                                          ; preds = %entry
  %and.i88 = and i32 %cpp_id, 16776960
  %19 = zext i32 %and.i88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and.i88, label %sw.default.i91 [
    i32 0, label %sw.bb20.return_crit_edge
    i32 256, label %sw.bb1.i89
    i32 8192, label %sw.bb4.i90
  ]

sw.bb20.return_crit_edge:                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i89:                                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4.i90:                                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default.i91:                                   ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return:                                           ; preds = %sw.default.i91, %sw.bb4.i90, %sw.bb1.i89, %sw.bb20.return_crit_edge, %return.fold.split.i86, %sw.default.i.i85, %sw.bb4.i.i84, %sw.bb21.i, %sw.bb19.i, %sw.bb17.i, %sw.bb13.i, %sw.bb12.i83, %sw.bb11.i82, %sw.bb10.i81, %sw.bb18.return_crit_edge, %sw.bb18.return_crit_edge120, %sw.bb18.return_crit_edge121, %sw.bb18.return_crit_edge122, %sw.bb18.return_crit_edge123, %sw.bb18.return_crit_edge124, %sw.bb18.return_crit_edge125, %sw.bb18.return_crit_edge126, %sw.bb18.return_crit_edge127, %sw.bb18.return_crit_edge128, %sw.bb18.return_crit_edge129, %sw.bb18.return_crit_edge130, %sw.bb18.return_crit_edge131, %sw.bb18.return_crit_edge132, %sw.bb18.return_crit_edge133, %sw.bb18.return_crit_edge134, %sw.bb18.return_crit_edge135, %sw.default.i.i78, %sw.bb4.i.i77, %sw.bb1.i.i76, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb3.i, %sw.bb2.i75, %sw.bb1.i74, %sw.bb16.return_crit_edge, %sw.bb16.return_crit_edge115, %sw.bb16.return_crit_edge116, %sw.bb16.return_crit_edge117, %sw.bb16.return_crit_edge118, %sw.bb16.return_crit_edge119, %return.fold.split.i, %sw.default.i.i71, %sw.bb4.i.i70, %sw.bb14.return_crit_edge, %sw.bb14.return_crit_edge114, %sw.default.i66, %sw.bb4.i65, %sw.bb1.i64, %if.else.return_crit_edge, %sw.default.i60, %sw.bb4.i59, %sw.bb1.i58, %if.then.return_crit_edge, %sw.default.i.i55, %sw.bb4.i.i54, %sw.bb1.i.i53, %sw.bb1.i52, %sw.bb8.return_crit_edge, %sw.bb8.return_crit_edge113, %sw.default.i68.i, %sw.bb8.i66.i, %sw.bb7.i65.i, %sw.bb6.i64.i, %sw.bb5.i63.i, %sw.bb4.i62.i, %sw.bb3.i61.i, %sw.bb2.i60.i, %if.else16.i.return_crit_edge, %if.else16.i.return_crit_edge112, %if.then14.i, %sw.default.i55.i, %sw.bb4.i53.i, %sw.bb3.i52.i, %sw.bb2.i51.i, %if.then10.i.return_crit_edge, %if.then10.i.return_crit_edge105, %if.then10.i.return_crit_edge106, %if.then10.i.return_crit_edge107, %if.then10.i.return_crit_edge108, %if.then10.i.return_crit_edge109, %if.then10.i.return_crit_edge110, %if.then10.i.return_crit_edge111, %sw.default.i47.i, %sw.bb8.i45.i, %sw.bb7.i44.i, %sw.bb6.i43.i, %sw.bb5.i42.i, %sw.bb4.i41.i, %sw.bb3.i40.i, %sw.bb2.i39.i, %if.then6.i50.return_crit_edge, %if.then6.i50.return_crit_edge104, %sw.default.i36.i, %sw.bb4.i34.i, %sw.bb3.i33.i, %sw.bb2.i32.i, %if.then2.i48.return_crit_edge, %if.then2.i48.return_crit_edge97, %if.then2.i48.return_crit_edge98, %if.then2.i48.return_crit_edge99, %if.then2.i48.return_crit_edge100, %if.then2.i48.return_crit_edge101, %if.then2.i48.return_crit_edge102, %if.then2.i48.return_crit_edge103, %sw.default.i.i46, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i45, %sw.bb3.i.i, %sw.bb2.i.i44, %if.then.i43.return_crit_edge, %if.then.i43.return_crit_edge96, %sw.default.i.i39, %sw.bb4.i.i, %sw.bb1.i.i38, %sw.bb2.i, %sw.bb4.return_crit_edge, %sw.bb4.return_crit_edge94, %sw.bb4.return_crit_edge95, %sw.default.i, %sw.bb4.i, %sw.bb1.i, %sw.bb2.return_crit_edge, %sw.default.i28.i, %sw.bb2.i27.i, %sw.bb1.i26.i, %if.end8.i.return_crit_edge, %sw.default.i23.i, %sw.bb2.i22.i, %sw.bb1.i21.i, %if.then6.i.return_crit_edge, %sw.default.i18.i, %sw.bb2.i17.i, %sw.bb1.i16.i, %if.then2.i.return_crit_edge, %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %sw.default.i.i ], [ 34, %sw.bb2.i.i ], [ 32, %sw.bb1.i.i ], [ 2, %if.then.i.return_crit_edge ], [ -22, %sw.default.i18.i ], [ 17, %sw.bb2.i17.i ], [ 16, %sw.bb1.i16.i ], [ 1, %if.then2.i.return_crit_edge ], [ -22, %sw.default.i23.i ], [ 34, %sw.bb2.i22.i ], [ 32, %sw.bb1.i21.i ], [ 2, %if.then6.i.return_crit_edge ], [ -22, %sw.default.i28.i ], [ 34, %sw.bb2.i27.i ], [ 32, %sw.bb1.i26.i ], [ 2, %if.end8.i.return_crit_edge ], [ -22, %sw.default.i ], [ 17, %sw.bb4.i ], [ 16, %sw.bb1.i ], [ 1, %sw.bb2.return_crit_edge ], [ 16, %sw.bb2.i ], [ 1, %sw.bb4.return_crit_edge ], [ 1, %sw.bb4.return_crit_edge94 ], [ -22, %sw.default.i.i39 ], [ 17, %sw.bb4.i.i ], [ 16, %sw.bb1.i.i38 ], [ 1, %sw.bb4.return_crit_edge95 ], [ %call.i58.i, %if.then14.i ], [ %call.i.i, %sw.default.i.i46 ], [ 2, %sw.bb8.i.i ], [ 2, %sw.bb7.i.i ], [ 2, %sw.bb6.i.i ], [ 2, %sw.bb5.i.i ], [ 2, %sw.bb4.i.i45 ], [ 2, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i44 ], [ 1, %if.then.i43.return_crit_edge ], [ 1, %if.then.i43.return_crit_edge96 ], [ %call.i35.i, %sw.default.i36.i ], [ 16, %sw.bb4.i34.i ], [ 16, %sw.bb3.i33.i ], [ 16, %sw.bb2.i32.i ], [ 1, %if.then2.i48.return_crit_edge ], [ 1, %if.then2.i48.return_crit_edge97 ], [ 1, %if.then2.i48.return_crit_edge98 ], [ 1, %if.then2.i48.return_crit_edge99 ], [ 1, %if.then2.i48.return_crit_edge100 ], [ 1, %if.then2.i48.return_crit_edge101 ], [ 1, %if.then2.i48.return_crit_edge102 ], [ 1, %if.then2.i48.return_crit_edge103 ], [ %call.i46.i, %sw.default.i47.i ], [ 2, %sw.bb8.i45.i ], [ 2, %sw.bb7.i44.i ], [ 2, %sw.bb6.i43.i ], [ 2, %sw.bb5.i42.i ], [ 2, %sw.bb4.i41.i ], [ 2, %sw.bb3.i40.i ], [ 2, %sw.bb2.i39.i ], [ 1, %if.then6.i50.return_crit_edge ], [ 1, %if.then6.i50.return_crit_edge104 ], [ %call.i54.i, %sw.default.i55.i ], [ 16, %sw.bb4.i53.i ], [ 16, %sw.bb3.i52.i ], [ 16, %sw.bb2.i51.i ], [ 1, %if.then10.i.return_crit_edge ], [ 1, %if.then10.i.return_crit_edge105 ], [ 1, %if.then10.i.return_crit_edge106 ], [ 1, %if.then10.i.return_crit_edge107 ], [ 1, %if.then10.i.return_crit_edge108 ], [ 1, %if.then10.i.return_crit_edge109 ], [ 1, %if.then10.i.return_crit_edge110 ], [ 1, %if.then10.i.return_crit_edge111 ], [ %call.i67.i, %sw.default.i68.i ], [ 2, %sw.bb8.i66.i ], [ 2, %sw.bb7.i65.i ], [ 2, %sw.bb6.i64.i ], [ 2, %sw.bb5.i63.i ], [ 2, %sw.bb4.i62.i ], [ 2, %sw.bb3.i61.i ], [ 2, %sw.bb2.i60.i ], [ 1, %if.else16.i.return_crit_edge ], [ 1, %if.else16.i.return_crit_edge112 ], [ 16, %sw.bb1.i52 ], [ 1, %sw.bb8.return_crit_edge ], [ -22, %sw.default.i.i55 ], [ 17, %sw.bb4.i.i54 ], [ 16, %sw.bb1.i.i53 ], [ 1, %sw.bb8.return_crit_edge113 ], [ -22, %sw.default.i60 ], [ 34, %sw.bb4.i59 ], [ 32, %sw.bb1.i58 ], [ 2, %if.then.return_crit_edge ], [ -22, %sw.default.i66 ], [ 17, %sw.bb4.i65 ], [ 16, %sw.bb1.i64 ], [ 1, %if.else.return_crit_edge ], [ 32, %sw.bb14.return_crit_edge ], [ -22, %sw.default.i.i71 ], [ 34, %sw.bb4.i.i70 ], [ 2, %return.fold.split.i ], [ 32, %sw.bb14.return_crit_edge114 ], [ 17, %sw.bb12.i ], [ 16, %sw.bb11.i ], [ 16, %sw.bb10.i ], [ 16, %sw.bb9.i ], [ 16, %sw.bb8.i ], [ 16, %sw.bb3.i ], [ 16, %sw.bb2.i75 ], [ 16, %sw.bb1.i74 ], [ 1, %sw.bb16.return_crit_edge ], [ 1, %sw.bb16.return_crit_edge115 ], [ 1, %sw.bb16.return_crit_edge116 ], [ 1, %sw.bb16.return_crit_edge117 ], [ 1, %sw.bb16.return_crit_edge118 ], [ -22, %sw.default.i.i78 ], [ 17, %sw.bb4.i.i77 ], [ 16, %sw.bb1.i.i76 ], [ 1, %sw.bb16.return_crit_edge119 ], [ 1, %sw.bb21.i ], [ 1, %sw.bb19.i ], [ 1, %sw.bb17.i ], [ 1, %sw.bb13.i ], [ 1, %sw.bb12.i83 ], [ 1, %sw.bb11.i82 ], [ 1, %sw.bb10.i81 ], [ 16, %sw.bb18.return_crit_edge ], [ 16, %sw.bb18.return_crit_edge120 ], [ 16, %sw.bb18.return_crit_edge121 ], [ 16, %sw.bb18.return_crit_edge122 ], [ 16, %sw.bb18.return_crit_edge123 ], [ 16, %sw.bb18.return_crit_edge124 ], [ 16, %sw.bb18.return_crit_edge125 ], [ 16, %sw.bb18.return_crit_edge126 ], [ 16, %sw.bb18.return_crit_edge127 ], [ 16, %sw.bb18.return_crit_edge128 ], [ 16, %sw.bb18.return_crit_edge129 ], [ 16, %sw.bb18.return_crit_edge130 ], [ 16, %sw.bb18.return_crit_edge131 ], [ 16, %sw.bb18.return_crit_edge132 ], [ 16, %sw.bb18.return_crit_edge133 ], [ 16, %sw.bb18.return_crit_edge134 ], [ -22, %sw.default.i.i85 ], [ 17, %sw.bb4.i.i84 ], [ 1, %return.fold.split.i86 ], [ 16, %sw.bb18.return_crit_edge135 ], [ -22, %sw.default.i91 ], [ 17, %sw.bb4.i90 ], [ 16, %sw.bb1.i89 ], [ 1, %sw.bb20.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_target_cpp(i32 noundef %cpp_island_id, i64 noundef %cpp_island_address, ptr nocapture noundef writeonly %cpp_target_id, ptr noundef %cpp_target_address, ptr noundef readonly %imb_table) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = and i32 %cpp_island_id, 255
  %shr.i = lshr i32 %cpp_island_id, 24
  %0 = trunc i32 %shr.i to i8
  %conv.i62 = and i8 %0, 31
  %conv2 = zext i8 %conv.i62 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv.i62)
  %cmp4 = icmp ugt i8 %conv.i62, 15
  br i1 %cmp4, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = trunc i32 %cpp_island_id to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp7 = icmp eq i8 %conv.i, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %cpp_target_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cpp_island_id, ptr %cpp_target_id, align 4
  %2 = ptrtoint ptr %cpp_target_address to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %cpp_island_address, ptr %cpp_target_address, align 8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %tobool.not = icmp eq ptr %imb_table, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end10
  %arrayidx = getelementptr i32, ptr %imb_table, i32 %conv2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %cpp_target_address to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %cpp_island_address, ptr %cpp_target_address, align 8
  %shr = lshr i32 %4, 13
  %and = and i32 %shr, 7
  %6 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15 = icmp ne i32 %6, 0
  %shr16 = lshr i32 %4, 6
  %and17 = and i32 %shr16, 63
  %and19 = and i32 %4, 63
  %7 = zext i32 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %conv2, label %if.end12.do.end25_crit_edge [
    i32 14, label %sw.bb4.i
    i32 7, label %sw.bb1.i
    i32 1, label %if.end12.if.end.i.i_crit_edge
    i32 2, label %if.end12.if.end.i.i_crit_edge83
    i32 6, label %if.end12.if.end.i.i_crit_edge84
    i32 9, label %if.end12.if.end.i.i_crit_edge85
    i32 10, label %if.end12.if.end.i.i_crit_edge86
    i32 12, label %if.end12.if.end.i.i_crit_edge87
    i32 15, label %if.end12.if.end.i.i_crit_edge88
  ]

if.end12.if.end.i.i_crit_edge88:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.end12.if.end.i.i_crit_edge87:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.end12.if.end.i.i_crit_edge86:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.end12.if.end.i.i_crit_edge85:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.end12.if.end.i.i_crit_edge84:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.end12.if.end.i.i_crit_edge83:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.end12.if.end.i.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.end12.do.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i.i:                                       ; preds = %if.end12.if.end.i.i_crit_edge, %if.end12.if.end.i.i_crit_edge83, %if.end12.if.end.i.i_crit_edge84, %if.end12.if.end.i.i_crit_edge85, %if.end12.if.end.i.i_crit_edge86, %if.end12.if.end.i.i_crit_edge87, %if.end12.if.end.i.i_crit_edge88
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and, label %if.end.i.i.do.end25_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb16.i.i
    i32 2, label %sw.bb43.i.i
    i32 3, label %sw.bb61.i.i
  ]

if.end.i.i.do.end25_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i62)
  %cmp3.i.i = icmp ne i8 %conv.i62, 2
  %brmerge.i.i = or i1 %cmp3.i.i, %tobool15
  br i1 %brmerge.i.i, label %if.end6.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %sw.bb.i.i
  %9 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %conv.i, label %if.end.i.i.i.i [
    i8 7, label %if.then4.i.i.do.end25_crit_edge
    i8 14, label %if.then4.i.i.do.end25_crit_edge89
  ]

if.then4.i.i.do.end25_crit_edge89:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.then4.i.i.do.end25_crit_edge:                  ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i.i.i.i:                                   ; preds = %if.then4.i.i
  %.mask204.i.i = and i64 %cpp_island_address, 4227858432
  call void @__sanitizer_cov_trace_const_cmp8(i64 134217728, i64 %.mask204.i.i)
  %cmp2.not.i.i.i = icmp eq i64 %.mask204.i.i, 134217728
  br i1 %cmp2.not.i.i.i, label %if.end.i.i.i.i.if.end28_crit_edge, label %if.end.i.i.i.i.do.end25_crit_edge

if.end.i.i.i.i.do.end25_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i.i.i.i.if.end28_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.end6.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond.i.i = select i1 %tobool15, i32 34, i32 26
  %sh_prom.i.i = zext i32 %cond.i.i to i64
  %shl.neg.i.i = shl nsw i64 -1, %sh_prom.i.i
  %sub9.i.i = xor i32 %cond.i.i, 58
  %sh_prom10.i.i = zext i32 %sub9.i.i to i64
  %shr.i.i = lshr i64 -1, %sh_prom10.i.i
  %and.i.i = and i64 %shr.i.i, %shl.neg.i.i
  %neg.i.i = xor i64 %and.i.i, -1
  %and12.i.i = and i64 %neg.i.i, %cpp_island_address
  %conv.i.i79 = zext i32 %conv to i64
  %shl14.i.i = shl nuw nsw i64 %conv.i.i79, %sh_prom.i.i
  %and15.i.i = and i64 %and.i.i, %shl14.i.i
  %or.i.i = or i64 %and12.i.i, %and15.i.i
  br label %if.end28.sink.split

sw.bb16.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i62)
  %cmp17.i.i = icmp ne i8 %conv.i62, 2
  %brmerge144.i.i = or i1 %cmp17.i.i, %tobool15
  br i1 %brmerge144.i.i, label %if.end24.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %sw.bb16.i.i
  %10 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %conv.i, label %if.end.i.i147.i.i [
    i8 7, label %if.then21.i.i.do.end25_crit_edge
    i8 14, label %if.then21.i.i.do.end25_crit_edge90
  ]

if.then21.i.i.do.end25_crit_edge90:               ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.then21.i.i.do.end25_crit_edge:                 ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i.i147.i.i:                                ; preds = %if.then21.i.i
  %and7.i.i.i.i = and i64 %cpp_island_address, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i64 %and7.i.i.i.i, 0
  %isld0.isld1.i.i.i.i = select i1 %tobool8.not.i.i.i.i, i32 %and19, i32 %and17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %isld0.isld1.i.i.i.i)
  %cmp2.not.i148.i.i = icmp eq i32 %isld0.isld1.i.i.i.i, 2
  br i1 %cmp2.not.i148.i.i, label %if.end.i.i147.i.i.if.end28_crit_edge, label %if.end.i.i147.i.i.do.end25_crit_edge

if.end.i.i147.i.i.do.end25_crit_edge:             ; preds = %if.end.i.i147.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i.i147.i.i.if.end28_crit_edge:             ; preds = %if.end.i.i147.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.end24.i.i:                                     ; preds = %sw.bb16.i.i
  %cond27.i.i = select i1 %tobool15, i32 39, i32 31
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %and19)
  %cmp28.i.i = icmp eq i32 %conv, %and19
  br i1 %cmp28.i.i, label %if.then30.i.i, label %if.end35.i.i

if.then30.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sh_prom31.i.i = zext i32 %cond27.i.i to i64
  %shl32.i.i = shl nuw nsw i64 1, %sh_prom31.i.i
  %neg33.i.i = xor i64 %shl32.i.i, -1
  %and34.i.i = and i64 %neg33.i.i, %cpp_island_address
  br label %if.end28.sink.split

if.end35.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %and17)
  %cmp36.i.i = icmp eq i32 %conv, %and17
  br i1 %cmp36.i.i, label %if.then38.i.i, label %if.end35.i.i.do.end25_crit_edge

if.end35.i.i.do.end25_crit_edge:                  ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.then38.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sh_prom39.i.i = zext i32 %cond27.i.i to i64
  %shl40.i.i = shl nuw nsw i64 1, %sh_prom39.i.i
  %or41.i.i = or i64 %shl40.i.i, %cpp_island_address
  br label %if.end28.sink.split

sw.bb43.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i62)
  %cmp44.i.i = icmp ne i8 %conv.i62, 2
  %brmerge145.i.i = or i1 %cmp44.i.i, %tobool15
  br i1 %brmerge145.i.i, label %if.end51.i.i, label %if.then48.i.i

if.then48.i.i:                                    ; preds = %sw.bb43.i.i
  %11 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %conv.i, label %if.end.i.i152.i.i [
    i8 7, label %if.then48.i.i.do.end25_crit_edge
    i8 14, label %if.then48.i.i.do.end25_crit_edge91
  ]

if.then48.i.i.do.end25_crit_edge91:               ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.then48.i.i.do.end25_crit_edge:                 ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i.i152.i.i:                                ; preds = %if.then48.i.i
  %and19.i.i.i.i = and i64 %cpp_island_address, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i.i.i.i)
  %tobool20.not.i.i.i.i = icmp eq i64 %and19.i.i.i.i, 0
  %isld0.isld16.i.i.i.i = select i1 %tobool20.not.i.i.i.i, i32 %4, i32 %shr16
  %and12.i.i.i.i = and i32 %isld0.isld16.i.i.i.i, 62
  %12 = trunc i64 %cpp_island_address to i32
  %13 = lshr i32 %12, 30
  %conv30.i.i.i.i = and i32 %13, 1
  %or31.i.i.i.i = or i32 %and12.i.i.i.i, %conv30.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or31.i.i.i.i)
  %cmp2.not.i153.i.i = icmp eq i32 %or31.i.i.i.i, 2
  br i1 %cmp2.not.i153.i.i, label %if.end.i.i152.i.i.if.end28_crit_edge, label %if.end.i.i152.i.i.do.end25_crit_edge

if.end.i.i152.i.i.do.end25_crit_edge:             ; preds = %if.end.i.i152.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i.i152.i.i.if.end28_crit_edge:             ; preds = %if.end.i.i152.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.end51.i.i:                                     ; preds = %sw.bb43.i.i
  %and53.i.i = and i32 %4, 62
  %and55.i.i = and i32 %shr16, 62
  %cond58.i.i = select i1 %tobool15, i32 39, i32 31
  %sub59.i.i = add nsw i32 %cond58.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and53.i.i, i32 %conv)
  %cmp4.not.i.i.i = icmp eq i32 %and53.i.i, %conv
  br i1 %cmp4.not.i.i.i, label %if.end51.i.i.if.end.i.i.i_crit_edge, label %for.inc.i.i.i

if.end51.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.inc.1.i.i.i.if.end.i.i.i_crit_edge, %for.inc.i.1.i.i.if.end.i.i.i_crit_edge, %for.inc.i.i.i.if.end.i.i.i_crit_edge, %if.end51.i.i.if.end.i.i.i_crit_edge
  %i.034.lcssa.i.i.i = phi i32 [ 1, %for.inc.1.i.i.i.if.end.i.i.i_crit_edge ], [ 1, %for.inc.i.1.i.i.if.end.i.i.i_crit_edge ], [ 0, %for.inc.i.i.i.if.end.i.i.i_crit_edge ], [ 0, %if.end51.i.i.if.end.i.i.i_crit_edge ]
  %v.033.lcssa.i.i.i = phi i32 [ 1, %for.inc.1.i.i.i.if.end.i.i.i_crit_edge ], [ 0, %for.inc.i.1.i.i.if.end.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.if.end.i.i.i_crit_edge ], [ 0, %if.end51.i.i.if.end.i.i.i_crit_edge ]
  %sh_prom.i.i.i = zext i32 %sub59.i.i to i64
  %shl.neg.i.i.i = shl nsw i64 -1, %sh_prom.i.i.i
  %sub5.i.i.i = xor i32 %cond58.i.i, 63
  %sh_prom6.i.i.i = zext i32 %sub5.i.i.i to i64
  %shr.i.i.i = lshr i64 -1, %sh_prom6.i.i.i
  %and.i.i.i = and i64 %shr.i.i.i, %shl.neg.i.i.i
  %neg.i.i.i = xor i64 %and.i.i.i, -1
  %and8.i.i.i = and i64 %neg.i.i.i, %cpp_island_address
  %14 = zext i32 %i.034.lcssa.i.i.i to i64
  %sh_prom9.i.i.i = zext i32 %cond58.i.i to i64
  %shl10.i.i.i = shl nuw nsw i64 %14, %sh_prom9.i.i.i
  %conv12.i.i.i = zext i32 %v.033.lcssa.i.i.i to i64
  %shl14.i.i.i = shl nuw nsw i64 %conv12.i.i.i, %sh_prom.i.i.i
  %or11.i.i.i = or i64 %shl14.i.i.i, %shl10.i.i.i
  %or15.i.i.i = or i64 %or11.i.i.i, %and8.i.i.i
  br label %if.end28.sink.split

for.inc.i.i.i:                                    ; preds = %if.end51.i.i
  %or.i.1.i.i = or i32 %and19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.1.i.i, i32 %conv)
  %cmp4.not.i.1.i.i = icmp eq i32 %or.i.1.i.i, %conv
  br i1 %cmp4.not.i.1.i.i, label %for.inc.i.i.i.if.end.i.i.i_crit_edge, label %for.inc.i.1.i.i

for.inc.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i.i

for.inc.i.1.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and55.i.i, i32 %conv)
  %cmp4.not.1.i.i.i = icmp eq i32 %and55.i.i, %conv
  br i1 %cmp4.not.1.i.i.i, label %for.inc.i.1.i.i.if.end.i.i.i_crit_edge, label %for.inc.1.i.i.i

for.inc.i.1.i.i.if.end.i.i.i_crit_edge:           ; preds = %for.inc.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.1.i.i
  %or.1.i.1.i.i = or i32 %and17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i.1.i.i, i32 %conv)
  %cmp4.not.1.i.1.i.i = icmp eq i32 %or.1.i.1.i.i, %conv
  br i1 %cmp4.not.1.i.1.i.i, label %for.inc.1.i.i.i.if.end.i.i.i_crit_edge, label %for.inc.1.i.i.i.do.end25_crit_edge

for.inc.1.i.i.i.do.end25_crit_edge:               ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

for.inc.1.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i.i

sw.bb61.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i62)
  %cmp62.i.i = icmp ne i8 %conv.i62, 2
  %brmerge146.i.i = or i1 %cmp62.i.i, %tobool15
  br i1 %brmerge146.i.i, label %if.end69.i.i, label %if.then66.i.i

if.then66.i.i:                                    ; preds = %sw.bb61.i.i
  %15 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %conv.i, label %if.end.i.i158.i.i [
    i8 7, label %if.then66.i.i.do.end25_crit_edge
    i8 14, label %if.then66.i.i.do.end25_crit_edge92
  ]

if.then66.i.i.do.end25_crit_edge92:               ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.then66.i.i.do.end25_crit_edge:                 ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i.i158.i.i:                                ; preds = %if.then66.i.i
  %and42.i.i.i.i = and i64 %cpp_island_address, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and42.i.i.i.i)
  %tobool43.not.i.i.i.i = icmp eq i64 %and42.i.i.i.i, 0
  %isld0.isld17.i.i.i.i = select i1 %tobool43.not.i.i.i.i, i32 %4, i32 %shr16
  %and34.i.i.i.i = and i32 %isld0.isld17.i.i.i.i, 60
  %16 = trunc i64 %cpp_island_address to i32
  %17 = lshr i32 %16, 29
  %conv54.i.i.i.i = and i32 %17, 3
  %or55.i.i.i.i = or i32 %and34.i.i.i.i, %conv54.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or55.i.i.i.i)
  %cmp2.not.i159.i.i = icmp eq i32 %or55.i.i.i.i, 2
  br i1 %cmp2.not.i159.i.i, label %if.end.i.i158.i.i.if.end28_crit_edge, label %if.end.i.i158.i.i.do.end25_crit_edge

if.end.i.i158.i.i.do.end25_crit_edge:             ; preds = %if.end.i.i158.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i.i158.i.i.if.end28_crit_edge:             ; preds = %if.end.i.i158.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.end69.i.i:                                     ; preds = %sw.bb61.i.i
  %and71.i.i = and i32 %4, 60
  %and73.i.i = and i32 %shr16, 60
  %cond76.i.i = select i1 %tobool15, i32 39, i32 31
  %sub77.i.i = add nsw i32 %cond76.i.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %and71.i.i, i32 %conv)
  %cmp4.not.i165.i.i = icmp eq i32 %and71.i.i, %conv
  br i1 %cmp4.not.i165.i.i, label %if.end69.i.i.if.end.i183.i.i_crit_edge, label %for.inc.i186.i.i

if.end69.i.i.if.end.i183.i.i_crit_edge:           ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i183.i.i

if.end.i183.i.i:                                  ; preds = %for.inc.1.i195.2.i.i.if.end.i183.i.i_crit_edge, %for.inc.1.i195.1.i.i.if.end.i183.i.i_crit_edge, %for.inc.1.i195.i.i.if.end.i183.i.i_crit_edge, %for.inc.i186.3.i.i.if.end.i183.i.i_crit_edge, %for.inc.i186.2.i.i.if.end.i183.i.i_crit_edge, %for.inc.i186.1.i.i.if.end.i183.i.i_crit_edge, %for.inc.i186.i.i.if.end.i183.i.i_crit_edge, %if.end69.i.i.if.end.i183.i.i_crit_edge
  %i.034.lcssa.i167.i.i = phi i32 [ 1, %for.inc.1.i195.2.i.i.if.end.i183.i.i_crit_edge ], [ 1, %for.inc.1.i195.1.i.i.if.end.i183.i.i_crit_edge ], [ 1, %for.inc.1.i195.i.i.if.end.i183.i.i_crit_edge ], [ 1, %for.inc.i186.3.i.i.if.end.i183.i.i_crit_edge ], [ 0, %for.inc.i186.2.i.i.if.end.i183.i.i_crit_edge ], [ 0, %for.inc.i186.1.i.i.if.end.i183.i.i_crit_edge ], [ 0, %for.inc.i186.i.i.if.end.i183.i.i_crit_edge ], [ 0, %if.end69.i.i.if.end.i183.i.i_crit_edge ]
  %v.033.lcssa.i168.i.i = phi i32 [ 3, %for.inc.1.i195.2.i.i.if.end.i183.i.i_crit_edge ], [ 2, %for.inc.1.i195.1.i.i.if.end.i183.i.i_crit_edge ], [ 1, %for.inc.1.i195.i.i.if.end.i183.i.i_crit_edge ], [ 0, %for.inc.i186.3.i.i.if.end.i183.i.i_crit_edge ], [ 3, %for.inc.i186.2.i.i.if.end.i183.i.i_crit_edge ], [ 2, %for.inc.i186.1.i.i.if.end.i183.i.i_crit_edge ], [ 1, %for.inc.i186.i.i.if.end.i183.i.i_crit_edge ], [ 0, %if.end69.i.i.if.end.i183.i.i_crit_edge ]
  %sh_prom.i169.i.i = zext i32 %sub77.i.i to i64
  %shl.neg.i170.i.i = shl nsw i64 -1, %sh_prom.i169.i.i
  %sub5.i171.i.i = xor i32 %cond76.i.i, 63
  %sh_prom6.i172.i.i = zext i32 %sub5.i171.i.i to i64
  %shr.i173.i.i = lshr i64 -1, %sh_prom6.i172.i.i
  %and.i174.i.i = and i64 %shr.i173.i.i, %shl.neg.i170.i.i
  %neg.i175.i.i = xor i64 %and.i174.i.i, -1
  %and8.i176.i.i = and i64 %neg.i175.i.i, %cpp_island_address
  %18 = zext i32 %i.034.lcssa.i167.i.i to i64
  %sh_prom9.i177.i.i = zext i32 %cond76.i.i to i64
  %shl10.i178.i.i = shl nuw nsw i64 %18, %sh_prom9.i177.i.i
  %conv12.i179.i.i = zext i32 %v.033.lcssa.i168.i.i to i64
  %shl14.i180.i.i = shl nuw nsw i64 %conv12.i179.i.i, %sh_prom.i169.i.i
  %or11.i181.i.i = or i64 %shl14.i180.i.i, %shl10.i178.i.i
  %or15.i182.i.i = or i64 %or11.i181.i.i, %and8.i176.i.i
  br label %if.end28.sink.split

for.inc.i186.i.i:                                 ; preds = %if.end69.i.i
  %or.i164.1.i.i = or i32 %and71.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i164.1.i.i, i32 %conv)
  %cmp4.not.i165.1.i.i = icmp eq i32 %or.i164.1.i.i, %conv
  br i1 %cmp4.not.i165.1.i.i, label %for.inc.i186.i.i.if.end.i183.i.i_crit_edge, label %for.inc.i186.1.i.i

for.inc.i186.i.i.if.end.i183.i.i_crit_edge:       ; preds = %for.inc.i186.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i183.i.i

for.inc.i186.1.i.i:                               ; preds = %for.inc.i186.i.i
  %or.i164.2.i.i = or i32 %and71.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i164.2.i.i, i32 %conv)
  %cmp4.not.i165.2.i.i = icmp eq i32 %or.i164.2.i.i, %conv
  br i1 %cmp4.not.i165.2.i.i, label %for.inc.i186.1.i.i.if.end.i183.i.i_crit_edge, label %for.inc.i186.2.i.i

for.inc.i186.1.i.i.if.end.i183.i.i_crit_edge:     ; preds = %for.inc.i186.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i183.i.i

for.inc.i186.2.i.i:                               ; preds = %for.inc.i186.1.i.i
  %or.i164.3.i.i = or i32 %and19, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i164.3.i.i, i32 %conv)
  %cmp4.not.i165.3.i.i = icmp eq i32 %or.i164.3.i.i, %conv
  br i1 %cmp4.not.i165.3.i.i, label %for.inc.i186.2.i.i.if.end.i183.i.i_crit_edge, label %for.inc.i186.3.i.i

for.inc.i186.2.i.i.if.end.i183.i.i_crit_edge:     ; preds = %for.inc.i186.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i183.i.i

for.inc.i186.3.i.i:                               ; preds = %for.inc.i186.2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and73.i.i, i32 %conv)
  %cmp4.not.1.i191.i.i = icmp eq i32 %and73.i.i, %conv
  br i1 %cmp4.not.1.i191.i.i, label %for.inc.i186.3.i.i.if.end.i183.i.i_crit_edge, label %for.inc.1.i195.i.i

for.inc.i186.3.i.i.if.end.i183.i.i_crit_edge:     ; preds = %for.inc.i186.3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i183.i.i

for.inc.1.i195.i.i:                               ; preds = %for.inc.i186.3.i.i
  %or.1.i190.1.i.i = or i32 %and73.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i190.1.i.i, i32 %conv)
  %cmp4.not.1.i191.1.i.i = icmp eq i32 %or.1.i190.1.i.i, %conv
  br i1 %cmp4.not.1.i191.1.i.i, label %for.inc.1.i195.i.i.if.end.i183.i.i_crit_edge, label %for.inc.1.i195.1.i.i

for.inc.1.i195.i.i.if.end.i183.i.i_crit_edge:     ; preds = %for.inc.1.i195.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i183.i.i

for.inc.1.i195.1.i.i:                             ; preds = %for.inc.1.i195.i.i
  %or.1.i190.2.i.i = or i32 %and73.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i190.2.i.i, i32 %conv)
  %cmp4.not.1.i191.2.i.i = icmp eq i32 %or.1.i190.2.i.i, %conv
  br i1 %cmp4.not.1.i191.2.i.i, label %for.inc.1.i195.1.i.i.if.end.i183.i.i_crit_edge, label %for.inc.1.i195.2.i.i

for.inc.1.i195.1.i.i.if.end.i183.i.i_crit_edge:   ; preds = %for.inc.1.i195.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i183.i.i

for.inc.1.i195.2.i.i:                             ; preds = %for.inc.1.i195.1.i.i
  %or.1.i190.3.i.i = or i32 %and17, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i190.3.i.i, i32 %conv)
  %cmp4.not.1.i191.3.i.i = icmp eq i32 %or.1.i190.3.i.i, %conv
  br i1 %cmp4.not.1.i191.3.i.i, label %for.inc.1.i195.2.i.i.if.end.i183.i.i_crit_edge, label %for.inc.1.i195.2.i.i.do.end25_crit_edge

for.inc.1.i195.2.i.i.do.end25_crit_edge:          ; preds = %for.inc.1.i195.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

for.inc.1.i195.2.i.i.if.end.i183.i.i_crit_edge:   ; preds = %for.inc.1.i195.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i183.i.i

sw.bb1.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %switch.i.i.i = icmp ult i32 %and, 4
  %cond.i.i.i = select i1 %tobool15, i32 38, i32 30
  %retval.0.i.i.i = select i1 %switch.i.i.i, i32 %cond.i.i.i, i32 -22
  %sh_prom.i19.i = zext i32 %retval.0.i.i.i to i64
  %shr.i20.i = lshr i64 %cpp_island_address, %sh_prom.i19.i
  %and.i21.i = and i64 %shr.i20.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and.i21.i)
  %cmp.i.i = icmp eq i64 %and.i21.i, 2
  %19 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %and, label %sw.bb1.i.do.end25_crit_edge [
    i32 0, label %sw.bb.i27.i
    i32 1, label %sw.bb14.i.i
    i32 2, label %sw.bb56.i.i
    i32 3, label %land.lhs.true.i.i
  ]

sw.bb1.i.do.end25_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

sw.bb.i27.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond.i22.i = select i1 %tobool15, i32 32, i32 24
  %sh_prom3.i.i = zext i32 %cond.i22.i to i64
  %shl.neg.i23.i = shl nsw i64 -1, %sh_prom3.i.i
  %sub5.i.i = xor i32 %cond.i22.i, 58
  %sh_prom6.i.i = zext i32 %sub5.i.i to i64
  %shr7.i.i = lshr i64 -1, %sh_prom6.i.i
  %and8.i.i = and i64 %shr7.i.i, %shl.neg.i23.i
  %neg.i24.i = xor i64 %and8.i.i, -1
  %and10.i.i = and i64 %neg.i24.i, %cpp_island_address
  %conv.i25.i75 = zext i32 %conv to i64
  %shl12.i.i = shl nuw nsw i64 %conv.i25.i75, %sh_prom3.i.i
  %and13.i.i = and i64 %and8.i.i, %shl12.i.i
  %or.i26.i = or i64 %and10.i.i, %and13.i.i
  br label %if.end28.sink.split

sw.bb14.i.i:                                      ; preds = %sw.bb1.i
  br i1 %cmp.i.i, label %if.then16.i.i, label %if.end37.i.i

if.then16.i.i:                                    ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond19.i.i = select i1 %tobool15, i32 32, i32 24
  %sh_prom20.i.i = zext i32 %cond19.i.i to i64
  %shl21.neg.i.i = shl nsw i64 -1, %sh_prom20.i.i
  %sub25.i.i = xor i32 %cond19.i.i, 58
  %sh_prom26.i.i = zext i32 %sub25.i.i to i64
  %shr27.i.i = lshr i64 -1, %sh_prom26.i.i
  %and28.i.i = and i64 %shr27.i.i, %shl21.neg.i.i
  %neg30.i.i = xor i64 %and28.i.i, -1
  %and31.i.i = and i64 %neg30.i.i, %cpp_island_address
  %conv32.i.i76 = zext i32 %conv to i64
  %shl34.i.i = shl nuw nsw i64 %conv32.i.i76, %sh_prom20.i.i
  %and35.i.i = and i64 %and28.i.i, %shl34.i.i
  %or36.i.i = or i64 %and31.i.i, %and35.i.i
  br label %if.end28.sink.split

if.end37.i.i:                                     ; preds = %sw.bb14.i.i
  %cond40.i.i = select i1 %tobool15, i32 37, i32 29
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %and19)
  %cmp41.i.i = icmp eq i32 %conv, %and19
  br i1 %cmp41.i.i, label %if.then43.i.i, label %if.end48.i.i

if.then43.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sh_prom44.i.i = zext i32 %cond40.i.i to i64
  %shl45.i.i = shl nuw nsw i64 1, %sh_prom44.i.i
  %neg46.i.i = xor i64 %shl45.i.i, -1
  %and47.i.i = and i64 %neg46.i.i, %cpp_island_address
  br label %if.end28.sink.split

if.end48.i.i:                                     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %and17)
  %cmp49.i.i = icmp eq i32 %conv, %and17
  br i1 %cmp49.i.i, label %if.then51.i.i, label %if.end48.i.i.do.end25_crit_edge

if.end48.i.i.do.end25_crit_edge:                  ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.then51.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sh_prom52.i.i = zext i32 %cond40.i.i to i64
  %shl53.i.i = shl nuw nsw i64 1, %sh_prom52.i.i
  %or54.i.i = or i64 %shl53.i.i, %cpp_island_address
  br label %if.end28.sink.split

sw.bb56.i.i:                                      ; preds = %sw.bb1.i
  br i1 %cmp.i.i, label %if.then58.i.i, label %if.end79.i.i

if.then58.i.i:                                    ; preds = %sw.bb56.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond61.i.i = select i1 %tobool15, i32 32, i32 24
  %sh_prom62.i.i = zext i32 %cond61.i.i to i64
  %shl63.neg.i.i = shl nsw i64 -1, %sh_prom62.i.i
  %sub67.i.i = xor i32 %cond61.i.i, 58
  %sh_prom68.i.i = zext i32 %sub67.i.i to i64
  %shr69.i.i = lshr i64 -1, %sh_prom68.i.i
  %and70.i.i = and i64 %shr69.i.i, %shl63.neg.i.i
  %neg72.i.i = xor i64 %and70.i.i, -1
  %and73.i28.i = and i64 %neg72.i.i, %cpp_island_address
  %conv74.i.i77 = zext i32 %conv to i64
  %shl76.i.i = shl nuw nsw i64 %conv74.i.i77, %sh_prom62.i.i
  %and77.i.i = and i64 %and70.i.i, %shl76.i.i
  %or78.i.i = or i64 %and73.i28.i, %and77.i.i
  br label %if.end28.sink.split

if.end79.i.i:                                     ; preds = %sw.bb56.i.i
  %and81.i.i = and i32 %4, 62
  %and83.i.i = and i32 %shr16, 62
  %cond86.i.i = select i1 %tobool15, i32 37, i32 29
  %sub87.i.i = add nsw i32 %cond86.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and81.i.i, i32 %conv)
  %cmp4.not.i.i29.i = icmp eq i32 %and81.i.i, %conv
  br i1 %cmp4.not.i.i29.i, label %if.end79.i.i.if.end.i.i46.i_crit_edge, label %for.inc.i.i49.i

if.end79.i.i.if.end.i.i46.i_crit_edge:            ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i46.i

if.end.i.i46.i:                                   ; preds = %for.inc.1.i.i54.i.if.end.i.i46.i_crit_edge, %for.inc.i.1.i51.i.if.end.i.i46.i_crit_edge, %for.inc.i.i49.i.if.end.i.i46.i_crit_edge, %if.end79.i.i.if.end.i.i46.i_crit_edge
  %i.034.lcssa.i.i30.i = phi i32 [ 1, %for.inc.1.i.i54.i.if.end.i.i46.i_crit_edge ], [ 1, %for.inc.i.1.i51.i.if.end.i.i46.i_crit_edge ], [ 0, %for.inc.i.i49.i.if.end.i.i46.i_crit_edge ], [ 0, %if.end79.i.i.if.end.i.i46.i_crit_edge ]
  %v.033.lcssa.i.i31.i = phi i32 [ 1, %for.inc.1.i.i54.i.if.end.i.i46.i_crit_edge ], [ 0, %for.inc.i.1.i51.i.if.end.i.i46.i_crit_edge ], [ 1, %for.inc.i.i49.i.if.end.i.i46.i_crit_edge ], [ 0, %if.end79.i.i.if.end.i.i46.i_crit_edge ]
  %sh_prom.i.i32.i = zext i32 %sub87.i.i to i64
  %shl.neg.i.i33.i = shl nsw i64 -1, %sh_prom.i.i32.i
  %sub5.i.i34.i = xor i32 %cond86.i.i, 63
  %sh_prom6.i.i35.i = zext i32 %sub5.i.i34.i to i64
  %shr.i.i36.i = lshr i64 -1, %sh_prom6.i.i35.i
  %and.i.i37.i = and i64 %shr.i.i36.i, %shl.neg.i.i33.i
  %neg.i.i38.i = xor i64 %and.i.i37.i, -1
  %and8.i.i39.i = and i64 %neg.i.i38.i, %cpp_island_address
  %20 = zext i32 %i.034.lcssa.i.i30.i to i64
  %sh_prom9.i.i40.i = zext i32 %cond86.i.i to i64
  %shl10.i.i41.i = shl nuw nsw i64 %20, %sh_prom9.i.i40.i
  %conv12.i.i42.i = zext i32 %v.033.lcssa.i.i31.i to i64
  %shl14.i.i43.i = shl nuw nsw i64 %conv12.i.i42.i, %sh_prom.i.i32.i
  %or11.i.i44.i = or i64 %shl10.i.i41.i, %and8.i.i39.i
  %or15.i.i45.i = or i64 %or11.i.i44.i, %shl14.i.i43.i
  br label %if.end28.sink.split

for.inc.i.i49.i:                                  ; preds = %if.end79.i.i
  %or.i.1.i47.i = or i32 %and19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.1.i47.i, i32 %conv)
  %cmp4.not.i.1.i48.i = icmp eq i32 %or.i.1.i47.i, %conv
  br i1 %cmp4.not.i.1.i48.i, label %for.inc.i.i49.i.if.end.i.i46.i_crit_edge, label %for.inc.i.1.i51.i

for.inc.i.i49.i.if.end.i.i46.i_crit_edge:         ; preds = %for.inc.i.i49.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i46.i

for.inc.i.1.i51.i:                                ; preds = %for.inc.i.i49.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and83.i.i, i32 %conv)
  %cmp4.not.1.i.i50.i = icmp eq i32 %and83.i.i, %conv
  br i1 %cmp4.not.1.i.i50.i, label %for.inc.i.1.i51.i.if.end.i.i46.i_crit_edge, label %for.inc.1.i.i54.i

for.inc.i.1.i51.i.if.end.i.i46.i_crit_edge:       ; preds = %for.inc.i.1.i51.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i46.i

for.inc.1.i.i54.i:                                ; preds = %for.inc.i.1.i51.i
  %or.1.i.1.i52.i = or i32 %and17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i.1.i52.i, i32 %conv)
  %cmp4.not.1.i.1.i53.i = icmp eq i32 %or.1.i.1.i52.i, %conv
  br i1 %cmp4.not.1.i.1.i53.i, label %for.inc.1.i.i54.i.if.end.i.i46.i_crit_edge, label %for.inc.1.i.i54.i.do.end25_crit_edge

for.inc.1.i.i54.i.do.end25_crit_edge:             ; preds = %for.inc.1.i.i54.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

for.inc.1.i.i54.i.if.end.i.i46.i_crit_edge:       ; preds = %for.inc.1.i.i54.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i46.i

land.lhs.true.i.i:                                ; preds = %sw.bb1.i
  %21 = add nsw i32 %conv, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %21)
  %22 = icmp ult i32 %21, -3
  br i1 %22, label %if.end100.thread.i.i, label %if.end100.i.i

if.end100.thread.i.i:                             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %shl98.i.i = shl i64 2, %sh_prom.i19.i
  %or99.i.i = or i64 %shl98.i.i, %cpp_island_address
  %23 = ptrtoint ptr %cpp_target_address to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %or99.i.i, ptr %cpp_target_address, align 8
  br label %if.then102.i.i

if.end100.i.i:                                    ; preds = %land.lhs.true.i.i
  br i1 %cmp.i.i, label %if.end100.i.i.if.then102.i.i_crit_edge, label %if.end123.i.i

if.end100.i.i.if.then102.i.i_crit_edge:           ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then102.i.i

if.then102.i.i:                                   ; preds = %if.end100.i.i.if.then102.i.i_crit_edge, %if.end100.thread.i.i
  %cond105.i.i = select i1 %tobool15, i32 32, i32 24
  %sh_prom106.i.i = zext i32 %cond105.i.i to i64
  %shl107.neg.i.i = shl nsw i64 -1, %sh_prom106.i.i
  %sub111.i.i = xor i32 %cond105.i.i, 58
  %sh_prom112.i.i = zext i32 %sub111.i.i to i64
  %shr113.i.i = lshr i64 -1, %sh_prom112.i.i
  %and114.i.i = and i64 %shr113.i.i, %shl107.neg.i.i
  %neg116.i.i = xor i64 %and114.i.i, -1
  %24 = ptrtoint ptr %cpp_target_address to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cpp_target_address, align 8
  %and117.i.i = and i64 %25, %neg116.i.i
  %conv118.i.i78 = zext i32 %conv to i64
  %shl120.i.i = shl nuw nsw i64 %conv118.i.i78, %sh_prom106.i.i
  %and121.i.i = and i64 %and114.i.i, %shl120.i.i
  %or122.i.i = or i64 %and117.i.i, %and121.i.i
  br label %if.end28.sink.split

if.end123.i.i:                                    ; preds = %if.end100.i.i
  %and125.i.i = and i32 %4, 60
  %and127.i.i = and i32 %shr16, 60
  %cond130.i.i = select i1 %tobool15, i32 37, i32 29
  %sub131.i.i = add nsw i32 %cond130.i.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %and125.i.i, i32 %conv)
  %cmp4.not.i203.i.i = icmp eq i32 %and125.i.i, %conv
  br i1 %cmp4.not.i203.i.i, label %if.end123.i.i.if.end.i221.i.i_crit_edge, label %for.inc.i224.i.i

if.end123.i.i.if.end.i221.i.i_crit_edge:          ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i221.i.i

if.end.i221.i.i:                                  ; preds = %for.inc.1.i233.2.i.i.if.end.i221.i.i_crit_edge, %for.inc.1.i233.1.i.i.if.end.i221.i.i_crit_edge, %for.inc.1.i233.i.i.if.end.i221.i.i_crit_edge, %for.inc.i224.3.i.i.if.end.i221.i.i_crit_edge, %for.inc.i224.2.i.i.if.end.i221.i.i_crit_edge, %for.inc.i224.1.i.i.if.end.i221.i.i_crit_edge, %for.inc.i224.i.i.if.end.i221.i.i_crit_edge, %if.end123.i.i.if.end.i221.i.i_crit_edge
  %i.034.lcssa.i205.i.i = phi i32 [ 1, %for.inc.1.i233.2.i.i.if.end.i221.i.i_crit_edge ], [ 1, %for.inc.1.i233.1.i.i.if.end.i221.i.i_crit_edge ], [ 1, %for.inc.1.i233.i.i.if.end.i221.i.i_crit_edge ], [ 1, %for.inc.i224.3.i.i.if.end.i221.i.i_crit_edge ], [ 0, %for.inc.i224.2.i.i.if.end.i221.i.i_crit_edge ], [ 0, %for.inc.i224.1.i.i.if.end.i221.i.i_crit_edge ], [ 0, %for.inc.i224.i.i.if.end.i221.i.i_crit_edge ], [ 0, %if.end123.i.i.if.end.i221.i.i_crit_edge ]
  %v.033.lcssa.i206.i.i = phi i32 [ 3, %for.inc.1.i233.2.i.i.if.end.i221.i.i_crit_edge ], [ 2, %for.inc.1.i233.1.i.i.if.end.i221.i.i_crit_edge ], [ 1, %for.inc.1.i233.i.i.if.end.i221.i.i_crit_edge ], [ 0, %for.inc.i224.3.i.i.if.end.i221.i.i_crit_edge ], [ 3, %for.inc.i224.2.i.i.if.end.i221.i.i_crit_edge ], [ 2, %for.inc.i224.1.i.i.if.end.i221.i.i_crit_edge ], [ 1, %for.inc.i224.i.i.if.end.i221.i.i_crit_edge ], [ 0, %if.end123.i.i.if.end.i221.i.i_crit_edge ]
  %sh_prom.i207.i.i = zext i32 %sub131.i.i to i64
  %shl.neg.i208.i.i = shl nsw i64 -1, %sh_prom.i207.i.i
  %sub5.i209.i.i = xor i32 %cond130.i.i, 63
  %sh_prom6.i210.i.i = zext i32 %sub5.i209.i.i to i64
  %shr.i211.i.i = lshr i64 -1, %sh_prom6.i210.i.i
  %and.i212.i.i = and i64 %shr.i211.i.i, %shl.neg.i208.i.i
  %neg.i213.i.i = xor i64 %and.i212.i.i, -1
  %and8.i214.i.i = and i64 %neg.i213.i.i, %cpp_island_address
  %26 = zext i32 %i.034.lcssa.i205.i.i to i64
  %sh_prom9.i215.i.i = zext i32 %cond130.i.i to i64
  %shl10.i216.i.i = shl nuw nsw i64 %26, %sh_prom9.i215.i.i
  %conv12.i217.i.i = zext i32 %v.033.lcssa.i206.i.i to i64
  %shl14.i218.i.i = shl nuw nsw i64 %conv12.i217.i.i, %sh_prom.i207.i.i
  %or11.i219.i.i = or i64 %shl14.i218.i.i, %shl10.i216.i.i
  %or15.i220.i.i = or i64 %or11.i219.i.i, %and8.i214.i.i
  br label %if.end28.sink.split

for.inc.i224.i.i:                                 ; preds = %if.end123.i.i
  %or.i202.1.i.i = or i32 %and125.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i202.1.i.i, i32 %conv)
  %cmp4.not.i203.1.i.i = icmp eq i32 %or.i202.1.i.i, %conv
  br i1 %cmp4.not.i203.1.i.i, label %for.inc.i224.i.i.if.end.i221.i.i_crit_edge, label %for.inc.i224.1.i.i

for.inc.i224.i.i.if.end.i221.i.i_crit_edge:       ; preds = %for.inc.i224.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i221.i.i

for.inc.i224.1.i.i:                               ; preds = %for.inc.i224.i.i
  %or.i202.2.i.i = or i32 %and125.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i202.2.i.i, i32 %conv)
  %cmp4.not.i203.2.i.i = icmp eq i32 %or.i202.2.i.i, %conv
  br i1 %cmp4.not.i203.2.i.i, label %for.inc.i224.1.i.i.if.end.i221.i.i_crit_edge, label %for.inc.i224.2.i.i

for.inc.i224.1.i.i.if.end.i221.i.i_crit_edge:     ; preds = %for.inc.i224.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i221.i.i

for.inc.i224.2.i.i:                               ; preds = %for.inc.i224.1.i.i
  %or.i202.3.i.i = or i32 %and19, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i202.3.i.i, i32 %conv)
  %cmp4.not.i203.3.i.i = icmp eq i32 %or.i202.3.i.i, %conv
  br i1 %cmp4.not.i203.3.i.i, label %for.inc.i224.2.i.i.if.end.i221.i.i_crit_edge, label %for.inc.i224.3.i.i

for.inc.i224.2.i.i.if.end.i221.i.i_crit_edge:     ; preds = %for.inc.i224.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i221.i.i

for.inc.i224.3.i.i:                               ; preds = %for.inc.i224.2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and127.i.i, i32 %conv)
  %cmp4.not.1.i229.i.i = icmp eq i32 %and127.i.i, %conv
  br i1 %cmp4.not.1.i229.i.i, label %for.inc.i224.3.i.i.if.end.i221.i.i_crit_edge, label %for.inc.1.i233.i.i

for.inc.i224.3.i.i.if.end.i221.i.i_crit_edge:     ; preds = %for.inc.i224.3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i221.i.i

for.inc.1.i233.i.i:                               ; preds = %for.inc.i224.3.i.i
  %or.1.i228.1.i.i = or i32 %and127.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i228.1.i.i, i32 %conv)
  %cmp4.not.1.i229.1.i.i = icmp eq i32 %or.1.i228.1.i.i, %conv
  br i1 %cmp4.not.1.i229.1.i.i, label %for.inc.1.i233.i.i.if.end.i221.i.i_crit_edge, label %for.inc.1.i233.1.i.i

for.inc.1.i233.i.i.if.end.i221.i.i_crit_edge:     ; preds = %for.inc.1.i233.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i221.i.i

for.inc.1.i233.1.i.i:                             ; preds = %for.inc.1.i233.i.i
  %or.1.i228.2.i.i = or i32 %and127.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i228.2.i.i, i32 %conv)
  %cmp4.not.1.i229.2.i.i = icmp eq i32 %or.1.i228.2.i.i, %conv
  br i1 %cmp4.not.1.i229.2.i.i, label %for.inc.1.i233.1.i.i.if.end.i221.i.i_crit_edge, label %for.inc.1.i233.2.i.i

for.inc.1.i233.1.i.i.if.end.i221.i.i_crit_edge:   ; preds = %for.inc.1.i233.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i221.i.i

for.inc.1.i233.2.i.i:                             ; preds = %for.inc.1.i233.1.i.i
  %or.1.i228.3.i.i = or i32 %and17, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i228.3.i.i, i32 %conv)
  %cmp4.not.1.i229.3.i.i = icmp eq i32 %or.1.i228.3.i.i, %conv
  br i1 %cmp4.not.1.i229.3.i.i, label %for.inc.1.i233.2.i.i.if.end.i221.i.i_crit_edge, label %for.inc.1.i233.2.i.i.do.end25_crit_edge

for.inc.1.i233.2.i.i.do.end25_crit_edge:          ; preds = %for.inc.1.i233.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

for.inc.1.i233.2.i.i.if.end.i221.i.i_crit_edge:   ; preds = %for.inc.1.i233.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i221.i.i

sw.bb4.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not.i = icmp ne i32 %and, 1
  %brmerge.i = or i1 %tobool15, %cmp.not.i
  br i1 %brmerge.i, label %sw.bb4.i.do.end25_crit_edge, label %if.end.i

sw.bb4.i.do.end25_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end.i:                                         ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #5
  %and.i = and i64 %cpp_island_address, -1056964609
  %27 = shl i32 %cpp_island_id, 24
  %28 = and i32 %27, 1056964608
  %and6.i = zext i32 %28 to i64
  %or.i = or i64 %and.i, %and6.i
  br label %if.end28.sink.split

do.end25:                                         ; preds = %sw.bb4.i.do.end25_crit_edge, %for.inc.1.i233.2.i.i.do.end25_crit_edge, %for.inc.1.i.i54.i.do.end25_crit_edge, %if.end48.i.i.do.end25_crit_edge, %sw.bb1.i.do.end25_crit_edge, %for.inc.1.i195.2.i.i.do.end25_crit_edge, %if.end.i.i158.i.i.do.end25_crit_edge, %if.then66.i.i.do.end25_crit_edge, %if.then66.i.i.do.end25_crit_edge92, %for.inc.1.i.i.i.do.end25_crit_edge, %if.end.i.i152.i.i.do.end25_crit_edge, %if.then48.i.i.do.end25_crit_edge, %if.then48.i.i.do.end25_crit_edge91, %if.end35.i.i.do.end25_crit_edge, %if.end.i.i147.i.i.do.end25_crit_edge, %if.then21.i.i.do.end25_crit_edge, %if.then21.i.i.do.end25_crit_edge90, %if.end.i.i.i.i.do.end25_crit_edge, %if.then4.i.i.do.end25_crit_edge, %if.then4.i.i.do.end25_crit_edge89, %if.end.i.i.do.end25_crit_edge, %if.end12.do.end25_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %for.inc.1.i233.2.i.i.do.end25_crit_edge ], [ -19, %for.inc.1.i.i54.i.do.end25_crit_edge ], [ -22, %sw.bb1.i.do.end25_crit_edge ], [ -19, %if.end48.i.i.do.end25_crit_edge ], [ -19, %for.inc.1.i195.2.i.i.do.end25_crit_edge ], [ -19, %for.inc.1.i.i.i.do.end25_crit_edge ], [ -22, %if.then66.i.i.do.end25_crit_edge ], [ -22, %if.then66.i.i.do.end25_crit_edge92 ], [ -22, %if.end.i.i158.i.i.do.end25_crit_edge ], [ -22, %if.then48.i.i.do.end25_crit_edge ], [ -22, %if.then48.i.i.do.end25_crit_edge91 ], [ -22, %if.end.i.i152.i.i.do.end25_crit_edge ], [ -22, %if.then21.i.i.do.end25_crit_edge ], [ -22, %if.then21.i.i.do.end25_crit_edge90 ], [ -22, %if.end.i.i147.i.i.do.end25_crit_edge ], [ -22, %if.then4.i.i.do.end25_crit_edge ], [ -22, %if.then4.i.i.do.end25_crit_edge89 ], [ -22, %if.end.i.i.i.i.do.end25_crit_edge ], [ -22, %if.end.i.i.do.end25_crit_edge ], [ -19, %if.end35.i.i.do.end25_crit_edge ], [ -22, %if.end12.do.end25_crit_edge ], [ -22, %sw.bb4.i.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.ph) #6
  br label %cleanup

if.end28.sink.split:                              ; preds = %if.end.i, %if.end.i221.i.i, %if.then102.i.i, %if.end.i.i46.i, %if.then58.i.i, %if.then51.i.i, %if.then43.i.i, %if.then16.i.i, %sw.bb.i27.i, %if.end.i183.i.i, %if.end.i.i.i, %if.then38.i.i, %if.then30.i.i, %if.end6.i.i
  %or.i.sink = phi i64 [ %or.i, %if.end.i ], [ %or15.i182.i.i, %if.end.i183.i.i ], [ %or15.i.i.i, %if.end.i.i.i ], [ %or41.i.i, %if.then38.i.i ], [ %and34.i.i, %if.then30.i.i ], [ %or.i.i, %if.end6.i.i ], [ %or15.i220.i.i, %if.end.i221.i.i ], [ %or15.i.i45.i, %if.end.i.i46.i ], [ %or122.i.i, %if.then102.i.i ], [ %or78.i.i, %if.then58.i.i ], [ %or54.i.i, %if.then51.i.i ], [ %and47.i.i, %if.then43.i.i ], [ %or36.i.i, %if.then16.i.i ], [ %or.i26.i, %sw.bb.i27.i ]
  %29 = ptrtoint ptr %cpp_target_address to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or.i.sink, ptr %cpp_target_address, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.end.i.i158.i.i.if.end28_crit_edge, %if.end.i.i152.i.i.if.end28_crit_edge, %if.end.i.i147.i.i.if.end28_crit_edge, %if.end.i.i.i.i.if.end28_crit_edge
  %and29 = shl nuw nsw i32 %conv2, 24
  %conv31 = and i32 %cpp_island_id, 16711680
  %or = or i32 %and29, %conv31
  %conv35 = and i32 %cpp_island_id, 65280
  %or38 = or i32 %or, %conv35
  %30 = ptrtoint ptr %cpp_target_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or38, ptr %cpp_target_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end25, %if.end10.cleanup_crit_edge, %if.then9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then9 ], [ %retval.0.i.ph, %do.end25 ], [ 0, %if.end28 ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @nfp6000_mu_common(i32 noundef %cpp_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cpp_id, 16776960
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and, label %sw.default [
    i32 8192, label %entry.return_crit_edge
    i32 73728, label %entry.return_crit_edge42
    i32 139264, label %entry.return_crit_edge43
    i32 204800, label %entry.return_crit_edge44
    i32 0, label %sw.bb4
    i32 65536, label %sw.bb5
    i32 131072, label %sw.bb6
    i32 196608, label %sw.bb7
    i32 256, label %sw.bb8
    i32 65792, label %sw.bb9
    i32 131328, label %sw.bb10
    i32 196864, label %sw.bb11
    i32 768, label %sw.bb12
    i32 131840, label %sw.bb13
    i32 1024, label %sw.bb14
    i32 132096, label %sw.bb15
    i32 197632, label %sw.bb16
    i32 1280, label %sw.bb17
    i32 197888, label %sw.bb18
    i32 1536, label %sw.bb19
    i32 198144, label %sw.bb20
    i32 1792, label %sw.bb21
    i32 198400, label %sw.bb22
    i32 2048, label %sw.bb23
    i32 198656, label %sw.bb24
    i32 2304, label %sw.bb25
    i32 198912, label %sw.bb26
    i32 2560, label %sw.bb27
    i32 199168, label %sw.bb28
    i32 3328, label %sw.bb29
    i32 68864, label %sw.bb30
    i32 134400, label %sw.bb31
    i32 3840, label %sw.bb32
    i32 200448, label %sw.bb33
    i32 7168, label %sw.bb34
    i32 72704, label %sw.bb35
    i32 138240, label %sw.bb36
    i32 203776, label %sw.bb37
    i32 7936, label %sw.bb38
    i32 73472, label %sw.bb39
    i32 139008, label %sw.bb40
    i32 204544, label %sw.bb41
  ]

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return:                                           ; preds = %sw.default, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %entry.return_crit_edge, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44
  %retval.0 = phi i32 [ -22, %sw.default ], [ 16, %sw.bb41 ], [ 16, %sw.bb40 ], [ 16, %sw.bb39 ], [ 16, %sw.bb38 ], [ 1, %sw.bb37 ], [ 1, %sw.bb36 ], [ 1, %sw.bb35 ], [ 1, %sw.bb34 ], [ 1, %sw.bb33 ], [ 16, %sw.bb32 ], [ 16, %sw.bb31 ], [ 1, %sw.bb30 ], [ 1, %sw.bb29 ], [ 1, %sw.bb28 ], [ 16, %sw.bb27 ], [ 1, %sw.bb26 ], [ 16, %sw.bb25 ], [ 1, %sw.bb24 ], [ 16, %sw.bb23 ], [ 1, %sw.bb22 ], [ 16, %sw.bb21 ], [ 1, %sw.bb20 ], [ 16, %sw.bb19 ], [ 1, %sw.bb18 ], [ 16, %sw.bb17 ], [ 1, %sw.bb16 ], [ 0, %sw.bb15 ], [ 16, %sw.bb14 ], [ 16, %sw.bb13 ], [ 1, %sw.bb12 ], [ 32, %sw.bb11 ], [ 32, %sw.bb10 ], [ 32, %sw.bb9 ], [ 32, %sw.bb8 ], [ 2, %sw.bb7 ], [ 2, %sw.bb6 ], [ 2, %sw.bb5 ], [ 2, %sw.bb4 ], [ 34, %entry.return_crit_edge ], [ 34, %entry.return_crit_edge42 ], [ 34, %entry.return_crit_edge43 ], [ 34, %entry.return_crit_edge44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_target.c", i32 711, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfp_target_cpp._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfp_target_cpp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_target.c", i32 733, i32 3}
!8 = !{ptr @nfp_target_cpp._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfp_target_cpp._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
