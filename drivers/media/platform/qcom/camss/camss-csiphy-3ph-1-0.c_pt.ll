; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.csiphy_hw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.csiphy_reg_t = type { i32, i32, i32, i32 }
%struct.csiphy_device = type { ptr, i8, %struct.v4l2_subdev, [2 x %struct.media_pad], ptr, ptr, i32, [30 x i8], ptr, ptr, i32, i32, %struct.csiphy_config, [2 x %struct.v4l2_mbus_framefmt], ptr, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.csiphy_config = type { i8, i8, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.csiphy_lanes_cfg = type { i32, ptr, %struct.csiphy_lane }
%struct.csiphy_lane = type { i8, i8 }

@csiphy_ops_3ph_1_0 = dso_local constant { %struct.csiphy_hw_ops, [44 x i8] } { %struct.csiphy_hw_ops { ptr @csiphy_hw_version_read, ptr @csiphy_reset, ptr @csiphy_lanes_enable, ptr @csiphy_lanes_disable, ptr @csiphy_isr }, [44 x i8] zeroinitializer }, align 32
@csiphy_hw_version_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CSIPHY 3PH HW Version = 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csiphy_hw_version_read\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csiphy_hw_version_read._entry_ptr = internal global ptr @csiphy_hw_version_read._entry, section ".printk_index", align 4
@lane_regs_sdm845 = internal constant { [5 x [14 x %struct.csiphy_reg_t]], [256 x i8] } { [5 x [14 x %struct.csiphy_reg_t]] [[14 x %struct.csiphy_reg_t] [%struct.csiphy_reg_t { i32 4, i32 12, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 44, i32 1, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 52, i32 15, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 28, i32 10, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 20, i32 96, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 40, i32 0, i32 0, i32 4 }, %struct.csiphy_reg_t { i32 60, i32 184, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 0, i32 145, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 8, i32 0, i32 0, i32 2 }, %struct.csiphy_reg_t { i32 12, i32 0, i32 0, i32 4 }, %struct.csiphy_reg_t { i32 16, i32 82, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 56, i32 254, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 96, i32 0, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 100, i32 127, i32 0, i32 0 }], [14 x %struct.csiphy_reg_t] [%struct.csiphy_reg_t { i32 1796, i32 12, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1836, i32 1, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1844, i32 15, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1820, i32 10, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1812, i32 96, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1832, i32 4, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1852, i32 184, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1792, i32 128, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1800, i32 20, i32 0, i32 2 }, %struct.csiphy_reg_t { i32 1804, i32 165, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1808, i32 82, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1848, i32 31, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1888, i32 0, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1892, i32 127, i32 0, i32 0 }], [14 x %struct.csiphy_reg_t] [%struct.csiphy_reg_t { i32 516, i32 12, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 556, i32 1, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 564, i32 15, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 540, i32 10, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 532, i32 96, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 552, i32 0, i32 0, i32 4 }, %struct.csiphy_reg_t { i32 572, i32 184, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 512, i32 145, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 520, i32 0, i32 0, i32 2 }, %struct.csiphy_reg_t { i32 524, i32 0, i32 0, i32 4 }, %struct.csiphy_reg_t { i32 528, i32 82, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 568, i32 254, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 608, i32 0, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 612, i32 127, i32 0, i32 0 }], [14 x %struct.csiphy_reg_t] [%struct.csiphy_reg_t { i32 1028, i32 12, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1068, i32 1, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1076, i32 15, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1052, i32 10, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1044, i32 96, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1064, i32 0, i32 0, i32 4 }, %struct.csiphy_reg_t { i32 1084, i32 184, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1024, i32 145, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1032, i32 0, i32 0, i32 2 }, %struct.csiphy_reg_t { i32 1036, i32 0, i32 0, i32 4 }, %struct.csiphy_reg_t { i32 1040, i32 82, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1080, i32 254, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1120, i32 0, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1124, i32 127, i32 0, i32 0 }], [14 x %struct.csiphy_reg_t] [%struct.csiphy_reg_t { i32 1540, i32 12, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1580, i32 1, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1588, i32 15, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1564, i32 10, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1556, i32 96, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1576, i32 0, i32 0, i32 4 }, %struct.csiphy_reg_t { i32 1596, i32 184, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1536, i32 145, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1544, i32 0, i32 0, i32 2 }, %struct.csiphy_reg_t { i32 1548, i32 0, i32 0, i32 4 }, %struct.csiphy_reg_t { i32 1552, i32 82, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1592, i32 254, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1632, i32 0, i32 0, i32 0 }, %struct.csiphy_reg_t { i32 1636, i32 127, i32 0, i32 0 }]], [256 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"csiphy_ops_3ph_1_0\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 399, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 166, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"lane_regs_sdm845\00", align 1
@___asan_gen_.32 = private constant [60 x i8] c"../drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 66, i32 14 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @csiphy_hw_version_read._entry, ptr @csiphy_hw_version_read._entry_ptr, ptr @csiphy_ops_3ph_1_0, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @lane_regs_sdm845], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_ops_3ph_1_0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_hw_version_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_regs_sdm845 to i32), i32 1120, i32 1376, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csiphy_hw_version_read(ptr nocapture noundef readonly %csiphy, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %base = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #4, !srcloc !22
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 2272
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #4, !srcloc !23
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 2276
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !23
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %shl = shl i32 %9, 8
  %or = or i32 %shl, %5
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 2280
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #4, !srcloc !23
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %shl13 = shl i32 %13, 16
  %or14 = or i32 %or, %shl13
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %15, i32 2284
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #4, !srcloc !23
  %17 = and i32 %16, -16777216
  %or21 = or i32 %or14, %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %or21) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csiphy_reset(ptr nocapture noundef readonly %csiphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #4, !srcloc !22
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 8000, i32 noundef 2) #4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #4, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csiphy_lanes_enable(ptr nocapture noundef readonly %csiphy, ptr nocapture noundef readonly %cfg, i64 noundef %link_freq, i8 noundef zeroext %lane_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %csi2 = getelementptr inbounds %struct.csiphy_config, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csi2, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %link_freq)
  %cmp.i = icmp slt i64 %link_freq, 1
  br i1 %cmp.i, label %entry.csiphy_settle_cnt_calc.exit_crit_edge, label %if.else174.i.i.i

entry.csiphy_settle_cnt_calc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %csiphy_settle_cnt_calc.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %timer_clk_rate = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 11
  %2 = ptrtoint ptr %timer_clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_clk_rate, align 4
  %conv.i = trunc i64 %link_freq to i32
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 1000000000000) #8, !srcloc !24
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t = trunc i64 %asmresult1.i.i.i.i to i32
  %div12.i = lshr i32 %extract.t, 1
  %mul.i = mul i32 %div12.i, 6
  %add.i = add i32 %mul.i, 85000
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 1000000000000) #8, !srcloc !24
  %asmresult1.i.i.i117.i = extractvalue { i64, i64 } %5, 1
  %extract.t116 = trunc i64 %asmresult1.i.i.i117.i to i32
  %div4.i = udiv i32 %add.i, %extract.t116
  %conv5.i = add i32 %div4.i, 250
  %phi.cast = and i32 %conv5.i, 255
  br label %csiphy_settle_cnt_calc.exit

csiphy_settle_cnt_calc.exit:                      ; preds = %if.else174.i.i.i, %entry.csiphy_settle_cnt_calc.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.else174.i.i.i ], [ 0, %entry.csiphy_settle_cnt_calc.exit_crit_edge ]
  %clk = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clk, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp111 = icmp sgt i32 %9, 0
  br i1 %cmp111, label %for.body.lr.ph, label %csiphy_settle_cnt_calc.exit.for.end_crit_edge

csiphy_settle_cnt_calc.exit.for.end_crit_edge:    ; preds = %csiphy_settle_cnt_calc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %csiphy_settle_cnt_calc.exit
  %data = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %val.0.in112 = phi i32 [ %shl, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.csiphy_lane, ptr %11, i32 %i.0113
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %13 to i32
  %mul = shl nuw nsw i32 %conv4, 1
  %shl5 = shl nuw i32 1, %mul
  %conv6 = and i32 %val.0.in112, 255
  %or = or i32 %shl5, %conv6
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %csiphy_settle_cnt_calc.exit.for.end_crit_edge
  %val.0.in.lcssa = phi i32 [ %shl, %csiphy_settle_cnt_calc.exit.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %conv8 = shl i32 %val.0.in.lcssa, 24
  %base = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv8) #4, !srcloc !22
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #4, !srcloc !22
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %19, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 33554432) #4, !srcloc !22
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %21, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #4, !srcloc !22
  %22 = ptrtoint ptr %csiphy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csiphy, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %for.end.if.end29_crit_edge [
    i32 0, label %for.end.if.then_crit_edge
    i32 1, label %for.end.if.then_crit_edge119
    i32 3, label %for.end.for.body3.i_crit_edge
  ]

for.end.for.body3.i_crit_edge:                    ; preds = %for.end
  br label %for.body3.i

for.end.if.then_crit_edge119:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then:                                          ; preds = %for.end.if.then_crit_edge, %for.end.if.then_crit_edge119
  %27 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csi2, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not115.i = icmp slt i32 %30, 0
  br i1 %cmp.not115.i, label %if.then.csiphy_gen1_config_lanes.exit_crit_edge, label %for.body.lr.ph.i

if.then.csiphy_gen1_config_lanes.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %csiphy_gen1_config_lanes.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %data.i = getelementptr inbounds %struct.csiphy_lanes_cfg, ptr %28, i32 0, i32 1
  %31 = shl nuw i32 %retval.0.i, 24
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i106.for.body.i_crit_edge, %for.body.lr.ph.i
  %32 = phi i32 [ %30, %for.body.lr.ph.i ], [ %58, %if.end.i106.for.body.i_crit_edge ]
  %i.0116.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i106.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0116.i, i32 %32)
  %cmp2.i = icmp eq i32 %i.0116.i, %32
  br i1 %cmp2.i, label %for.body.i.if.end.i106_crit_edge, label %if.else.i

for.body.i.if.end.i106_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i106

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr %struct.csiphy_lane, ptr %34, i32 %i.0116.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  %conv.i104 = zext i8 %36 to i32
  %mul.i105 = shl nuw nsw i32 %conv.i104, 1
  br label %if.end.i106

if.end.i106:                                      ; preds = %if.else.i, %for.body.i.if.end.i106_crit_edge
  %l.1.i = phi i32 [ %mul.i105, %if.else.i ], [ 7, %for.body.i.if.end.i106_crit_edge ]
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %mul6.i = shl nuw nsw i32 %l.1.i, 8
  %add.ptr.i = getelementptr i8, ptr %38, i32 %mul6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -687865856) #4, !srcloc !22
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add10.i = or i32 %mul6.i, 4
  %add.ptr11.i = getelementptr i8, ptr %40, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 134217728) #4, !srcloc !22
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add15.i = or i32 %mul6.i, 8
  %add.ptr16.i = getelementptr i8, ptr %42, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %31) #4, !srcloc !22
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add20.i = or i32 %mul6.i, 16
  %add.ptr21.i = getelementptr i8, ptr %44, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 1375731712) #4, !srcloc !22
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add25.i = or i32 %mul6.i, 44
  %add.ptr26.i = getelementptr i8, ptr %46, i32 %add25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 16777216) #4, !srcloc !22
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add30.i = or i32 %mul6.i, 48
  %add.ptr31.i = getelementptr i8, ptr %48, i32 %add30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 33554432) #4, !srcloc !22
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add35.i = or i32 %mul6.i, 52
  %add.ptr36.i = getelementptr i8, ptr %50, i32 %add35.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 50331648) #4, !srcloc !22
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add40.i = or i32 %mul6.i, 56
  %add.ptr41.i = getelementptr i8, ptr %52, i32 %add40.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 16777216) #4, !srcloc !22
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add45.i = or i32 %mul6.i, 28
  %add.ptr46.i = getelementptr i8, ptr %54, i32 %add45.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 167772160) #4, !srcloc !22
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add50.i = or i32 %mul6.i, 60
  %add.ptr51.i = getelementptr i8, ptr %56, i32 %add50.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 -1207959552) #4, !srcloc !22
  %inc.i = add i32 %i.0116.i, 1
  %57 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %28, align 4
  %cmp.not.i = icmp sgt i32 %inc.i, %58
  br i1 %cmp.not.i, label %if.end.i106.csiphy_gen1_config_lanes.exit_crit_edge, label %if.end.i106.for.body.i_crit_edge

if.end.i106.for.body.i_crit_edge:                 ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i106.csiphy_gen1_config_lanes.exit_crit_edge: ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #6
  br label %csiphy_gen1_config_lanes.exit

csiphy_gen1_config_lanes.exit:                    ; preds = %if.end.i106.csiphy_gen1_config_lanes.exit_crit_edge, %if.then.csiphy_gen1_config_lanes.exit_crit_edge
  %l.0.lcssa.i = phi i32 [ 0, %if.then.csiphy_gen1_config_lanes.exit_crit_edge ], [ %l.1.i, %if.end.i106.csiphy_gen1_config_lanes.exit_crit_edge ]
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %mul54.i = shl nuw nsw i32 %l.0.lcssa.i, 8
  %add.ptr56.i = getelementptr i8, ptr %60, i32 %mul54.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 -1073741824) #4, !srcloc !22
  %61 = ptrtoint ptr %csiphy to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %csiphy, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp57.i = icmp eq i32 %64, 2
  %..i = select i1 %cmp57.i, i32 -1526726656, i32 -1543503872
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add65.i = or i32 %mul54.i, 12
  %add.ptr66.i = getelementptr i8, ptr %66, i32 %add65.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %..i) #4, !srcloc !22
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add70.i = or i32 %mul54.i, 40
  %add.ptr71.i = getelementptr i8, ptr %68, i32 %add70.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 67108864) #4, !srcloc !22
  br label %if.end29

for.body3.i:                                      ; preds = %cleanup.i.for.body3.i_crit_edge, %for.end.for.body3.i_crit_edge
  %i.015.i = phi i32 [ %inc.i110, %cleanup.i.for.body3.i_crit_edge ], [ 0, %for.end.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 0, i32 %i.015.i
  %csiphy_param_type.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 0, i32 %i.015.i, i32 3
  %69 = ptrtoint ptr %csiphy_param_type.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %csiphy_param_type.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %70, label %sw.default.i [
    i32 2, label %for.body3.i.sw.epilog.i_crit_edge
    i32 4, label %for.body3.i.cleanup.i_crit_edge
  ]

for.body3.i.cleanup.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.body3.i.sw.epilog.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  %reg_data.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 0, i32 %i.015.i, i32 1
  %72 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg_data.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %for.body3.i.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ %73, %sw.default.i ], [ %retval.0.i, %for.body3.i.sw.epilog.i_crit_edge ]
  %74 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #4
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %77 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx4.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %76, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %74) #4, !srcloc !22
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.epilog.i, %for.body3.i.cleanup.i_crit_edge
  %inc.i110 = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i110, 14
  br i1 %exitcond.not.i, label %cleanup.i.for.body3.1.i_crit_edge, label %cleanup.i.for.body3.i_crit_edge

cleanup.i.for.body3.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

cleanup.i.for.body3.1.i_crit_edge:                ; preds = %cleanup.i
  br label %for.body3.1.i

for.body3.1.i:                                    ; preds = %cleanup.1.i.for.body3.1.i_crit_edge, %cleanup.i.for.body3.1.i_crit_edge
  %i.015.1.i = phi i32 [ %inc.1.i, %cleanup.1.i.for.body3.1.i_crit_edge ], [ 0, %cleanup.i.for.body3.1.i_crit_edge ]
  %arrayidx4.1.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 1, i32 %i.015.1.i
  %csiphy_param_type.1.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 1, i32 %i.015.1.i, i32 3
  %79 = ptrtoint ptr %csiphy_param_type.1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %csiphy_param_type.1.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %80, label %sw.default.1.i [
    i32 2, label %for.body3.1.i.sw.epilog.1.i_crit_edge
    i32 4, label %for.body3.1.i.cleanup.1.i_crit_edge
  ]

for.body3.1.i.cleanup.1.i_crit_edge:              ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1.i

for.body3.1.i.sw.epilog.1.i_crit_edge:            ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.1.i

sw.default.1.i:                                   ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %reg_data.1.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 1, i32 %i.015.1.i, i32 1
  %82 = ptrtoint ptr %reg_data.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reg_data.1.i, align 4
  br label %sw.epilog.1.i

sw.epilog.1.i:                                    ; preds = %sw.default.1.i, %for.body3.1.i.sw.epilog.1.i_crit_edge
  %val.0.1.i = phi i32 [ %83, %sw.default.1.i ], [ %retval.0.i, %for.body3.1.i.sw.epilog.1.i_crit_edge ]
  %84 = tail call i32 @llvm.bswap.i32(i32 %val.0.1.i) #4
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %87 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx4.1.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %86, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %84) #4, !srcloc !22
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %sw.epilog.1.i, %for.body3.1.i.cleanup.1.i_crit_edge
  %inc.1.i = add nuw nsw i32 %i.015.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 14
  br i1 %exitcond.1.not.i, label %cleanup.1.i.for.body3.2.i_crit_edge, label %cleanup.1.i.for.body3.1.i_crit_edge

cleanup.1.i.for.body3.1.i_crit_edge:              ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.1.i

cleanup.1.i.for.body3.2.i_crit_edge:              ; preds = %cleanup.1.i
  br label %for.body3.2.i

for.body3.2.i:                                    ; preds = %cleanup.2.i.for.body3.2.i_crit_edge, %cleanup.1.i.for.body3.2.i_crit_edge
  %i.015.2.i = phi i32 [ %inc.2.i, %cleanup.2.i.for.body3.2.i_crit_edge ], [ 0, %cleanup.1.i.for.body3.2.i_crit_edge ]
  %arrayidx4.2.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 2, i32 %i.015.2.i
  %csiphy_param_type.2.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 2, i32 %i.015.2.i, i32 3
  %89 = ptrtoint ptr %csiphy_param_type.2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %csiphy_param_type.2.i, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %90, label %sw.default.2.i [
    i32 2, label %for.body3.2.i.sw.epilog.2.i_crit_edge
    i32 4, label %for.body3.2.i.cleanup.2.i_crit_edge
  ]

for.body3.2.i.cleanup.2.i_crit_edge:              ; preds = %for.body3.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2.i

for.body3.2.i.sw.epilog.2.i_crit_edge:            ; preds = %for.body3.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.2.i

sw.default.2.i:                                   ; preds = %for.body3.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %reg_data.2.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 2, i32 %i.015.2.i, i32 1
  %92 = ptrtoint ptr %reg_data.2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %reg_data.2.i, align 4
  br label %sw.epilog.2.i

sw.epilog.2.i:                                    ; preds = %sw.default.2.i, %for.body3.2.i.sw.epilog.2.i_crit_edge
  %val.0.2.i = phi i32 [ %93, %sw.default.2.i ], [ %retval.0.i, %for.body3.2.i.sw.epilog.2.i_crit_edge ]
  %94 = tail call i32 @llvm.bswap.i32(i32 %val.0.2.i) #4
  %95 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base, align 4
  %97 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx4.2.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %96, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 %94) #4, !srcloc !22
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %sw.epilog.2.i, %for.body3.2.i.cleanup.2.i_crit_edge
  %inc.2.i = add nuw nsw i32 %i.015.2.i, 1
  %exitcond.2.not.i = icmp eq i32 %inc.2.i, 14
  br i1 %exitcond.2.not.i, label %cleanup.2.i.for.body3.3.i_crit_edge, label %cleanup.2.i.for.body3.2.i_crit_edge

cleanup.2.i.for.body3.2.i_crit_edge:              ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.2.i

cleanup.2.i.for.body3.3.i_crit_edge:              ; preds = %cleanup.2.i
  br label %for.body3.3.i

for.body3.3.i:                                    ; preds = %cleanup.3.i.for.body3.3.i_crit_edge, %cleanup.2.i.for.body3.3.i_crit_edge
  %i.015.3.i = phi i32 [ %inc.3.i, %cleanup.3.i.for.body3.3.i_crit_edge ], [ 0, %cleanup.2.i.for.body3.3.i_crit_edge ]
  %arrayidx4.3.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 3, i32 %i.015.3.i
  %csiphy_param_type.3.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 3, i32 %i.015.3.i, i32 3
  %99 = ptrtoint ptr %csiphy_param_type.3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %csiphy_param_type.3.i, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %100, label %sw.default.3.i [
    i32 2, label %for.body3.3.i.sw.epilog.3.i_crit_edge
    i32 4, label %for.body3.3.i.cleanup.3.i_crit_edge
  ]

for.body3.3.i.cleanup.3.i_crit_edge:              ; preds = %for.body3.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.3.i

for.body3.3.i.sw.epilog.3.i_crit_edge:            ; preds = %for.body3.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.3.i

sw.default.3.i:                                   ; preds = %for.body3.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %reg_data.3.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 3, i32 %i.015.3.i, i32 1
  %102 = ptrtoint ptr %reg_data.3.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %reg_data.3.i, align 4
  br label %sw.epilog.3.i

sw.epilog.3.i:                                    ; preds = %sw.default.3.i, %for.body3.3.i.sw.epilog.3.i_crit_edge
  %val.0.3.i = phi i32 [ %103, %sw.default.3.i ], [ %retval.0.i, %for.body3.3.i.sw.epilog.3.i_crit_edge ]
  %104 = tail call i32 @llvm.bswap.i32(i32 %val.0.3.i) #4
  %105 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base, align 4
  %107 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx4.3.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %106, i32 %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 %104) #4, !srcloc !22
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %sw.epilog.3.i, %for.body3.3.i.cleanup.3.i_crit_edge
  %inc.3.i = add nuw nsw i32 %i.015.3.i, 1
  %exitcond.3.not.i = icmp eq i32 %inc.3.i, 14
  br i1 %exitcond.3.not.i, label %cleanup.3.i.for.body3.4.i_crit_edge, label %cleanup.3.i.for.body3.3.i_crit_edge

cleanup.3.i.for.body3.3.i_crit_edge:              ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.3.i

cleanup.3.i.for.body3.4.i_crit_edge:              ; preds = %cleanup.3.i
  br label %for.body3.4.i

for.body3.4.i:                                    ; preds = %cleanup.4.i.for.body3.4.i_crit_edge, %cleanup.3.i.for.body3.4.i_crit_edge
  %i.015.4.i = phi i32 [ %inc.4.i, %cleanup.4.i.for.body3.4.i_crit_edge ], [ 0, %cleanup.3.i.for.body3.4.i_crit_edge ]
  %arrayidx4.4.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 4, i32 %i.015.4.i
  %csiphy_param_type.4.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 4, i32 %i.015.4.i, i32 3
  %109 = ptrtoint ptr %csiphy_param_type.4.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %csiphy_param_type.4.i, align 4
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %110, label %sw.default.4.i [
    i32 2, label %for.body3.4.i.sw.epilog.4.i_crit_edge
    i32 4, label %for.body3.4.i.cleanup.4.i_crit_edge
  ]

for.body3.4.i.cleanup.4.i_crit_edge:              ; preds = %for.body3.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.4.i

for.body3.4.i.sw.epilog.4.i_crit_edge:            ; preds = %for.body3.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.4.i

sw.default.4.i:                                   ; preds = %for.body3.4.i
  call void @__sanitizer_cov_trace_pc() #6
  %reg_data.4.i = getelementptr [5 x [14 x %struct.csiphy_reg_t]], ptr @lane_regs_sdm845, i32 0, i32 4, i32 %i.015.4.i, i32 1
  %112 = ptrtoint ptr %reg_data.4.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reg_data.4.i, align 4
  br label %sw.epilog.4.i

sw.epilog.4.i:                                    ; preds = %sw.default.4.i, %for.body3.4.i.sw.epilog.4.i_crit_edge
  %val.0.4.i = phi i32 [ %113, %sw.default.4.i ], [ %retval.0.i, %for.body3.4.i.sw.epilog.4.i_crit_edge ]
  %114 = tail call i32 @llvm.bswap.i32(i32 %val.0.4.i) #4
  %115 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base, align 4
  %117 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx4.4.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %116, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i, i32 %114) #4, !srcloc !22
  br label %cleanup.4.i

cleanup.4.i:                                      ; preds = %sw.epilog.4.i, %for.body3.4.i.cleanup.4.i_crit_edge
  %inc.4.i = add nuw nsw i32 %i.015.4.i, 1
  %exitcond.4.not.i = icmp eq i32 %inc.4.i, 14
  br i1 %exitcond.4.not.i, label %cleanup.4.i.if.end29_crit_edge, label %cleanup.4.i.for.body3.4.i_crit_edge

cleanup.4.i.for.body3.4.i_crit_edge:              ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.4.i

cleanup.4.i.if.end29_crit_edge:                   ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29:                                         ; preds = %cleanup.4.i.if.end29_crit_edge, %csiphy_gen1_config_lanes.exit, %for.end.if.end29_crit_edge
  %119 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %120, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -16777216) #4, !srcloc !22
  %121 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %122, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 -16777216) #4, !srcloc !22
  %123 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %124, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 -83886080) #4, !srcloc !22
  %125 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %126, i32 2104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 -16777216) #4, !srcloc !22
  %127 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base, align 4
  %add.ptr44 = getelementptr i8, ptr %128, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 2130706432) #4, !srcloc !22
  %129 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %130, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 -16777216) #4, !srcloc !22
  %131 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %132, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 -16777216) #4, !srcloc !22
  %133 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %134, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 -285212672) #4, !srcloc !22
  %135 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base, align 4
  %add.ptr56 = getelementptr i8, ptr %136, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 -16777216) #4, !srcloc !22
  %137 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base, align 4
  %add.ptr59 = getelementptr i8, ptr %138, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 -16777216) #4, !srcloc !22
  %139 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base, align 4
  %add.ptr62 = getelementptr i8, ptr %140, i32 2132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 -16777216) #4, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csiphy_lanes_disable(ptr nocapture noundef readonly %csiphy, ptr nocapture noundef readnone %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.csiphy_device, ptr %csiphy, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !22
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #4, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csiphy_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.csiphy_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2224
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !23
  %3 = and i32 %2, -16777216
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %3) #4, !srcloc !22
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.1 = getelementptr i8, ptr %7, i32 2228
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #4, !srcloc !23
  %9 = and i32 %8, -16777216
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr6.1 = getelementptr i8, ptr %11, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.1, i32 %9) #4, !srcloc !22
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr.2 = getelementptr i8, ptr %13, i32 2232
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #4, !srcloc !23
  %15 = and i32 %14, -16777216
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr6.2 = getelementptr i8, ptr %17, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.2, i32 %15) #4, !srcloc !22
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr.3 = getelementptr i8, ptr %19, i32 2236
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #4, !srcloc !23
  %21 = and i32 %20, -16777216
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr6.3 = getelementptr i8, ptr %23, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.3, i32 %21) #4, !srcloc !22
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr.4 = getelementptr i8, ptr %25, i32 2240
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #4, !srcloc !23
  %27 = and i32 %26, -16777216
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr6.4 = getelementptr i8, ptr %29, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.4, i32 %27) #4, !srcloc !22
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr.5 = getelementptr i8, ptr %31, i32 2244
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #4, !srcloc !23
  %33 = and i32 %32, -16777216
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr6.5 = getelementptr i8, ptr %35, i32 2156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.5, i32 %33) #4, !srcloc !22
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr.6 = getelementptr i8, ptr %37, i32 2248
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #4, !srcloc !23
  %39 = and i32 %38, -16777216
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr6.6 = getelementptr i8, ptr %41, i32 2160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.6, i32 %39) #4, !srcloc !22
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.7 = getelementptr i8, ptr %43, i32 2252
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7) #4, !srcloc !23
  %45 = and i32 %44, -16777216
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr6.7 = getelementptr i8, ptr %47, i32 2164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.7, i32 %45) #4, !srcloc !22
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr.8 = getelementptr i8, ptr %49, i32 2256
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8) #4, !srcloc !23
  %51 = and i32 %50, -16777216
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr6.8 = getelementptr i8, ptr %53, i32 2168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.8, i32 %51) #4, !srcloc !22
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr.9 = getelementptr i8, ptr %55, i32 2260
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9) #4, !srcloc !23
  %57 = and i32 %56, -16777216
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr6.9 = getelementptr i8, ptr %59, i32 2172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.9, i32 %57) #4, !srcloc !22
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr.10 = getelementptr i8, ptr %61, i32 2264
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.10) #4, !srcloc !23
  %63 = and i32 %62, -16777216
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr6.10 = getelementptr i8, ptr %65, i32 2176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.10, i32 %63) #4, !srcloc !22
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %67, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #4, !srcloc !22
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %69, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #4, !srcloc !22
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %71, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #4, !srcloc !22
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 4
  %add.ptr18.1 = getelementptr i8, ptr %73, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.1, i32 0) #4, !srcloc !22
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr18.2 = getelementptr i8, ptr %75, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.2, i32 0) #4, !srcloc !22
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr18.3 = getelementptr i8, ptr %77, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.3, i32 0) #4, !srcloc !22
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr18.4 = getelementptr i8, ptr %79, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.4, i32 0) #4, !srcloc !22
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %add.ptr18.5 = getelementptr i8, ptr %81, i32 2156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.5, i32 0) #4, !srcloc !22
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr18.6 = getelementptr i8, ptr %83, i32 2160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.6, i32 0) #4, !srcloc !22
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr18.7 = getelementptr i8, ptr %85, i32 2164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.7, i32 0) #4, !srcloc !22
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 4
  %add.ptr18.8 = getelementptr i8, ptr %87, i32 2168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.8, i32 0) #4, !srcloc !22
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr18.9 = getelementptr i8, ptr %89, i32 2172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.9, i32 0) #4, !srcloc !22
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr18.10 = getelementptr i8, ptr %91, i32 2176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.10, i32 0) #4, !srcloc !22
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @csiphy_ops_3ph_1_0, !1, !"csiphy_ops_3ph_1_0", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c", i32 399, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c", i32 166, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @csiphy_hw_version_read._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @csiphy_hw_version_read._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @lane_regs_sdm845, !11, !"lane_regs_sdm845", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c", i32 66, i32 14}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2156422870}
!22 = !{i64 7276226}
!23 = !{i64 7276644}
!24 = !{i64 2148316809, i64 2148317089, i64 2148317423, i64 2148317757}
