; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/fiji_baco.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.baco_cmd_entry = type { i32, i32, i32, i32, i32, i32 }

@gpio_tbl = internal constant { [10 x %struct.baco_cmd_entry], [48 x i8] } { [10 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 388, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 403, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 402, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 386, i32 0, i32 0, i32 0, i32 -8912897 }, %struct.baco_cmd_entry { i32 0, i32 18534, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 18532, i32 0, i32 0, i32 0, i32 -1 }, %struct.baco_cmd_entry { i32 0, i32 18530, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 18528, i32 0, i32 0, i32 0, i32 53687091 }, %struct.baco_cmd_entry { i32 0, i32 18566, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 18564, i32 0, i32 0, i32 0, i32 4369 }], [48 x i8] zeroinitializer }, align 32
@enable_fb_req_rej_tbl = internal constant { [3 x %struct.baco_cmd_entry], [56 x i8] } { [3 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1070596060 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 1, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 5412, i32 0, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@use_bclk_tbl = internal constant { [17 x %struct.baco_cmd_entry], [104 x i8] } { [17 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498624 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 8, i32 3, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498620 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 4194304, i32 22, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498596 }, %struct.baco_cmd_entry { i32 2, i32 129, i32 2, i32 0, i32 -1, i32 2 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498620 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 4194304, i32 22, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 8388608, i32 23, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498596 }, %struct.baco_cmd_entry { i32 2, i32 129, i32 2, i32 0, i32 -1, i32 2 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498620 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 8388608, i32 23, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498576 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 67108864, i32 26, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498532 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 65280, i32 8, i32 0, i32 2 }], [104 x i8] zeroinitializer }, align 32
@turn_off_plls_tbl = internal constant { [6 x %struct.baco_cmd_entry], [48 x i8] } { [6 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498624 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 1, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 2, i32 1, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498576 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 33554432, i32 25, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 134217728, i32 27, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@clk_req_b_tbl = internal constant { [12 x %struct.baco_cmd_entry], [64 x i8] } { [12 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498524 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 8, i32 3, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498532 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 65280, i32 8, i32 0, i32 4 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498516 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 255, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 65280, i32 8, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498528 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 4, i32 2, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498520 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 255, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 65280, i32 8, i32 0, i32 1 }], [64 x i8] zeroinitializer }, align 32
@enter_baco_tbl = internal constant { [12 x %struct.baco_cmd_entry], [64 x i8] } { [12 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 1, i32 5349, i32 1, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 262144, i32 18, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 262144, i32 0, i32 5, i32 262144 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 2, i32 1, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 2, i32 0, i32 5, i32 2 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 4, i32 2, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 4, i32 0, i32 5, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 128, i32 7, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 128, i32 0, i32 5, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 8, i32 3, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 8, i32 0, i32 5, i32 8 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 64, i32 0, i32 -1, i32 64 }], [64 x i8] zeroinitializer }, align 32
@exit_baco_tbl = internal constant { [12 x %struct.baco_cmd_entry], [64 x i8] } { [12 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 1, i32 5349, i32 16, i32 4, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 2, i32 1, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 8, i32 3, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 512, i32 0, i32 -1, i32 512 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 4, i32 2, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 7168, i32 0, i32 5, i32 7168 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 128, i32 7, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 262144, i32 18, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 16, i32 4, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 256, i32 0, i32 5, i32 256 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 1, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 64, i32 0, i32 -1, i32 0 }], [64 x i8] zeroinitializer }, align 32
@clean_baco_tbl = internal constant { [16 x %struct.baco_cmd_entry], [96 x i8] } { [16 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 1481, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1482, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1483, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1484, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1485, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1486, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1487, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1488, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1489, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1490, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1491, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1492, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1493, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1494, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1495, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1496, i32 0, i32 0, i32 0, i32 0 }], [96 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"gpio_tbl\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 39, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"enable_fb_req_rej_tbl\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 53, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"use_bclk_tbl\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 60, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"turn_off_plls_tbl\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 81, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"clk_req_b_tbl\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 91, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"enter_baco_tbl\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 107, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"exit_baco_tbl\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 125, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"clean_baco_tbl\00", align 1
@___asan_gen_.23 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 141, i32 36 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @gpio_tbl, ptr @enable_fb_req_rej_tbl, ptr @use_bclk_tbl, ptr @turn_off_plls_tbl, ptr @clk_req_b_tbl, ptr @enter_baco_tbl, ptr @exit_baco_tbl, ptr @clean_baco_tbl], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_tbl to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_fb_req_rej_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_bclk_tbl to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turn_off_plls_tbl to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_req_b_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enter_baco_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_baco_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clean_baco_tbl to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fiji_baco_set_state(ptr noundef %hwmgr, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %cur_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_state) #3
  %0 = ptrtoint ptr %cur_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cur_state, align 4, !annotation !25
  %call = call i32 @smu7_baco_get_state(ptr noundef %hwmgr, ptr noundef nonnull %cur_state) #3
  %1 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %state)
  %cmp = icmp eq i32 %2, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %if.end.if.end20_crit_edge [
    i32 1, label %if.then2
    i32 0, label %if.then12
  ]

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then2:                                         ; preds = %if.end
  %call3 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @gpio_tbl, i32 noundef 10) #3
  %call4 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @enable_fb_req_rej_tbl, i32 noundef 3) #3
  %call5 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @use_bclk_tbl, i32 noundef 17) #3
  %call6 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @turn_off_plls_tbl, i32 noundef 6) #3
  %call7 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @clk_req_b_tbl, i32 noundef 12) #3
  %call8 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @enter_baco_tbl, i32 noundef 12) #3
  br i1 %call8, label %if.then2.cleanup_crit_edge, label %if.then2.if.end20_crit_edge

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @msleep(i32 noundef 20) #3
  %call13 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @exit_baco_tbl, i32 noundef 12) #3
  br i1 %call13, label %if.then14, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then14:                                        ; preds = %if.then12
  %call15 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @clean_baco_tbl, i32 noundef 16) #3
  br i1 %call15, label %if.then14.cleanup_crit_edge, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.then12.if.end20_crit_edge, %if.then2.if.end20_crit_edge, %if.end.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then14.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.then14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_state) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_baco_get_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @baco_program_registers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @gpio_tbl, !1, !"gpio_tbl", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c", i32 39, i32 36}
!2 = !{ptr @enable_fb_req_rej_tbl, !3, !"enable_fb_req_rej_tbl", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c", i32 53, i32 36}
!4 = !{ptr @use_bclk_tbl, !5, !"use_bclk_tbl", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c", i32 60, i32 36}
!6 = !{ptr @turn_off_plls_tbl, !7, !"turn_off_plls_tbl", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c", i32 81, i32 36}
!8 = !{ptr @clk_req_b_tbl, !9, !"clk_req_b_tbl", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c", i32 91, i32 36}
!10 = !{ptr @enter_baco_tbl, !11, !"enter_baco_tbl", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c", i32 107, i32 36}
!12 = !{ptr @exit_baco_tbl, !13, !"exit_baco_tbl", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c", i32 125, i32 36}
!14 = !{ptr @clean_baco_tbl, !15, !"clean_baco_tbl", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/fiji_baco.c", i32 141, i32 36}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
