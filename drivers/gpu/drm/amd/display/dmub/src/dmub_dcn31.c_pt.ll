; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dmub/src/dmub_dcn31.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn31.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dmub_srv_dcn31_regs = type { %struct.dmub_srv_dcn31_reg_offset, %struct.dmub_srv_dcn31_reg_mask, %struct.dmub_srv_dcn31_reg_shift }
%struct.dmub_srv_dcn31_reg_offset = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_dcn31_reg_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_dcn31_reg_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dmub_srv = type { i32, ptr, i32, i8, %struct.dmub_fb, ptr, ptr, ptr, %struct.dmub_srv_base_funcs, %struct.dmub_srv_hw_funcs, %struct.dmub_rb, i32, %struct.dmub_rb, %struct.dmub_rb, i8, i8, i64, i64, i32, %struct.dmub_feature_caps }
%struct.dmub_fb = type { ptr, i64, i32 }
%struct.dmub_srv_base_funcs = type { ptr, ptr }
%struct.dmub_srv_hw_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmub_rb = type { ptr, i32, i32, i32, ptr, ptr }
%struct.dmub_feature_caps = type { i8, [7 x i8] }
%struct.dmub_window = type { %union.dmub_addr, %struct.dmub_region }
%union.dmub_addr = type { i64 }
%struct.dmub_region = type { i32, i32 }
%struct.dmub_srv_hw_params = type { [8 x ptr], i64, i64, i32, i8, i8, i8, i8, i8, i8 }
%struct.dmub_diagnostic_data = type { i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@dmub_srv_dcn31_regs = dso_local constant { %struct.dmub_srv_dcn31_regs, [104 x i8] } { %struct.dmub_srv_dcn31_regs { %struct.dmub_srv_dcn31_reg_offset { i32 14006, i32 14016, i32 13966, i32 13969, i32 13971, i32 13970, i32 13972, i32 13973, i32 13975, i32 13974, i32 13976, i32 13977, i32 13979, i32 13978, i32 13980, i32 13981, i32 13983, i32 13982, i32 13941, i32 13943, i32 13945, i32 13947, i32 13949, i32 13951, i32 13953, i32 13955, i32 13942, i32 13944, i32 13946, i32 13948, i32 13950, i32 13952, i32 13954, i32 13956, i32 13925, i32 13926, i32 13927, i32 13928, i32 13929, i32 13930, i32 13931, i32 13932, i32 13933, i32 13934, i32 13935, i32 13936, i32 13937, i32 13938, i32 13939, i32 13940, i32 13910, i32 13911, i32 13921, i32 13912, i32 13913, i32 13922, i32 13987, i32 13988, i32 13989, i32 13990, i32 13991, i32 13992, i32 13993, i32 13994, i32 13995, i32 13996, i32 13997, i32 13998, i32 13999, i32 14000, i32 14001, i32 14002, i32 14008, i32 14009, i32 13706, i32 14338, i32 14645, i32 14647, i32 14013, i32 13964, i32 14010, i32 13965, i32 13957, i32 13958 }, %struct.dmub_srv_dcn31_reg_mask { i32 65536, i32 524288, i32 1, i32 65536, i32 16128, i32 2097152, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 65536, i32 256, i32 16777215, i32 16777215, i32 -1, i32 131072, i32 131072 }, %struct.dmub_srv_dcn31_reg_shift { i8 16, i8 19, i8 0, i8 16, i8 8, i8 21, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 16, i8 8, i8 0, i8 0, i8 0, i8 17, i8 17 } }, [104 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"dmub_srv_dcn31_regs\00", align 1
@___asan_gen_.2 = private constant [63 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn31.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 39, i32 34 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dmub_srv_dcn31_regs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmub_srv_dcn31_regs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_reset(ptr noundef %dmub) local_unnamed_addr #0 align 64 {
entry:
  %in_reset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_reset) #3
  %0 = ptrtoint ptr %in_reset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %in_reset, align 4, !annotation !11
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %1 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_CNTL2 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %DMCUB_CNTL2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %DMCUB_CNTL2, align 4
  %DMCUB_CNTL2__DMCUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %2, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET, align 2
  %DMCUB_CNTL2__DMCUB_SOFT_RESET3 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %2, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET3, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %4, i8 noundef zeroext %6, i32 noundef %8, ptr noundef nonnull %in_reset) #3
  %9 = ptrtoint ptr %in_reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then:                                          ; preds = %entry
  %set_gpint = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 22
  %11 = ptrtoint ptr %set_gpint to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_gpint, align 4
  call void %12(ptr noundef %dmub, [1 x i32] [i32 33]) #3
  %is_gpint_acked = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 23
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then
  %i.0129 = phi i32 [ 0, %if.then ], [ %inc, %if.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %is_gpint_acked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %is_gpint_acked, align 4
  %call = call zeroext i1 %14(ptr noundef %dmub, [1 x i32] [i32 33]) #3
  br i1 %call, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748) #3
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %get_gpint_response = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 24
  br label %for.body18

for.body18:                                       ; preds = %if.end23.for.body18_crit_edge, %for.end
  %i.1130 = phi i32 [ 0, %for.end ], [ %inc25, %if.end23.for.body18_crit_edge ]
  %16 = ptrtoint ptr %get_gpint_response to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_gpint_response, align 4
  %call20 = call i32 %17(ptr noundef %dmub) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %call20)
  %cmp21 = icmp eq i32 %call20, -559030611
  br i1 %cmp21, label %for.body18.if.end27_crit_edge, label %if.end23

for.body18.if.end27_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.end23:                                         ; preds = %for.body18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748) #3
  %inc25 = add nuw nsw i32 %i.1130, 1
  %exitcond131.not = icmp eq i32 %inc25, 100
  br i1 %exitcond131.not, label %if.end23.if.end27_crit_edge, label %if.end23.for.body18_crit_edge

if.end23.for.body18_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body18

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.end27:                                         ; preds = %if.end23.if.end27_crit_edge, %for.body18.if.end27_crit_edge, %entry.if.end27_crit_edge
  %19 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_CNTL230 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %DMCUB_CNTL230 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %DMCUB_CNTL230, align 4
  %DMCUB_CNTL2__DMCUB_SOFT_RESET33 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %20, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET33 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET33, align 2
  %DMCUB_CNTL2__DMCUB_SOFT_RESET36 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %20, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET36, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %22, i32 noundef 1, i8 noundef zeroext %24, i32 noundef %26, i32 noundef 1) #3
  %27 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs_dcn31, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %shift40 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %shift40 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %shift40, align 4
  %mask42 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %mask42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask42, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %30, i32 noundef 1, i8 noundef zeroext %32, i32 noundef %34, i32 noundef 0) #3
  %35 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs_dcn31, align 8
  %MMHUBBUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %36, i32 0, i32 75
  %37 = ptrtoint ptr %MMHUBBUB_SOFT_RESET to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %MMHUBBUB_SOFT_RESET, align 4
  %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %36, i32 0, i32 2, i32 27
  %39 = ptrtoint ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET, align 1
  %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET50 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %36, i32 0, i32 1, i32 27
  %41 = ptrtoint ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET50, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %38, i32 noundef 1, i8 noundef zeroext %40, i32 noundef %42, i32 noundef 1) #3
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %43 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %45 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %user_ctx, align 4
  %47 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %DMCUB_INBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %DMCUB_INBOX1_RPTR, align 4
  call void %44(ptr noundef %46, i32 noundef %50, i32 noundef 0) #3
  %51 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_write, align 4
  %53 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %user_ctx, align 4
  %55 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %DMCUB_INBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %DMCUB_INBOX1_WPTR, align 4
  call void %52(ptr noundef %54, i32 noundef %58, i32 noundef 0) #3
  %59 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_write, align 4
  %61 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %user_ctx, align 4
  %63 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %64, i32 0, i32 16
  %65 = ptrtoint ptr %DMCUB_OUTBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %DMCUB_OUTBOX1_RPTR, align 4
  call void %60(ptr noundef %62, i32 noundef %66, i32 noundef 0) #3
  %67 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_write, align 4
  %69 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %user_ctx, align 4
  %71 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %72, i32 0, i32 17
  %73 = ptrtoint ptr %DMCUB_OUTBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %DMCUB_OUTBOX1_WPTR, align 4
  call void %68(ptr noundef %70, i32 noundef %74, i32 noundef 0) #3
  %75 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_write, align 4
  %77 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %user_ctx, align 4
  %79 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH0 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %80, i32 0, i32 56
  %81 = ptrtoint ptr %DMCUB_SCRATCH0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %DMCUB_SCRATCH0, align 4
  call void %76(ptr noundef %78, i32 noundef %82, i32 noundef 0) #3
  %set_gpint74 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 22
  %83 = ptrtoint ptr %set_gpint74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_gpint74, align 4
  call void %84(ptr noundef %dmub, [1 x i32] zeroinitializer) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_reset) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_reg_update(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_reset_release(ptr noundef %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %0 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_dcn31, align 8
  %MMHUBBUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %MMHUBBUB_SOFT_RESET to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %MMHUBBUB_SOFT_RESET, align 4
  %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %1, i32 0, i32 2, i32 27
  %4 = ptrtoint ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET, align 1
  %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET3 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %1, i32 0, i32 1, i32 27
  %6 = ptrtoint ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET3, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %3, i32 noundef 1, i8 noundef zeroext %5, i32 noundef %7, i32 noundef 0) #3
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %10 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ctx, align 4
  %12 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH15 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %13, i32 0, i32 71
  %14 = ptrtoint ptr %DMCUB_SCRATCH15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DMCUB_SCRATCH15, align 4
  %psp_version = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 18
  %16 = ptrtoint ptr %psp_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %psp_version, align 8
  %and = and i32 %17, 1114367
  tail call void %9(ptr noundef %11, i32 noundef %15, i32 noundef %and) #3
  %18 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_dcn31, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %shift9 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %shift9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %shift9, align 4
  %mask11 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask11, align 4
  %DMCUB_CNTL__DMCUB_TRACEPORT_EN = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %19, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN, align 1
  %conv = zext i8 %27 to i32
  %DMCUB_CNTL__DMCUB_TRACEPORT_EN17 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %19, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN17, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %21, i32 noundef 2, i8 noundef zeroext %23, i32 noundef %25, i32 noundef 1, i32 noundef %conv, i32 noundef %29, i32 noundef 1) #3
  %30 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_CNTL2 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %DMCUB_CNTL2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DMCUB_CNTL2, align 4
  %DMCUB_CNTL2__DMCUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %31, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET, align 2
  %DMCUB_CNTL2__DMCUB_SOFT_RESET24 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %31, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET24, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %33, i32 noundef 1, i8 noundef zeroext %35, i32 noundef %37, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_backdoor_load(ptr noundef %dmub, ptr nocapture noundef readonly %cw0, ptr nocapture noundef readonly %cw1) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #3
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !11
  %fb_base1.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 16
  %1 = ptrtoint ptr %fb_base1.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %fb_base1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %fb_offset2.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 17
  %3 = ptrtoint ptr %fb_offset2.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fb_offset2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool3.not.i = icmp eq i64 %4, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %fb_offset5.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 17
  %5 = ptrtoint ptr %fb_offset5.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fb_offset5.i, align 8
  br label %dmub_dcn31_get_fb_base_offset.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  %regs_dcn31.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %7 = ptrtoint ptr %regs_dcn31.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs_dcn31.i, align 8
  %DCN_VM_FB_LOCATION_BASE.i = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %8, i32 0, i32 76
  %9 = ptrtoint ptr %DCN_VM_FB_LOCATION_BASE.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %DCN_VM_FB_LOCATION_BASE.i, align 4
  %DCN_VM_FB_LOCATION_BASE__FB_BASE.i = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %8, i32 0, i32 2, i32 28
  %11 = ptrtoint ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE.i, align 4
  %DCN_VM_FB_LOCATION_BASE__FB_BASE8.i = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %8, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE8.i, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %10, i8 noundef zeroext %12, i32 noundef %14, ptr noundef nonnull %tmp.i) #3
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp.i, align 4
  %conv.i = zext i32 %16 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 24
  %17 = ptrtoint ptr %regs_dcn31.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_dcn31.i, align 8
  %DCN_VM_FB_OFFSET.i = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %18, i32 0, i32 77
  %19 = ptrtoint ptr %DCN_VM_FB_OFFSET.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %DCN_VM_FB_OFFSET.i, align 4
  %DCN_VM_FB_OFFSET__FB_OFFSET.i = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %18, i32 0, i32 2, i32 29
  %21 = ptrtoint ptr %DCN_VM_FB_OFFSET__FB_OFFSET.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %DCN_VM_FB_OFFSET__FB_OFFSET.i, align 1
  %DCN_VM_FB_OFFSET__FB_OFFSET15.i = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %18, i32 0, i32 1, i32 29
  %23 = ptrtoint ptr %DCN_VM_FB_OFFSET__FB_OFFSET15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %DCN_VM_FB_OFFSET__FB_OFFSET15.i, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %20, i8 noundef zeroext %22, i32 noundef %24, ptr noundef nonnull %tmp.i) #3
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp.i, align 4
  %conv16.i = zext i32 %26 to i64
  %shl17.i = shl nuw nsw i64 %conv16.i, 24
  br label %dmub_dcn31_get_fb_base_offset.exit

dmub_dcn31_get_fb_base_offset.exit:               ; preds = %if.end.i, %if.then.i
  %fb_base.0 = phi i64 [ %shl.i, %if.end.i ], [ %2, %if.then.i ]
  %storemerge.i = phi i64 [ %shl17.i, %if.end.i ], [ %6, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %27 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SEC_CNTL = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %DMCUB_SEC_CNTL to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %DMCUB_SEC_CNTL, align 4
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %28, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET, align 1
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET4 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %28, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET4, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %30, i32 noundef 1, i8 noundef zeroext %32, i32 noundef %34, i32 noundef 1) #3
  %35 = ptrtoint ptr %cw0 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cw0, align 8
  %sub.i = sub i64 %storemerge.i, %fb_base.0
  %add.i = add i64 %36, %sub.i
  %offset.sroa.0.0.extract.shift = lshr i64 %add.i, 32
  %offset.sroa.0.0.extract.trunc = trunc i64 %offset.sroa.0.0.extract.shift to i32
  %offset.sroa.7.0.extract.trunc = trunc i64 %add.i to i32
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %39 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %user_ctx, align 4
  %41 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW0_OFFSET = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %DMCUB_REGION3_CW0_OFFSET to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DMCUB_REGION3_CW0_OFFSET, align 4
  call void %38(ptr noundef %40, i32 noundef %44, i32 noundef %offset.sroa.0.0.extract.trunc) #3
  %45 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_write, align 4
  %47 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %user_ctx, align 4
  %49 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW0_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %50, i32 0, i32 26
  %51 = ptrtoint ptr %DMCUB_REGION3_CW0_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %DMCUB_REGION3_CW0_OFFSET_HIGH, align 4
  call void %46(ptr noundef %48, i32 noundef %52, i32 noundef %offset.sroa.7.0.extract.trunc) #3
  %53 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_write, align 4
  %55 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user_ctx, align 4
  %57 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW0_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %58, i32 0, i32 34
  %59 = ptrtoint ptr %DMCUB_REGION3_CW0_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %DMCUB_REGION3_CW0_BASE_ADDRESS, align 4
  %region = getelementptr inbounds %struct.dmub_window, ptr %cw0, i32 0, i32 1
  %61 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %region, align 8
  call void %54(ptr noundef %56, i32 noundef %60, i32 noundef %62) #3
  %63 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW0_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %64, i32 0, i32 42
  %65 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %64, i32 0, i32 2, i32 6
  %67 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS, align 2
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS24 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %64, i32 0, i32 1, i32 6
  %69 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS24, align 4
  %top = getelementptr inbounds %struct.dmub_window, ptr %cw0, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %top, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %64, i32 0, i32 2, i32 7
  %73 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE, align 1
  %conv = zext i8 %74 to i32
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE30 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %64, i32 0, i32 1, i32 7
  %75 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE30, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %66, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %68, i32 noundef %70, i32 noundef %72, i32 noundef %conv, i32 noundef %76, i32 noundef 1) #3
  %77 = ptrtoint ptr %cw1 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %cw1, align 8
  %add.i126 = add i64 %78, %sub.i
  %offset.sroa.0.0.extract.shift130 = lshr i64 %add.i126, 32
  %offset.sroa.0.0.extract.trunc131 = trunc i64 %offset.sroa.0.0.extract.shift130 to i32
  %offset.sroa.7.0.extract.trunc132 = trunc i64 %add.i126 to i32
  %79 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_write, align 4
  %81 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %user_ctx, align 4
  %83 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW1_OFFSET = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %84, i32 0, i32 19
  %85 = ptrtoint ptr %DMCUB_REGION3_CW1_OFFSET to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %DMCUB_REGION3_CW1_OFFSET, align 4
  call void %80(ptr noundef %82, i32 noundef %86, i32 noundef %offset.sroa.0.0.extract.trunc131) #3
  %87 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_write, align 4
  %89 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %user_ctx, align 4
  %91 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW1_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %92, i32 0, i32 27
  %93 = ptrtoint ptr %DMCUB_REGION3_CW1_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %DMCUB_REGION3_CW1_OFFSET_HIGH, align 4
  call void %88(ptr noundef %90, i32 noundef %94, i32 noundef %offset.sroa.7.0.extract.trunc132) #3
  %95 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_write, align 4
  %97 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %user_ctx, align 4
  %99 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW1_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %100, i32 0, i32 35
  %101 = ptrtoint ptr %DMCUB_REGION3_CW1_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %DMCUB_REGION3_CW1_BASE_ADDRESS, align 4
  %region49 = getelementptr inbounds %struct.dmub_window, ptr %cw1, i32 0, i32 1
  %103 = ptrtoint ptr %region49 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %region49, align 8
  call void %96(ptr noundef %98, i32 noundef %102, i32 noundef %104) #3
  %105 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW1_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %106, i32 0, i32 43
  %107 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %106, i32 0, i32 2, i32 8
  %109 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS57 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %106, i32 0, i32 1, i32 8
  %111 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS57 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS57, align 4
  %top59 = getelementptr inbounds %struct.dmub_window, ptr %cw1, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %top59 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %top59, align 4
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %106, i32 0, i32 2, i32 9
  %115 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE, align 1
  %conv62 = zext i8 %116 to i32
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE65 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %106, i32 0, i32 1, i32 9
  %117 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE65 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE65, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %108, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %110, i32 noundef %112, i32 noundef %114, i32 noundef %conv62, i32 noundef %118, i32 noundef 1) #3
  %119 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SEC_CNTL68 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %DMCUB_SEC_CNTL68 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %DMCUB_SEC_CNTL68, align 4
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET71 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %120, i32 0, i32 2, i32 3
  %123 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET71 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET71, align 1
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET74 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %120, i32 0, i32 1, i32 3
  %125 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET74 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET74, align 4
  %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %120, i32 0, i32 2, i32 4
  %127 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID, align 4
  %conv77 = zext i8 %128 to i32
  %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID80 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %120, i32 0, i32 1, i32 4
  %129 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID80 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID80, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %122, i32 noundef 2, i8 noundef zeroext %124, i32 noundef %126, i32 noundef 0, i32 noundef %conv77, i32 noundef %130, i32 noundef 32) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_reg_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_setup_windows(ptr noundef %dmub, ptr nocapture noundef readnone %cw2, ptr nocapture noundef readonly %cw3, ptr nocapture noundef readonly %cw4, ptr nocapture noundef readonly %cw5, ptr nocapture noundef readonly %cw6) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cw3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %offset.sroa.0.0.copyload = load i32, ptr %cw3, align 8
  %offset.sroa.12.0.offset1.sroa_idx = getelementptr inbounds i8, ptr %cw3, i32 4
  %1 = ptrtoint ptr %offset.sroa.12.0.offset1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %offset.sroa.12.0.copyload = load i32, ptr %offset.sroa.12.0.offset1.sroa_idx, align 4
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %4 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %6 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW3_OFFSET = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %DMCUB_REGION3_CW3_OFFSET to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %DMCUB_REGION3_CW3_OFFSET, align 4
  tail call void %3(ptr noundef %5, i32 noundef %9, i32 noundef %offset.sroa.0.0.copyload) #3
  %10 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_write, align 4
  %12 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ctx, align 4
  %14 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW3_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %15, i32 0, i32 29
  %16 = ptrtoint ptr %DMCUB_REGION3_CW3_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DMCUB_REGION3_CW3_OFFSET_HIGH, align 4
  tail call void %11(ptr noundef %13, i32 noundef %17, i32 noundef %offset.sroa.12.0.copyload) #3
  %18 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_write, align 4
  %20 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_ctx, align 4
  %22 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW3_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %23, i32 0, i32 37
  %24 = ptrtoint ptr %DMCUB_REGION3_CW3_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DMCUB_REGION3_CW3_BASE_ADDRESS, align 4
  %region = getelementptr inbounds %struct.dmub_window, ptr %cw3, i32 0, i32 1
  %26 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %region, align 8
  tail call void %19(ptr noundef %21, i32 noundef %25, i32 noundef %27) #3
  %28 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW3_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %29, i32 0, i32 45
  %30 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %29, i32 0, i32 2, i32 12
  %32 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS17 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %29, i32 0, i32 1, i32 12
  %34 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS17, align 4
  %top = getelementptr inbounds %struct.dmub_window, ptr %cw3, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %top, align 4
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %29, i32 0, i32 2, i32 13
  %38 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE, align 1
  %conv = zext i8 %39 to i32
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE23 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %29, i32 0, i32 1, i32 13
  %40 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE23, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %31, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %33, i32 noundef %35, i32 noundef %37, i32 noundef %conv, i32 noundef %41, i32 noundef 1) #3
  %42 = ptrtoint ptr %cw4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %offset.sroa.0.0.copyload163 = load i32, ptr %cw4, align 8
  %offset.sroa.12.0.offset24.sroa_idx = getelementptr inbounds i8, ptr %cw4, i32 4
  %43 = ptrtoint ptr %offset.sroa.12.0.offset24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %offset.sroa.12.0.copyload166 = load i32, ptr %offset.sroa.12.0.offset24.sroa_idx, align 4
  %44 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_write, align 4
  %46 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %user_ctx, align 4
  %48 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW4_OFFSET = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %49, i32 0, i32 22
  %50 = ptrtoint ptr %DMCUB_REGION3_CW4_OFFSET to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %DMCUB_REGION3_CW4_OFFSET, align 4
  tail call void %45(ptr noundef %47, i32 noundef %51, i32 noundef %offset.sroa.0.0.copyload163) #3
  %52 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_write, align 4
  %54 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %user_ctx, align 4
  %56 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW4_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %57, i32 0, i32 30
  %58 = ptrtoint ptr %DMCUB_REGION3_CW4_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %DMCUB_REGION3_CW4_OFFSET_HIGH, align 4
  tail call void %53(ptr noundef %55, i32 noundef %59, i32 noundef %offset.sroa.12.0.copyload166) #3
  %60 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_write, align 4
  %62 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %user_ctx, align 4
  %64 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW4_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %65, i32 0, i32 38
  %66 = ptrtoint ptr %DMCUB_REGION3_CW4_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %DMCUB_REGION3_CW4_BASE_ADDRESS, align 4
  %region42 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1
  %68 = ptrtoint ptr %region42 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %region42, align 8
  tail call void %61(ptr noundef %63, i32 noundef %67, i32 noundef %69) #3
  %70 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %71, i32 0, i32 46
  %72 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %71, i32 0, i32 2, i32 14
  %74 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS, align 2
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS50 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %71, i32 0, i32 1, i32 14
  %76 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS50, align 4
  %top52 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %top52 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %top52, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %71, i32 0, i32 2, i32 15
  %80 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE, align 1
  %conv55 = zext i8 %81 to i32
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE58 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %71, i32 0, i32 1, i32 15
  %82 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE58 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE58, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %73, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %75, i32 noundef %77, i32 noundef %79, i32 noundef %conv55, i32 noundef %83, i32 noundef 1) #3
  %84 = ptrtoint ptr %cw5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %offset.sroa.0.0.copyload164 = load i32, ptr %cw5, align 8
  %offset.sroa.12.0.offset59.sroa_idx = getelementptr inbounds i8, ptr %cw5, i32 4
  %85 = ptrtoint ptr %offset.sroa.12.0.offset59.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %85)
  %offset.sroa.12.0.copyload167 = load i32, ptr %offset.sroa.12.0.offset59.sroa_idx, align 4
  %86 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_write, align 4
  %88 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %user_ctx, align 4
  %90 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW5_OFFSET = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %91, i32 0, i32 23
  %92 = ptrtoint ptr %DMCUB_REGION3_CW5_OFFSET to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %DMCUB_REGION3_CW5_OFFSET, align 4
  tail call void %87(ptr noundef %89, i32 noundef %93, i32 noundef %offset.sroa.0.0.copyload164) #3
  %94 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg_write, align 4
  %96 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %user_ctx, align 4
  %98 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW5_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %99, i32 0, i32 31
  %100 = ptrtoint ptr %DMCUB_REGION3_CW5_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %DMCUB_REGION3_CW5_OFFSET_HIGH, align 4
  tail call void %95(ptr noundef %97, i32 noundef %101, i32 noundef %offset.sroa.12.0.copyload167) #3
  %102 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg_write, align 4
  %104 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %user_ctx, align 4
  %106 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW5_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %107, i32 0, i32 39
  %108 = ptrtoint ptr %DMCUB_REGION3_CW5_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %DMCUB_REGION3_CW5_BASE_ADDRESS, align 4
  %region77 = getelementptr inbounds %struct.dmub_window, ptr %cw5, i32 0, i32 1
  %110 = ptrtoint ptr %region77 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %region77, align 8
  tail call void %103(ptr noundef %105, i32 noundef %109, i32 noundef %111) #3
  %112 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %113, i32 0, i32 47
  %114 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %113, i32 0, i32 2, i32 16
  %116 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS85 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %113, i32 0, i32 1, i32 16
  %118 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS85 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS85, align 4
  %top87 = getelementptr inbounds %struct.dmub_window, ptr %cw5, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %top87 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %top87, align 4
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %113, i32 0, i32 2, i32 17
  %122 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE, align 1
  %conv90 = zext i8 %123 to i32
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE93 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %113, i32 0, i32 1, i32 17
  %124 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE93 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE93, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %115, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %117, i32 noundef %119, i32 noundef %121, i32 noundef %conv90, i32 noundef %125, i32 noundef 1) #3
  %126 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg_write, align 4
  %128 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %user_ctx, align 4
  %130 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION5_OFFSET = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %131, i32 0, i32 53
  %132 = ptrtoint ptr %DMCUB_REGION5_OFFSET to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %DMCUB_REGION5_OFFSET, align 4
  tail call void %127(ptr noundef %129, i32 noundef %133, i32 noundef %offset.sroa.0.0.copyload164) #3
  %134 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg_write, align 4
  %136 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %user_ctx, align 4
  %138 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION5_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %139, i32 0, i32 54
  %140 = ptrtoint ptr %DMCUB_REGION5_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %DMCUB_REGION5_OFFSET_HIGH, align 4
  tail call void %135(ptr noundef %137, i32 noundef %141, i32 noundef %offset.sroa.12.0.copyload167) #3
  %142 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %143, i32 0, i32 55
  %144 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %DMCUB_REGION5_TOP_ADDRESS, align 4
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %143, i32 0, i32 2, i32 24
  %146 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS, align 4
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS112 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %143, i32 0, i32 1, i32 24
  %148 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS112 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS112, align 4
  %150 = ptrtoint ptr %top87 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %top87, align 4
  %152 = ptrtoint ptr %region77 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %region77, align 8
  %154 = xor i32 %153, -1
  %sub117 = add i32 %151, %154
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %143, i32 0, i32 2, i32 25
  %155 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE, align 1
  %conv120 = zext i8 %156 to i32
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE123 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %143, i32 0, i32 1, i32 25
  %157 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE123 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE123, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %145, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %147, i32 noundef %149, i32 noundef %sub117, i32 noundef %conv120, i32 noundef %158, i32 noundef 1) #3
  %159 = ptrtoint ptr %cw6 to i32
  call void @__asan_load4_noabort(i32 %159)
  %offset.sroa.0.0.copyload165 = load i32, ptr %cw6, align 8
  %offset.sroa.12.0.offset124.sroa_idx = getelementptr inbounds i8, ptr %cw6, i32 4
  %160 = ptrtoint ptr %offset.sroa.12.0.offset124.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %160)
  %offset.sroa.12.0.copyload168 = load i32, ptr %offset.sroa.12.0.offset124.sroa_idx, align 4
  %161 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg_write, align 4
  %163 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %user_ctx, align 4
  %165 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW6_OFFSET = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %166, i32 0, i32 24
  %167 = ptrtoint ptr %DMCUB_REGION3_CW6_OFFSET to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %DMCUB_REGION3_CW6_OFFSET, align 4
  tail call void %162(ptr noundef %164, i32 noundef %168, i32 noundef %offset.sroa.0.0.copyload165) #3
  %169 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %reg_write, align 4
  %171 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %user_ctx, align 4
  %173 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW6_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %174, i32 0, i32 32
  %175 = ptrtoint ptr %DMCUB_REGION3_CW6_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %DMCUB_REGION3_CW6_OFFSET_HIGH, align 4
  tail call void %170(ptr noundef %172, i32 noundef %176, i32 noundef %offset.sroa.12.0.copyload168) #3
  %177 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg_write, align 4
  %179 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %user_ctx, align 4
  %181 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW6_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %182, i32 0, i32 40
  %183 = ptrtoint ptr %DMCUB_REGION3_CW6_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %DMCUB_REGION3_CW6_BASE_ADDRESS, align 4
  %region142 = getelementptr inbounds %struct.dmub_window, ptr %cw6, i32 0, i32 1
  %185 = ptrtoint ptr %region142 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %region142, align 8
  tail call void %178(ptr noundef %180, i32 noundef %184, i32 noundef %186) #3
  %187 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW6_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %188, i32 0, i32 48
  %189 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %188, i32 0, i32 2, i32 18
  %191 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS, align 2
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS150 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %188, i32 0, i32 1, i32 18
  %193 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS150 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS150, align 4
  %top152 = getelementptr inbounds %struct.dmub_window, ptr %cw6, i32 0, i32 1, i32 1
  %195 = ptrtoint ptr %top152 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %top152, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %188, i32 0, i32 2, i32 19
  %197 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE, align 1
  %conv155 = zext i8 %198 to i32
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE158 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %188, i32 0, i32 1, i32 19
  %199 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE158 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE158, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %190, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %192, i32 noundef %194, i32 noundef %196, i32 noundef %conv155, i32 noundef %200, i32 noundef 1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_setup_mailbox(ptr nocapture noundef readonly %dmub, ptr nocapture noundef readonly %inbox1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX1_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %DMCUB_INBOX1_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_INBOX1_BASE_ADDRESS, align 4
  %8 = ptrtoint ptr %inbox1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inbox1, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %9) #3
  %10 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_write, align 4
  %12 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ctx, align 4
  %14 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX1_SIZE = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %DMCUB_INBOX1_SIZE to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DMCUB_INBOX1_SIZE, align 4
  %top = getelementptr inbounds %struct.dmub_region, ptr %inbox1, i32 0, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top, align 4
  %20 = ptrtoint ptr %inbox1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inbox1, align 4
  %sub = sub i32 %19, %21
  tail call void %11(ptr noundef %13, i32 noundef %17, i32 noundef %sub) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn31_get_inbox1_rptr(ptr nocapture noundef readonly %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %DMCUB_INBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_INBOX1_RPTR, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_set_inbox1_wptr(ptr nocapture noundef readonly %dmub, i32 noundef %wptr_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %DMCUB_INBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_INBOX1_WPTR, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %wptr_offset) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_setup_out_mailbox(ptr nocapture noundef readonly %dmub, ptr nocapture noundef readonly %outbox1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX1_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %DMCUB_OUTBOX1_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX1_BASE_ADDRESS, align 4
  %8 = ptrtoint ptr %outbox1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outbox1, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %9) #3
  %10 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_write, align 4
  %12 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ctx, align 4
  %14 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX1_SIZE = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %DMCUB_OUTBOX1_SIZE to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DMCUB_OUTBOX1_SIZE, align 4
  %top = getelementptr inbounds %struct.dmub_region, ptr %outbox1, i32 0, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top, align 4
  %20 = ptrtoint ptr %outbox1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %outbox1, align 4
  %sub = sub i32 %19, %21
  tail call void %11(ptr noundef %13, i32 noundef %17, i32 noundef %sub) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn31_get_outbox1_wptr(ptr nocapture noundef readonly %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %DMCUB_OUTBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX1_WPTR, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_set_outbox1_rptr(ptr nocapture noundef readonly %dmub, i32 noundef %rptr_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %DMCUB_OUTBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX1_RPTR, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %rptr_offset) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_dcn31_is_hw_init(ptr noundef %dmub) local_unnamed_addr #0 align 64 {
entry:
  %is_enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_enable) #3
  %0 = ptrtoint ptr %is_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %is_enable, align 4, !annotation !11
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %3 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %5 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH0 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %6, i32 0, i32 56
  %7 = ptrtoint ptr %DMCUB_SCRATCH0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DMCUB_SCRATCH0, align 4
  %call = tail call i32 %2(ptr noundef %4, i32 noundef %8) #3
  %9 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs_dcn31, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %shift = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shift, align 4
  %mask = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %12, i8 noundef zeroext %14, i32 noundef %16, ptr noundef nonnull %is_enable) #3
  %17 = ptrtoint ptr %is_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %is_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp.not, i1 %tobool, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_enable) #3
  ret i1 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_dcn31_is_supported(ptr noundef %dmub) local_unnamed_addr #0 align 64 {
entry:
  %supported = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported) #3
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %1 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs_dcn31, align 8
  %CC_DC_PIPE_DIS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %2, i32 0, i32 74
  %3 = ptrtoint ptr %CC_DC_PIPE_DIS to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %CC_DC_PIPE_DIS, align 4
  %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %2, i32 0, i32 2, i32 26
  %5 = ptrtoint ptr %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE, align 2
  %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE3 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %2, i32 0, i32 1, i32 26
  %7 = ptrtoint ptr %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE3, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %4, i8 noundef zeroext %6, i32 noundef %8, ptr noundef nonnull %supported) #3
  %9 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported) #3
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_set_gpint(ptr nocapture noundef readonly %dmub, [1 x i32] %reg.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.coerce.fca.0.extract = extractvalue [1 x i32] %reg.coerce, 0
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_GPINT_DATAIN1 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 72
  %6 = ptrtoint ptr %DMCUB_GPINT_DATAIN1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_GPINT_DATAIN1, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %reg.coerce.fca.0.extract) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_dcn31_is_gpint_acked(ptr nocapture noundef readonly %dmub, [1 x i32] %reg.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.coerce.fca.0.extract = extractvalue [1 x i32] %reg.coerce, 0
  %bf.clear = and i32 %reg.coerce.fca.0.extract, -16
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_GPINT_DATAIN1 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 72
  %6 = ptrtoint ptr %DMCUB_GPINT_DATAIN1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_GPINT_DATAIN1, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %bf.clear)
  %cmp = icmp eq i32 %call, %bf.clear
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn31_get_gpint_response(ptr nocapture noundef readonly %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH7 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 63
  %6 = ptrtoint ptr %DMCUB_SCRATCH7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_SCRATCH7, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn31_get_gpint_dataout(ptr noundef %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_GPINT_DATAOUT = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 73
  %6 = ptrtoint ptr %DMCUB_GPINT_DATAOUT to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_GPINT_DATAOUT, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  %8 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INTERRUPT_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %9, i32 0, i32 82
  %10 = ptrtoint ptr %DMCUB_INTERRUPT_ENABLE to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DMCUB_INTERRUPT_ENABLE, align 4
  %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %9, i32 0, i32 2, i32 31
  %12 = ptrtoint ptr %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN, align 1
  %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN5 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %9, i32 0, i32 1, i32 31
  %14 = ptrtoint ptr %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN5, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %11, i32 noundef 1, i8 noundef zeroext %13, i32 noundef %15, i32 noundef 0) #3
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_write, align 4
  %18 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ctx, align 4
  %20 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_GPINT_DATAOUT10 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %21, i32 0, i32 73
  %22 = ptrtoint ptr %DMCUB_GPINT_DATAOUT10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DMCUB_GPINT_DATAOUT10, align 4
  tail call void %17(ptr noundef %19, i32 noundef %23, i32 noundef 0) #3
  %24 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INTERRUPT_ACK = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %25, i32 0, i32 83
  %26 = ptrtoint ptr %DMCUB_INTERRUPT_ACK to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DMCUB_INTERRUPT_ACK, align 4
  %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %25, i32 0, i32 2, i32 32
  %28 = ptrtoint ptr %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK, align 4
  %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK17 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %25, i32 0, i32 1, i32 32
  %30 = ptrtoint ptr %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK17, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %27, i32 noundef 1, i8 noundef zeroext %29, i32 noundef %31, i32 noundef 1) #3
  %32 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INTERRUPT_ACK20 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %33, i32 0, i32 83
  %34 = ptrtoint ptr %DMCUB_INTERRUPT_ACK20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %DMCUB_INTERRUPT_ACK20, align 4
  %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK23 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %33, i32 0, i32 2, i32 32
  %36 = ptrtoint ptr %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK23 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK23, align 4
  %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK26 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %33, i32 0, i32 1, i32 32
  %38 = ptrtoint ptr %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DMCUB_INTERRUPT_ACK__DMCUB_GPINT_IH_INT_ACK26, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %35, i32 noundef 1, i8 noundef zeroext %37, i32 noundef %39, i32 noundef 0) #3
  %40 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INTERRUPT_ENABLE29 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %41, i32 0, i32 82
  %42 = ptrtoint ptr %DMCUB_INTERRUPT_ENABLE29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DMCUB_INTERRUPT_ENABLE29, align 4
  %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN32 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %41, i32 0, i32 2, i32 31
  %44 = ptrtoint ptr %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN32 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN32, align 1
  %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN35 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %41, i32 0, i32 1, i32 31
  %46 = ptrtoint ptr %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %DMCUB_INTERRUPT_ENABLE__DMCUB_GPINT_IH_INT_EN35, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %43, i32 noundef 1, i8 noundef zeroext %45, i32 noundef %47, i32 noundef 1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn31_get_fw_boot_status(ptr nocapture noundef readonly %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH0 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 56
  %6 = ptrtoint ptr %DMCUB_SCRATCH0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_SCRATCH0, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_enable_dmub_boot_options(ptr nocapture noundef readonly %dmub, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_z10 = getelementptr inbounds %struct.dmub_srv_hw_params, ptr %params, i32 0, i32 6
  %0 = ptrtoint ptr %disable_z10 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disable_z10, align 2, !range !12
  %2 = zext i8 %1 to i32
  %bf.shl = shl nuw nsw i32 %2, 25
  %dpia_supported = getelementptr inbounds %struct.dmub_srv_hw_params, ptr %params, i32 0, i32 8
  %3 = ptrtoint ptr %dpia_supported to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dpia_supported, align 8, !range !12
  %5 = zext i8 %4 to i32
  %bf.shl5 = shl nuw nsw i32 %5, 22
  %bf.set7 = or i32 %bf.shl, %bf.shl5
  %disable_dpia = getelementptr inbounds %struct.dmub_srv_hw_params, ptr %params, i32 0, i32 9
  %6 = ptrtoint ptr %disable_dpia to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disable_dpia, align 1, !range !12
  %8 = xor i8 %7, 1
  %9 = zext i8 %8 to i32
  %bf.shl12 = shl nuw nsw i32 %9, 24
  %bf.set14 = or i32 %bf.shl12, %bf.set7
  %power_optimization = getelementptr inbounds %struct.dmub_srv_hw_params, ptr %params, i32 0, i32 7
  %10 = ptrtoint ptr %power_optimization to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %power_optimization, align 1, !range !12
  %12 = zext i8 %11 to i32
  %bf.shl19 = shl nuw nsw i32 %12, 20
  %bf.set21 = or i32 %bf.set14, %bf.shl19
  %13 = ptrtoint ptr %dmub to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dmub, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp = icmp eq i32 %14, 8
  %bf.shl26 = select i1 %cmp, i32 2097152, i32 0
  %bf.set28 = or i32 %bf.set21, %bf.shl26
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %17 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %19 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH14 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %20, i32 0, i32 70
  %21 = ptrtoint ptr %DMCUB_SCRATCH14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %DMCUB_SCRATCH14, align 4
  tail call void %16(ptr noundef %18, i32 noundef %22, i32 noundef %bf.set28) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_skip_dmub_panel_power_sequence(ptr nocapture noundef readonly %dmub, i1 noundef zeroext %skip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH14 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 70
  %6 = ptrtoint ptr %DMCUB_SCRATCH14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_SCRATCH14, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  %bf.shl = select i1 %skip, i32 67108864, i32 0
  %bf.clear = and i32 %call, -67108865
  %bf.set = or i32 %bf.clear, %bf.shl
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_write, align 4
  %10 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ctx, align 4
  %12 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH145 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %13, i32 0, i32 70
  %14 = ptrtoint ptr %DMCUB_SCRATCH145 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DMCUB_SCRATCH145, align 4
  tail call void %9(ptr noundef %11, i32 noundef %15, i32 noundef %bf.set) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_setup_outbox0(ptr nocapture noundef readonly %dmub, ptr nocapture noundef readonly %outbox0) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX0_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %DMCUB_OUTBOX0_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX0_BASE_ADDRESS, align 4
  %8 = ptrtoint ptr %outbox0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outbox0, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %9) #3
  %10 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_write, align 4
  %12 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ctx, align 4
  %14 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX0_SIZE = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %DMCUB_OUTBOX0_SIZE to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DMCUB_OUTBOX0_SIZE, align 4
  %top = getelementptr inbounds %struct.dmub_region, ptr %outbox0, i32 0, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top, align 4
  %20 = ptrtoint ptr %outbox0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %outbox0, align 4
  %sub = sub i32 %19, %21
  tail call void %11(ptr noundef %13, i32 noundef %17, i32 noundef %sub) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn31_get_outbox0_wptr(ptr nocapture noundef readonly %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX0_WPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %DMCUB_OUTBOX0_WPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX0_WPTR, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_set_outbox0_rptr(ptr nocapture noundef readonly %dmub, i32 noundef %rptr_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_OUTBOX0_RPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %DMCUB_OUTBOX0_RPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX0_RPTR, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %rptr_offset) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn31_get_current_time(ptr nocapture noundef readonly %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_TIMER_CURRENT = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 78
  %6 = ptrtoint ptr %DMCUB_TIMER_CURRENT to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_TIMER_CURRENT, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn31_get_diagnostic_data(ptr noundef %dmub, ptr noundef %diag_data) local_unnamed_addr #0 align 64 {
entry:
  %is_dmub_enabled = alloca i32, align 4
  %is_soft_reset = alloca i32, align 4
  %is_sec_reset = alloca i32, align 4
  %is_traceport_enabled = alloca i32, align 4
  %is_cw0_enabled = alloca i32, align 4
  %is_cw6_enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_dmub_enabled) #3
  %0 = ptrtoint ptr %is_dmub_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %is_dmub_enabled, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_soft_reset) #3
  %1 = ptrtoint ptr %is_soft_reset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %is_soft_reset, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_sec_reset) #3
  %2 = ptrtoint ptr %is_sec_reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %is_sec_reset, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_traceport_enabled) #3
  %3 = ptrtoint ptr %is_traceport_enabled to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %is_traceport_enabled, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_cw0_enabled) #3
  %4 = ptrtoint ptr %is_cw0_enabled to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %is_cw0_enabled, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_cw6_enabled) #3
  %5 = ptrtoint ptr %is_cw6_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %is_cw6_enabled, align 4, !annotation !11
  %tobool.not = icmp eq ptr %dmub, null
  %tobool1.not = icmp eq ptr %diag_data, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = call ptr @memset(ptr %diag_data, i32 0, i32 112)
  %fw_version = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 2
  %7 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_version, align 8
  %9 = ptrtoint ptr %diag_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %diag_data, align 4
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %12 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %14 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH0 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %15, i32 0, i32 56
  %16 = ptrtoint ptr %DMCUB_SCRATCH0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DMCUB_SCRATCH0, align 4
  %call = tail call i32 %11(ptr noundef %13, i32 noundef %17) #3
  %scratch = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1
  %18 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %scratch, align 4
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs, align 4
  %21 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_ctx, align 4
  %23 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH1 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %24, i32 0, i32 57
  %25 = ptrtoint ptr %DMCUB_SCRATCH1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %DMCUB_SCRATCH1, align 4
  %call7 = tail call i32 %20(ptr noundef %22, i32 noundef %26) #3
  %arrayidx9 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call7, ptr %arrayidx9, align 4
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs, align 4
  %30 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %user_ctx, align 4
  %32 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH2 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %33, i32 0, i32 58
  %34 = ptrtoint ptr %DMCUB_SCRATCH2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %DMCUB_SCRATCH2, align 4
  %call15 = tail call i32 %29(ptr noundef %31, i32 noundef %35) #3
  %arrayidx17 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call15, ptr %arrayidx17, align 4
  %37 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %funcs, align 4
  %39 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %user_ctx, align 4
  %41 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH3 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %42, i32 0, i32 59
  %43 = ptrtoint ptr %DMCUB_SCRATCH3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DMCUB_SCRATCH3, align 4
  %call23 = tail call i32 %38(ptr noundef %40, i32 noundef %44) #3
  %arrayidx25 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call23, ptr %arrayidx25, align 4
  %46 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs, align 4
  %48 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %user_ctx, align 4
  %50 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH4 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %51, i32 0, i32 60
  %52 = ptrtoint ptr %DMCUB_SCRATCH4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %DMCUB_SCRATCH4, align 4
  %call31 = tail call i32 %47(ptr noundef %49, i32 noundef %53) #3
  %arrayidx33 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 4
  %54 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call31, ptr %arrayidx33, align 4
  %55 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %funcs, align 4
  %57 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %user_ctx, align 4
  %59 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH5 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %60, i32 0, i32 61
  %61 = ptrtoint ptr %DMCUB_SCRATCH5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %DMCUB_SCRATCH5, align 4
  %call39 = tail call i32 %56(ptr noundef %58, i32 noundef %62) #3
  %arrayidx41 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 5
  %63 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call39, ptr %arrayidx41, align 4
  %64 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %funcs, align 4
  %66 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %user_ctx, align 4
  %68 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH6 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %69, i32 0, i32 62
  %70 = ptrtoint ptr %DMCUB_SCRATCH6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %DMCUB_SCRATCH6, align 4
  %call47 = tail call i32 %65(ptr noundef %67, i32 noundef %71) #3
  %arrayidx49 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 6
  %72 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call47, ptr %arrayidx49, align 4
  %73 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %funcs, align 4
  %75 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %user_ctx, align 4
  %77 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH7 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %78, i32 0, i32 63
  %79 = ptrtoint ptr %DMCUB_SCRATCH7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %DMCUB_SCRATCH7, align 4
  %call55 = tail call i32 %74(ptr noundef %76, i32 noundef %80) #3
  %arrayidx57 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 7
  %81 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call55, ptr %arrayidx57, align 4
  %82 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %funcs, align 4
  %84 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %user_ctx, align 4
  %86 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH8 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %87, i32 0, i32 64
  %88 = ptrtoint ptr %DMCUB_SCRATCH8 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %DMCUB_SCRATCH8, align 4
  %call63 = tail call i32 %83(ptr noundef %85, i32 noundef %89) #3
  %arrayidx65 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 8
  %90 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call63, ptr %arrayidx65, align 4
  %91 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %funcs, align 4
  %93 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %user_ctx, align 4
  %95 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH9 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %96, i32 0, i32 65
  %97 = ptrtoint ptr %DMCUB_SCRATCH9 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %DMCUB_SCRATCH9, align 4
  %call71 = tail call i32 %92(ptr noundef %94, i32 noundef %98) #3
  %arrayidx73 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 9
  %99 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call71, ptr %arrayidx73, align 4
  %100 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %funcs, align 4
  %102 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %user_ctx, align 4
  %104 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH10 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %105, i32 0, i32 66
  %106 = ptrtoint ptr %DMCUB_SCRATCH10 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %DMCUB_SCRATCH10, align 4
  %call79 = tail call i32 %101(ptr noundef %103, i32 noundef %107) #3
  %arrayidx81 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 10
  %108 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call79, ptr %arrayidx81, align 4
  %109 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %funcs, align 4
  %111 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %user_ctx, align 4
  %113 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH11 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %114, i32 0, i32 67
  %115 = ptrtoint ptr %DMCUB_SCRATCH11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %DMCUB_SCRATCH11, align 4
  %call87 = tail call i32 %110(ptr noundef %112, i32 noundef %116) #3
  %arrayidx89 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 11
  %117 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call87, ptr %arrayidx89, align 4
  %118 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %funcs, align 4
  %120 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %user_ctx, align 4
  %122 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH12 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %123, i32 0, i32 68
  %124 = ptrtoint ptr %DMCUB_SCRATCH12 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %DMCUB_SCRATCH12, align 4
  %call95 = tail call i32 %119(ptr noundef %121, i32 noundef %125) #3
  %arrayidx97 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 12
  %126 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call95, ptr %arrayidx97, align 4
  %127 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %funcs, align 4
  %129 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %user_ctx, align 4
  %131 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH13 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %132, i32 0, i32 69
  %133 = ptrtoint ptr %DMCUB_SCRATCH13 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %DMCUB_SCRATCH13, align 4
  %call103 = tail call i32 %128(ptr noundef %130, i32 noundef %134) #3
  %arrayidx105 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 13
  %135 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call103, ptr %arrayidx105, align 4
  %136 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %funcs, align 4
  %138 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %user_ctx, align 4
  %140 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH14 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %141, i32 0, i32 70
  %142 = ptrtoint ptr %DMCUB_SCRATCH14 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %DMCUB_SCRATCH14, align 4
  %call111 = tail call i32 %137(ptr noundef %139, i32 noundef %143) #3
  %arrayidx113 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 14
  %144 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call111, ptr %arrayidx113, align 4
  %145 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %funcs, align 4
  %147 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %user_ctx, align 4
  %149 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH15 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %150, i32 0, i32 71
  %151 = ptrtoint ptr %DMCUB_SCRATCH15 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %DMCUB_SCRATCH15, align 4
  %call119 = tail call i32 %146(ptr noundef %148, i32 noundef %152) #3
  %arrayidx121 = getelementptr %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 1, i32 15
  %153 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %call119, ptr %arrayidx121, align 4
  %154 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %funcs, align 4
  %156 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %user_ctx, align 4
  %158 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_UNDEFINED_ADDRESS_FAULT_ADDR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %159, i32 0, i32 80
  %160 = ptrtoint ptr %DMCUB_UNDEFINED_ADDRESS_FAULT_ADDR to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %DMCUB_UNDEFINED_ADDRESS_FAULT_ADDR, align 4
  %call127 = tail call i32 %155(ptr noundef %157, i32 noundef %161) #3
  %undefined_address_fault_addr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 3
  %162 = ptrtoint ptr %undefined_address_fault_addr to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %call127, ptr %undefined_address_fault_addr, align 4
  %163 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %funcs, align 4
  %165 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %user_ctx, align 4
  %167 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INST_FETCH_FAULT_ADDR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %168, i32 0, i32 79
  %169 = ptrtoint ptr %DMCUB_INST_FETCH_FAULT_ADDR to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %DMCUB_INST_FETCH_FAULT_ADDR, align 4
  %call133 = tail call i32 %164(ptr noundef %166, i32 noundef %170) #3
  %inst_fetch_fault_addr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 4
  %171 = ptrtoint ptr %inst_fetch_fault_addr to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %call133, ptr %inst_fetch_fault_addr, align 4
  %172 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %funcs, align 4
  %174 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %user_ctx, align 4
  %176 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_DATA_WRITE_FAULT_ADDR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %177, i32 0, i32 81
  %178 = ptrtoint ptr %DMCUB_DATA_WRITE_FAULT_ADDR to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %DMCUB_DATA_WRITE_FAULT_ADDR, align 4
  %call139 = tail call i32 %173(ptr noundef %175, i32 noundef %179) #3
  %data_write_fault_addr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 5
  %180 = ptrtoint ptr %data_write_fault_addr to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %call139, ptr %data_write_fault_addr, align 4
  %181 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %funcs, align 4
  %183 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %user_ctx, align 4
  %185 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %186, i32 0, i32 8
  %187 = ptrtoint ptr %DMCUB_INBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %DMCUB_INBOX1_RPTR, align 4
  %call145 = tail call i32 %182(ptr noundef %184, i32 noundef %188) #3
  %inbox1_rptr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 6
  %189 = ptrtoint ptr %inbox1_rptr to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %call145, ptr %inbox1_rptr, align 4
  %190 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %funcs, align 4
  %192 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %user_ctx, align 4
  %194 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %195, i32 0, i32 9
  %196 = ptrtoint ptr %DMCUB_INBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %DMCUB_INBOX1_WPTR, align 4
  %call151 = tail call i32 %191(ptr noundef %193, i32 noundef %197) #3
  %inbox1_wptr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 7
  %198 = ptrtoint ptr %inbox1_wptr to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call151, ptr %inbox1_wptr, align 4
  %199 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %funcs, align 4
  %201 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %user_ctx, align 4
  %203 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX1_SIZE = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %204, i32 0, i32 7
  %205 = ptrtoint ptr %DMCUB_INBOX1_SIZE to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %DMCUB_INBOX1_SIZE, align 4
  %call157 = tail call i32 %200(ptr noundef %202, i32 noundef %206) #3
  %inbox1_size = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 8
  %207 = ptrtoint ptr %inbox1_size to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %call157, ptr %inbox1_size, align 4
  %208 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %funcs, align 4
  %210 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %user_ctx, align 4
  %212 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX0_RPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %DMCUB_INBOX0_RPTR to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %DMCUB_INBOX0_RPTR, align 4
  %call163 = tail call i32 %209(ptr noundef %211, i32 noundef %215) #3
  %inbox0_rptr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 9
  %216 = ptrtoint ptr %inbox0_rptr to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %call163, ptr %inbox0_rptr, align 4
  %217 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %funcs, align 4
  %219 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %user_ctx, align 4
  %221 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX0_WPTR = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %222, i32 0, i32 5
  %223 = ptrtoint ptr %DMCUB_INBOX0_WPTR to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %DMCUB_INBOX0_WPTR, align 4
  %call169 = tail call i32 %218(ptr noundef %220, i32 noundef %224) #3
  %inbox0_wptr = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 10
  %225 = ptrtoint ptr %inbox0_wptr to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %call169, ptr %inbox0_wptr, align 4
  %226 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %funcs, align 4
  %228 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %user_ctx, align 4
  %230 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_INBOX0_SIZE = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %DMCUB_INBOX0_SIZE to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %DMCUB_INBOX0_SIZE, align 4
  %call175 = tail call i32 %227(ptr noundef %229, i32 noundef %233) #3
  %inbox0_size = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 11
  %234 = ptrtoint ptr %inbox0_size to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %call175, ptr %inbox0_size, align 4
  %235 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs_dcn31, align 8
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  %shift = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %236, i32 0, i32 2
  %239 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %shift, align 4
  %mask = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %236, i32 0, i32 1
  %241 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %mask, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %238, i8 noundef zeroext %240, i32 noundef %242, ptr noundef nonnull %is_dmub_enabled) #3
  %243 = ptrtoint ptr %is_dmub_enabled to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %is_dmub_enabled, align 4
  %conv = trunc i32 %244 to i8
  %is_dmcub_enabled = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 12
  %245 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %245)
  %bf.load = load i8, ptr %is_dmcub_enabled, align 4
  %bf.shl = shl i8 %conv, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %is_dmcub_enabled, align 4
  %246 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_CNTL2 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %DMCUB_CNTL2 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %DMCUB_CNTL2, align 4
  %DMCUB_CNTL2__DMCUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %247, i32 0, i32 2, i32 2
  %250 = ptrtoint ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET, align 2
  %DMCUB_CNTL2__DMCUB_SOFT_RESET187 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %247, i32 0, i32 1, i32 2
  %252 = ptrtoint ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET187 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %DMCUB_CNTL2__DMCUB_SOFT_RESET187, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %249, i8 noundef zeroext %251, i32 noundef %253, ptr noundef nonnull %is_soft_reset) #3
  %254 = ptrtoint ptr %is_soft_reset to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %is_soft_reset, align 4
  %conv188 = trunc i32 %255 to i8
  %256 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %256)
  %bf.load189 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value190 = shl i8 %conv188, 6
  %bf.shl191 = and i8 %bf.value190, 64
  %bf.clear192 = and i8 %bf.load189, -65
  %bf.set193 = or i8 %bf.shl191, %bf.clear192
  store i8 %bf.set193, ptr %is_dmcub_enabled, align 4
  %257 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SEC_CNTL = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %DMCUB_SEC_CNTL to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %DMCUB_SEC_CNTL, align 4
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %258, i32 0, i32 2, i32 5
  %261 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS, align 1
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS200 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %258, i32 0, i32 1, i32 5
  %263 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS200 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS200, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %260, i8 noundef zeroext %262, i32 noundef %264, ptr noundef nonnull %is_sec_reset) #3
  %265 = ptrtoint ptr %is_sec_reset to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %is_sec_reset, align 4
  %conv201 = trunc i32 %266 to i8
  %267 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %267)
  %bf.load202 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value203 = shl i8 %conv201, 5
  %bf.shl204 = and i8 %bf.value203, 32
  %bf.clear205 = and i8 %bf.load202, -33
  %bf.set206 = or i8 %bf.shl204, %bf.clear205
  store i8 %bf.set206, ptr %is_dmcub_enabled, align 4
  %268 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %regs_dcn31, align 8
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %269, align 4
  %DMCUB_CNTL__DMCUB_TRACEPORT_EN = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %269, i32 0, i32 2, i32 1
  %272 = ptrtoint ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN, align 1
  %DMCUB_CNTL__DMCUB_TRACEPORT_EN214 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %269, i32 0, i32 1, i32 1
  %274 = ptrtoint ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN214 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN214, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %271, i8 noundef zeroext %273, i32 noundef %275, ptr noundef nonnull %is_traceport_enabled) #3
  %276 = ptrtoint ptr %is_traceport_enabled to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %is_traceport_enabled, align 4
  %conv215 = trunc i32 %277 to i8
  %278 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %278)
  %bf.load216 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value217 = shl i8 %conv215, 4
  %bf.shl218 = and i8 %bf.value217, 16
  %bf.clear219 = and i8 %bf.load216, -17
  %bf.set220 = or i8 %bf.shl218, %bf.clear219
  store i8 %bf.set220, ptr %is_dmcub_enabled, align 4
  %279 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW0_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %280, i32 0, i32 42
  %281 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %280, i32 0, i32 2, i32 7
  %283 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE, align 1
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE227 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %280, i32 0, i32 1, i32 7
  %285 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE227 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE227, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %282, i8 noundef zeroext %284, i32 noundef %286, ptr noundef nonnull %is_cw0_enabled) #3
  %287 = ptrtoint ptr %is_cw0_enabled to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %is_cw0_enabled, align 4
  %conv228 = trunc i32 %288 to i8
  %289 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %289)
  %bf.load230 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value231 = shl i8 %conv228, 3
  %bf.shl232 = and i8 %bf.value231, 8
  %bf.clear233 = and i8 %bf.load230, -9
  %bf.set234 = or i8 %bf.shl232, %bf.clear233
  store i8 %bf.set234, ptr %is_dmcub_enabled, align 4
  %290 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_REGION3_CW6_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %291, i32 0, i32 48
  %292 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %291, i32 0, i32 2, i32 19
  %294 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE, align 1
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE241 = getelementptr inbounds %struct.dmub_srv_dcn31_regs, ptr %291, i32 0, i32 1, i32 19
  %296 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE241 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE241, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %293, i8 noundef zeroext %295, i32 noundef %297, ptr noundef nonnull %is_cw6_enabled) #3
  %298 = ptrtoint ptr %is_cw6_enabled to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %is_cw6_enabled, align 4
  %conv242 = trunc i32 %299 to i8
  %300 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %300)
  %bf.load244 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value245 = shl i8 %conv242, 2
  %bf.shl246 = and i8 %bf.value245, 4
  %bf.clear247 = and i8 %bf.load244, -5
  %bf.set248 = or i8 %bf.shl246, %bf.clear247
  store i8 %bf.set248, ptr %is_dmcub_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_cw6_enabled) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_cw0_enabled) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_traceport_enabled) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_sec_reset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_soft_reset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_dmub_enabled) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_dcn31_should_detect(ptr nocapture noundef readonly %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs_dcn31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 7
  %4 = ptrtoint ptr %regs_dcn31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_dcn31, align 8
  %DMCUB_SCRATCH0 = getelementptr inbounds %struct.dmub_srv_dcn31_reg_offset, ptr %5, i32 0, i32 56
  %6 = ptrtoint ptr %DMCUB_SCRATCH0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_SCRATCH0, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #3
  %and = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @dmub_srv_dcn31_regs, !1, !"dmub_srv_dcn31_regs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn31.c", i32 39, i32 34}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
