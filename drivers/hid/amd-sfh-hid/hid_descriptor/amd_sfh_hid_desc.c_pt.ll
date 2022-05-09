; ModuleID = '/llk/IR_all_yes/drivers/hid/amd-sfh-hid/hid_descriptor/amd_sfh_hid_desc.c_pt.bc'
source_filename = "../drivers/hid/amd-sfh-hid/hid_descriptor/amd_sfh_hid_desc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_input_data = type { [5 x ptr], [5 x ptr] }

@gyro3_report_descriptor = dso_local constant { [345 x i8], [71 x i8] } { [345 x i8] c"\05 \09v\A1\00\85\02\05 \0A\09\03\15\00%\02u\08\95\01\A1\02\0A0\08\0A1\08\0A2\08\B1\00\C0\0A\16\03\15\00%\05u\08\95\01\A1\02\0A@\08\0AA\08\0AB\08\0AC\08\0AD\08\0AE\08\B1\00\C0\0A\19\03\15\00%\05u\08\95\01\A1\02\0AP\08\0AQ\08\0AR\08\0AS\08\0AT\08\0AU\08\B1\00\C0\0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\B1\00\C0\0A\0E\03\15\00'\FF\FF\FF\FFu \95\01U\00\B1\02\0AV\14\15\00&\FF\FFu\10\95\01U\0E\B1\02\0AV$\16\01\80&\FF\7Fu\10\95\01U\0E\B1\02\0AV4\16\01\80&\FF\7Fu\10\95\01U\0E\B1\02\05 \0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\81\00\C0\0A\02\02\15\00%\05u\08\95\01\A1\02\0A\10\08\0A\11\08\0A\12\08\0A\13\08\0A\14\08\0A\15\08\81\00\C0\0AW\04\17\00\00\01\80'\FF\FF\FF\7Fu \95\01U\0E\81\02\0AX\04\17\00\00\01\80'\FF\FF\FF\7Fu \95\01U\0E\81\02\0AY\04\17\00\00\01\80'\FF\FF\FF\7Fu \95\01U\0E\81\02\C0", [71 x i8] zeroinitializer }, align 32
@comp3_report_descriptor = dso_local constant { [414 x i8], [98 x i8] } { [414 x i8] c"\05 \09\83\A1\00\85\03\05 \0A\09\03\15\00%\02u\08\95\01\A1\02\0A0\08\0A1\08\0A2\08\B1\00\C0\0A\16\03\15\00%\05u\08\95\01\A1\02\0A@\08\0AA\08\0AB\08\0AC\08\0AD\08\0AE\08\B1\00\C0\0A\19\03\15\00%\05u\08\95\01\A1\02\0AP\08\0AQ\08\0AR\08\0AS\08\0AT\08\0AU\08\B1\00\C0\0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\B1\00\C0\0A\0E\03\15\00'\FF\FF\FF\FFu \95\01U\00\B1\02\0Aq\14\15\00&\FF\FFu\10\95\01U\0E\B1\02\0Aq$\16\01\80&\FF\7Fu\10\95\01U\0F\B1\02\0Aq4\16\01\80&\FF\7Fu\10\95\01U\0F\B1\02\0A\84\14\15\00&\FF\FFu\10\95\01U\0E\B1\02\0A\84$\16\01\80&\FF\7Fu\10\95\01U\0F\B1\02\0A\844\16\01\80&\FF\7Fu\10\95\01U\0F\B1\02\05 \0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\81\00\C0\0A\02\02\15\00%\05u\08\95\01\A1\02\0A\10\08\0A\11\08\0A\12\08\0A\13\08\0A\14\08\0A\15\08\81\00\C0\0A\85\04\17\00\00\01\80'\FF\FF\FF\7Fu \95\01U\0D\81\02\0A\86\04\17\00\00\01\80'\FF\FF\FF\7Fu \95\01U\0D\81\02\0A\87\04\17\00\00\01\80'\FF\FF\FF\7Fu \95\01U\0D\81\02\0A\88\04\17\00\00\01\80'\FF\FF\FF\7Fu \95\01\81\02\C0", [98 x i8] zeroinitializer }, align 32
@als_report_descriptor = dso_local constant { [301 x i8], [83 x i8] } { [301 x i8] c"\05 \09A\A1\00\85\04\05 \0A\09\03\15\00%\02u\08\95\01\A1\02\0A0\08\0A1\08\0A2\08\B1\00\C0\0A\16\03\15\00%\05u\08\95\01\A1\02\0A@\08\0AA\08\0AB\08\0AC\08\0AD\08\0AE\08\B1\00\C0\0A\19\03\15\00%\05u\08\95\01\A1\02\0AP\08\0AQ\08\0AR\08\0AS\08\0AT\08\0AU\08\B1\00\C0\0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\B1\00\C0\0A\0E\03\15\00'\FF\FF\FF\FFu \95\01U\00\B1\02\0A\D1\E4\15\00&\10'u\10\95\01U\0E\B1\02\0A\D1$\15\00&\FF\FFu\10\95\01U\0F\B1\02\0A\D14\15\00&\FF\FFu\10\95\01U\0F\B1\02\05 \0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\81\00\C0\0A\02\02\15\00%\05u\08\95\01\A1\02\0A\10\08\0A\11\08\0A\12\08\0A\13\08\0A\14\08\0A\15\08\81\00\C0\0A\D1\04\17\00\00\01\80'\FF\FF\FF\7FU\0Fu \95\01\81\02\C0", [83 x i8] zeroinitializer }, align 32
@accel3_report_descriptor = internal constant { [358 x i8], [90 x i8] } { [358 x i8] c"\05 \09s\A1\00\85\01\05 \0A\09\03\15\00%\02u\08\95\01\A1\02\0A0\08\0A1\08\0A2\08\B1\00\C0\0A\16\03\15\00%\05u\08\95\01\A1\02\0A@\08\0AA\08\0AB\08\0AC\08\0AD\08\0AE\08\B1\00\C0\0A\19\03\15\00%\05u\08\95\01\A1\02\0AP\08\0AQ\08\0AR\08\0AS\08\0AT\08\0AU\08\B1\00\C0\0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\B1\00\C0\0A\0E\03\15\00'\FF\FF\FF\FFu \95\01U\00\B1\02\0AR\14\15\00&\FF\FFu\10\95\01U\0E\B1\02\0AR$\16\01\80&\FF\7Fu\10\95\01U\0E\B1\02\0AR4\16\01\80&\FF\7Fu\10\95\01U\0E\B1\02\05 \0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\81\00\C0\0A\02\02\15\00%\05u\08\95\01\A1\02\0A\10\08\0A\11\08\0A\12\08\0A\13\08\0A\14\08\0A\15\08\81\00\C0\0AS\04\17\00\00\01\80'\FF\FF\FF\FFu \95\01U\0E\81\02\0AT\04\17\00\00\01\80'\FF\FF\FF\FFu \95\01U\0E\81\02\0AU\04\17\00\00\01\80'\FF\FF\FF\7Fu \95\01U\0E\81\02\0AQ\04\15\00%\01u\08\95\01\81\02\C0", [90 x i8] zeroinitializer }, align 32
@hpd_report_descriptor = internal constant { [245 x i8], [43 x i8] } { [245 x i8] c"\05 \09\11\A1\00\85\05\05 \0A\09\03\15\00%\02u\08\95\01\A1\02\0A0\08\0A1\08\0A2\08\B1\00\C0\0A\16\03\15\00%\05u\08\95\01\A1\02\0A@\08\0AA\08\0AB\08\0AC\08\0AD\08\0AE\08\B1\00\C0\0A\19\03\15\00%\05u\08\95\01\A1\02\0AP\08\0AQ\08\0AR\08\0AS\08\0AT\08\0AU\08\B1\00\C0\0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\B1\00\C0\0A\0E\03\15\00'\FF\FF\FF\FFu \95\01U\00\B1\02\05 \0A\01\02\15\00%\06u\08\95\01\A1\02\0A\00\08\0A\01\08\0A\02\08\0A\03\08\0A\04\08\0A\05\08\0A\06\08\81\00\C0\0A\02\02\15\00%\05u\08\95\01\A1\02\0A\10\08\0A\11\08\0A\12\08\0A\13\08\0A\14\08\0A\15\08\81\00\C0\0A\B1\04\15\00%\01u\08\95\01\81\02\C0", [43 x i8] zeroinitializer }, align 32
@switch.table.get_descr_sz = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 358, i32 16, i32 15], [20 x i8] zeroinitializer }, align 32
@switch.table.get_descr_sz.1 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 345, i32 15, i32 15], [20 x i8] zeroinitializer }, align 32
@switch.table.get_descr_sz.2 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 414, i32 19, i32 21], [20 x i8] zeroinitializer }, align 32
@switch.table.get_descr_sz.3 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 301, i32 7, i32 15], [20 x i8] zeroinitializer }, align 32
@switch.table.get_descr_sz.4 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 245, i32 4, i32 9], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 16, i64 19]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 16, i64 19]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 16, i64 19]
@__sancov_gen_cov_switch_values.7 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 16, i64 19]
@___asan_gen_ = private constant [61 x i8] c"../drivers/hid/amd-sfh-hid/hid_descriptor/amd_sfh_hid_desc.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [24 x i8] c"gyro3_report_descriptor\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 182, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"comp3_report_descriptor\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 343, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"als_report_descriptor\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 515, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [25 x i8] c"accel3_report_descriptor\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 14, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"hpd_report_descriptor\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [68 x i8] c"../drivers/hid/amd-sfh-hid/hid_descriptor/amd_sfh_hid_report_desc.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 648, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"switch.table.get_descr_sz\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"switch.table.get_descr_sz.1\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"switch.table.get_descr_sz.2\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"switch.table.get_descr_sz.3\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [28 x i8] c"switch.table.get_descr_sz.4\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @gyro3_report_descriptor, ptr @comp3_report_descriptor, ptr @als_report_descriptor, ptr @accel3_report_descriptor, ptr @hpd_report_descriptor, ptr @switch.table.get_descr_sz, ptr @switch.table.get_descr_sz.1, ptr @switch.table.get_descr_sz.2, ptr @switch.table.get_descr_sz.3, ptr @switch.table.get_descr_sz.4], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gyro3_report_descriptor to i32), i32 345, i32 416, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp3_report_descriptor to i32), i32 414, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @als_report_descriptor to i32), i32 301, i32 384, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accel3_report_descriptor to i32), i32 358, i32 448, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_report_descriptor to i32), i32 245, i32 288, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_descr_sz to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_descr_sz.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_descr_sz.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_descr_sz.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_descr_sz.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_report_descriptor(i32 noundef %sensor_idx, ptr nocapture noundef writeonly %rep_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sensor_idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sensor_idx, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 19, label %sw.bb3
    i32 16, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = call ptr @memcpy(ptr %rep_desc, ptr @accel3_report_descriptor, i32 358)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = call ptr @memcpy(ptr %rep_desc, ptr @gyro3_report_descriptor, i32 345)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = call ptr @memcpy(ptr %rep_desc, ptr @comp3_report_descriptor, i32 414)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = call ptr @memcpy(ptr %rep_desc, ptr @als_report_descriptor, i32 301)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = call ptr @memcpy(ptr %rep_desc, ptr @hpd_report_descriptor, i32 245)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_descr_sz(i32 noundef %sensor_idx, i32 noundef %descriptor_name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sensor_idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %sensor_idx, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb9
    i32 19, label %sw.bb14
    i32 16, label %sw.bb19
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %entry
  %switch.tableidx = add i32 %descriptor_name, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 3
  br i1 %1, label %switch.lookup, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb4:                                           ; preds = %entry
  %switch.tableidx30 = add i32 %descriptor_name, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx30)
  %2 = icmp ult i32 %switch.tableidx30, 3
  br i1 %2, label %switch.lookup29, label %sw.bb4.return_crit_edge

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb9:                                           ; preds = %entry
  %switch.tableidx34 = add i32 %descriptor_name, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx34)
  %3 = icmp ult i32 %switch.tableidx34, 3
  br i1 %3, label %switch.lookup33, label %sw.bb9.return_crit_edge

sw.bb9.return_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb14:                                          ; preds = %entry
  %switch.tableidx38 = add i32 %descriptor_name, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx38)
  %4 = icmp ult i32 %switch.tableidx38, 3
  br i1 %4, label %switch.lookup37, label %sw.bb14.return_crit_edge

sw.bb14.return_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb19:                                          ; preds = %entry
  %switch.tableidx42 = add i32 %descriptor_name, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx42)
  %5 = icmp ult i32 %switch.tableidx42, 3
  br i1 %5, label %switch.lookup41, label %sw.bb19.return_crit_edge

sw.bb19.return_crit_edge:                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.get_descr_sz, i32 0, i32 %switch.tableidx
  br label %return.sink.split

switch.lookup29:                                  ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep31 = getelementptr inbounds [3 x i32], ptr @switch.table.get_descr_sz.1, i32 0, i32 %switch.tableidx30
  br label %return.sink.split

switch.lookup33:                                  ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep35 = getelementptr inbounds [3 x i32], ptr @switch.table.get_descr_sz.2, i32 0, i32 %switch.tableidx34
  br label %return.sink.split

switch.lookup37:                                  ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep39 = getelementptr inbounds [3 x i32], ptr @switch.table.get_descr_sz.3, i32 0, i32 %switch.tableidx38
  br label %return.sink.split

switch.lookup41:                                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep43 = getelementptr inbounds [3 x i32], ptr @switch.table.get_descr_sz.4, i32 0, i32 %switch.tableidx42
  br label %return.sink.split

return.sink.split:                                ; preds = %switch.lookup41, %switch.lookup37, %switch.lookup33, %switch.lookup29, %switch.lookup
  %switch.gep43.sink = phi ptr [ %switch.gep43, %switch.lookup41 ], [ %switch.gep39, %switch.lookup37 ], [ %switch.gep35, %switch.lookup33 ], [ %switch.gep31, %switch.lookup29 ], [ %switch.gep, %switch.lookup ]
  %6 = ptrtoint ptr %switch.gep43.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load44 = load i32, ptr %switch.gep43.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb19.return_crit_edge, %sw.bb14.return_crit_edge, %sw.bb9.return_crit_edge, %sw.bb4.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb19.return_crit_edge ], [ 0, %sw.bb14.return_crit_edge ], [ 0, %sw.bb9.return_crit_edge ], [ 0, %sw.bb4.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %switch.load44, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @get_feature_report(i32 noundef %sensor_idx, i32 noundef %report_id, ptr noundef writeonly %feature_report) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %feature_report, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %sensor_idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %sensor_idx, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 19, label %sw.bb5
    i32 16, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i32 %report_id to i8
  %1 = ptrtoint ptr %feature_report to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv.i, ptr %feature_report, align 1
  %acc_feature.sroa.5.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 1
  %2 = ptrtoint ptr %acc_feature.sroa.5.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %acc_feature.sroa.5.0.feature_report.sroa_idx, align 1
  %acc_feature.sroa.7.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 2
  %3 = ptrtoint ptr %acc_feature.sroa.7.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 65, ptr %acc_feature.sroa.7.0.feature_report.sroa_idx, align 1
  %acc_feature.sroa.9.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 3
  %4 = ptrtoint ptr %acc_feature.sroa.9.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 81, ptr %acc_feature.sroa.9.0.feature_report.sroa_idx, align 1
  %acc_feature.sroa.11.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 4
  %5 = ptrtoint ptr %acc_feature.sroa.11.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %acc_feature.sroa.11.0.feature_report.sroa_idx, align 1
  %acc_feature.sroa.13.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 5
  %6 = ptrtoint ptr %acc_feature.sroa.13.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 80, ptr %acc_feature.sroa.13.0.feature_report.sroa_idx, align 1
  %acc_feature.sroa.15.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 9
  %7 = ptrtoint ptr %acc_feature.sroa.15.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 127, ptr %acc_feature.sroa.15.0.feature_report.sroa_idx, align 1
  %acc_feature.sroa.17.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 11
  %8 = ptrtoint ptr %acc_feature.sroa.17.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 128, ptr %acc_feature.sroa.17.0.feature_report.sroa_idx, align 1
  %acc_feature.sroa.19.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 13
  %9 = ptrtoint ptr %acc_feature.sroa.19.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 127, ptr %acc_feature.sroa.19.0.feature_report.sroa_idx, align 1
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i24 = trunc i32 %report_id to i8
  %10 = ptrtoint ptr %feature_report to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i24, ptr %feature_report, align 1
  %gyro_feature.sroa.5.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 1
  %11 = ptrtoint ptr %gyro_feature.sroa.5.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %gyro_feature.sroa.5.0.feature_report.sroa_idx, align 1
  %gyro_feature.sroa.7.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 2
  %12 = ptrtoint ptr %gyro_feature.sroa.7.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 65, ptr %gyro_feature.sroa.7.0.feature_report.sroa_idx, align 1
  %gyro_feature.sroa.9.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 3
  %13 = ptrtoint ptr %gyro_feature.sroa.9.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 81, ptr %gyro_feature.sroa.9.0.feature_report.sroa_idx, align 1
  %gyro_feature.sroa.11.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 4
  %14 = ptrtoint ptr %gyro_feature.sroa.11.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %gyro_feature.sroa.11.0.feature_report.sroa_idx, align 1
  %gyro_feature.sroa.13.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 5
  %15 = ptrtoint ptr %gyro_feature.sroa.13.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 80, ptr %gyro_feature.sroa.13.0.feature_report.sroa_idx, align 1
  %gyro_feature.sroa.15.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 9
  %16 = ptrtoint ptr %gyro_feature.sroa.15.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 127, ptr %gyro_feature.sroa.15.0.feature_report.sroa_idx, align 1
  %gyro_feature.sroa.17.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 11
  %17 = ptrtoint ptr %gyro_feature.sroa.17.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 128, ptr %gyro_feature.sroa.17.0.feature_report.sroa_idx, align 1
  %gyro_feature.sroa.19.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 13
  %18 = ptrtoint ptr %gyro_feature.sroa.19.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 127, ptr %gyro_feature.sroa.19.0.feature_report.sroa_idx, align 1
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i30 = trunc i32 %report_id to i8
  %19 = ptrtoint ptr %feature_report to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i30, ptr %feature_report, align 1
  %magno_feature.sroa.5.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 1
  %20 = ptrtoint ptr %magno_feature.sroa.5.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %magno_feature.sroa.5.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.7.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 2
  %21 = ptrtoint ptr %magno_feature.sroa.7.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 65, ptr %magno_feature.sroa.7.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.9.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 3
  %22 = ptrtoint ptr %magno_feature.sroa.9.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 81, ptr %magno_feature.sroa.9.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.11.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 4
  %23 = ptrtoint ptr %magno_feature.sroa.11.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %magno_feature.sroa.11.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.13.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 5
  %24 = ptrtoint ptr %magno_feature.sroa.13.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 80, ptr %magno_feature.sroa.13.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.15.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 9
  %25 = ptrtoint ptr %magno_feature.sroa.15.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 127, ptr %magno_feature.sroa.15.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.17.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 11
  %26 = ptrtoint ptr %magno_feature.sroa.17.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 127, ptr %magno_feature.sroa.17.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.19.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 13
  %27 = ptrtoint ptr %magno_feature.sroa.19.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 128, ptr %magno_feature.sroa.19.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.21.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 15
  %28 = ptrtoint ptr %magno_feature.sroa.21.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 127, ptr %magno_feature.sroa.21.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.23.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 17
  %29 = ptrtoint ptr %magno_feature.sroa.23.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 127, ptr %magno_feature.sroa.23.0.feature_report.sroa_idx, align 1
  %magno_feature.sroa.25.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 19
  %30 = ptrtoint ptr %magno_feature.sroa.25.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 128, ptr %magno_feature.sroa.25.0.feature_report.sroa_idx, align 1
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i36 = trunc i32 %report_id to i8
  %31 = ptrtoint ptr %feature_report to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i36, ptr %feature_report, align 1
  %als_feature.sroa.5.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 1
  %32 = ptrtoint ptr %als_feature.sroa.5.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %als_feature.sroa.5.0.feature_report.sroa_idx, align 1
  %als_feature.sroa.7.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 2
  %33 = ptrtoint ptr %als_feature.sroa.7.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 65, ptr %als_feature.sroa.7.0.feature_report.sroa_idx, align 1
  %als_feature.sroa.9.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 3
  %34 = ptrtoint ptr %als_feature.sroa.9.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 81, ptr %als_feature.sroa.9.0.feature_report.sroa_idx, align 1
  %als_feature.sroa.11.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 4
  %35 = ptrtoint ptr %als_feature.sroa.11.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %als_feature.sroa.11.0.feature_report.sroa_idx, align 1
  %als_feature.sroa.13.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 5
  %36 = ptrtoint ptr %als_feature.sroa.13.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 80, ptr %als_feature.sroa.13.0.feature_report.sroa_idx, align 1
  %als_feature.sroa.15.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 9
  %37 = ptrtoint ptr %als_feature.sroa.15.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 127, ptr %als_feature.sroa.15.0.feature_report.sroa_idx, align 1
  %als_feature.sroa.17.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 11
  %38 = ptrtoint ptr %als_feature.sroa.17.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 128, ptr %als_feature.sroa.17.0.feature_report.sroa_idx, align 1
  %als_feature.sroa.19.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 13
  %39 = ptrtoint ptr %als_feature.sroa.19.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 127, ptr %als_feature.sroa.19.0.feature_report.sroa_idx, align 1
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i42 = trunc i32 %report_id to i8
  %40 = ptrtoint ptr %feature_report to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i42, ptr %feature_report, align 1
  %hpd_feature.sroa.5.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 1
  %41 = ptrtoint ptr %hpd_feature.sroa.5.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %hpd_feature.sroa.5.0.feature_report.sroa_idx, align 1
  %hpd_feature.sroa.7.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 2
  %42 = ptrtoint ptr %hpd_feature.sroa.7.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 65, ptr %hpd_feature.sroa.7.0.feature_report.sroa_idx, align 1
  %hpd_feature.sroa.9.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 3
  %43 = ptrtoint ptr %hpd_feature.sroa.9.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 81, ptr %hpd_feature.sroa.9.0.feature_report.sroa_idx, align 1
  %hpd_feature.sroa.11.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 4
  %44 = ptrtoint ptr %hpd_feature.sroa.11.0.feature_report.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %hpd_feature.sroa.11.0.feature_report.sroa_idx, align 1
  %hpd_feature.sroa.13.0.feature_report.sroa_idx = getelementptr inbounds i8, ptr %feature_report, i32 5
  %45 = ptrtoint ptr %hpd_feature.sroa.13.0.feature_report.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 80, ptr %hpd_feature.sroa.13.0.feature_report.sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 9, %sw.bb7 ], [ 15, %sw.bb5 ], [ 21, %sw.bb3 ], [ 15, %sw.bb1 ], [ 15, %sw.bb ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @get_input_report(i8 noundef zeroext %current_index, i32 noundef %sensor_idx, i32 noundef %report_id, ptr nocapture noundef readonly %in_data) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %current_index to i32
  %arrayidx = getelementptr [5 x ptr], ptr %in_data, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.amd_input_data, ptr %in_data, i32 0, i32 1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  %mp2_acs = getelementptr i8, ptr %in_data, i32 40
  %4 = ptrtoint ptr %mp2_acs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mp2_acs, align 4
  %conv = and i32 %5, 15
  %tobool.not = icmp eq ptr %1, null
  %tobool5.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %sensor_idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %sensor_idx, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb19
    i32 19, label %sw.bb31
    i32 16, label %sw.bb44
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i32 %report_id to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %div = sdiv i32 %8, 1000
  %arrayidx7 = getelementptr i32, ptr %1, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  %div8 = sdiv i32 %10, 1000
  %arrayidx9 = getelementptr i32, ptr %1, i32 2
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %div10 = sdiv i32 %12, 1000
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %3, align 1
  %acc_input.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 1
  %14 = ptrtoint ptr %acc_input.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %acc_input.sroa.5.0..sroa_idx, align 1
  %acc_input.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 2
  %15 = ptrtoint ptr %acc_input.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %acc_input.sroa.7.0..sroa_idx, align 1
  %acc_input.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 3
  %16 = ptrtoint ptr %acc_input.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %div, ptr %acc_input.sroa.9.0..sroa_idx, align 1
  %acc_input.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 7
  %17 = ptrtoint ptr %acc_input.sroa.11.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %div8, ptr %acc_input.sroa.11.0..sroa_idx, align 1
  %acc_input.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 11
  %18 = ptrtoint ptr %acc_input.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %div10, ptr %acc_input.sroa.13.0..sroa_idx, align 1
  %acc_input.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 15
  %19 = ptrtoint ptr %acc_input.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %acc_input.sroa.15.0..sroa_idx, align 1
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i91 = trunc i32 %report_id to i8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %div14 = sdiv i32 %21, 1000
  %arrayidx15 = getelementptr i32, ptr %1, i32 1
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15, align 4
  %div16 = sdiv i32 %23, 1000
  %arrayidx17 = getelementptr i32, ptr %1, i32 2
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17, align 4
  %div18 = sdiv i32 %25, 1000
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i91, ptr %3, align 1
  %gyro_input.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 1
  %27 = ptrtoint ptr %gyro_input.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %gyro_input.sroa.5.0..sroa_idx, align 1
  %gyro_input.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 2
  %28 = ptrtoint ptr %gyro_input.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %gyro_input.sroa.7.0..sroa_idx, align 1
  %gyro_input.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 3
  %29 = ptrtoint ptr %gyro_input.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %div14, ptr %gyro_input.sroa.9.0..sroa_idx, align 1
  %gyro_input.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 7
  %30 = ptrtoint ptr %gyro_input.sroa.11.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %div16, ptr %gyro_input.sroa.11.0..sroa_idx, align 1
  %gyro_input.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 11
  %31 = ptrtoint ptr %gyro_input.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %div18, ptr %gyro_input.sroa.13.0..sroa_idx, align 1
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i94 = trunc i32 %report_id to i8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %div22 = sdiv i32 %33, 1000
  %arrayidx23 = getelementptr i32, ptr %1, i32 1
  %34 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx23, align 4
  %div24 = sdiv i32 %35, 1000
  %arrayidx25 = getelementptr i32, ptr %1, i32 2
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx25, align 4
  %div26 = sdiv i32 %37, 1000
  %arrayidx27 = getelementptr i32, ptr %1, i32 3
  %38 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx27, align 4
  %40 = trunc i32 %39 to i16
  %div30103 = udiv i16 %40, 1000
  %div30.zext = zext i16 %div30103 to i32
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i94, ptr %3, align 1
  %magno_input.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 1
  %42 = ptrtoint ptr %magno_input.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %magno_input.sroa.5.0..sroa_idx, align 1
  %magno_input.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 2
  %43 = ptrtoint ptr %magno_input.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 4, ptr %magno_input.sroa.7.0..sroa_idx, align 1
  %magno_input.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 3
  %44 = ptrtoint ptr %magno_input.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %div22, ptr %magno_input.sroa.9.0..sroa_idx, align 1
  %magno_input.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 7
  %45 = ptrtoint ptr %magno_input.sroa.11.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %div24, ptr %magno_input.sroa.11.0..sroa_idx, align 1
  %magno_input.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 11
  %46 = ptrtoint ptr %magno_input.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %div26, ptr %magno_input.sroa.13.0..sroa_idx, align 1
  %magno_input.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 15
  %47 = ptrtoint ptr %magno_input.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %div30.zext, ptr %magno_input.sroa.15.0..sroa_idx, align 1
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %conv.i97 = trunc i32 %report_id to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv)
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then35, label %if.else

if.then35:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #6
  %mmio = getelementptr i8, ptr %in_data, i32 -8
  %48 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio, align 4
  %add.ptr36 = getelementptr i8, ptr %49, i32 66836
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %51 = and i32 %50, -8454144
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  br label %if.end43

if.else:                                          ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 4
  %div41 = sdiv i32 %54, 1000
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then35
  %storemerge = phi i32 [ %div41, %if.else ], [ %52, %if.then35 ]
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i97, ptr %3, align 1
  %als_input.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 1
  %56 = ptrtoint ptr %als_input.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %als_input.sroa.5.0..sroa_idx, align 1
  %als_input.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 2
  %57 = ptrtoint ptr %als_input.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %als_input.sroa.7.0..sroa_idx, align 1
  %als_input.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 3
  %58 = ptrtoint ptr %als_input.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %storemerge, ptr %als_input.sroa.9.0..sroa_idx, align 1
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mmio48 = getelementptr i8, ptr %in_data, i32 -8
  %59 = ptrtoint ptr %mmio48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio48, align 4
  %add.ptr49 = getelementptr i8, ptr %60, i32 66832
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  %conv53 = and i32 %61, 15
  %hpd_input.sroa.0.0.insert.ext = shl i32 %report_id, 24
  %hpd_input.sroa.5.0.insert.insert = or i32 %conv53, %hpd_input.sroa.0.0.insert.ext
  %hpd_input.sroa.0.0.insert.insert = or i32 %hpd_input.sroa.5.0.insert.insert, 132096
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %hpd_input.sroa.0.0.insert.insert, ptr %3, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb44, %if.end43, %sw.bb19, %sw.bb11, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 4, %sw.bb44 ], [ 7, %if.end43 ], [ 19, %sw.bb19 ], [ 15, %sw.bb11 ], [ 16, %sw.bb ]
  ret i8 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @gyro3_report_descriptor, !1, !"gyro3_report_descriptor", i1 false, i1 false}
!1 = !{!"../drivers/hid/amd-sfh-hid/hid_descriptor/amd_sfh_hid_report_desc.h", i32 182, i32 10}
!2 = !{ptr @comp3_report_descriptor, !3, !"comp3_report_descriptor", i1 false, i1 false}
!3 = !{!"../drivers/hid/amd-sfh-hid/hid_descriptor/amd_sfh_hid_report_desc.h", i32 343, i32 10}
!4 = !{ptr @als_report_descriptor, !5, !"als_report_descriptor", i1 false, i1 false}
!5 = !{!"../drivers/hid/amd-sfh-hid/hid_descriptor/amd_sfh_hid_report_desc.h", i32 515, i32 10}
!6 = !{ptr @accel3_report_descriptor, !7, !"accel3_report_descriptor", i1 false, i1 false}
!7 = !{!"../drivers/hid/amd-sfh-hid/hid_descriptor/amd_sfh_hid_report_desc.h", i32 14, i32 17}
!8 = !{ptr @hpd_report_descriptor, !9, !"hpd_report_descriptor", i1 false, i1 false}
!9 = !{!"../drivers/hid/amd-sfh-hid/hid_descriptor/amd_sfh_hid_report_desc.h", i32 648, i32 17}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 5383460}
!20 = !{i64 2154468703}
!21 = !{i64 2154470002}
