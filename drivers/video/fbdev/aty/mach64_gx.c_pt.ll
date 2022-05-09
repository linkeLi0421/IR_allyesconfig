; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/mach64_gx.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/mach64_gx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aty_dac_ops = type { ptr }
%struct.aty_pll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.86 = type { i8, i8, i8, i8, i8 }
%struct.anon.87 = type { i32, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.atyfb_par = type { [16 x i32], [256 x %struct.anon.85], ptr, ptr, ptr, i32, %struct.crtc, %union.aty_pll, %struct.pll_info, i32, i32, i32, i32, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, %struct.aty_interrupt, i32, i32, %struct.spinlock, i32, i32, %struct.crtc, %union.aty_pll }
%struct.anon.85 = type { i8, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aty_interrupt = type { %struct.wait_queue_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.crtc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.aty_pll = type { %struct.pll_ct }
%struct.pll_ct = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32 }
%struct.pll_514 = type { i8, i8 }
%struct.pll_18818 = type { i32, i32, i32, i32 }

@aty_dac_ibm514 = dso_local constant { %struct.aty_dac_ops, [28 x i8] } { %struct.aty_dac_ops { ptr @aty_set_dac_514 }, [28 x i8] zeroinitializer }, align 32
@aty_pll_ibm514 = dso_local constant { %struct.aty_pll_ops, [40 x i8] } { %struct.aty_pll_ops { ptr @aty_var_to_pll_514, ptr @aty_pll_514_to_var, ptr @aty_set_pll_514, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aty_dac_ati68860b = dso_local constant { %struct.aty_dac_ops, [28 x i8] } { %struct.aty_dac_ops { ptr @aty_set_dac_ATI68860_B }, [28 x i8] zeroinitializer }, align 32
@aty_dac_att21c498 = dso_local constant { %struct.aty_dac_ops, [28 x i8] } { %struct.aty_dac_ops { ptr @aty_set_dac_ATT21C498 }, [28 x i8] zeroinitializer }, align 32
@aty_pll_ati18818_1 = dso_local constant { %struct.aty_pll_ops, [40 x i8] } { %struct.aty_pll_ops { ptr @aty_var_to_pll_18818, ptr @aty_pll_18818_to_var, ptr @aty_set_pll18818, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aty_pll_stg1703 = dso_local constant { %struct.aty_pll_ops, [40 x i8] } { %struct.aty_pll_ops { ptr @aty_var_to_pll_1703, ptr @aty_pll_1703_to_var, ptr @aty_set_pll_1703, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aty_pll_ch8398 = dso_local constant { %struct.aty_pll_ops, [40 x i8] } { %struct.aty_pll_ops { ptr @aty_var_to_pll_8398, ptr @aty_pll_8398_to_var, ptr @aty_set_pll_8398, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aty_pll_att20c408 = dso_local constant { %struct.aty_pll_ops, [40 x i8] } { %struct.aty_pll_ops { ptr @aty_var_to_pll_408, ptr @aty_pll_408_to_var, ptr @aty_set_pll_408, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aty_dac_unsupported = dso_local constant { %struct.aty_dac_ops, [28 x i8] } { %struct.aty_dac_ops { ptr @aty_set_dac_unsupported }, [28 x i8] zeroinitializer }, align 32
@aty_pll_unsupported = dso_local constant { %struct.aty_pll_ops, [40 x i8] } { %struct.aty_pll_ops { ptr @dummy, ptr @dummy, ptr @dummy, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aty_set_dac_514.tab = internal constant { [3 x %struct.anon.86], [17 x i8] } { [3 x %struct.anon.86] [%struct.anon.86 { i8 0, i8 65, i8 3, i8 113, i8 69 }, %struct.anon.86 { i8 0, i8 69, i8 4, i8 12, i8 1 }, %struct.anon.86 { i8 0, i8 69, i8 6, i8 14, i8 0 }], [17 x i8] zeroinitializer }, align 32
@aty_var_to_pll_514.RGB514_clocks = internal constant { [7 x %struct.anon.87], [40 x i8] } { [7 x %struct.anon.87] [%struct.anon.87 { i32 8000, i8 -44, i8 9 }, %struct.anon.87 { i32 10000, i8 83, i8 3 }, %struct.anon.87 { i32 13000, i8 66, i8 3 }, %struct.anon.87 { i32 14000, i8 -120, i8 7 }, %struct.anon.87 { i32 16000, i8 108, i8 6 }, %struct.anon.87 { i32 25000, i8 79, i8 5 }, %struct.anon.87 { i32 50000, i8 53, i8 7 }], [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"aty_dac_ibm514\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 190, i32 26 }
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"aty_pll_ibm514\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 194, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"aty_dac_ati68860b\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 279, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"aty_dac_att21c498\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 332, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"aty_pll_ati18818_1\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 486, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"aty_pll_stg1703\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 602, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"aty_pll_ch8398\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 725, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"aty_pll_att20c408\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 872, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"aty_dac_unsupported\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 902, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"aty_pll_unsupported\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 906, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 90, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"RGB514_clocks\00", align 1
@___asan_gen_.37 = private constant [39 x i8] c"../drivers/video/fbdev/aty/mach64_gx.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 134, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @aty_dac_ibm514, ptr @aty_pll_ibm514, ptr @aty_dac_ati68860b, ptr @aty_dac_att21c498, ptr @aty_pll_ati18818_1, ptr @aty_pll_stg1703, ptr @aty_pll_ch8398, ptr @aty_pll_att20c408, ptr @aty_dac_unsupported, ptr @aty_pll_unsupported, ptr @aty_set_dac_514.tab, ptr @aty_var_to_pll_514.RGB514_clocks], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_dac_ibm514 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_pll_ibm514 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_dac_ati68860b to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_dac_att21c498 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_pll_ati18818_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_pll_stg1703 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_pll_ch8398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_pll_att20c408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_dac_unsupported to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_pll_unsupported to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_set_dac_514.tab to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_pll_514.RGB514_clocks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty_set_dac_514(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %pll, i32 noundef %bpp, i32 noundef %accel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bpp)
  %switch.selectcmp = icmp eq i32 %bpp, 16
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bpp)
  %switch.selectcmp18 = icmp eq i32 %bpp, 32
  %switch.select19 = select i1 %switch.selectcmp18, i32 2, i32 %switch.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %5, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i, i8 -112) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %7, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %9, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %11, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i, i8 0) #7, !srcloc !34
  %arrayidx = getelementptr [3 x %struct.anon.86], ptr @aty_set_dac_514.tab, i32 0, i32 %switch.select19
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %15, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i21, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i22 = getelementptr i8, ptr %17, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i22, i8 4) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i23 = getelementptr i8, ptr %19, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i23, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i24 = getelementptr i8, ptr %21, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i24, i8 %13) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i25 = getelementptr i8, ptr %23, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i25, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %25, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i27, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i28 = getelementptr i8, ptr %27, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i28, i8 5) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i29 = getelementptr i8, ptr %29, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i29, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i30 = getelementptr i8, ptr %31, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i30, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i31 = getelementptr i8, ptr %33, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i31, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %35, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i33, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i34 = getelementptr i8, ptr %37, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i34, i8 2) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i35 = getelementptr i8, ptr %39, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i35, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i36 = getelementptr i8, ptr %41, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i36, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i37 = getelementptr i8, ptr %43, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i37, i8 0) #7, !srcloc !34
  %misc2_cntl = getelementptr [3 x %struct.anon.86], ptr @aty_set_dac_514.tab, i32 0, i32 %switch.select19, i32 1
  %44 = ptrtoint ptr %misc2_cntl to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %misc2_cntl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %47, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i39, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i40 = getelementptr i8, ptr %49, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i40, i8 113) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i41 = getelementptr i8, ptr %51, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i41, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i42 = getelementptr i8, ptr %53, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i42, i8 %45) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i43 = getelementptr i8, ptr %55, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i43, i8 0) #7, !srcloc !34
  %pixel_rep = getelementptr [3 x %struct.anon.86], ptr @aty_set_dac_514.tab, i32 0, i32 %switch.select19, i32 2
  %56 = ptrtoint ptr %pixel_rep to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pixel_rep, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %59, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i45, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i46 = getelementptr i8, ptr %61, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i46, i8 10) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i47 = getelementptr i8, ptr %63, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i47, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i48 = getelementptr i8, ptr %65, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i48, i8 %57) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %66 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i49 = getelementptr i8, ptr %67, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i49, i8 0) #7, !srcloc !34
  %pixel_cntl_index = getelementptr [3 x %struct.anon.86], ptr @aty_set_dac_514.tab, i32 0, i32 %switch.select19, i32 3
  %68 = ptrtoint ptr %pixel_cntl_index to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pixel_cntl_index, align 1
  %pixel_cntl_v1 = getelementptr [3 x %struct.anon.86], ptr @aty_set_dac_514.tab, i32 0, i32 %switch.select19, i32 4
  %70 = ptrtoint ptr %pixel_cntl_v1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %pixel_cntl_v1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %73, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i51, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %74 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i52 = getelementptr i8, ptr %75, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i52, i8 %69) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i53 = getelementptr i8, ptr %77, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i53, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %78 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i54 = getelementptr i8, ptr %79, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i54, i8 %71) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %80 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i55 = getelementptr i8, ptr %81, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i55, i8 0) #7, !srcloc !34
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @aty_var_to_pll_514(ptr nocapture noundef readnone %info, i32 noundef %vclk_per, i32 noundef %bpp, ptr nocapture noundef writeonly %pll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %vclk_per)
  %cmp1.not = icmp ugt i32 %vclk_per, 8000
  br i1 %cmp1.not, label %for.inc, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.012.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ]
  %m = getelementptr [7 x %struct.anon.87], ptr @aty_var_to_pll_514.RGB514_clocks, i32 0, i32 %i.012.lcssa, i32 1
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %m, align 4
  %2 = ptrtoint ptr %pll to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %pll, align 4
  %n = getelementptr [7 x %struct.anon.87], ptr @aty_var_to_pll_514.RGB514_clocks, i32 0, i32 %i.012.lcssa, i32 2
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %n, align 1
  %n5 = getelementptr inbounds %struct.pll_514, ptr %pll, i32 0, i32 1
  %5 = ptrtoint ptr %n5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %n5, align 1
  br label %cleanup

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %vclk_per)
  %cmp1.not.1 = icmp ugt i32 %vclk_per, 10000
  br i1 %cmp1.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 13000, i32 %vclk_per)
  %cmp1.not.2 = icmp ugt i32 %vclk_per, 13000
  br i1 %cmp1.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000, i32 %vclk_per)
  %cmp1.not.3 = icmp ugt i32 %vclk_per, 14000
  br i1 %cmp1.not.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %vclk_per)
  %cmp1.not.4 = icmp ugt i32 %vclk_per, 16000
  br i1 %cmp1.not.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %vclk_per)
  %cmp1.not.5 = icmp ugt i32 %vclk_per, 25000
  br i1 %cmp1.not.5, label %for.inc.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %vclk_per)
  %cmp1.not.6 = icmp ugt i32 %vclk_per, 50000
  br i1 %cmp1.not.6, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.then_crit_edge

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %for.inc.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aty_pll_514_to_var(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %pll to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pll, align 4
  %4 = and i8 %3, 63
  %n = getelementptr inbounds %struct.pll_514, ptr %pll, i32 0, i32 1
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %n, align 1
  %ref_clk_per = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %ref_clk_per to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref_clk_per, align 4
  %conv6 = zext i8 %6 to i32
  %mul = mul i32 %8, %conv6
  %9 = xor i8 %3, -1
  %10 = lshr i8 %9, 6
  %sub = zext i8 %10 to i32
  %shl = shl i32 %mul, %sub
  %narrow = add nuw i8 %4, 65
  %add = zext i8 %narrow to i32
  %div = udiv i32 %shl, %add
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aty_set_pll_514(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %5, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i, i8 6) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %7, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %9, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i, i8 2) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %11, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %13, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i11, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i12 = getelementptr i8, ptr %15, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i12, i8 16) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i13 = getelementptr i8, ptr %17, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i13, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i14 = getelementptr i8, ptr %19, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i14, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i15 = getelementptr i8, ptr %21, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i15, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %23, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i17, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i18 = getelementptr i8, ptr %25, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i18, i8 112) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i19 = getelementptr i8, ptr %27, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i19, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i20 = getelementptr i8, ptr %29, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i20, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i21 = getelementptr i8, ptr %31, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i21, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %33, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i24 = getelementptr i8, ptr %35, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i24, i8 -113) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i25 = getelementptr i8, ptr %37, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i25, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i26 = getelementptr i8, ptr %39, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i26, i8 31) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i27 = getelementptr i8, ptr %41, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i27, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %43, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i29, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i30 = getelementptr i8, ptr %45, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i30, i8 3) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i31 = getelementptr i8, ptr %47, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i31, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i32 = getelementptr i8, ptr %49, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i32, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i33 = getelementptr i8, ptr %51, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i33, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %53, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i35, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i36 = getelementptr i8, ptr %55, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i36, i8 5) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i37 = getelementptr i8, ptr %57, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i37, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i38 = getelementptr i8, ptr %59, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i38, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i39 = getelementptr i8, ptr %61, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i39, i8 0) #7, !srcloc !34
  %62 = ptrtoint ptr %pll to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pll, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %65, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i41, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %66 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i42 = getelementptr i8, ptr %67, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i42, i8 32) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i43 = getelementptr i8, ptr %69, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i43, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i44 = getelementptr i8, ptr %71, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i44, i8 %63) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i45 = getelementptr i8, ptr %73, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i45, i8 0) #7, !srcloc !34
  %n = getelementptr inbounds %struct.pll_514, ptr %pll, i32 0, i32 1
  %74 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %n, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %77, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i47, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %78 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i9.i48 = getelementptr i8, ptr %79, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i48, i8 33) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %80 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i11.i49 = getelementptr i8, ptr %81, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i49, i8 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i13.i50 = getelementptr i8, ptr %83, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i50, i8 %75) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %84 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i15.i51 = getelementptr i8, ptr %85, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15.i51, i8 0) #7, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty_set_dac_ATI68860_B(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %pll, i32 noundef %bpp, i32 noundef %accel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = zext i32 %bpp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bpp, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 15, label %sw.bb2
    i32 16, label %sw.bb3
    i32 24, label %sw.bb4
    i32 32, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %gModeReg.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ -29, %sw.bb5 ], [ -64, %sw.bb4 ], [ -95, %sw.bb3 ], [ -96, %sw.bb2 ], [ -125, %sw.bb ]
  %devSetupRegA.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 96, %sw.bb5 ], [ 96, %sw.bb4 ], [ 96, %sw.bb3 ], [ 96, %sw.bb2 ], [ 96, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %accel)
  %tobool.not = icmp eq i32 %accel, 0
  %spec.select = select i1 %tobool.not, i8 -128, i8 %gModeReg.0
  %spec.select50 = select i1 %tobool.not, i8 97, i8 %devSetupRegA.0
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 196
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %6 = and i8 %5, -4
  %7 = or i8 %6, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %9, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i52, i8 %7) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %11, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i54, i8 29) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %13, i32 195
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i56, i8 %spec.select) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %15, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 2) #7, !srcloc !34
  %16 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %17, i32 196
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i60) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %19 = or i8 %18, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %21, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i62, i8 %19) #7, !srcloc !34
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %23)
  %cmp = icmp ult i32 %23, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %23)
  %cmp17 = icmp eq i32 %23, 1048576
  %. = select i1 %cmp17, i8 8, i8 12
  %mask.0 = select i1 %cmp, i8 4, i8 %.
  %24 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %25, i32 192
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i64) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %or25 = or i8 %mask.0, %spec.select50
  %27 = and i8 %26, -128
  %or27 = or i8 %or25, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %29, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i66, i8 %or27) #7, !srcloc !34
  %30 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %31, i32 196
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i68) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %33 = and i8 %32, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %35, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i70, i8 %33) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %37, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 -249557367) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %39, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 2164039) #7, !srcloc !38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty_set_dac_ATT21C498(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll, i32 noundef %bpp, i32 noundef %accel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = zext i32 %bpp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %bpp, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 15, label %sw.bb2
    i32 16, label %sw.bb3
    i32 24, label %sw.bb4
    i32 32, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %period_in_ps = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 2
  %3 = ptrtoint ptr %period_in_ps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %period_in_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12499, i32 %4)
  %cmp = icmp ult i32 %4, 12499
  %. = zext i1 %cmp to i32
  %.10 = select i1 %cmp, i8 38, i8 6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %muxmode.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ %., %sw.bb ]
  %DACMask.0 = phi i8 [ 2, %entry.sw.epilog_crit_edge ], [ -26, %sw.bb5 ], [ -26, %sw.bb4 ], [ 54, %sw.bb3 ], [ 22, %sw.bb2 ], [ %.10, %sw.bb ]
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 192
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %8 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %9, i32 194
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i10.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %11 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %12, i32 194
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i12.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %14 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %15, i32 194
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %17 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %18, i32 194
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i16.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %DACMask.0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %23, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 -249557367) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %25, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 2098944) #7, !srcloc !38
  ret i32 %muxmode.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @aty_var_to_pll_18818(ptr nocapture noundef readnone %info, i32 noundef %vclk_per, i32 noundef %bpp, ptr nocapture noundef writeonly %pll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %vclk_per, -100001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -93727, i32 %0)
  %1 = icmp ult i32 %0, -93727
  br i1 %1, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %div = udiv i32 100000000, %vclk_per
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500, i32 %vclk_per)
  %cmp443 = icmp ugt i32 %vclk_per, 12500
  br i1 %cmp443, label %while.cond.preheader.while.body_crit_edge, label %if.then12.thread

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then12.thread:                                 ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %mul849 = mul nuw nsw i32 %div, 46000
  %div950 = udiv i32 %mul849, 1432
  %add51 = add nuw nsw i32 %div950, 500
  %div1052 = udiv i32 %add51, 1000
  %sub53 = add nsw i32 %div1052, -257
  %or = or i32 %sub53, 1536
  br label %if.end18

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %post_divider.045 = phi i32 [ %mul5, %while.body.while.body_crit_edge ], [ 1, %while.cond.preheader.while.body_crit_edge ]
  %MHz100.044 = phi i32 [ %mul, %while.body.while.body_crit_edge ], [ %div, %while.cond.preheader.while.body_crit_edge ]
  %mul = shl nuw nsw i32 %MHz100.044, 1
  %mul5 = shl i32 %post_divider.045, 1
  %cmp4 = icmp ult i32 %MHz100.044, 4000
  br i1 %cmp4, label %while.body.while.body_crit_edge, label %if.then12

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then12:                                        ; preds = %while.body
  %mul8 = mul i32 %MHz100.044, 92000
  %div9 = udiv i32 %mul8, 1432
  %add = add nuw nsw i32 %div9, 500
  %div10 = udiv i32 %add, 1000
  %sub = add nsw i32 %div10, -257
  %2 = zext i32 %mul5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %mul5, label %if.then12.if.end18_crit_edge [
    i32 4, label %sw.bb15
    i32 2, label %sw.bb13
  ]

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

sw.bb13:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %or14 = or i32 %sub, 1024
  br label %if.end18

sw.bb15:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %or16 = or i32 %sub, 512
  br label %if.end18

if.end18:                                         ; preds = %sw.bb15, %sw.bb13, %if.then12.if.end18_crit_edge, %if.then12.thread
  %post_divider.0.lcssa55 = phi i32 [ %mul5, %if.then12.if.end18_crit_edge ], [ 4, %sw.bb15 ], [ 2, %sw.bb13 ], [ 1, %if.then12.thread ]
  %program_bits.0 = phi i32 [ %sub, %if.then12.if.end18_crit_edge ], [ %or16, %sw.bb15 ], [ %or14, %sw.bb13 ], [ %or, %if.then12.thread ]
  %or19 = or i32 %program_bits.0, 6144
  %3 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or19, ptr %pll, align 4
  %locationAddr = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 1
  %4 = ptrtoint ptr %locationAddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %locationAddr, align 4
  %post_divider21 = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 3
  %5 = ptrtoint ptr %post_divider21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %post_divider.0.lcssa55, ptr %post_divider21, align 4
  %period_in_ps = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 2
  %6 = ptrtoint ptr %period_in_ps to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %vclk_per, ptr %period_in_ps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aty_pll_18818_to_var(ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %pll) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %period_in_ps = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 2
  %0 = ptrtoint ptr %period_in_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %period_in_ps, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aty_set_pll18818(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 144
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %clk_wr_offset = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_wr_offset, align 4
  %add = add i32 %6, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add)
  %cmp.i = icmp sgt i32 %add, 1023
  %sub.i = add i32 %6, -1904
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %8, i32 %spec.select.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i70, i8 0) #7, !srcloc !34
  %9 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %10, i32 31
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %12 = or i8 %11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %14, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 %12) #7, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  %30 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pll, align 4
  %locationAddr5 = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 1
  %32 = ptrtoint ptr %locationAddr5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %locationAddr5, align 4
  %34 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clk_wr_offset, align 4
  %add7 = add i32 %35, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add7)
  %cmp.i75 = icmp sgt i32 %add7, 1023
  %sub.i76 = add i32 %35, -1904
  %spec.select.i77 = select i1 %cmp.i75, i32 %sub.i76, i32 %add7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %37, i32 %spec.select.i77
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i79, i8 0) #7, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 5583448) #7
  %39 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 144
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %42 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %clk_wr_offset, align 4
  %add.i = add i32 %43, 144
  %44 = or i8 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add.i)
  %cmp.i.i = icmp sgt i32 %add.i, 1023
  %sub.i.i = add i32 %43, -1904
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %46, i32 %spec.select.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5.i, i8 %44) #7, !srcloc !34
  %47 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clk_wr_offset, align 4
  %add9 = add i32 %48, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add9)
  %cmp.i80 = icmp sgt i32 %add9, 1023
  %sub.i81 = add i32 %48, -1904
  %spec.select.i82 = select i1 %cmp.i80, i32 %sub.i81, i32 %add9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %50, i32 %spec.select.i82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i84, i8 1) #7, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 5583448) #7
  %52 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %53, i32 144
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i86) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %55 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clk_wr_offset, align 4
  %add.i88 = add i32 %56, 144
  %57 = or i8 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add.i88)
  %cmp.i.i89 = icmp sgt i32 %add.i88, 1023
  %sub.i.i90 = add i32 %56, -1904
  %spec.select.i.i91 = select i1 %cmp.i.i89, i32 %sub.i.i90, i32 %add.i88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i5.i92 = getelementptr i8, ptr %59, i32 %spec.select.i.i91
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5.i92, i8 %57) #7, !srcloc !34
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext 1, ptr noundef %1)
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext 0, ptr noundef %1)
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext 0, ptr noundef %1)
  %60 = trunc i32 %33 to i8
  %conv11 = and i8 %60, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv11, ptr noundef %1)
  %61 = trunc i32 %33 to i8
  %62 = lshr i8 %61, 1
  %conv11.1 = and i8 %62, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv11.1, ptr noundef %1)
  %63 = trunc i32 %33 to i8
  %64 = lshr i8 %63, 2
  %conv11.2 = and i8 %64, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv11.2, ptr noundef %1)
  %65 = trunc i32 %33 to i8
  %66 = lshr i8 %65, 3
  %conv11.3 = and i8 %66, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv11.3, ptr noundef %1)
  %67 = trunc i32 %33 to i8
  %68 = lshr i8 %67, 4
  %conv11.4 = and i8 %68, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv11.4, ptr noundef %1)
  %69 = trunc i32 %31 to i8
  %conv17 = and i8 %69, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17, ptr noundef %1)
  %70 = trunc i32 %31 to i8
  %71 = lshr i8 %70, 1
  %conv17.1 = and i8 %71, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.1, ptr noundef %1)
  %72 = trunc i32 %31 to i8
  %73 = lshr i8 %72, 2
  %conv17.2 = and i8 %73, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.2, ptr noundef %1)
  %74 = trunc i32 %31 to i8
  %75 = lshr i8 %74, 3
  %conv17.3 = and i8 %75, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.3, ptr noundef %1)
  %76 = trunc i32 %31 to i8
  %77 = lshr i8 %76, 4
  %conv17.4 = and i8 %77, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.4, ptr noundef %1)
  %78 = trunc i32 %31 to i8
  %79 = lshr i8 %78, 5
  %conv17.5 = and i8 %79, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.5, ptr noundef %1)
  %80 = trunc i32 %31 to i8
  %81 = lshr i8 %80, 6
  %conv17.6 = and i8 %81, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.6, ptr noundef %1)
  %82 = trunc i32 %31 to i8
  %83 = lshr i8 %82, 7
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %83, ptr noundef %1)
  %shr18.7 = lshr i32 %31, 8
  %84 = trunc i32 %shr18.7 to i8
  %conv17.8 = and i8 %84, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.8, ptr noundef %1)
  %shr18.8 = lshr i32 %31, 9
  %85 = trunc i32 %shr18.8 to i8
  %conv17.9 = and i8 %85, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.9, ptr noundef %1)
  %shr18.9 = lshr i32 %31, 10
  %86 = trunc i32 %shr18.9 to i8
  %conv17.10 = and i8 %86, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.10, ptr noundef %1)
  %shr18.10 = lshr i32 %31, 11
  %87 = trunc i32 %shr18.10 to i8
  %conv17.11 = and i8 %87, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.11, ptr noundef %1)
  %shr18.11 = lshr i32 %31, 12
  %88 = trunc i32 %shr18.11 to i8
  %conv17.12 = and i8 %88, 1
  tail call fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %conv17.12, ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #7
  %90 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %91, i32 192
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i94) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %93 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %94, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i96, i8 %11) #7, !srcloc !34
  %95 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %clk_wr_offset, align 4
  %add24 = add i32 %96, 144
  %97 = or i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add24)
  %cmp.i97 = icmp sgt i32 %add24, 1023
  %sub.i98 = add i32 %96, -1904
  %spec.select.i99 = select i1 %cmp.i97, i32 %sub.i98, i32 %add24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %98 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %99, i32 %spec.select.i99
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i101, i8 %97) #7, !srcloc !34
  br label %while.body32

while.body32:                                     ; preds = %while.body32.while.body32_crit_edge, %entry
  %__ms28.0112 = phi i32 [ 50, %entry ], [ %dec30, %while.body32.while.body32_crit_edge ]
  %dec30 = add nsw i32 %__ms28.0112, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #7
  %tobool31.not = icmp eq i32 %dec30, 0
  br i1 %tobool31.not, label %while.end33, label %while.body32.while.body32_crit_edge

while.body32.while.body32_crit_edge:              ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body32

while.end33:                                      ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %clk_wr_offset, align 4
  %add35 = add i32 %102, 144
  %103 = ptrtoint ptr %locationAddr5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %locationAddr5, align 4
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 15
  %conv39 = or i8 %106, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add35)
  %cmp.i102 = icmp sgt i32 %add35, 1023
  %sub.i103 = add i32 %102, -1904
  %spec.select.i104 = select i1 %cmp.i102, i32 %sub.i103, i32 %add35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %108, i32 %spec.select.i104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i106, i8 %conv39) #7, !srcloc !34
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @aty_var_to_pll_1703(ptr nocapture noundef readnone %info, i32 noundef %vclk_per, i32 noundef %bpp, ptr nocapture noundef writeonly %pll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %vclk_per)
  %cmp = icmp ugt i32 %vclk_per, 100000000
  br i1 %cmp, label %entry.if.end39_crit_edge, label %if.else

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.else:                                          ; preds = %entry
  %div = udiv i32 100000000, %vclk_per
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500, i32 %vclk_per)
  %cmp1 = icmp ugt i32 %vclk_per, 12500
  %0 = tail call i32 @llvm.umin.i32(i32 %div, i32 15938)
  %1 = select i1 %cmp1, i32 8000, i32 %0
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else
  %divider.075 = phi i16 [ 0, %if.else ], [ %add, %while.body.while.body_crit_edge ]
  %mhz100.274 = phi i32 [ %1, %if.else ], [ %shl7, %while.body.while.body_crit_edge ]
  %shl7 = shl nuw nsw i32 %mhz100.274, 1
  %add = add i16 %divider.075, 32
  %cmp6 = icmp ult i32 %mhz100.274, 32000
  br i1 %cmp6, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %mhz100.274, 4
  %sub = add i32 %mul, -2864
  %sub.frozen = freeze i32 %sub
  %div13 = udiv i32 %sub.frozen, 1432
  %2 = mul i32 %div13, 1432
  %rem.decomposed = sub i32 %sub.frozen, %2
  %conv12 = trunc i32 %rem.decomposed to i16
  %and = and i32 %div13, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14.not = icmp eq i32 %and, 0
  %3 = and i16 %add, 224
  %div13.tr = trunc i32 %div13 to i16
  %4 = shl i16 %div13.tr, 8
  %5 = or i16 %3, %4
  %conv32 = or i16 %5, 6
  %preRemainder.1 = select i1 %cmp14.not, i16 %conv12, i16 -1
  %divider.2 = select i1 %cmp14.not, i16 %conv32, i16 %add
  %add34 = add i32 %sub, %shl7
  %add34.frozen = freeze i32 %add34
  %div13.1 = udiv i32 %add34.frozen, 1432
  %6 = mul i32 %div13.1, 1432
  %rem.1.decomposed = sub i32 %add34.frozen, %6
  %conv12.1 = trunc i32 %rem.1.decomposed to i16
  %and.1 = and i32 %div13.1, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp14.1 = icmp ne i32 %and.1, 0
  %conv17.1 = zext i16 %preRemainder.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.1.decomposed, i32 %conv17.1)
  %cmp18.not.1 = icmp ugt i32 %rem.1.decomposed, %conv17.1
  %or.cond.1 = select i1 %cmp14.1, i1 true, i1 %cmp18.not.1
  %7 = and i16 %divider.2, 224
  %div13.tr.1 = trunc i32 %div13.1 to i16
  %8 = shl i16 %div13.tr.1, 8
  %9 = or i16 %7, %8
  %conv32.1 = or i16 %9, 7
  %preRemainder.1.1 = select i1 %or.cond.1, i16 %preRemainder.1, i16 %conv12.1
  %divider.2.1 = select i1 %or.cond.1, i16 %divider.2, i16 %conv32.1
  %add34.1 = add i32 %add34, %shl7
  %add34.1.frozen = freeze i32 %add34.1
  %div13.2 = udiv i32 %add34.1.frozen, 1432
  %10 = mul i32 %div13.2, 1432
  %rem.2.decomposed = sub i32 %add34.1.frozen, %10
  %conv12.2 = trunc i32 %rem.2.decomposed to i16
  %and.2 = and i32 %div13.2, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp14.2 = icmp ne i32 %and.2, 0
  %conv17.2 = zext i16 %preRemainder.1.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.2.decomposed, i32 %conv17.2)
  %cmp18.not.2 = icmp ugt i32 %rem.2.decomposed, %conv17.2
  %or.cond.2 = select i1 %cmp14.2, i1 true, i1 %cmp18.not.2
  %11 = and i16 %divider.2.1, 224
  %div13.tr.2 = trunc i32 %div13.2 to i16
  %12 = shl i16 %div13.tr.2, 8
  %13 = or i16 %11, %12
  %conv32.2 = or i16 %13, 8
  %preRemainder.1.2 = select i1 %or.cond.2, i16 %preRemainder.1.1, i16 %conv12.2
  %divider.2.2 = select i1 %or.cond.2, i16 %divider.2.1, i16 %conv32.2
  %add34.2 = add i32 %add34.1, %shl7
  %add34.2.frozen = freeze i32 %add34.2
  %div13.3 = udiv i32 %add34.2.frozen, 1432
  %14 = mul i32 %div13.3, 1432
  %rem.3.decomposed = sub i32 %add34.2.frozen, %14
  %conv12.3 = trunc i32 %rem.3.decomposed to i16
  %and.3 = and i32 %div13.3, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp14.3 = icmp ne i32 %and.3, 0
  %conv17.3 = zext i16 %preRemainder.1.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.3.decomposed, i32 %conv17.3)
  %cmp18.not.3 = icmp ugt i32 %rem.3.decomposed, %conv17.3
  %or.cond.3 = select i1 %cmp14.3, i1 true, i1 %cmp18.not.3
  %15 = and i16 %divider.2.2, 224
  %div13.tr.3 = trunc i32 %div13.3 to i16
  %16 = shl i16 %div13.tr.3, 8
  %17 = or i16 %15, %16
  %conv32.3 = or i16 %17, 9
  %preRemainder.1.3 = select i1 %or.cond.3, i16 %preRemainder.1.2, i16 %conv12.3
  %divider.2.3 = select i1 %or.cond.3, i16 %divider.2.2, i16 %conv32.3
  %add34.3 = add i32 %add34.2, %shl7
  %add34.3.frozen = freeze i32 %add34.3
  %div13.4 = udiv i32 %add34.3.frozen, 1432
  %18 = mul i32 %div13.4, 1432
  %rem.4.decomposed = sub i32 %add34.3.frozen, %18
  %conv12.4 = trunc i32 %rem.4.decomposed to i16
  %and.4 = and i32 %div13.4, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp14.4 = icmp ne i32 %and.4, 0
  %conv17.4 = zext i16 %preRemainder.1.3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.4.decomposed, i32 %conv17.4)
  %cmp18.not.4 = icmp ugt i32 %rem.4.decomposed, %conv17.4
  %or.cond.4 = select i1 %cmp14.4, i1 true, i1 %cmp18.not.4
  %19 = and i16 %divider.2.3, 224
  %div13.tr.4 = trunc i32 %div13.4 to i16
  %20 = shl i16 %div13.tr.4, 8
  %21 = or i16 %19, %20
  %conv32.4 = or i16 %21, 10
  %preRemainder.1.4 = select i1 %or.cond.4, i16 %preRemainder.1.3, i16 %conv12.4
  %divider.2.4 = select i1 %or.cond.4, i16 %divider.2.3, i16 %conv32.4
  %add34.4 = add i32 %add34.3, %shl7
  %add34.4.frozen = freeze i32 %add34.4
  %div13.5 = udiv i32 %add34.4.frozen, 1432
  %22 = mul i32 %div13.5, 1432
  %rem.5.decomposed = sub i32 %add34.4.frozen, %22
  %conv12.5 = trunc i32 %rem.5.decomposed to i16
  %and.5 = and i32 %div13.5, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp14.5 = icmp ne i32 %and.5, 0
  %conv17.5 = zext i16 %preRemainder.1.4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.5.decomposed, i32 %conv17.5)
  %cmp18.not.5 = icmp ugt i32 %rem.5.decomposed, %conv17.5
  %or.cond.5 = select i1 %cmp14.5, i1 true, i1 %cmp18.not.5
  %23 = and i16 %divider.2.4, 224
  %div13.tr.5 = trunc i32 %div13.5 to i16
  %24 = shl i16 %div13.tr.5, 8
  %25 = or i16 %23, %24
  %conv32.5 = or i16 %25, 11
  %preRemainder.1.5 = select i1 %or.cond.5, i16 %preRemainder.1.4, i16 %conv12.5
  %divider.2.5 = select i1 %or.cond.5, i16 %divider.2.4, i16 %conv32.5
  %add34.5 = add i32 %add34.4, %shl7
  %add34.5.frozen = freeze i32 %add34.5
  %div13.6 = udiv i32 %add34.5.frozen, 1432
  %26 = mul i32 %div13.6, 1432
  %rem.6.decomposed = sub i32 %add34.5.frozen, %26
  %and.6 = and i32 %div13.6, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp14.6 = icmp ne i32 %and.6, 0
  %conv17.6 = zext i16 %preRemainder.1.5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.6.decomposed, i32 %conv17.6)
  %cmp18.not.6 = icmp ugt i32 %rem.6.decomposed, %conv17.6
  %or.cond.6 = select i1 %cmp14.6, i1 true, i1 %cmp18.not.6
  %27 = and i16 %divider.2.5, 224
  %div13.tr.6 = trunc i32 %div13.6 to i16
  %28 = shl i16 %div13.tr.6, 8
  %29 = or i16 %27, %28
  %conv32.6 = or i16 %29, 12
  %divider.2.6 = select i1 %or.cond.6, i16 %divider.2.5, i16 %conv32.6
  %conv38 = sext i16 %divider.2.6 to i32
  br label %if.end39

if.end39:                                         ; preds = %while.end, %entry.if.end39_crit_edge
  %program_bits.0 = phi i32 [ %conv38, %while.end ], [ 224, %entry.if.end39_crit_edge ]
  %divider.3 = phi i32 [ %conv38, %while.end ], [ 0, %entry.if.end39_crit_edge ]
  %30 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %program_bits.0, ptr %pll, align 4
  %locationAddr = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 1
  %31 = ptrtoint ptr %locationAddr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %locationAddr, align 4
  %post_divider = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 3
  %32 = ptrtoint ptr %post_divider to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %divider.3, ptr %post_divider, align 4
  %period_in_ps = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 2
  %33 = ptrtoint ptr %period_in_ps to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %vclk_per, ptr %period_in_ps, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aty_pll_1703_to_var(ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %pll) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %period_in_ps = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 2
  %0 = ptrtoint ptr %period_in_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %period_in_ps, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aty_set_pll_1703(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 31
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %5 = or i8 %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %7, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i24, i8 %5) #7, !srcloc !34
  %8 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pll, align 4
  %locationAddr4 = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 1
  %10 = ptrtoint ptr %locationAddr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %locationAddr4, align 4
  %12 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 192
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %15 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %16, i32 194
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i10.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %18 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %19, i32 194
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i12.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %21 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %22, i32 194
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %24 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %25, i32 194
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i16.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %27 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %28, i32 194
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i26) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %.tr = trunc i32 %11 to i8
  %30 = shl i8 %.tr, 1
  %conv6 = add i8 %30, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %32, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28, i8 %conv6) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %34, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i30, i8 0) #7, !srcloc !34
  %and = lshr i32 %9, 8
  %conv7 = trunc i32 %and to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %36, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i32, i8 %conv7) #7, !srcloc !34
  %conv9 = trunc i32 %9 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %38, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i34, i8 %conv9) #7, !srcloc !34
  %39 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %40, i32 192
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i36) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %43, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i38, i8 %4) #7, !srcloc !34
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @aty_var_to_pll_8398(ptr nocapture noundef readnone %info, i32 noundef %vclk_per, i32 noundef %bpp, ptr nocapture noundef writeonly %pll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %vclk_per)
  %cmp = icmp ugt i32 %vclk_per, 100000000
  br i1 %cmp, label %entry.if.end48_crit_edge, label %if.else

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.else:                                          ; preds = %entry
  %div = udiv i32 100000000, %vclk_per
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500, i32 %vclk_per)
  %cmp1 = icmp ugt i32 %vclk_per, 12500
  %0 = tail call i32 @llvm.umin.i32(i32 %div, i32 15938)
  %1 = select i1 %cmp1, i32 8000, i32 %0
  %mul = shl nuw nsw i32 %1, 8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else
  %k.078 = phi i16 [ 0, %if.else ], [ %inc, %while.body.while.body_crit_edge ]
  %mhz100.277 = phi i32 [ %1, %if.else ], [ %shl8, %while.body.while.body_crit_edge ]
  %shl8 = shl nuw nsw i32 %mhz100.277, 1
  %inc = add i16 %k.078, 1
  %cmp7 = icmp ult i32 %mhz100.277, 32000
  br i1 %cmp7, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  %div6 = udiv i32 %mul, 100
  %conv = zext i16 %inc to i32
  %conv21 = shl i32 256, %conv
  %mul22 = and i32 %conv21, 16776960
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.inc38.for.cond14.preheader_crit_edge, %while.end
  %indvars.iv88 = phi i32 [ 2, %while.end ], [ %indvars.iv.next89, %for.inc38.for.cond14.preheader_crit_edge ]
  %save_n.086 = phi i16 [ 0, %while.end ], [ %save_n.2, %for.inc38.for.cond14.preheader_crit_edge ]
  %save_m.085 = phi i16 [ 0, %while.end ], [ %save_m.2, %for.inc38.for.cond14.preheader_crit_edge ]
  %preDiff.083 = phi i32 [ -1, %while.end ], [ %4, %for.inc38.for.cond14.preheader_crit_edge ]
  %add24 = add nuw nsw i32 %indvars.iv88, 2
  %mul25 = mul nuw nsw i32 %add24, %mul22
  %2 = trunc i32 %indvars.iv88 to i16
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond14.preheader
  %indvars.iv = phi i32 [ 35, %for.cond14.preheader ], [ %indvars.iv.next, %for.body18.for.body18_crit_edge ]
  %save_n.182 = phi i16 [ %save_n.086, %for.cond14.preheader ], [ %save_n.2, %for.body18.for.body18_crit_edge ]
  %save_m.181 = phi i16 [ %save_m.085, %for.cond14.preheader ], [ %save_m.2, %for.body18.for.body18_crit_edge ]
  %preDiff.179 = phi i32 [ %preDiff.083, %for.cond14.preheader ], [ %4, %for.body18.for.body18_crit_edge ]
  %3 = mul nuw nsw i32 %indvars.iv, 938356
  %mul20 = add nuw nsw i32 %3, 7506848
  %div26 = udiv i32 %mul20, %mul25
  call void @__sanitizer_cov_trace_cmp4(i32 %div6, i32 %div26)
  %cmp27 = icmp ugt i32 %div6, %div26
  %sub = sub nsw i32 %div6, %div26
  %sub31 = sub nsw i32 %div26, %div6
  %diff.0 = select i1 %cmp27, i32 %sub, i32 %sub31
  call void @__sanitizer_cov_trace_cmp4(i32 %diff.0, i32 %preDiff.179)
  %cmp33 = icmp ult i32 %diff.0, %preDiff.179
  %4 = tail call i32 @llvm.umin.i32(i32 %diff.0, i32 %preDiff.179)
  %save_m.2 = select i1 %cmp33, i16 %2, i16 %save_m.181
  %5 = trunc i32 %indvars.iv to i16
  %save_n.2 = select i1 %cmp33, i16 %5, i16 %save_n.182
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 248
  br i1 %exitcond.not, label %for.inc38, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.inc38:                                        ; preds = %for.body18
  %indvars.iv.next89 = add nuw nsw i32 %indvars.iv88, 1
  %exitcond90.not = icmp eq i32 %indvars.iv.next89, 31
  br i1 %exitcond90.not, label %for.end40, label %for.inc38.for.cond14.preheader_crit_edge

for.inc38.for.cond14.preheader_crit_edge:         ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader

for.end40:                                        ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #9
  %shl42 = shl nuw nsw i32 %conv, 6
  %conv43 = zext i16 %save_m.2 to i32
  %add44 = add nuw nsw i32 %shl42, %conv43
  %conv45 = zext i16 %save_n.2 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %add47 = add nuw nsw i32 %add44, %shl46
  br label %if.end48

if.end48:                                         ; preds = %for.end40, %entry.if.end48_crit_edge
  %program_bits.0 = phi i32 [ %add47, %for.end40 ], [ 224, %entry.if.end48_crit_edge ]
  %6 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %program_bits.0, ptr %pll, align 4
  %locationAddr = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 1
  %7 = ptrtoint ptr %locationAddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %locationAddr, align 4
  %post_divider = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 3
  %8 = ptrtoint ptr %post_divider to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %post_divider, align 4
  %period_in_ps = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 2
  %9 = ptrtoint ptr %period_in_ps to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %vclk_per, ptr %period_in_ps, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aty_pll_8398_to_var(ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %pll) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %period_in_ps = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 2
  %0 = ptrtoint ptr %period_in_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %period_in_ps, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aty_set_pll_8398(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 31
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %5 = or i8 %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %7, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i35, i8 %5) #7, !srcloc !34
  %8 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pll, align 4
  %locationAddr4 = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 1
  %10 = ptrtoint ptr %locationAddr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %locationAddr4, align 4
  %12 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %13, i32 196
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i37) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %15 = or i8 %14, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %17, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i39, i8 %15) #7, !srcloc !34
  %conv10 = trunc i32 %11 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %19, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i41, i8 %conv10) #7, !srcloc !34
  %and = lshr i32 %9, 8
  %conv11 = trunc i32 %and to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %21, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i43, i8 %conv11) #7, !srcloc !34
  %conv13 = trunc i32 %9 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %23, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i45, i8 %conv13) #7, !srcloc !34
  %24 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %25, i32 196
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i47) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %27 = and i8 %26, -4
  %28 = or i8 %27, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %30, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i49, i8 %28) #7, !srcloc !34
  %31 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %32, i32 192
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i51) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %35, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i53, i8 %4) #7, !srcloc !34
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @aty_var_to_pll_408(ptr nocapture noundef readnone %info, i32 noundef %vclk_per, i32 noundef %bpp, ptr nocapture noundef writeonly %pll) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %vclk_per)
  %cmp = icmp ugt i32 %vclk_per, 100000000
  br i1 %cmp, label %entry.if.end39_crit_edge, label %if.else

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.else:                                          ; preds = %entry
  %div = udiv i32 100000000, %vclk_per
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500, i32 %vclk_per)
  %cmp1 = icmp ugt i32 %vclk_per, 12500
  %0 = tail call i32 @llvm.umin.i32(i32 %div, i32 15938)
  %1 = select i1 %cmp1, i32 8000, i32 %0
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else
  %divider.075 = phi i16 [ 0, %if.else ], [ %add, %while.body.while.body_crit_edge ]
  %mhz100.274 = phi i32 [ %1, %if.else ], [ %shl7, %while.body.while.body_crit_edge ]
  %shl7 = shl nuw nsw i32 %mhz100.274, 1
  %add = add i16 %divider.075, 64
  %cmp6 = icmp ult i32 %mhz100.274, 32000
  br i1 %cmp6, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  %mul = shl i32 %mhz100.274, 3
  %sub = add i32 %mul, -2864
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.end
  %temp.0 = phi i32 [ %sub, %while.end ], [ %add34, %do.body.do.body_crit_edge ]
  %preRemainder.0 = phi i16 [ -1, %while.end ], [ %preRemainder.1, %do.body.do.body_crit_edge ]
  %divider.1 = phi i16 [ %add, %while.end ], [ %divider.2, %do.body.do.body_crit_edge ]
  %tempA.0 = phi i16 [ 2, %while.end ], [ %inc, %do.body.do.body_crit_edge ]
  %temp.0.frozen = freeze i32 %temp.0
  %div13 = udiv i32 %temp.0.frozen, 1432
  %2 = mul i32 %div13, 1432
  %rem.decomposed = sub i32 %temp.0.frozen, %2
  %conv12 = trunc i32 %rem.decomposed to i16
  %and = and i32 %div13, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14 = icmp ne i32 %and, 0
  %conv17 = zext i16 %preRemainder.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %conv17)
  %cmp18.not = icmp ugt i32 %rem.decomposed, %conv17
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp18.not
  %3 = and i16 %divider.1, 192
  %4 = or i16 %3, %tempA.0
  %div13.tr = trunc i32 %div13 to i16
  %5 = shl i16 %div13.tr, 8
  %conv32 = or i16 %4, %5
  %preRemainder.1 = select i1 %or.cond, i16 %preRemainder.0, i16 %conv12
  %divider.2 = select i1 %or.cond, i16 %divider.1, i16 %conv32
  %add34 = add i32 %temp.0, %shl7
  %inc = add nuw nsw i16 %tempA.0, 1
  %cmp36 = icmp ult i16 %tempA.0, 32
  br i1 %cmp36, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv38 = sext i16 %divider.2 to i32
  br label %if.end39

if.end39:                                         ; preds = %do.end, %entry.if.end39_crit_edge
  %program_bits.0 = phi i32 [ %conv38, %do.end ], [ 255, %entry.if.end39_crit_edge ]
  %divider.3 = phi i32 [ %conv38, %do.end ], [ 0, %entry.if.end39_crit_edge ]
  %6 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %program_bits.0, ptr %pll, align 4
  %locationAddr = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 1
  %7 = ptrtoint ptr %locationAddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %locationAddr, align 4
  %post_divider = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 3
  %8 = ptrtoint ptr %post_divider to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %divider.3, ptr %post_divider, align 4
  %period_in_ps = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 2
  %9 = ptrtoint ptr %period_in_ps to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %vclk_per, ptr %period_in_ps, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aty_pll_408_to_var(ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %pll) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %period_in_ps = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 2
  %0 = ptrtoint ptr %period_in_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %period_in_ps, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aty_set_pll_408(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 31
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %5 = or i8 %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %7, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 %5) #7, !srcloc !34
  %8 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pll, align 4
  %locationAddr4 = getelementptr inbounds %struct.pll_18818, ptr %pll, i32 0, i32 1
  %10 = ptrtoint ptr %locationAddr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %locationAddr4, align 4
  %12 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 192
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %15 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %16, i32 194
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i10.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %18 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %19, i32 194
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i12.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %21 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %22, i32 194
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %24 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %25, i32 194
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i16.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %27 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %28, i32 194
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i60) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %30 = or i8 %29, 1
  %31 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %32, i32 192
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i62) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %34 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i10.i63 = getelementptr i8, ptr %35, i32 194
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i10.i63) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %37 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i64 = getelementptr i8, ptr %38, i32 194
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i12.i64) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %40 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i65 = getelementptr i8, ptr %41, i32 194
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i65) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %43 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i16.i66 = getelementptr i8, ptr %44, i32 194
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i16.i66) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %47, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i68, i8 %30) #7, !srcloc !34
  %or10 = or i8 %29, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %49, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i70, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %51, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 %or10) #7, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 85899200) #7
  %.tr = trunc i32 %11 to i8
  %53 = shl i8 %.tr, 2
  %conv12 = add i8 %53, 64
  %shr = lshr i32 %9, 8
  %conv13 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %55, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 %conv12) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %57, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i76, i8 %conv13) #7, !srcloc !34
  %conv15 = add i8 %53, 65
  %conv16 = trunc i32 %9 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %59, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i78, i8 %conv15) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %61, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i80, i8 %conv16) #7, !srcloc !34
  %conv18 = add i8 %53, 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %63, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i82, i8 %conv18) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %65, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i84, i8 119) #7, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 85899200) #7
  %67 = and i8 %29, -10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %69, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i86, i8 1) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %71, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i88, i8 %67) #7, !srcloc !34
  %72 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %73, i32 192
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i90) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %76, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i92, i8 %4) #7, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty_set_dac_unsupported(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %pll, i32 noundef %bpp, i32 noundef %accel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -249557367) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 2164039) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 -15724967) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 2163015) #7, !srcloc !38
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty_ICS2595_put1bit(i8 noundef zeroext %data, ptr nocapture noundef readonly %par) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 144
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %clk_wr_offset = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 5
  %3 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_wr_offset, align 4
  %add = add i32 %4, 144
  %5 = and i8 %2, -5
  %6 = shl i8 %data, 2
  %7 = and i8 %6, 4
  %or33 = or i8 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add)
  %cmp.i = icmp sgt i32 %add, 1023
  %sub.i = add i32 %4, -1904
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %9, i32 %spec.select.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i35, i8 %or33) #7, !srcloc !34
  %10 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %11, i32 144
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i37) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %13 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_wr_offset, align 4
  %add8 = add i32 %14, 144
  %15 = and i8 %12, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add8)
  %cmp.i38 = icmp sgt i32 %add8, 1023
  %sub.i39 = add i32 %14, -1904
  %spec.select.i40 = select i1 %cmp.i38, i32 %sub.i39, i32 %add8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %17, i32 %spec.select.i40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i42, i8 %15) #7, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 5583448) #7
  %19 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 144
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %22 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk_wr_offset, align 4
  %add.i = add i32 %23, 144
  %24 = or i8 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add.i)
  %cmp.i.i = icmp sgt i32 %add.i, 1023
  %sub.i.i = add i32 %23, -1904
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %26, i32 %spec.select.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5.i, i8 %24) #7, !srcloc !34
  %27 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %28, i32 144
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i44) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %30 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clk_wr_offset, align 4
  %add15 = add i32 %31, 144
  %32 = or i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add15)
  %cmp.i45 = icmp sgt i32 %add15, 1023
  %sub.i46 = add i32 %31, -1904
  %spec.select.i47 = select i1 %cmp.i45, i32 %sub.i46, i32 %add15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %34, i32 %spec.select.i47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i49, i8 %32) #7, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 5583448) #7
  %36 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %37, i32 144
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i51) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  %39 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clk_wr_offset, align 4
  %add.i53 = add i32 %40, 144
  %41 = or i8 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add.i53)
  %cmp.i.i54 = icmp sgt i32 %add.i53, 1023
  %sub.i.i55 = add i32 %40, -1904
  %spec.select.i.i56 = select i1 %cmp.i.i54, i32 %sub.i.i55, i32 %add.i53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i5.i57 = getelementptr i8, ptr %43, i32 %spec.select.i.i56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5.i57, i8 %41) #7, !srcloc !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @aty_dac_ibm514, !1, !"aty_dac_ibm514", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 190, i32 26}
!2 = !{ptr @aty_pll_ibm514, !3, !"aty_pll_ibm514", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 194, i32 26}
!4 = !{ptr @aty_dac_ati68860b, !5, !"aty_dac_ati68860b", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 279, i32 26}
!6 = !{ptr @aty_dac_att21c498, !7, !"aty_dac_att21c498", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 332, i32 26}
!8 = !{ptr @aty_pll_ati18818_1, !9, !"aty_pll_ati18818_1", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 486, i32 26}
!10 = !{ptr @aty_pll_stg1703, !11, !"aty_pll_stg1703", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 602, i32 26}
!12 = !{ptr @aty_pll_ch8398, !13, !"aty_pll_ch8398", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 725, i32 26}
!14 = !{ptr @aty_pll_att20c408, !15, !"aty_pll_att20c408", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 872, i32 26}
!16 = !{ptr @aty_dac_unsupported, !17, !"aty_dac_unsupported", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 902, i32 26}
!18 = !{ptr @aty_pll_unsupported, !19, !"aty_pll_unsupported", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 906, i32 26}
!20 = !{ptr @aty_set_dac_514.tab, !21, !"tab", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 90, i32 4}
!22 = !{ptr @aty_var_to_pll_514.RGB514_clocks, !23, !"RGB514_clocks", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/aty/mach64_gx.c", i32 134, i32 4}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2155905889}
!34 = !{i64 4323264}
!35 = !{i64 4323659}
!36 = !{i64 2155905496}
!37 = !{i64 2155904312}
!38 = !{i64 4323461}
