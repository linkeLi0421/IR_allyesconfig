; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dmub/src/dmub_dcn30.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn30.c"
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

@dmub_srv_dcn30_regs = dso_local constant { %struct.dmub_srv_common_regs, [112 x i8] } { %struct.dmub_srv_common_regs { %struct.dmub_srv_common_reg_offset { i32 14006, i32 13967, i32 13966, i32 13969, i32 13971, i32 13970, i32 13972, i32 13973, i32 13975, i32 13974, i32 13976, i32 13977, i32 13979, i32 13978, i32 13980, i32 13981, i32 13983, i32 13982, i32 13941, i32 13943, i32 13945, i32 13947, i32 13949, i32 13951, i32 13953, i32 13955, i32 13942, i32 13944, i32 13946, i32 13948, i32 13950, i32 13952, i32 13954, i32 13956, i32 13925, i32 13926, i32 13927, i32 13928, i32 13929, i32 13930, i32 13931, i32 13932, i32 13933, i32 13934, i32 13935, i32 13936, i32 13937, i32 13938, i32 13939, i32 13940, i32 13910, i32 13911, i32 13921, i32 13912, i32 13913, i32 13922, i32 13987, i32 13988, i32 13989, i32 13990, i32 13991, i32 13992, i32 13993, i32 13994, i32 13995, i32 13996, i32 13997, i32 13998, i32 13999, i32 14000, i32 14001, i32 14002, i32 14008, i32 13706, i32 14337, i32 14675, i32 14677, i32 13958, i32 14013, i32 13964, i32 14010, i32 13965 }, %struct.dmub_srv_common_reg_mask { i32 65536, i32 131072, i32 524288, i32 28672, i32 1792, i32 65536, i32 16128, i32 2097152, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 65536, i32 256, i32 16777215, i32 16777215, i32 64 }, %struct.dmub_srv_common_reg_shift { i8 16, i8 17, i8 19, i8 12, i8 8, i8 16, i8 8, i8 21, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 16, i8 8, i8 0, i8 0, i8 6 } }, [112 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"dmub_srv_dcn30_regs\00", align 1
@___asan_gen_.2 = private constant [63 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn30.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 41, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dmub_srv_dcn30_regs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmub_srv_dcn30_regs to i32), i32 496, i32 608, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn30_backdoor_load(ptr noundef %dmub, ptr nocapture noundef readonly %cw0, ptr nocapture noundef readonly %cw1) local_unnamed_addr #0 align 64 {
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
  br label %dmub_dcn30_get_fb_base_offset.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %10, i8 noundef zeroext %12, i32 noundef %14, ptr noundef nonnull %tmp.i) #3
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
  call void @dmub_reg_get(ptr noundef %dmub, i32 noundef %20, i8 noundef zeroext %22, i32 noundef %24, ptr noundef nonnull %tmp.i) #3
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp.i, align 4
  %conv16.i = zext i32 %26 to i64
  %shl17.i = shl nuw nsw i64 %conv16.i, 24
  br label %dmub_dcn30_get_fb_base_offset.exit

dmub_dcn30_get_fb_base_offset.exit:               ; preds = %if.end.i, %if.then.i
  %fb_base.0 = phi i64 [ %shl.i, %if.end.i ], [ %2, %if.then.i ]
  %storemerge.i = phi i64 [ %shl17.i, %if.end.i ], [ %6, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
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
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW0_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %42, i32 0, i32 18
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
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW0_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %50, i32 0, i32 26
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
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW0_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %58, i32 0, i32 34
  %59 = ptrtoint ptr %DMCUB_REGION3_CW0_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %DMCUB_REGION3_CW0_BASE_ADDRESS, align 4
  %region = getelementptr inbounds %struct.dmub_window, ptr %cw0, i32 0, i32 1
  %61 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %region, align 8
  call void %54(ptr noundef %56, i32 noundef %60, i32 noundef %62) #3
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %64, i32 0, i32 42
  %65 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %64, i32 0, i32 2, i32 8
  %67 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS24 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %64, i32 0, i32 1, i32 8
  %69 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_TOP_ADDRESS24, align 4
  %top = getelementptr inbounds %struct.dmub_window, ptr %cw0, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %top, align 4
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %64, i32 0, i32 2, i32 9
  %73 = ptrtoint ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE, align 1
  %conv = zext i8 %74 to i32
  %DMCUB_REGION3_CW0_TOP_ADDRESS__DMCUB_REGION3_CW0_ENABLE30 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %64, i32 0, i32 1, i32 9
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
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW1_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %84, i32 0, i32 19
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
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW1_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %92, i32 0, i32 27
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
  %99 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW1_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %100, i32 0, i32 35
  %101 = ptrtoint ptr %DMCUB_REGION3_CW1_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %DMCUB_REGION3_CW1_BASE_ADDRESS, align 4
  %region49 = getelementptr inbounds %struct.dmub_window, ptr %cw1, i32 0, i32 1
  %103 = ptrtoint ptr %region49 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %region49, align 8
  call void %96(ptr noundef %98, i32 noundef %102, i32 noundef %104) #3
  %105 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW1_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %106, i32 0, i32 43
  %107 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %106, i32 0, i32 2, i32 10
  %109 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS, align 2
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS57 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %106, i32 0, i32 1, i32 10
  %111 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS57 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_TOP_ADDRESS57, align 4
  %top59 = getelementptr inbounds %struct.dmub_window, ptr %cw1, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %top59 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %top59, align 4
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %106, i32 0, i32 2, i32 11
  %115 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE, align 1
  %conv62 = zext i8 %116 to i32
  %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE65 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %106, i32 0, i32 1, i32 11
  %117 = ptrtoint ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE65 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %DMCUB_REGION3_CW1_TOP_ADDRESS__DMCUB_REGION3_CW1_ENABLE65, align 4
  call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %108, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %110, i32 noundef %112, i32 noundef %114, i32 noundef %conv62, i32 noundef %118, i32 noundef 1) #3
  %119 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs, align 4
  %DMCUB_SEC_CNTL68 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %DMCUB_SEC_CNTL68 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %DMCUB_SEC_CNTL68, align 4
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET71 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %120, i32 0, i32 2, i32 5
  %123 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET71 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET71, align 1
  %DMCUB_SEC_CNTL__DMCUB_SEC_RESET74 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %120, i32 0, i32 1, i32 5
  %125 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET74 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_SEC_RESET74, align 4
  %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %120, i32 0, i32 2, i32 6
  %127 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID, align 2
  %conv77 = zext i8 %128 to i32
  %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID80 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %120, i32 0, i32 1, i32 6
  %129 = ptrtoint ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID80 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %DMCUB_SEC_CNTL__DMCUB_MEM_UNIT_ID80, align 4
  call void (ptr, i32, i32, i8, i32, i32, ...) @dmub_reg_update(ptr noundef %dmub, i32 noundef %122, i32 noundef 2, i8 noundef zeroext %124, i32 noundef %126, i32 noundef 0, i32 noundef %conv77, i32 noundef %130, i32 noundef 32) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_reg_update(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_reg_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmub_dcn30_setup_windows(ptr noundef %dmub, ptr nocapture noundef readonly %cw2, ptr nocapture noundef readonly %cw3, ptr nocapture noundef readonly %cw4, ptr nocapture noundef readonly %cw5, ptr nocapture noundef readonly %cw6) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.dmub_window, ptr %cw2, i32 0, i32 1
  %0 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %region, align 8
  %top = getelementptr inbounds %struct.dmub_window, ptr %cw2, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %offset.sroa.15.0.offset1.sroa_idx = getelementptr inbounds i8, ptr %cw2, i32 4
  %4 = ptrtoint ptr %offset.sroa.15.0.offset1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %offset.sroa.15.0.copyload = load i32, ptr %offset.sroa.15.0.offset1.sroa_idx, align 4
  %5 = ptrtoint ptr %cw2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %offset.sroa.0.0.copyload = load i32, ptr %cw2, align 8
  %reg_write = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_write, align 4
  %user_ctx = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %8 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ctx, align 4
  %regs = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW2_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %DMCUB_REGION3_CW2_OFFSET to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DMCUB_REGION3_CW2_OFFSET, align 4
  tail call void %7(ptr noundef %9, i32 noundef %13, i32 noundef %offset.sroa.0.0.copyload) #3
  %14 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_write, align 4
  %16 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ctx, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW2_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %19, i32 0, i32 28
  %20 = ptrtoint ptr %DMCUB_REGION3_CW2_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DMCUB_REGION3_CW2_OFFSET_HIGH, align 4
  tail call void %15(ptr noundef %17, i32 noundef %21, i32 noundef %offset.sroa.15.0.copyload) #3
  %22 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_write, align 4
  %24 = ptrtoint ptr %user_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_ctx, align 4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW2_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %27, i32 0, i32 36
  %28 = ptrtoint ptr %DMCUB_REGION3_CW2_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %DMCUB_REGION3_CW2_BASE_ADDRESS, align 4
  %30 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %region, align 8
  tail call void %23(ptr noundef %25, i32 noundef %29, i32 noundef %31) #3
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %33, i32 0, i32 2, i32 12
  %36 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS20 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %33, i32 0, i32 1, i32 12
  %38 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_TOP_ADDRESS20, align 4
  %40 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %top, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %33, i32 0, i32 2, i32 13
  %42 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE, align 1
  %conv = zext i8 %43 to i32
  %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE27 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %33, i32 0, i32 1, i32 13
  %44 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS__DMCUB_REGION3_CW2_ENABLE27, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %35, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %37, i32 noundef %39, i32 noundef %41, i32 noundef %conv, i32 noundef %45, i32 noundef 1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %reg_write29 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %reg_write29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_write29, align 4
  %user_ctx30 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %48 = ptrtoint ptr %user_ctx30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %user_ctx30, align 4
  %regs31 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %50 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs31, align 4
  %DMCUB_REGION3_CW2_OFFSET33 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %DMCUB_REGION3_CW2_OFFSET33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %DMCUB_REGION3_CW2_OFFSET33, align 4
  tail call void %47(ptr noundef %49, i32 noundef %53, i32 noundef 0) #3
  %54 = ptrtoint ptr %reg_write29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_write29, align 4
  %56 = ptrtoint ptr %user_ctx30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %user_ctx30, align 4
  %58 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs31, align 4
  %DMCUB_REGION3_CW2_OFFSET_HIGH39 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %59, i32 0, i32 28
  %60 = ptrtoint ptr %DMCUB_REGION3_CW2_OFFSET_HIGH39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %DMCUB_REGION3_CW2_OFFSET_HIGH39, align 4
  tail call void %55(ptr noundef %57, i32 noundef %61, i32 noundef 0) #3
  %62 = ptrtoint ptr %reg_write29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_write29, align 4
  %64 = ptrtoint ptr %user_ctx30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %user_ctx30, align 4
  %66 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs31, align 4
  %DMCUB_REGION3_CW2_BASE_ADDRESS45 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %67, i32 0, i32 36
  %68 = ptrtoint ptr %DMCUB_REGION3_CW2_BASE_ADDRESS45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %DMCUB_REGION3_CW2_BASE_ADDRESS45, align 4
  tail call void %63(ptr noundef %65, i32 noundef %69, i32 noundef 0) #3
  %70 = ptrtoint ptr %reg_write29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_write29, align 4
  %72 = ptrtoint ptr %user_ctx30 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %user_ctx30, align 4
  %74 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs31, align 4
  %DMCUB_REGION3_CW2_TOP_ADDRESS51 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %75, i32 0, i32 44
  %76 = ptrtoint ptr %DMCUB_REGION3_CW2_TOP_ADDRESS51 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %DMCUB_REGION3_CW2_TOP_ADDRESS51, align 4
  tail call void %71(ptr noundef %73, i32 noundef %77, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %78 = ptrtoint ptr %cw3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %offset.sroa.0.0.copyload262 = load i32, ptr %cw3, align 8
  %offset.sroa.15.0.offset52.sroa_idx = getelementptr inbounds i8, ptr %cw3, i32 4
  %79 = ptrtoint ptr %offset.sroa.15.0.offset52.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %79)
  %offset.sroa.15.0.copyload266 = load i32, ptr %offset.sroa.15.0.offset52.sroa_idx, align 4
  %reg_write54 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 8, i32 1
  %80 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_write54, align 4
  %user_ctx55 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 1
  %82 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %user_ctx55, align 4
  %regs56 = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 6
  %84 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW3_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %85, i32 0, i32 21
  %86 = ptrtoint ptr %DMCUB_REGION3_CW3_OFFSET to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %DMCUB_REGION3_CW3_OFFSET, align 4
  tail call void %81(ptr noundef %83, i32 noundef %87, i32 noundef %offset.sroa.0.0.copyload262) #3
  %88 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_write54, align 4
  %90 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %user_ctx55, align 4
  %92 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW3_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %93, i32 0, i32 29
  %94 = ptrtoint ptr %DMCUB_REGION3_CW3_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %DMCUB_REGION3_CW3_OFFSET_HIGH, align 4
  tail call void %89(ptr noundef %91, i32 noundef %95, i32 noundef %offset.sroa.15.0.copyload266) #3
  %96 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_write54, align 4
  %98 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %user_ctx55, align 4
  %100 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW3_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %101, i32 0, i32 37
  %102 = ptrtoint ptr %DMCUB_REGION3_CW3_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %DMCUB_REGION3_CW3_BASE_ADDRESS, align 4
  %region70 = getelementptr inbounds %struct.dmub_window, ptr %cw3, i32 0, i32 1
  %104 = ptrtoint ptr %region70 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %region70, align 8
  tail call void %97(ptr noundef %99, i32 noundef %103, i32 noundef %105) #3
  %106 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW3_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %107, i32 0, i32 45
  %108 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %107, i32 0, i32 2, i32 14
  %110 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS, align 2
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS78 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %107, i32 0, i32 1, i32 14
  %112 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS78 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_TOP_ADDRESS78, align 4
  %top80 = getelementptr inbounds %struct.dmub_window, ptr %cw3, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %top80 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %top80, align 4
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %107, i32 0, i32 2, i32 15
  %116 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE, align 1
  %conv83 = zext i8 %117 to i32
  %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE86 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %107, i32 0, i32 1, i32 15
  %118 = ptrtoint ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE86 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %DMCUB_REGION3_CW3_TOP_ADDRESS__DMCUB_REGION3_CW3_ENABLE86, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %109, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %111, i32 noundef %113, i32 noundef %115, i32 noundef %conv83, i32 noundef %119, i32 noundef 1) #3
  %120 = ptrtoint ptr %cw4 to i32
  call void @__asan_load4_noabort(i32 %120)
  %offset.sroa.0.0.copyload263 = load i32, ptr %cw4, align 8
  %offset.sroa.15.0.offset87.sroa_idx = getelementptr inbounds i8, ptr %cw4, i32 4
  %121 = ptrtoint ptr %offset.sroa.15.0.offset87.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %121)
  %offset.sroa.15.0.copyload267 = load i32, ptr %offset.sroa.15.0.offset87.sroa_idx, align 4
  %call = tail call zeroext i1 @dmub_dcn20_use_cached_inbox(ptr noundef %dmub) #3
  %122 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_write54, align 4
  %124 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %user_ctx55, align 4
  %126 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs56, align 4
  br i1 %call, label %if.then88, label %if.else123

if.then88:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %DMCUB_REGION3_CW4_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %127, i32 0, i32 22
  %128 = ptrtoint ptr %DMCUB_REGION3_CW4_OFFSET to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %DMCUB_REGION3_CW4_OFFSET, align 4
  tail call void %123(ptr noundef %125, i32 noundef %129, i32 noundef %offset.sroa.0.0.copyload263) #3
  %130 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg_write54, align 4
  %132 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %user_ctx55, align 4
  %134 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW4_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %135, i32 0, i32 30
  %136 = ptrtoint ptr %DMCUB_REGION3_CW4_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %DMCUB_REGION3_CW4_OFFSET_HIGH, align 4
  tail call void %131(ptr noundef %133, i32 noundef %137, i32 noundef %offset.sroa.15.0.copyload267) #3
  %138 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_write54, align 4
  %140 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %user_ctx55, align 4
  %142 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW4_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %143, i32 0, i32 38
  %144 = ptrtoint ptr %DMCUB_REGION3_CW4_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %DMCUB_REGION3_CW4_BASE_ADDRESS, align 4
  %region106 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1
  %146 = ptrtoint ptr %region106 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %region106, align 8
  tail call void %139(ptr noundef %141, i32 noundef %145, i32 noundef %147) #3
  %148 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %149, i32 0, i32 46
  %150 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %149, i32 0, i32 2, i32 16
  %152 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS114 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %149, i32 0, i32 1, i32 16
  %154 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS114 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_TOP_ADDRESS114, align 4
  %top116 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1, i32 1
  %156 = ptrtoint ptr %top116 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %top116, align 4
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %149, i32 0, i32 2, i32 17
  %158 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE, align 1
  %conv119 = zext i8 %159 to i32
  %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE122 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %149, i32 0, i32 1, i32 17
  %160 = ptrtoint ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE122 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %DMCUB_REGION3_CW4_TOP_ADDRESS__DMCUB_REGION3_CW4_ENABLE122, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %151, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %153, i32 noundef %155, i32 noundef %157, i32 noundef %conv119, i32 noundef %161, i32 noundef 1) #3
  br label %if.end154

if.else123:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %DMCUB_REGION4_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %127, i32 0, i32 50
  %162 = ptrtoint ptr %DMCUB_REGION4_OFFSET to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %DMCUB_REGION4_OFFSET, align 4
  tail call void %123(ptr noundef %125, i32 noundef %163, i32 noundef %offset.sroa.0.0.copyload263) #3
  %164 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg_write54, align 4
  %166 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %user_ctx55, align 4
  %168 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION4_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %169, i32 0, i32 51
  %170 = ptrtoint ptr %DMCUB_REGION4_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %DMCUB_REGION4_OFFSET_HIGH, align 4
  tail call void %165(ptr noundef %167, i32 noundef %171, i32 noundef %offset.sroa.15.0.copyload267) #3
  %172 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %173, i32 0, i32 52
  %174 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %DMCUB_REGION4_TOP_ADDRESS, align 4
  %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %173, i32 0, i32 2, i32 24
  %176 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS, align 4
  %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS142 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %173, i32 0, i32 1, i32 24
  %178 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS142 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_TOP_ADDRESS142, align 4
  %region143 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1
  %top144 = getelementptr inbounds %struct.dmub_window, ptr %cw4, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %top144 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %top144, align 4
  %182 = ptrtoint ptr %region143 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %region143, align 8
  %184 = xor i32 %183, -1
  %sub147 = add i32 %181, %184
  %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %173, i32 0, i32 2, i32 25
  %185 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE, align 1
  %conv150 = zext i8 %186 to i32
  %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE153 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %173, i32 0, i32 1, i32 25
  %187 = ptrtoint ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE153 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %DMCUB_REGION4_TOP_ADDRESS__DMCUB_REGION4_ENABLE153, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %175, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %177, i32 noundef %179, i32 noundef %sub147, i32 noundef %conv150, i32 noundef %188, i32 noundef 1) #3
  br label %if.end154

if.end154:                                        ; preds = %if.else123, %if.then88
  %189 = ptrtoint ptr %cw5 to i32
  call void @__asan_load4_noabort(i32 %189)
  %offset.sroa.0.0.copyload264 = load i32, ptr %cw5, align 8
  %offset.sroa.15.0.offset155.sroa_idx = getelementptr inbounds i8, ptr %cw5, i32 4
  %190 = ptrtoint ptr %offset.sroa.15.0.offset155.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %190)
  %offset.sroa.15.0.copyload268 = load i32, ptr %offset.sroa.15.0.offset155.sroa_idx, align 4
  %191 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %reg_write54, align 4
  %193 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %user_ctx55, align 4
  %195 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW5_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %196, i32 0, i32 23
  %197 = ptrtoint ptr %DMCUB_REGION3_CW5_OFFSET to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %DMCUB_REGION3_CW5_OFFSET, align 4
  tail call void %192(ptr noundef %194, i32 noundef %198, i32 noundef %offset.sroa.0.0.copyload264) #3
  %199 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reg_write54, align 4
  %201 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %user_ctx55, align 4
  %203 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW5_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %204, i32 0, i32 31
  %205 = ptrtoint ptr %DMCUB_REGION3_CW5_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %DMCUB_REGION3_CW5_OFFSET_HIGH, align 4
  tail call void %200(ptr noundef %202, i32 noundef %206, i32 noundef %offset.sroa.15.0.copyload268) #3
  %207 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %reg_write54, align 4
  %209 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %user_ctx55, align 4
  %211 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW5_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %212, i32 0, i32 39
  %213 = ptrtoint ptr %DMCUB_REGION3_CW5_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %DMCUB_REGION3_CW5_BASE_ADDRESS, align 4
  %region173 = getelementptr inbounds %struct.dmub_window, ptr %cw5, i32 0, i32 1
  %215 = ptrtoint ptr %region173 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %region173, align 8
  tail call void %208(ptr noundef %210, i32 noundef %214, i32 noundef %216) #3
  %217 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %218, i32 0, i32 47
  %219 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %218, i32 0, i32 2, i32 18
  %221 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS, align 2
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS181 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %218, i32 0, i32 1, i32 18
  %223 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS181 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_TOP_ADDRESS181, align 4
  %top183 = getelementptr inbounds %struct.dmub_window, ptr %cw5, i32 0, i32 1, i32 1
  %225 = ptrtoint ptr %top183 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %top183, align 4
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %218, i32 0, i32 2, i32 19
  %227 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE, align 1
  %conv186 = zext i8 %228 to i32
  %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE189 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %218, i32 0, i32 1, i32 19
  %229 = ptrtoint ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE189 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %DMCUB_REGION3_CW5_TOP_ADDRESS__DMCUB_REGION3_CW5_ENABLE189, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %220, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %222, i32 noundef %224, i32 noundef %226, i32 noundef %conv186, i32 noundef %230, i32 noundef 1) #3
  %231 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %reg_write54, align 4
  %233 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %user_ctx55, align 4
  %235 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION5_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %236, i32 0, i32 53
  %237 = ptrtoint ptr %DMCUB_REGION5_OFFSET to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %DMCUB_REGION5_OFFSET, align 4
  tail call void %232(ptr noundef %234, i32 noundef %238, i32 noundef %offset.sroa.0.0.copyload264) #3
  %239 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg_write54, align 4
  %241 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %user_ctx55, align 4
  %243 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION5_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %244, i32 0, i32 54
  %245 = ptrtoint ptr %DMCUB_REGION5_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %DMCUB_REGION5_OFFSET_HIGH, align 4
  tail call void %240(ptr noundef %242, i32 noundef %246, i32 noundef %offset.sroa.15.0.copyload268) #3
  %247 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %248, i32 0, i32 55
  %249 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %DMCUB_REGION5_TOP_ADDRESS, align 4
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %248, i32 0, i32 2, i32 26
  %251 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS, align 2
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS208 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %248, i32 0, i32 1, i32 26
  %253 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS208 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_TOP_ADDRESS208, align 4
  %255 = ptrtoint ptr %top183 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %top183, align 4
  %257 = ptrtoint ptr %region173 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %region173, align 8
  %259 = xor i32 %258, -1
  %sub214 = add i32 %256, %259
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %248, i32 0, i32 2, i32 27
  %260 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE, align 1
  %conv217 = zext i8 %261 to i32
  %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE220 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %248, i32 0, i32 1, i32 27
  %262 = ptrtoint ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE220 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %DMCUB_REGION5_TOP_ADDRESS__DMCUB_REGION5_ENABLE220, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %250, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %252, i32 noundef %254, i32 noundef %sub214, i32 noundef %conv217, i32 noundef %263, i32 noundef 1) #3
  %264 = ptrtoint ptr %cw6 to i32
  call void @__asan_load4_noabort(i32 %264)
  %offset.sroa.0.0.copyload265 = load i32, ptr %cw6, align 8
  %offset.sroa.15.0.offset221.sroa_idx = getelementptr inbounds i8, ptr %cw6, i32 4
  %265 = ptrtoint ptr %offset.sroa.15.0.offset221.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %265)
  %offset.sroa.15.0.copyload269 = load i32, ptr %offset.sroa.15.0.offset221.sroa_idx, align 4
  %266 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %reg_write54, align 4
  %268 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %user_ctx55, align 4
  %270 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW6_OFFSET = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %271, i32 0, i32 24
  %272 = ptrtoint ptr %DMCUB_REGION3_CW6_OFFSET to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %DMCUB_REGION3_CW6_OFFSET, align 4
  tail call void %267(ptr noundef %269, i32 noundef %273, i32 noundef %offset.sroa.0.0.copyload265) #3
  %274 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %reg_write54, align 4
  %276 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %user_ctx55, align 4
  %278 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW6_OFFSET_HIGH = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %279, i32 0, i32 32
  %280 = ptrtoint ptr %DMCUB_REGION3_CW6_OFFSET_HIGH to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %DMCUB_REGION3_CW6_OFFSET_HIGH, align 4
  tail call void %275(ptr noundef %277, i32 noundef %281, i32 noundef %offset.sroa.15.0.copyload269) #3
  %282 = ptrtoint ptr %reg_write54 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %reg_write54, align 4
  %284 = ptrtoint ptr %user_ctx55 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %user_ctx55, align 4
  %286 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW6_BASE_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %287, i32 0, i32 40
  %288 = ptrtoint ptr %DMCUB_REGION3_CW6_BASE_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %DMCUB_REGION3_CW6_BASE_ADDRESS, align 4
  %region239 = getelementptr inbounds %struct.dmub_window, ptr %cw6, i32 0, i32 1
  %290 = ptrtoint ptr %region239 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %region239, align 8
  tail call void %283(ptr noundef %285, i32 noundef %289, i32 noundef %291) #3
  %292 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regs56, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %293, i32 0, i32 48
  %294 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %293, i32 0, i32 2, i32 20
  %296 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS247 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %293, i32 0, i32 1, i32 20
  %298 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS247 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_TOP_ADDRESS247, align 4
  %top249 = getelementptr inbounds %struct.dmub_window, ptr %cw6, i32 0, i32 1, i32 1
  %300 = ptrtoint ptr %top249 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %top249, align 4
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %293, i32 0, i32 2, i32 21
  %302 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE, align 1
  %conv252 = zext i8 %303 to i32
  %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE255 = getelementptr inbounds %struct.dmub_srv_common_regs, ptr %293, i32 0, i32 1, i32 21
  %304 = ptrtoint ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE255 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %DMCUB_REGION3_CW6_TOP_ADDRESS__DMCUB_REGION3_CW6_ENABLE255, align 4
  tail call void (ptr, i32, i32, i32, i8, i32, i32, ...) @dmub_reg_set(ptr noundef %dmub, i32 noundef %295, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %297, i32 noundef %299, i32 noundef %301, i32 noundef %conv252, i32 noundef %305, i32 noundef 1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmub_dcn20_use_cached_inbox(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmub_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!0 = !{ptr @dmub_srv_dcn30_regs, !1, !"dmub_srv_dcn30_regs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn30.c", i32 41, i32 35}
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
