; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dmub/src/dmub_dcn21.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn21.c"
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

@dmub_srv_dcn21_regs = dso_local constant { %struct.dmub_srv_common_regs, [112 x i8] } { %struct.dmub_srv_common_regs { %struct.dmub_srv_common_reg_offset { i32 26464, i32 26425, i32 26424, i32 26427, i32 26429, i32 26428, i32 26430, i32 26431, i32 26433, i32 26432, i32 26434, i32 26435, i32 26437, i32 26436, i32 26438, i32 26439, i32 26441, i32 26440, i32 26399, i32 26401, i32 26403, i32 26405, i32 26407, i32 26409, i32 26411, i32 26413, i32 26400, i32 26402, i32 26404, i32 26406, i32 26408, i32 26410, i32 26412, i32 26414, i32 26383, i32 26384, i32 26385, i32 26386, i32 26387, i32 26388, i32 26389, i32 26390, i32 26391, i32 26392, i32 26393, i32 26394, i32 26395, i32 26396, i32 26397, i32 26398, i32 26368, i32 26369, i32 26379, i32 26370, i32 26371, i32 26380, i32 26445, i32 26446, i32 26447, i32 26448, i32 26449, i32 26450, i32 26451, i32 26452, i32 26453, i32 26454, i32 26455, i32 26456, i32 26457, i32 26458, i32 26459, i32 26460, i32 26466, i32 13706, i32 14339, i32 14675, i32 14677, i32 26416, i32 26471, i32 26422, i32 26468, i32 26423 }, %struct.dmub_srv_common_reg_mask { i32 65536, i32 131072, i32 524288, i32 28672, i32 1792, i32 65536, i32 16128, i32 2097152, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 536870911, i32 -2147483648, i32 65536, i32 256, i32 16777215, i32 16777215, i32 64 }, %struct.dmub_srv_common_reg_shift { i8 16, i8 17, i8 19, i8 12, i8 8, i8 16, i8 8, i8 21, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 0, i8 31, i8 16, i8 8, i8 0, i8 0, i8 6 } }, [112 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"dmub_srv_dcn21_regs\00", align 1
@___asan_gen_.2 = private constant [63 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn21.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 40, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dmub_srv_dcn21_regs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmub_srv_dcn21_regs to i32), i32 496, i32 608, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_dcn21_is_phy_init(ptr nocapture noundef readonly %dmub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
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
  %DMCUB_SCRATCH10 = getelementptr inbounds %struct.dmub_srv_common_reg_offset, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %DMCUB_SCRATCH10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMCUB_SCRATCH10, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %7) #1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @dmub_srv_dcn21_regs, !1, !"dmub_srv_dcn21_regs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_dcn21.c", i32 40, i32 35}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
