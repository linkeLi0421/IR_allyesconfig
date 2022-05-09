; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dmub/src/dmub_dcn20.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn20.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dmub_srv_common_regs = type { %struct.dmub_srv_common_reg_offset, %struct.dmub_srv_common_reg_mask, %struct.dmub_srv_common_reg_shift }
%struct.dmub_srv_common_reg_offset = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_common_reg_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmub_srv_common_reg_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dmub_srv = type { i32, ptr, i32, i8, %struct.dmub_fb, ptr, ptr, ptr, %struct.dmub_srv_base_funcs, %struct.dmub_srv_hw_funcs, %struct.dmub_rb, i32, %struct.dmub_rb, %struct.dmub_rb, i8, i8, i64, i64, i32, %struct.dmub_feature_caps }
%struct.dmub_fb = type { ptr, i64, i32 }
%struct.dmub_srv_base_funcs = type { ptr, ptr }
%struct.dmub_srv_hw_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmub_rb = type { ptr, i32, i32, i32, ptr, ptr }
%struct.dmub_feature_caps = type { i8, [7 x i8] }
%struct.dmub_window = type { %union.dmub_addr, %struct.dmub_region }
%union.dmub_addr = type { i64 }
%struct.dmub_region = type { i32, i32 }
%struct.dmub_diagnostic_data = type { i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@dmub_srv_dcn20_regs = dso_local constant { %struct.dmub_srv_common_regs, [112 x i8] } { %struct.dmub_srv_common_regs { %struct.dmub_srv_common_reg_offset { i32 26464, i32 26425, i32 26424, i32 26427, i32 26429, i32 26428, i32 26430, i32 26431, i32 26433, i32 26432, i32 26434, i32 26435, i32 26437, i32 26436, i32 26438, i32 26439, i32 26441, i32 26440, i32 26399, i32 26401, i32 26403, i32 26405, i32 26407, i32 26409, i32 26411, i32 26413, i32 26400, i32 26402, i32 26404, i32 26406, i32 26408, i32 26410, i32 26412, i32 26414, i32 26383, i32 26384, i32 26385, i32 26386, i32 26387, i32 26388, i32 26389, i32 26390, i32 26391, i32 26392, i32 26393, i32 26394, i32 26395, i32 26396, i32 26397, i32 26398, i32 26368, i32 26369, i32 26379, i32 26370, i32 26371, i32 26380, i32 26445, i32 26446, i32 26447, i32 26448, i32 26449, i32 26450, i32 26451, i32 26452, i32 26453, i32 26454, i32 26455, i32 26456, i32 26457, i32 26458, i32 26459, i32 26460, i32 26466, i32 13706, i32 14339, i32 14675, i32 14677, i32 26416, i32 26471, i32 26422, i32 26468, i32 26423 }, %struct.dmub_srv_common_reg_mask { i32 65536, i32 131072, i32 524288, i32 28672, i32 1792, i32 65536, i32 16128, i32 2097152, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 65536, i32 256, i32 16777215, i32 16777215, i32 64 }, %struct.dmub_srv_common_reg_shift { i8 16, i8 17, i8 19, i8 12, i8 8, i8 16, i8 8, i8 21, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 16, i8 8, i8 0, i8 0, i8 6 } }, [112 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"dmub_srv_dcn20_regs\00", align 1
@___asan_gen_.2 = private constant [63 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn20.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 41, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dmub_srv_dcn20_regs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmub_srv_dcn20_regs to i32), i32 496, i32 608, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dmub_dcn20_use_cached_inbox(ptr nocapture noundef readonly %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_version = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 2
  %0 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_version, align 8
  %2 = add i32 %1, -17432577
  call void @__sanitizer_cov_trace_const_cmp4(i32 -655361, i32 %2)
  %3 = icmp ult i32 %2, -655361
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_reset(ptr noundef %dmub) local_unnamed_addr #1 align 64 {
entry:
  %in_reset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_reset) #4
  %0 = ptrtoint ptr %in_reset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %in_reset, align 4, !annotation !11
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %DMCUB_CNTL__DMCUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %2, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %DMCUB_CNTL__DMCUB_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %DMCUB_CNTL__DMCUB_SOFT_RESET, align 1
  %DMCUB_CNTL__DMCUB_SOFT_RESET3 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %2, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %DMCUB_CNTL__DMCUB_SOFT_RESET3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DMCUB_CNTL__DMCUB_SOFT_RESET3, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %4, i8 noundef zeroext %6, i32 noundef %8, ptr noundef nonnull %in_reset) #4
  %9 = ptrtoint ptr %in_reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then:                                          ; preds = %entry
  %set_gpint = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 22
  %11 = ptrtoint ptr %set_gpint to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_gpint, align 4
  call void %12(ptr noundef %dmub, [1 x i32] [i32 33]) #4
  %is_gpint_acked = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 23
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.0130 = phi i32 [ 0, %if.then ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %is_gpint_acked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %is_gpint_acked, align 4
  %call = call zeroext i1 %14(ptr noundef %dmub, [1 x i32] [i32 33]) #4
  %inc = add nuw nsw i32 %i.0130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 30
  %or.cond = select i1 %call, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %get_gpint_response = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 24
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.end
  %i.1131 = phi i32 [ 0, %for.end ], [ %inc25, %for.body18.for.body18_crit_edge ]
  %15 = ptrtoint ptr %get_gpint_response to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_gpint_response, align 4
  %call20 = call i32 %16(ptr noundef %dmub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %call20)
  %cmp21 = icmp eq i32 %call20, -559030611
  %inc25 = add nuw nsw i32 %i.1131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc25)
  %exitcond132.not = icmp eq i32 %inc25, 30
  %or.cond133 = select i1 %cmp21, i1 true, i1 %exitcond132.not
  br i1 %or.cond133, label %for.end26, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18

for.end26:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %set_gpint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_gpint, align 4
  call void %18(ptr noundef %dmub, [1 x i32] zeroinitializer) #4
  br label %if.end31

if.end31:                                         ; preds = %for.end26, %entry.if.end31_crit_edge
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %DMCUB_CNTL__DMCUB_SOFT_RESET37 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %20, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %DMCUB_CNTL__DMCUB_SOFT_RESET37 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %DMCUB_CNTL__DMCUB_SOFT_RESET37, align 1
  %DMCUB_CNTL__DMCUB_SOFT_RESET40 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %20, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %DMCUB_CNTL__DMCUB_SOFT_RESET40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %DMCUB_CNTL__DMCUB_SOFT_RESET40, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %22, i32 noundef 1, i8 noundef zeroext %24, i32 noundef %26, i32 noundef 1) #4
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %shift45 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %shift45 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %shift45, align 4
  %mask47 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %mask47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask47, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %30, i32 noundef 1, i8 noundef zeroext %32, i32 noundef %34, i32 noundef 0) #4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %MMHUBBUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %36, i32 0, i32 74
  %37 = ptrtoint ptr %MMHUBBUB_SOFT_RESET to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %MMHUBBUB_SOFT_RESET, align 4
  %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %36, i32 0, i32 2, i32 29
  %39 = ptrtoint ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET, align 1
  %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET55 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %36, i32 0, i32 1, i32 29
  %41 = ptrtoint ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET55, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %38, i32 noundef 1, i8 noundef zeroext %40, i32 noundef %42, i32 noundef 1) #4
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %43 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %45 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %user_ctx, align 4
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %DMCUB_INBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %DMCUB_INBOX1_RPTR, align 4
  call void %44(ptr noundef %46, i32 noundef %50, i32 noundef 0) #4
  %51 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_write, align 4
  %53 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %user_ctx, align 4
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %DMCUB_INBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %DMCUB_INBOX1_WPTR, align 4
  call void %52(ptr noundef %54, i32 noundef %58, i32 noundef 0) #4
  %59 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_write, align 4
  %61 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %user_ctx, align 4
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %DMCUB_OUTBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %64, i32 0, i32 16
  %65 = ptrtoint ptr %DMCUB_OUTBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %DMCUB_OUTBOX1_RPTR, align 4
  call void %60(ptr noundef %62, i32 noundef %66, i32 noundef 0) #4
  %67 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_write, align 4
  %69 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %user_ctx, align 4
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs, align 4
  %DMCUB_OUTBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %72, i32 0, i32 17
  %73 = ptrtoint ptr %DMCUB_OUTBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %DMCUB_OUTBOX1_WPTR, align 4
  call void %68(ptr noundef %70, i32 noundef %74, i32 noundef 0) #4
  %75 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_write, align 4
  %77 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %user_ctx, align 4
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH0 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %80, i32 0, i32 56
  %81 = ptrtoint ptr %DMCUB_SCRATCH0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %DMCUB_SCRATCH0, align 4
  call void %76(ptr noundef %78, i32 noundef %82, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_reset) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_reg_update(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_reset_release(ptr noundef %dmub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %MMHUBBUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %1, i32 0, i32 74
  %2 = ptrtoint ptr %MMHUBBUB_SOFT_RESET to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %MMHUBBUB_SOFT_RESET, align 4
  %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %1, i32 0, i32 2, i32 29
  %4 = ptrtoint ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET, align 1
  %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET3 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %1, i32 0, i32 1, i32 29
  %6 = ptrtoint ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MMHUBBUB_SOFT_RESET__DMUIF_SOFT_RESET3, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %3, i32 noundef 1, i8 noundef zeroext %5, i32 noundef %7, i32 noundef 0) #4
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %10 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ctx, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH15 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %13, i32 0, i32 71
  %14 = ptrtoint ptr %DMCUB_SCRATCH15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DMCUB_SCRATCH15, align 4
  %psp_version = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 18
  %16 = ptrtoint ptr %psp_version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %psp_version, align 8
  %and = and i32 %17, 1114367
  tail call void %9(ptr noundef %11, i32 noundef %15, i32 noundef %and) #4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %shift9 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %shift9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %shift9, align 4
  %mask11 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask11, align 4
  %DMCUB_CNTL__DMCUB_TRACEPORT_EN = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %19, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN, align 2
  %conv = zext i8 %27 to i32
  %DMCUB_CNTL__DMCUB_TRACEPORT_EN17 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %19, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN17, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %21, i32 noundef 2, i8 noundef zeroext %23, i32 noundef %25, i32 noundef 1, i32 noundef %conv, i32 noundef %29, i32 noundef 1) #4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %DMCUB_CNTL__DMCUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %31, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %DMCUB_CNTL__DMCUB_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %DMCUB_CNTL__DMCUB_SOFT_RESET, align 1
  %DMCUB_CNTL__DMCUB_SOFT_RESET25 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %31, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %DMCUB_CNTL__DMCUB_SOFT_RESET25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %DMCUB_CNTL__DMCUB_SOFT_RESET25, align 4
  tail call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %33, i32 noundef 1, i8 noundef zeroext %35, i32 noundef %37, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_backdoor_load(ptr noundef %dmub, ptr nocapture noundef readonly %cw0, ptr nocapture noundef readonly %cw1) local_unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
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
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %fb_offset5.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 17
  %5 = ptrtoint ptr %fb_offset5.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fb_offset5.i, align 8
  br label %dmub_dcn20_get_fb_base_offset.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %DCN_VM_FB_LOCATION_BASE.i = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %8, i32 0, i32 75
  %9 = ptrtoint ptr %DCN_VM_FB_LOCATION_BASE.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %DCN_VM_FB_LOCATION_BASE.i, align 4
  %DCN_VM_FB_LOCATION_BASE__FB_BASE.i = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %8, i32 0, i32 2, i32 30
  %11 = ptrtoint ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE.i, align 2
  %DCN_VM_FB_LOCATION_BASE__FB_BASE8.i = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %8, i32 0, i32 1, i32 30
  %13 = ptrtoint ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE8.i, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %10, i8 noundef zeroext %12, i32 noundef %14, ptr noundef nonnull %tmp.i) #4
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp.i, align 4
  %conv.i = zext i32 %16 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 24
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %DCN_VM_FB_OFFSET.i = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %18, i32 0, i32 76
  %19 = ptrtoint ptr %DCN_VM_FB_OFFSET.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %DCN_VM_FB_OFFSET.i, align 4
  %DCN_VM_FB_OFFSET__FB_OFFSET.i = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %18, i32 0, i32 2, i32 31
  %21 = ptrtoint ptr %DCN_VM_FB_OFFSET__FB_OFFSET.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %DCN_VM_FB_OFFSET__FB_OFFSET.i, align 1
  %DCN_VM_FB_OFFSET__FB_OFFSET15.i = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %18, i32 0, i32 1, i32 31
  %23 = ptrtoint ptr %DCN_VM_FB_OFFSET__FB_OFFSET15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %DCN_VM_FB_OFFSET__FB_OFFSET15.i, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %20, i8 noundef zeroext %22, i32 noundef %24, ptr noundef nonnull %tmp.i) #4
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp.i, align 4
  %conv16.i = zext i32 %26 to i64
  %shl17.i = shl nuw nsw i64 %conv16.i, 24
  br label %dmub_dcn20_get_fb_base_offset.exit

dmub_dcn20_get_fb_base_offset.exit:               ; preds = %if.end.i, %if.then.i
  %fb_base.0 = phi i64 [ %shl.i, %if.end.i ], [ %2, %if.then.i ]
  %storemerge.i = phi i64 [ %shl17.i, %if.end.i ], [ %6, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %DMCUB_SEC_CNTL = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %DMCUB_SEC_CNTL to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %DMCUB_SEC_CNTL, align 4
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %28, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET, align 1
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET4 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %28, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET4, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %30, i32 noundef 1, i8 noundef zeroext %32, i32 noundef %34, i32 noundef 1) #4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %DMCUB_MEM_CNTL = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %DMCUB_MEM_CNTL to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %DMCUB_MEM_CNTL, align 4
  %DMCUB_MEM_CNTL__DMCUB_MEM_READ_SPACE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %36, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %DMCUB_MEM_CNTL__DMCUB_MEM_READ_SPACE to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %DMCUB_MEM_CNTL__DMCUB_MEM_READ_SPACE, align 1
  %DMCUB_MEM_CNTL__DMCUB_MEM_READ_SPACE11 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %36, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %DMCUB_MEM_CNTL__DMCUB_MEM_READ_SPACE11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %DMCUB_MEM_CNTL__DMCUB_MEM_READ_SPACE11, align 4
  %DMCUB_MEM_CNTL__DMCUB_MEM_WRITE_SPACE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %36, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %DMCUB_MEM_CNTL__DMCUB_MEM_WRITE_SPACE to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %DMCUB_MEM_CNTL__DMCUB_MEM_WRITE_SPACE, align 4
  %conv = zext i8 %44 to i32
  %DMCUB_MEM_CNTL__DMCUB_MEM_WRITE_SPACE16 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %36, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %DMCUB_MEM_CNTL__DMCUB_MEM_WRITE_SPACE16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %DMCUB_MEM_CNTL__DMCUB_MEM_WRITE_SPACE16, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %38, i32 noundef 2, i8 noundef zeroext %40, i32 noundef %42, i32 noundef 3, i32 noundef %conv, i32 noundef %46, i32 noundef 3) #4
  %47 = ptrtoint ptr %cw0 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %cw0, align 8
  %sub.i = sub i64 %storemerge.i, %fb_base.0
  %add.i = add i64 %48, %sub.i
  %offset.sroa.0.0.extract.shift = lshr i64 %add.i, 32
  %offset.sroa.0.0.extract.trunc = trunc i64 %offset.sroa.0.0.extract.shift to i32
  %offset.sroa.7.0.extract.trunc = trunc i64 %add.i to i32
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %51 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user_ctx, align 4
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW0_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %54, i32 0, i32 18
  %55 = ptrtoint ptr %DMCUB_REGION3_CW0_OFFSET to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %DMCUB_REGION3_CW0_OFFSET, align 4
  call void %50(ptr noundef %52, i32 noundef %56, i32 noundef %offset.sroa.0.0.extract.trunc) #4
  %57 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_write, align 4
  %59 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %user_ctx, align 4
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW0_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %62, i32 0, i32 26
  %63 = ptrtoint ptr %DMCUB_REGION3_CW0_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %DMCUB_REGION3_CW0_OFFSET_HIGH, align 4
  call void %58(ptr noundef %60, i32 noundef %64, i32 noundef %offset.sroa.7.0.extract.trunc) #4
  %65 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_write, align 4
  %67 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %user_ctx, align 4
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW0_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %70, i32 0, i32 34
  %71 = ptrtoint ptr %DMCUB_REGION3_CW0_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %DMCUB_REGION3_CW0_BASE_ADDRESS, align 4
  %region = getelementptr inbounds %struct.dmub_window, ptr %cw0, i32 0, i32 1
  %73 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %region, align 8
  call void %66(ptr noundef %68, i32 noundef %72, i32 noundef %74) #4
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %76, i32 0, i32 42
  %77 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %76, i32 0, i32 2, i32 8
  %79 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS36 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %76, i32 0, i32 1, i32 8
  %81 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS36, align 4
  %top = getelementptr inbounds %struct.dmub_window, ptr %cw0, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %top, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %76, i32 0, i32 2, i32 9
  %85 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE, align 1
  %conv40 = zext i8 %86 to i32
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE43 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %76, i32 0, i32 1, i32 9
  %87 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE43 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE43, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %78, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %80, i32 noundef %82, i32 noundef %84, i32 noundef %conv40, i32 noundef %88, i32 noundef 1) #4
  %89 = ptrtoint ptr %cw1 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %cw1, align 8
  %add.i145 = add i64 %90, %sub.i
  %offset.sroa.0.0.extract.shift149 = lshr i64 %add.i145, 32
  %offset.sroa.0.0.extract.trunc150 = trunc i64 %offset.sroa.0.0.extract.shift149 to i32
  %offset.sroa.7.0.extract.trunc151 = trunc i64 %add.i145 to i32
  %91 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_write, align 4
  %93 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %user_ctx, align 4
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW1_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %96, i32 0, i32 19
  %97 = ptrtoint ptr %DMCUB_REGION3_CW1_OFFSET to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %DMCUB_REGION3_CW1_OFFSET, align 4
  call void %92(ptr noundef %94, i32 noundef %98, i32 noundef %offset.sroa.0.0.extract.trunc150) #4
  %99 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_write, align 4
  %101 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %user_ctx, align 4
  %103 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW1_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %104, i32 0, i32 27
  %105 = ptrtoint ptr %DMCUB_REGION3_CW1_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %DMCUB_REGION3_CW1_OFFSET_HIGH, align 4
  call void %100(ptr noundef %102, i32 noundef %106, i32 noundef %offset.sroa.7.0.extract.trunc151) #4
  %107 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_write, align 4
  %109 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %user_ctx, align 4
  %111 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW1_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %112, i32 0, i32 35
  %113 = ptrtoint ptr %DMCUB_REGION3_CW1_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %DMCUB_REGION3_CW1_BASE_ADDRESS, align 4
  %region62 = getelementptr inbounds %struct.dmub_window, ptr %cw1, i32 0, i32 1
  %115 = ptrtoint ptr %region62 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %region62, align 8
  call void %108(ptr noundef %110, i32 noundef %114, i32 noundef %116) #4
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW1_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %118, i32 0, i32 43
  %119 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %118, i32 0, i32 2, i32 10
  %121 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS, align 2
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS70 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %118, i32 0, i32 1, i32 10
  %123 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS70 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS70, align 4
  %top72 = getelementptr inbounds %struct.dmub_window, ptr %cw1, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %top72 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %top72, align 4
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %118, i32 0, i32 2, i32 11
  %127 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE, align 1
  %conv75 = zext i8 %128 to i32
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE78 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %118, i32 0, i32 1, i32 11
  %129 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE78 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE78, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %120, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %122, i32 noundef %124, i32 noundef %126, i32 noundef %conv75, i32 noundef %130, i32 noundef 1) #4
  %131 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs, align 4
  %DMCUB_SEC_CNTL81 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %DMCUB_SEC_CNTL81 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %DMCUB_SEC_CNTL81, align 4
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET84 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %132, i32 0, i32 2, i32 5
  %135 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET84 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET84, align 1
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET87 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %132, i32 0, i32 1, i32 5
  %137 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET87 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET87, align 4
  %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %132, i32 0, i32 2, i32 6
  %139 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID, align 2
  %conv90 = zext i8 %140 to i32
  %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID93 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %132, i32 0, i32 1, i32 6
  %141 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID93 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID93, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %134, i32 noundef 2, i8 noundef zeroext %136, i32 noundef %138, i32 noundef 0, i32 noundef %conv90, i32 noundef %142, i32 noundef 32) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_reg_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_setup_windows(ptr noundef %dmub, ptr nocapture noundef readonly %cw2, ptr nocapture noundef readonly %cw3, ptr nocapture noundef readonly %cw4, ptr nocapture noundef readonly %cw5, ptr nocapture noundef readonly %cw6) local_unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
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
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %fb_offset5.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 17
  %5 = ptrtoint ptr %fb_offset5.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fb_offset5.i, align 8
  br label %dmub_dcn20_get_fb_base_offset.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %regs.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %DCN_VM_FB_LOCATION_BASE.i = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %8, i32 0, i32 75
  %9 = ptrtoint ptr %DCN_VM_FB_LOCATION_BASE.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %DCN_VM_FB_LOCATION_BASE.i, align 4
  %DCN_VM_FB_LOCATION_BASE__FB_BASE.i = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %8, i32 0, i32 2, i32 30
  %11 = ptrtoint ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE.i, align 2
  %DCN_VM_FB_LOCATION_BASE__FB_BASE8.i = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %8, i32 0, i32 1, i32 30
  %13 = ptrtoint ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DCN_VM_FB_LOCATION_BASE__FB_BASE8.i, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %10, i8 noundef zeroext %12, i32 noundef %14, ptr noundef nonnull %tmp.i) #4
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp.i, align 4
  %conv.i = zext i32 %16 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 24
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %DCN_VM_FB_OFFSET.i = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %18, i32 0, i32 76
  %19 = ptrtoint ptr %DCN_VM_FB_OFFSET.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %DCN_VM_FB_OFFSET.i, align 4
  %DCN_VM_FB_OFFSET__FB_OFFSET.i = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %18, i32 0, i32 2, i32 31
  %21 = ptrtoint ptr %DCN_VM_FB_OFFSET__FB_OFFSET.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %DCN_VM_FB_OFFSET__FB_OFFSET.i, align 1
  %DCN_VM_FB_OFFSET__FB_OFFSET15.i = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %18, i32 0, i32 1, i32 31
  %23 = ptrtoint ptr %DCN_VM_FB_OFFSET__FB_OFFSET15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %DCN_VM_FB_OFFSET__FB_OFFSET15.i, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %20, i8 noundef zeroext %22, i32 noundef %24, ptr noundef nonnull %tmp.i) #4
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp.i, align 4
  %conv16.i = zext i32 %26 to i64
  %shl17.i = shl nuw nsw i64 %conv16.i, 24
  br label %dmub_dcn20_get_fb_base_offset.exit

dmub_dcn20_get_fb_base_offset.exit:               ; preds = %if.end.i, %if.then.i
  %fb_base.0 = phi i64 [ %shl.i, %if.end.i ], [ %2, %if.then.i ]
  %storemerge.i = phi i64 [ %shl17.i, %if.end.i ], [ %6, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  %region = getelementptr inbounds %struct.dmub_window, ptr %cw2, i32 0, i32 1
  %27 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %region, align 8
  %top = getelementptr inbounds %struct.dmub_window, ptr %cw2, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.not = icmp eq i32 %28, %30
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %dmub_dcn20_get_fb_base_offset.exit
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %cw2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %cw2, align 8
  %sub.i = sub i64 %storemerge.i, %fb_base.0
  %add.i = add i64 %32, %sub.i
  %offset.sroa.0.0.extract.shift = lshr i64 %add.i, 32
  %offset.sroa.0.0.extract.trunc = trunc i64 %offset.sroa.0.0.extract.shift to i32
  %offset.sroa.15.0.extract.trunc = trunc i64 %add.i to i32
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %35 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW2_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %38, i32 0, i32 20
  %39 = ptrtoint ptr %DMCUB_REGION3_CW2_OFFSET to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %DMCUB_REGION3_CW2_OFFSET, align 4
  call void %34(ptr noundef %36, i32 noundef %40, i32 noundef %offset.sroa.0.0.extract.trunc) #4
  %41 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_write, align 4
  %43 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %user_ctx, align 4
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW2_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %46, i32 0, i32 28
  %47 = ptrtoint ptr %DMCUB_REGION3_CW2_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %DMCUB_REGION3_CW2_OFFSET_HIGH, align 4
  call void %42(ptr noundef %44, i32 noundef %48, i32 noundef %offset.sroa.15.0.extract.trunc) #4
  %49 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_write, align 4
  %51 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user_ctx, align 4
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW2_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %54, i32 0, i32 36
  %55 = ptrtoint ptr %DMCUB_REGION3_CW2_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %DMCUB_REGION3_CW2_BASE_ADDRESS, align 4
  %57 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %region, align 8
  call void %50(ptr noundef %52, i32 noundef %56, i32 noundef %58) #4
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %60, i32 0, i32 2, i32 12
  %63 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS20 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %60, i32 0, i32 1, i32 12
  %65 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS20, align 4
  %67 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %top, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %60, i32 0, i32 2, i32 13
  %69 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE, align 1
  %conv = zext i8 %70 to i32
  %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE27 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %60, i32 0, i32 1, i32 13
  %71 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE27, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %62, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %64, i32 noundef %66, i32 noundef %68, i32 noundef %conv, i32 noundef %72, i32 noundef 1) #4
  br label %if.end

if.else:                                          ; preds = %dmub_dcn20_get_fb_base_offset.exit
  call void @__sanitizer_cov_trace_pc() #6
  %reg_write29 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %reg_write29 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_write29, align 4
  %user_ctx30 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %75 = ptrtoint ptr %user_ctx30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %user_ctx30, align 4
  %regs31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %77 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs31, align 4
  %DMCUB_REGION3_CW2_OFFSET33 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %78, i32 0, i32 20
  %79 = ptrtoint ptr %DMCUB_REGION3_CW2_OFFSET33 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %DMCUB_REGION3_CW2_OFFSET33, align 4
  call void %74(ptr noundef %76, i32 noundef %80, i32 noundef 0) #4
  %81 = ptrtoint ptr %reg_write29 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_write29, align 4
  %83 = ptrtoint ptr %user_ctx30 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %user_ctx30, align 4
  %85 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs31, align 4
  %DMCUB_REGION3_CW2_OFFSET_HIGH39 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %86, i32 0, i32 28
  %87 = ptrtoint ptr %DMCUB_REGION3_CW2_OFFSET_HIGH39 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %DMCUB_REGION3_CW2_OFFSET_HIGH39, align 4
  call void %82(ptr noundef %84, i32 noundef %88, i32 noundef 0) #4
  %89 = ptrtoint ptr %reg_write29 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg_write29, align 4
  %91 = ptrtoint ptr %user_ctx30 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %user_ctx30, align 4
  %93 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs31, align 4
  %DMCUB_REGION3_CW2_BASE_ADDRESS45 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %94, i32 0, i32 36
  %95 = ptrtoint ptr %DMCUB_REGION3_CW2_BASE_ADDRESS45 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %DMCUB_REGION3_CW2_BASE_ADDRESS45, align 4
  call void %90(ptr noundef %92, i32 noundef %96, i32 noundef 0) #4
  %97 = ptrtoint ptr %reg_write29 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg_write29, align 4
  %99 = ptrtoint ptr %user_ctx30 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %user_ctx30, align 4
  %101 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs31, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS51 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %102, i32 0, i32 44
  %103 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS51 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS51, align 4
  call void %98(ptr noundef %100, i32 noundef %104, i32 noundef 0) #4
  %.pre = sub i64 %storemerge.i, %fb_base.0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sub.i384.pre-phi = phi i64 [ %.pre, %if.else ], [ %sub.i, %if.then ]
  %105 = ptrtoint ptr %cw3 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %cw3, align 8
  %add.i385 = add i64 %106, %sub.i384.pre-phi
  %offset.sroa.0.0.extract.shift406 = lshr i64 %add.i385, 32
  %offset.sroa.0.0.extract.trunc407 = trunc i64 %offset.sroa.0.0.extract.shift406 to i32
  %offset.sroa.15.0.extract.trunc414 = trunc i64 %add.i385 to i32
  %reg_write54 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %107 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_write54, align 4
  %user_ctx55 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %109 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %user_ctx55, align 4
  %regs56 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %111 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW3_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %112, i32 0, i32 21
  %113 = ptrtoint ptr %DMCUB_REGION3_CW3_OFFSET to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %DMCUB_REGION3_CW3_OFFSET, align 4
  call void %108(ptr noundef %110, i32 noundef %114, i32 noundef %offset.sroa.0.0.extract.trunc407) #4
  %115 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_write54, align 4
  %117 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %user_ctx55, align 4
  %119 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW3_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %120, i32 0, i32 29
  %121 = ptrtoint ptr %DMCUB_REGION3_CW3_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %DMCUB_REGION3_CW3_OFFSET_HIGH, align 4
  call void %116(ptr noundef %118, i32 noundef %122, i32 noundef %offset.sroa.15.0.extract.trunc414) #4
  %123 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg_write54, align 4
  %125 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %user_ctx55, align 4
  %127 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW3_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %128, i32 0, i32 37
  %129 = ptrtoint ptr %DMCUB_REGION3_CW3_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %DMCUB_REGION3_CW3_BASE_ADDRESS, align 4
  %region70 = getelementptr inbounds %struct.dmub_window, ptr %cw3, i32 0, i32 1
  %131 = ptrtoint ptr %region70 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %region70, align 8
  call void %124(ptr noundef %126, i32 noundef %130, i32 noundef %132) #4
  %133 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW3_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %134, i32 0, i32 45
  %135 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %134, i32 0, i32 2, i32 14
  %137 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS, align 2
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS78 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %134, i32 0, i32 1, i32 14
  %139 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS78 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS78, align 4
  %top80 = getelementptr inbounds %struct.dmub_window, ptr %cw3, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %top80 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %top80, align 4
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %134, i32 0, i32 2, i32 15
  %143 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE, align 1
  %conv83 = zext i8 %144 to i32
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE86 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %134, i32 0, i32 1, i32 15
  %145 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE86 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE86, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %136, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %138, i32 noundef %140, i32 noundef %142, i32 noundef %conv83, i32 noundef %146, i32 noundef 1) #4
  %147 = ptrtoint ptr %cw4 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %cw4, align 8
  %add.i387 = add i64 %148, %sub.i384.pre-phi
  %offset.sroa.0.0.extract.shift408 = lshr i64 %add.i387, 32
  %offset.sroa.0.0.extract.trunc409 = trunc i64 %offset.sroa.0.0.extract.shift408 to i32
  %offset.sroa.15.0.extract.trunc415 = trunc i64 %add.i387 to i32
  %fw_version.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 2
  %149 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %fw_version.i, align 8
  %151 = add i32 %150, -17432577
  call void @__sanitizer_cov_trace_const_cmp4(i32 -655361, i32 %151)
  %152 = icmp ult i32 %151, -655361
  %153 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %reg_write54, align 4
  %155 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %user_ctx55, align 4
  %157 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs56, align 4
  br i1 %152, label %if.then88, label %if.else123

if.then88:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %DMCUB_REGION3_CW4_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %158, i32 0, i32 22
  %159 = ptrtoint ptr %DMCUB_REGION3_CW4_OFFSET to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %DMCUB_REGION3_CW4_OFFSET, align 4
  call void %154(ptr noundef %156, i32 noundef %160, i32 noundef %offset.sroa.0.0.extract.trunc409) #4
  %161 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg_write54, align 4
  %163 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %user_ctx55, align 4
  %165 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW4_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %166, i32 0, i32 30
  %167 = ptrtoint ptr %DMCUB_REGION3_CW4_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %DMCUB_REGION3_CW4_OFFSET_HIGH, align 4
  call void %162(ptr noundef %164, i32 noundef %168, i32 noundef %offset.sroa.15.0.extract.trunc415) #4
  %169 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %reg_write54, align 4
  %171 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %user_ctx55, align 4
  %173 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW4_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %174, i32 0, i32 38
  %175 = ptrtoint ptr %DMCUB_REGION3_CW4_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %DMCUB_REGION3_CW4_BASE_ADDRESS, align 4
  %region106 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1
  %177 = ptrtoint ptr %region106 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %region106, align 8
  call void %170(ptr noundef %172, i32 noundef %176, i32 noundef %178) #4
  %179 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %180, i32 0, i32 46
  %181 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %180, i32 0, i32 2, i32 16
  %183 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS114 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %180, i32 0, i32 1, i32 16
  %185 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS114 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS114, align 4
  %top116 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1, i32 1
  %187 = ptrtoint ptr %top116 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %top116, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %180, i32 0, i32 2, i32 17
  %189 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE, align 1
  %conv119 = zext i8 %190 to i32
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE122 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %180, i32 0, i32 1, i32 17
  %191 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE122 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE122, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %182, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %184, i32 noundef %186, i32 noundef %188, i32 noundef %conv119, i32 noundef %192, i32 noundef 1) #4
  br label %if.end154

if.else123:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %DMCUB_REGION4_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %158, i32 0, i32 50
  %193 = ptrtoint ptr %DMCUB_REGION4_OFFSET to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %DMCUB_REGION4_OFFSET, align 4
  call void %154(ptr noundef %156, i32 noundef %194, i32 noundef %offset.sroa.0.0.extract.trunc409) #4
  %195 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %reg_write54, align 4
  %197 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %user_ctx55, align 4
  %199 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION4_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %200, i32 0, i32 51
  %201 = ptrtoint ptr %DMCUB_REGION4_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %DMCUB_REGION4_OFFSET_HIGH, align 4
  call void %196(ptr noundef %198, i32 noundef %202, i32 noundef %offset.sroa.15.0.extract.trunc415) #4
  %203 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %204, i32 0, i32 52
  %205 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %DMCUB_REGION4_TOP_ADDRESS, align 4
  %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %204, i32 0, i32 2, i32 24
  %207 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS, align 4
  %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS142 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %204, i32 0, i32 1, i32 24
  %209 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS142 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS142, align 4
  %region143 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1
  %top144 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1, i32 1
  %211 = ptrtoint ptr %top144 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %top144, align 4
  %213 = ptrtoint ptr %region143 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %region143, align 8
  %215 = xor i32 %214, -1
  %sub147 = add i32 %212, %215
  %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %204, i32 0, i32 2, i32 25
  %216 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE, align 1
  %conv150 = zext i8 %217 to i32
  %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE153 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %204, i32 0, i32 1, i32 25
  %218 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE153 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE153, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %206, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %208, i32 noundef %210, i32 noundef %sub147, i32 noundef %conv150, i32 noundef %219, i32 noundef 1) #4
  br label %if.end154

if.end154:                                        ; preds = %if.else123, %if.then88
  %220 = ptrtoint ptr %cw5 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %cw5, align 8
  %add.i389 = add i64 %221, %sub.i384.pre-phi
  %offset.sroa.0.0.extract.shift410 = lshr i64 %add.i389, 32
  %offset.sroa.0.0.extract.trunc411 = trunc i64 %offset.sroa.0.0.extract.shift410 to i32
  %offset.sroa.15.0.extract.trunc416 = trunc i64 %add.i389 to i32
  %222 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %reg_write54, align 4
  %224 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %user_ctx55, align 4
  %226 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW5_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %227, i32 0, i32 23
  %228 = ptrtoint ptr %DMCUB_REGION3_CW5_OFFSET to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %DMCUB_REGION3_CW5_OFFSET, align 4
  call void %223(ptr noundef %225, i32 noundef %229, i32 noundef %offset.sroa.0.0.extract.trunc411) #4
  %230 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %reg_write54, align 4
  %232 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %user_ctx55, align 4
  %234 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW5_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %235, i32 0, i32 31
  %236 = ptrtoint ptr %DMCUB_REGION3_CW5_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %DMCUB_REGION3_CW5_OFFSET_HIGH, align 4
  call void %231(ptr noundef %233, i32 noundef %237, i32 noundef %offset.sroa.15.0.extract.trunc416) #4
  %238 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %reg_write54, align 4
  %240 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %user_ctx55, align 4
  %242 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW5_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %243, i32 0, i32 39
  %244 = ptrtoint ptr %DMCUB_REGION3_CW5_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %DMCUB_REGION3_CW5_BASE_ADDRESS, align 4
  %region173 = getelementptr inbounds %struct.dmub_window, ptr %cw5, i32 0, i32 1
  %246 = ptrtoint ptr %region173 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %region173, align 8
  call void %239(ptr noundef %241, i32 noundef %245, i32 noundef %247) #4
  %248 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %249, i32 0, i32 47
  %250 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %249, i32 0, i32 2, i32 18
  %252 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS, align 2
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS181 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %249, i32 0, i32 1, i32 18
  %254 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS181 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS181, align 4
  %top183 = getelementptr inbounds %struct.dmub_window, ptr %cw5, i32 0, i32 1, i32 1
  %256 = ptrtoint ptr %top183 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %top183, align 4
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %249, i32 0, i32 2, i32 19
  %258 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE, align 1
  %conv186 = zext i8 %259 to i32
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE189 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %249, i32 0, i32 1, i32 19
  %260 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE189 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE189, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %251, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %253, i32 noundef %255, i32 noundef %257, i32 noundef %conv186, i32 noundef %261, i32 noundef 1) #4
  %262 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %reg_write54, align 4
  %264 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %user_ctx55, align 4
  %266 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION5_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %267, i32 0, i32 53
  %268 = ptrtoint ptr %DMCUB_REGION5_OFFSET to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %DMCUB_REGION5_OFFSET, align 4
  call void %263(ptr noundef %265, i32 noundef %269, i32 noundef %offset.sroa.0.0.extract.trunc411) #4
  %270 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %reg_write54, align 4
  %272 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %user_ctx55, align 4
  %274 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION5_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %275, i32 0, i32 54
  %276 = ptrtoint ptr %DMCUB_REGION5_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %DMCUB_REGION5_OFFSET_HIGH, align 4
  call void %271(ptr noundef %273, i32 noundef %277, i32 noundef %offset.sroa.15.0.extract.trunc416) #4
  %278 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %279, i32 0, i32 55
  %280 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %DMCUB_REGION5_TOP_ADDRESS, align 4
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %279, i32 0, i32 2, i32 26
  %282 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS, align 2
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS208 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %279, i32 0, i32 1, i32 26
  %284 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS208 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS208, align 4
  %286 = ptrtoint ptr %top183 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %top183, align 4
  %288 = ptrtoint ptr %region173 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %region173, align 8
  %290 = xor i32 %289, -1
  %sub214 = add i32 %287, %290
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %279, i32 0, i32 2, i32 27
  %291 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE, align 1
  %conv217 = zext i8 %292 to i32
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE220 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %279, i32 0, i32 1, i32 27
  %293 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE220 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE220, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %281, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %283, i32 noundef %285, i32 noundef %sub214, i32 noundef %conv217, i32 noundef %294, i32 noundef 1) #4
  %295 = ptrtoint ptr %cw6 to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %cw6, align 8
  %add.i391 = add i64 %296, %sub.i384.pre-phi
  %offset.sroa.0.0.extract.shift412 = lshr i64 %add.i391, 32
  %offset.sroa.0.0.extract.trunc413 = trunc i64 %offset.sroa.0.0.extract.shift412 to i32
  %offset.sroa.15.0.extract.trunc417 = trunc i64 %add.i391 to i32
  %297 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %reg_write54, align 4
  %299 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %user_ctx55, align 4
  %301 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW6_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %302, i32 0, i32 24
  %303 = ptrtoint ptr %DMCUB_REGION3_CW6_OFFSET to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %DMCUB_REGION3_CW6_OFFSET, align 4
  call void %298(ptr noundef %300, i32 noundef %304, i32 noundef %offset.sroa.0.0.extract.trunc413) #4
  %305 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %reg_write54, align 4
  %307 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %user_ctx55, align 4
  %309 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW6_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %310, i32 0, i32 32
  %311 = ptrtoint ptr %DMCUB_REGION3_CW6_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %DMCUB_REGION3_CW6_OFFSET_HIGH, align 4
  call void %306(ptr noundef %308, i32 noundef %312, i32 noundef %offset.sroa.15.0.extract.trunc417) #4
  %313 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %reg_write54, align 4
  %315 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %user_ctx55, align 4
  %317 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW6_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %318, i32 0, i32 40
  %319 = ptrtoint ptr %DMCUB_REGION3_CW6_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %DMCUB_REGION3_CW6_BASE_ADDRESS, align 4
  %region239 = getelementptr inbounds %struct.dmub_window, ptr %cw6, i32 0, i32 1
  %321 = ptrtoint ptr %region239 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %region239, align 8
  call void %314(ptr noundef %316, i32 noundef %320, i32 noundef %322) #4
  %323 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %324, i32 0, i32 48
  %325 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %324, i32 0, i32 2, i32 20
  %327 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS247 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %324, i32 0, i32 1, i32 20
  %329 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS247 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS247, align 4
  %top249 = getelementptr inbounds %struct.dmub_window, ptr %cw6, i32 0, i32 1, i32 1
  %331 = ptrtoint ptr %top249 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %top249, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %324, i32 0, i32 2, i32 21
  %333 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE, align 1
  %conv252 = zext i8 %334 to i32
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE255 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %324, i32 0, i32 1, i32 21
  %335 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE255 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE255, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %326, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %328, i32 noundef %330, i32 noundef %332, i32 noundef %conv252, i32 noundef %336, i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_setup_mailbox(ptr nocapture noundef readonly %dmub, ptr nocapture noundef readonly %inbox1) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_version.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 2
  %0 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_version.i, align 8
  %2 = add i32 %1, -17432577
  call void @__sanitizer_cov_trace_const_cmp4(i32 -655361, i32 %2)
  %3 = icmp ult i32 %2, -655361
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %6 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX1_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %DMCUB_INBOX1_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DMCUB_INBOX1_BASE_ADDRESS, align 4
  br i1 %3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %inbox1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inbox1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %13, %if.then ], [ -2147483648, %entry.if.end_crit_edge ]
  tail call void %5(ptr noundef %7, i32 noundef %11, i32 noundef %.sink) #4
  %reg_write8 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %reg_write8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_write8, align 4
  %user_ctx9 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %16 = ptrtoint ptr %user_ctx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ctx9, align 4
  %regs10 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %18 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs10, align 4
  %DMCUB_INBOX1_SIZE = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %DMCUB_INBOX1_SIZE to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DMCUB_INBOX1_SIZE, align 4
  %top = getelementptr inbounds %struct.dmub_region, ptr %inbox1, i32 0, i32 1
  %22 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %top, align 4
  %24 = ptrtoint ptr %inbox1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %inbox1, align 4
  %sub = sub i32 %23, %25
  tail call void %15(ptr noundef %17, i32 noundef %21, i32 noundef %sub) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn20_get_inbox1_rptr(ptr nocapture noundef readonly %dmub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %DMCUB_INBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_INBOX1_RPTR, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_set_inbox1_wptr(ptr nocapture noundef readonly %dmub, i32 noundef %wptr_offset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %DMCUB_INBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_INBOX1_WPTR, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %wptr_offset) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_setup_out_mailbox(ptr nocapture noundef readonly %dmub, ptr nocapture noundef readonly %outbox1) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_version.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 2
  %0 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_version.i, align 8
  %2 = add i32 %1, -17432577
  call void @__sanitizer_cov_trace_const_cmp4(i32 -655361, i32 %2)
  %3 = icmp ult i32 %2, -655361
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %6 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %DMCUB_OUTBOX1_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %DMCUB_OUTBOX1_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DMCUB_OUTBOX1_BASE_ADDRESS, align 4
  br i1 %3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %outbox1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %outbox1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %13, %if.then ], [ -2147475456, %entry.if.end_crit_edge ]
  tail call void %5(ptr noundef %7, i32 noundef %11, i32 noundef %.sink) #4
  %reg_write8 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %reg_write8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_write8, align 4
  %user_ctx9 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %16 = ptrtoint ptr %user_ctx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ctx9, align 4
  %regs10 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %18 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs10, align 4
  %DMCUB_OUTBOX1_SIZE = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %DMCUB_OUTBOX1_SIZE to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DMCUB_OUTBOX1_SIZE, align 4
  %top = getelementptr inbounds %struct.dmub_region, ptr %outbox1, i32 0, i32 1
  %22 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %top, align 4
  %24 = ptrtoint ptr %outbox1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %outbox1, align 4
  %sub = sub i32 %23, %25
  tail call void %15(ptr noundef %17, i32 noundef %21, i32 noundef %sub) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn20_get_outbox1_wptr(ptr nocapture noundef readonly %dmub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_OUTBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %DMCUB_OUTBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX1_WPTR, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_set_outbox1_rptr(ptr nocapture noundef readonly %dmub, i32 noundef %rptr_offset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_OUTBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %DMCUB_OUTBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX1_RPTR, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %rptr_offset) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_setup_outbox0(ptr nocapture noundef readonly %dmub, ptr nocapture noundef readonly %outbox0) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_OUTBOX0_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %DMCUB_OUTBOX0_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX0_BASE_ADDRESS, align 4
  %8 = ptrtoint ptr %outbox0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outbox0, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %9) #4
  %10 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_write, align 4
  %12 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ctx, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %DMCUB_OUTBOX0_SIZE = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %15, i32 0, i32 11
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
  tail call void %11(ptr noundef %13, i32 noundef %17, i32 noundef %sub) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn20_get_outbox0_wptr(ptr nocapture noundef readonly %dmub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_OUTBOX0_WPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %DMCUB_OUTBOX0_WPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX0_WPTR, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_set_outbox0_rptr(ptr nocapture noundef readonly %dmub, i32 noundef %rptr_offset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_OUTBOX0_RPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %DMCUB_OUTBOX0_RPTR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_OUTBOX0_RPTR, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %rptr_offset) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_dcn20_is_hw_init(ptr noundef %dmub) local_unnamed_addr #1 align 64 {
entry:
  %is_hw_init = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_hw_init) #4
  %0 = ptrtoint ptr %is_hw_init to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %is_hw_init, align 4, !annotation !11
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %shift = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %mask = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %4, i8 noundef zeroext %6, i32 noundef %8, ptr noundef nonnull %is_hw_init) #4
  %9 = ptrtoint ptr %is_hw_init to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %is_hw_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp ne i32 %10, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_hw_init) #4
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_dcn20_is_supported(ptr noundef %dmub) local_unnamed_addr #1 align 64 {
entry:
  %supported = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported) #4
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %CC_DC_PIPE_DIS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %2, i32 0, i32 73
  %3 = ptrtoint ptr %CC_DC_PIPE_DIS to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %CC_DC_PIPE_DIS, align 4
  %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %2, i32 0, i32 2, i32 28
  %5 = ptrtoint ptr %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE, align 4
  %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE3 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %2, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %CC_DC_PIPE_DIS__DC_DMCUB_ENABLE3, align 4
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %4, i8 noundef zeroext %6, i32 noundef %8, ptr noundef nonnull %supported) #4
  %9 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported) #4
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_set_gpint(ptr nocapture noundef readonly %dmub, [1 x i32] %reg.coerce) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_GPINT_DATAIN1 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 72
  %6 = ptrtoint ptr %DMCUB_GPINT_DATAIN1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_GPINT_DATAIN1, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef %reg.coerce.fca.0.extract) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_dcn20_is_gpint_acked(ptr nocapture noundef readonly %dmub, [1 x i32] %reg.coerce) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_GPINT_DATAIN1 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 72
  %6 = ptrtoint ptr %DMCUB_GPINT_DATAIN1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_GPINT_DATAIN1, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %bf.clear)
  %cmp = icmp eq i32 %call, %bf.clear
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn20_get_gpint_response(ptr nocapture noundef readonly %dmub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH7 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 63
  %6 = ptrtoint ptr %DMCUB_SCRATCH7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_SCRATCH7, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn20_get_fw_boot_status(ptr nocapture noundef readonly %dmub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH0 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 56
  %6 = ptrtoint ptr %DMCUB_SCRATCH0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_SCRATCH0, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_enable_dmub_boot_options(ptr nocapture noundef readonly %dmub, ptr nocapture noundef readnone %params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH14 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 70
  %6 = ptrtoint ptr %DMCUB_SCRATCH14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_SCRATCH14, align 4
  tail call void %1(ptr noundef %3, i32 noundef %7, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_skip_dmub_panel_power_sequence(ptr nocapture noundef readonly %dmub, i1 noundef zeroext %skip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH14 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 70
  %6 = ptrtoint ptr %DMCUB_SCRATCH14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_SCRATCH14, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #4
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
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH145 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %13, i32 0, i32 70
  %14 = ptrtoint ptr %DMCUB_SCRATCH145 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DMCUB_SCRATCH145, align 4
  tail call void %9(ptr noundef %11, i32 noundef %15, i32 noundef %bf.set) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_dcn20_get_current_time(ptr nocapture noundef readonly %dmub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %2 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %DMCUB_TIMER_CURRENT = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 78
  %6 = ptrtoint ptr %DMCUB_TIMER_CURRENT to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_TIMER_CURRENT, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn20_get_diagnostic_data(ptr noundef %dmub, ptr noundef %diag_data) local_unnamed_addr #1 align 64 {
entry:
  %is_dmub_enabled = alloca i32, align 4
  %is_soft_reset = alloca i32, align 4
  %is_sec_reset = alloca i32, align 4
  %is_traceport_enabled = alloca i32, align 4
  %is_cw0_enabled = alloca i32, align 4
  %is_cw6_enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_dmub_enabled) #4
  %0 = ptrtoint ptr %is_dmub_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %is_dmub_enabled, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_soft_reset) #4
  %1 = ptrtoint ptr %is_soft_reset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %is_soft_reset, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_sec_reset) #4
  %2 = ptrtoint ptr %is_sec_reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %is_sec_reset, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_traceport_enabled) #4
  %3 = ptrtoint ptr %is_traceport_enabled to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %is_traceport_enabled, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_cw0_enabled) #4
  %4 = ptrtoint ptr %is_cw0_enabled to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %is_cw0_enabled, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_cw6_enabled) #4
  %5 = ptrtoint ptr %is_cw6_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %is_cw6_enabled, align 4, !annotation !11
  %tobool.not = icmp eq ptr %dmub, null
  %tobool1.not = icmp eq ptr %diag_data, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH0 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %15, i32 0, i32 56
  %16 = ptrtoint ptr %DMCUB_SCRATCH0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DMCUB_SCRATCH0, align 4
  %call = tail call i32 %11(ptr noundef %13, i32 noundef %17) #4
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
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH1 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %24, i32 0, i32 57
  %25 = ptrtoint ptr %DMCUB_SCRATCH1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %DMCUB_SCRATCH1, align 4
  %call7 = tail call i32 %20(ptr noundef %22, i32 noundef %26) #4
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
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH2 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %33, i32 0, i32 58
  %34 = ptrtoint ptr %DMCUB_SCRATCH2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %DMCUB_SCRATCH2, align 4
  %call15 = tail call i32 %29(ptr noundef %31, i32 noundef %35) #4
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
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH3 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %42, i32 0, i32 59
  %43 = ptrtoint ptr %DMCUB_SCRATCH3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DMCUB_SCRATCH3, align 4
  %call23 = tail call i32 %38(ptr noundef %40, i32 noundef %44) #4
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
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH4 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %51, i32 0, i32 60
  %52 = ptrtoint ptr %DMCUB_SCRATCH4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %DMCUB_SCRATCH4, align 4
  %call31 = tail call i32 %47(ptr noundef %49, i32 noundef %53) #4
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
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH5 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %60, i32 0, i32 61
  %61 = ptrtoint ptr %DMCUB_SCRATCH5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %DMCUB_SCRATCH5, align 4
  %call39 = tail call i32 %56(ptr noundef %58, i32 noundef %62) #4
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
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH6 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %69, i32 0, i32 62
  %70 = ptrtoint ptr %DMCUB_SCRATCH6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %DMCUB_SCRATCH6, align 4
  %call47 = tail call i32 %65(ptr noundef %67, i32 noundef %71) #4
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
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH7 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %78, i32 0, i32 63
  %79 = ptrtoint ptr %DMCUB_SCRATCH7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %DMCUB_SCRATCH7, align 4
  %call55 = tail call i32 %74(ptr noundef %76, i32 noundef %80) #4
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
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH8 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %87, i32 0, i32 64
  %88 = ptrtoint ptr %DMCUB_SCRATCH8 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %DMCUB_SCRATCH8, align 4
  %call63 = tail call i32 %83(ptr noundef %85, i32 noundef %89) #4
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
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH9 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %96, i32 0, i32 65
  %97 = ptrtoint ptr %DMCUB_SCRATCH9 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %DMCUB_SCRATCH9, align 4
  %call71 = tail call i32 %92(ptr noundef %94, i32 noundef %98) #4
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
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH10 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %105, i32 0, i32 66
  %106 = ptrtoint ptr %DMCUB_SCRATCH10 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %DMCUB_SCRATCH10, align 4
  %call79 = tail call i32 %101(ptr noundef %103, i32 noundef %107) #4
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
  %113 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH11 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %114, i32 0, i32 67
  %115 = ptrtoint ptr %DMCUB_SCRATCH11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %DMCUB_SCRATCH11, align 4
  %call87 = tail call i32 %110(ptr noundef %112, i32 noundef %116) #4
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
  %122 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH12 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %123, i32 0, i32 68
  %124 = ptrtoint ptr %DMCUB_SCRATCH12 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %DMCUB_SCRATCH12, align 4
  %call95 = tail call i32 %119(ptr noundef %121, i32 noundef %125) #4
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
  %131 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH13 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %132, i32 0, i32 69
  %133 = ptrtoint ptr %DMCUB_SCRATCH13 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %DMCUB_SCRATCH13, align 4
  %call103 = tail call i32 %128(ptr noundef %130, i32 noundef %134) #4
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
  %140 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH14 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %141, i32 0, i32 70
  %142 = ptrtoint ptr %DMCUB_SCRATCH14 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %DMCUB_SCRATCH14, align 4
  %call111 = tail call i32 %137(ptr noundef %139, i32 noundef %143) #4
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
  %149 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs, align 4
  %DMCUB_SCRATCH15 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %150, i32 0, i32 71
  %151 = ptrtoint ptr %DMCUB_SCRATCH15 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %DMCUB_SCRATCH15, align 4
  %call119 = tail call i32 %146(ptr noundef %148, i32 noundef %152) #4
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
  %158 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs, align 4
  %DMCUB_UNDEFINED_ADDRESS_FAULT_ADDR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %159, i32 0, i32 80
  %160 = ptrtoint ptr %DMCUB_UNDEFINED_ADDRESS_FAULT_ADDR to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %DMCUB_UNDEFINED_ADDRESS_FAULT_ADDR, align 4
  %call127 = tail call i32 %155(ptr noundef %157, i32 noundef %161) #4
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
  %167 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs, align 4
  %DMCUB_INST_FETCH_FAULT_ADDR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %168, i32 0, i32 79
  %169 = ptrtoint ptr %DMCUB_INST_FETCH_FAULT_ADDR to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %DMCUB_INST_FETCH_FAULT_ADDR, align 4
  %call133 = tail call i32 %164(ptr noundef %166, i32 noundef %170) #4
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
  %176 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs, align 4
  %DMCUB_DATA_WRITE_FAULT_ADDR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %177, i32 0, i32 81
  %178 = ptrtoint ptr %DMCUB_DATA_WRITE_FAULT_ADDR to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %DMCUB_DATA_WRITE_FAULT_ADDR, align 4
  %call139 = tail call i32 %173(ptr noundef %175, i32 noundef %179) #4
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
  %185 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX1_RPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %186, i32 0, i32 8
  %187 = ptrtoint ptr %DMCUB_INBOX1_RPTR to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %DMCUB_INBOX1_RPTR, align 4
  %call145 = tail call i32 %182(ptr noundef %184, i32 noundef %188) #4
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
  %194 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX1_WPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %195, i32 0, i32 9
  %196 = ptrtoint ptr %DMCUB_INBOX1_WPTR to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %DMCUB_INBOX1_WPTR, align 4
  %call151 = tail call i32 %191(ptr noundef %193, i32 noundef %197) #4
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
  %203 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX1_SIZE = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %204, i32 0, i32 7
  %205 = ptrtoint ptr %DMCUB_INBOX1_SIZE to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %DMCUB_INBOX1_SIZE, align 4
  %call157 = tail call i32 %200(ptr noundef %202, i32 noundef %206) #4
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
  %212 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX0_RPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %DMCUB_INBOX0_RPTR to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %DMCUB_INBOX0_RPTR, align 4
  %call163 = tail call i32 %209(ptr noundef %211, i32 noundef %215) #4
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
  %221 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX0_WPTR = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %222, i32 0, i32 5
  %223 = ptrtoint ptr %DMCUB_INBOX0_WPTR to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %DMCUB_INBOX0_WPTR, align 4
  %call169 = tail call i32 %218(ptr noundef %220, i32 noundef %224) #4
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
  %230 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs, align 4
  %DMCUB_INBOX0_SIZE = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %DMCUB_INBOX0_SIZE to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %DMCUB_INBOX0_SIZE, align 4
  %call175 = tail call i32 %227(ptr noundef %229, i32 noundef %233) #4
  %inbox0_size = getelementptr inbounds %struct.dmub_diagnostic_data, ptr %diag_data, i32 0, i32 11
  %234 = ptrtoint ptr %inbox0_size to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %call175, ptr %inbox0_size, align 4
  %235 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  %shift = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %236, i32 0, i32 2
  %239 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %shift, align 4
  %mask = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %236, i32 0, i32 1
  %241 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %mask, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %238, i8 noundef zeroext %240, i32 noundef %242, ptr noundef nonnull %is_dmub_enabled) #4
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
  %246 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 4
  %DMCUB_CNTL__DMCUB_SOFT_RESET = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %247, i32 0, i32 2, i32 1
  %250 = ptrtoint ptr %DMCUB_CNTL__DMCUB_SOFT_RESET to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %DMCUB_CNTL__DMCUB_SOFT_RESET, align 1
  %DMCUB_CNTL__DMCUB_SOFT_RESET188 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %247, i32 0, i32 1, i32 1
  %252 = ptrtoint ptr %DMCUB_CNTL__DMCUB_SOFT_RESET188 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %DMCUB_CNTL__DMCUB_SOFT_RESET188, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %249, i8 noundef zeroext %251, i32 noundef %253, ptr noundef nonnull %is_soft_reset) #4
  %254 = ptrtoint ptr %is_soft_reset to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %is_soft_reset, align 4
  %conv189 = trunc i32 %255 to i8
  %256 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %256)
  %bf.load190 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value191 = shl i8 %conv189, 6
  %bf.shl192 = and i8 %bf.value191, 64
  %bf.clear193 = and i8 %bf.load190, -65
  %bf.set194 = or i8 %bf.shl192, %bf.clear193
  store i8 %bf.set194, ptr %is_dmcub_enabled, align 4
  %257 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regs, align 4
  %DMCUB_SEC_CNTL = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %DMCUB_SEC_CNTL to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %DMCUB_SEC_CNTL, align 4
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %258, i32 0, i32 2, i32 7
  %261 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS, align 1
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS201 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %258, i32 0, i32 1, i32 7
  %263 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS201 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET_STATUS201, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %260, i8 noundef zeroext %262, i32 noundef %264, ptr noundef nonnull %is_sec_reset) #4
  %265 = ptrtoint ptr %is_sec_reset to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %is_sec_reset, align 4
  %conv202 = trunc i32 %266 to i8
  %267 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %267)
  %bf.load203 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value204 = shl i8 %conv202, 5
  %bf.shl205 = and i8 %bf.value204, 32
  %bf.clear206 = and i8 %bf.load203, -33
  %bf.set207 = or i8 %bf.shl205, %bf.clear206
  store i8 %bf.set207, ptr %is_dmcub_enabled, align 4
  %268 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %regs, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %269, align 4
  %DMCUB_CNTL__DMCUB_TRACEPORT_EN = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %269, i32 0, i32 2, i32 2
  %272 = ptrtoint ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN, align 2
  %DMCUB_CNTL__DMCUB_TRACEPORT_EN215 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %269, i32 0, i32 1, i32 2
  %274 = ptrtoint ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN215 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %DMCUB_CNTL__DMCUB_TRACEPORT_EN215, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %271, i8 noundef zeroext %273, i32 noundef %275, ptr noundef nonnull %is_traceport_enabled) #4
  %276 = ptrtoint ptr %is_traceport_enabled to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %is_traceport_enabled, align 4
  %conv216 = trunc i32 %277 to i8
  %278 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %278)
  %bf.load217 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value218 = shl i8 %conv216, 4
  %bf.shl219 = and i8 %bf.value218, 16
  %bf.clear220 = and i8 %bf.load217, -17
  %bf.set221 = or i8 %bf.shl219, %bf.clear220
  store i8 %bf.set221, ptr %is_dmcub_enabled, align 4
  %279 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %280, i32 0, i32 42
  %281 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %280, i32 0, i32 2, i32 9
  %283 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE, align 1
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE228 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %280, i32 0, i32 1, i32 9
  %285 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE228 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE228, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %282, i8 noundef zeroext %284, i32 noundef %286, ptr noundef nonnull %is_cw0_enabled) #4
  %287 = ptrtoint ptr %is_cw0_enabled to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %is_cw0_enabled, align 4
  %conv229 = trunc i32 %288 to i8
  %289 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %289)
  %bf.load231 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value232 = shl i8 %conv229, 3
  %bf.shl233 = and i8 %bf.value232, 8
  %bf.clear234 = and i8 %bf.load231, -9
  %bf.set235 = or i8 %bf.shl233, %bf.clear234
  store i8 %bf.set235, ptr %is_dmcub_enabled, align 4
  %290 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %291, i32 0, i32 48
  %292 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %291, i32 0, i32 2, i32 21
  %294 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE, align 1
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE242 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %291, i32 0, i32 1, i32 21
  %296 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE242 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE242, align 4
  call void @dmub_reg_get(ptr noundef nonnull %dmub, i32 noundef %293, i8 noundef zeroext %295, i32 noundef %297, ptr noundef nonnull %is_cw6_enabled) #4
  %298 = ptrtoint ptr %is_cw6_enabled to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %is_cw6_enabled, align 4
  %conv243 = trunc i32 %299 to i8
  %300 = ptrtoint ptr %is_dmcub_enabled to i32
  call void @__asan_load1_noabort(i32 %300)
  %bf.load245 = load i8, ptr %is_dmcub_enabled, align 4
  %bf.value246 = shl i8 %conv243, 2
  %bf.shl247 = and i8 %bf.value246, 4
  %bf.clear248 = and i8 %bf.load245, -5
  %bf.set249 = or i8 %bf.shl247, %bf.clear248
  store i8 %bf.set249, ptr %is_dmcub_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_cw6_enabled) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_cw0_enabled) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_traceport_enabled) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_sec_reset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_soft_reset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_dmub_enabled) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @dmub_srv_dcn20_regs, !1, !"dmub_srv_dcn20_regs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn20.c", i32 41, i32 35}
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
