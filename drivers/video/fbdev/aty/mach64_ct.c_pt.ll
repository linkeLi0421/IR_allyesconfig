; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/mach64_ct.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/mach64_ct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aty_dac_ops = type { ptr }
%struct.aty_pll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atyfb_par = type { [16 x i32], [256 x %struct.anon], ptr, ptr, ptr, i32, %struct.crtc, %union.aty_pll, %struct.pll_info, i32, i32, i32, i32, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, %struct.aty_interrupt, i32, i32, %struct.spinlock, i32, i32, %struct.crtc, %union.aty_pll }
%struct.anon = type { i8, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aty_interrupt = type { %struct.wait_queue_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crtc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.aty_pll = type { %struct.pll_ct }
%struct.pll_ct = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.79, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.79 = type { ptr }

@aty_postdividers = dso_local constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\04\08\03\05\06\0C", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aty_dac_ct = dso_local constant { %struct.aty_dac_ops, [28 x i8] } { %struct.aty_dac_ops { ptr @dummy }, [28 x i8] zeroinitializer }, align 32
@aty_pll_ct = dso_local constant { %struct.aty_pll_ops, [40 x i8] } { %struct.aty_pll_ops { ptr @aty_var_to_pll_ct, ptr @aty_pll_to_var_ct, ptr @aty_set_pll_ct, ptr @aty_get_pll_ct, ptr @aty_init_pll_ct, ptr @aty_resume_pll_ct }, [40 x i8] zeroinitializer }, align 32
@aty_valid_pll_ct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\012atyfb: vclk out of range\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aty_valid_pll_ct\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/fbdev/aty/mach64_ct.c\00", [60 x i8] zeroinitializer }, align 32
@aty_valid_pll_ct._entry_ptr = internal global ptr @aty_valid_pll_ct._entry, section ".printk_index", align 4
@aty_init_pll_ct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012atyfb: Unsupported xclk source:  %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aty_init_pll_ct\00", [16 x i8] zeroinitializer }, align 32
@aty_init_pll_ct._entry_ptr = internal global ptr @aty_init_pll_ct._entry, section ".printk_index", align 4
@aty_init_pll_ct._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\012atxfb: xclk out of range\0A\00", [36 x i8] zeroinitializer }, align 32
@aty_init_pll_ct._entry_ptr.7 = internal global ptr @aty_init_pll_ct._entry.5, section ".printk_index", align 4
@aty_init_pll_ct._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\012atyfb: mclk out of range\0A\00", [36 x i8] zeroinitializer }, align 32
@aty_init_pll_ct._entry_ptr.10 = internal global ptr @aty_init_pll_ct._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"aty_postdividers\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 118, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"aty_dac_ct\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 642, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"aty_pll_ct\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 646, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 218, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 425, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 534, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [39 x i8] c"../drivers/video/fbdev/aty/mach64_ct.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 583, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @aty_init_pll_ct._entry, ptr @aty_init_pll_ct._entry.5, ptr @aty_init_pll_ct._entry.8, ptr @aty_init_pll_ct._entry_ptr, ptr @aty_init_pll_ct._entry_ptr.10, ptr @aty_init_pll_ct._entry_ptr.7, ptr @aty_valid_pll_ct._entry, ptr @aty_valid_pll_ct._entry_ptr, ptr @aty_postdividers, ptr @aty_dac_ct, ptr @aty_pll_ct, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_postdividers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_dac_ct to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_pll_ct to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_valid_pll_ct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_init_pll_ct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_init_pll_ct._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_init_pll_ct._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @aty_ld_pll_ct(i32 noundef %offset, ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %offset.tr = trunc i32 %offset to i8
  %conv = shl i8 %offset.tr, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #6, !srcloc !35
  %2 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 146
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aty_set_pll_ct(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %lcd_table = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %lcd_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lcd_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @aty_ld_lcd(i32 noundef 1, ptr noundef %1) #6
  %and = and i32 %call, -3
  tail call void @aty_st_lcd(i32 noundef 1, i32 noundef %and, ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lcd_gen_cntrl.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %clk_wr_offset = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_wr_offset, align 4
  %6 = trunc i32 %5 to i8
  %conv = or i8 %6, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #6, !srcloc !35
  %9 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %10, i32 28
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #6, !srcloc !38
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %and3 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or5 = or i32 %12, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or5) #6
  %14 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %13) #6, !srcloc !41
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %pll_vclk_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 5
  %16 = ptrtoint ptr %pll_vclk_cntl to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pll_vclk_cntl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 22) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %21, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i, i8 %17) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %23, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i, i8 20) #6, !srcloc !35
  %24 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_wr_offset, align 4
  %conv8 = shl i32 %25, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i163 = getelementptr i8, ptr %27, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i163, i8 24) #6, !srcloc !35
  %28 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %29, i32 146
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %conv10 = and i32 %conv8, 254
  %shl11 = shl i32 3, %conv10
  %31 = trunc i32 %shl11 to i8
  %32 = xor i8 %31, -1
  %conv14 = and i8 %30, %32
  %vclk_post_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 6
  %33 = ptrtoint ptr %vclk_post_div to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %vclk_post_div, align 2
  %35 = and i8 %34, 3
  %and16 = zext i8 %35 to i32
  %shl18 = shl i32 %and16, %conv10
  %36 = trunc i32 %shl18 to i8
  %conv21 = or i8 %conv14, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i165 = getelementptr i8, ptr %38, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i165, i8 26) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i166 = getelementptr i8, ptr %40, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i166, i8 %conv21) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i167 = getelementptr i8, ptr %42, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i167, i8 24) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i169 = getelementptr i8, ptr %44, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i169, i8 44) #6, !srcloc !35
  %45 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3.i170 = getelementptr i8, ptr %46, i32 146
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i170) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %48 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %clk_wr_offset, align 4
  %shl24 = shl i32 16, %49
  %50 = trunc i32 %shl24 to i8
  %51 = xor i8 %50, -1
  %conv28 = and i8 %47, -16
  %52 = and i8 %conv28, %51
  %pll_ext_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 8
  %53 = ptrtoint ptr %pll_ext_cntl to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pll_ext_cntl, align 4
  %or34157 = or i8 %52, %54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i172 = getelementptr i8, ptr %56, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i172, i8 46) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i173 = getelementptr i8, ptr %58, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i173, i8 %or34157) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i174 = getelementptr i8, ptr %60, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i174, i8 44) #6, !srcloc !35
  %61 = ptrtoint ptr %clk_wr_offset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %clk_wr_offset, align 4
  %vclk_fb_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 7
  %63 = ptrtoint ptr %vclk_fb_div to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %vclk_fb_div, align 1
  %65 = trunc i32 %62 to i8
  %offset.tr.i = shl i8 %65, 2
  %66 = add i8 %offset.tr.i, 28
  %conv.i = or i8 %66, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i176 = getelementptr i8, ptr %68, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i176, i8 %conv.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i177 = getelementptr i8, ptr %70, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i177, i8 %64) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i178 = getelementptr i8, ptr %72, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i178, i8 %66) #6, !srcloc !35
  %pll_gen_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 1
  %73 = ptrtoint ptr %pll_gen_cntl to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pll_gen_cntl, align 1
  %75 = and i8 %74, -8
  %76 = or i8 %75, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i180 = getelementptr i8, ptr %78, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i180, i8 14) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i181 = getelementptr i8, ptr %80, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i181, i8 %76) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i182 = getelementptr i8, ptr %82, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i182, i8 12) #6, !srcloc !35
  %83 = ptrtoint ptr %pll_vclk_cntl to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pll_vclk_cntl, align 1
  %85 = and i8 %84, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i184 = getelementptr i8, ptr %87, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i184, i8 22) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i185 = getelementptr i8, ptr %89, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i185, i8 %85) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i186 = getelementptr i8, ptr %91, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i186, i8 20) #6, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #6
  %97 = ptrtoint ptr %pll_gen_cntl to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pll_gen_cntl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %99 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i188 = getelementptr i8, ptr %100, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i188, i8 14) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %101 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i189 = getelementptr i8, ptr %102, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i189, i8 %98) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %103 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i190 = getelementptr i8, ptr %104, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i190, i8 12) #6, !srcloc !35
  %105 = ptrtoint ptr %pll_vclk_cntl to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %pll_vclk_cntl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %107 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i192 = getelementptr i8, ptr %108, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i192, i8 22) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %109 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i193 = getelementptr i8, ptr %110, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i193, i8 %106) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i194 = getelementptr i8, ptr %112, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i194, i8 20) #6, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #6
  br i1 %tobool.not, label %if.then55, label %if.end6.if.end56_crit_edge

if.end6.if.end56_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then55:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %114 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %115, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %11) #6, !srcloc !41
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end6.if.end56_crit_edge
  %features = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %116 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %features, align 4
  %and57 = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end95_crit_edge, label %if.then59

if.end56.if.end95_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then59:                                        ; preds = %if.end56
  %and61 = and i32 %117, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else, label %if.then59.if.end70_crit_edge

if.then59.if.end70_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.else:                                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %ram_type = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 15
  %118 = ptrtoint ptr %ram_type to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ram_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %119)
  %cmp65 = icmp ugt i8 %119, 3
  %. = select i1 %cmp65, i8 -90, i8 -96
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then59.if.end70_crit_edge
  %dll_cntl.0 = phi i8 [ -128, %if.then59.if.end70_crit_edge ], [ %., %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %120 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i198 = getelementptr i8, ptr %121, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i198, i8 50) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %122 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i199 = getelementptr i8, ptr %123, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i199, i8 %dll_cntl.0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %124 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i200 = getelementptr i8, ptr %125, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i200, i8 48) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %126 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i202 = getelementptr i8, ptr %127, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i202, i8 54) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %128 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i203 = getelementptr i8, ptr %129, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i203, i8 27) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %130 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i204 = getelementptr i8, ptr %131, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i204, i8 52) #6, !srcloc !35
  %dsp_config = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 11
  %132 = ptrtoint ptr %dsp_config to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dsp_config, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #6
  %135 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i206 = getelementptr i8, ptr %136, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %134) #6, !srcloc !41
  %dsp_on_off = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 12
  %137 = ptrtoint ptr %dsp_on_off to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dsp_on_off, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #6
  %140 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i208 = getelementptr i8, ptr %141, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208, i32 %139) #6, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %152 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i210 = getelementptr i8, ptr %153, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i210, i8 50) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %154 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i211 = getelementptr i8, ptr %155, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i211, i8 %dll_cntl.0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %156 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i212 = getelementptr i8, ptr %157, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i212, i8 48) #6, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %160(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %163(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %164(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %165(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748000) #6
  %or84 = or i8 %dll_cntl.0, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %168 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i214 = getelementptr i8, ptr %169, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i214, i8 50) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %170 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i215 = getelementptr i8, ptr %171, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i215, i8 %or84) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %172 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i216 = getelementptr i8, ptr %173, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i216, i8 48) #6, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %174(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %175(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %176(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %177(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %178(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %179(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %180(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %181(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %182(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %183 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %183(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %184 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i218 = getelementptr i8, ptr %185, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i218, i8 50) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %186 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i219 = getelementptr i8, ptr %187, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i219, i8 %dll_cntl.0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %188 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i220 = getelementptr i8, ptr %189, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i220, i8 48) #6, !srcloc !35
  br label %if.end95

if.end95:                                         ; preds = %if.end70, %if.end56.if.end95_crit_edge
  %190 = ptrtoint ptr %lcd_table to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %lcd_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp97.not = icmp eq i32 %191, 0
  br i1 %cmp97.not, label %if.end95.if.end100_crit_edge, label %if.then99

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @aty_st_lcd(i32 noundef 1, i32 noundef %lcd_gen_cntrl.0, ptr noundef %1) #6
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end95.if.end100_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aty_ld_lcd(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aty_st_lcd(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty_var_to_pll_ct(ptr nocapture noundef readonly %info, i32 noundef %vclk_per, i32 noundef %bpp, ptr nocapture noundef %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ref_clk_per.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ref_clk_per.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_clk_per.i, align 4
  %4 = ptrtoint ptr %pll to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pll, align 4
  %conv.i = zext i8 %5 to i32
  %mul.i = shl i32 %3, 2
  %mul2.i = mul i32 %mul.i, %conv.i
  %div.i = udiv i32 %mul2.i, %vclk_per
  %6 = add i32 %div.i, -2041
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1913, i32 %6)
  %7 = icmp ult i32 %6, -1913
  br i1 %7, label %aty_valid_pll_ct.exit, label %if.else.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %div.i)
  %cmp6.i = icmp ult i32 %div.i, 1024
  %vclk_post_div.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div.i)
  %cmp9.i = icmp ult i32 %div.i, 512
  %conv10.i = zext i1 %cmp9.i to i8
  %conv12.i = zext i1 %cmp6.i to i8
  %add.i = add nuw nsw i8 %conv12.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i)
  %cmp14.i = icmp ult i32 %div.i, 256
  %conv15.i = zext i1 %cmp14.i to i8
  %add18.i = add nuw nsw i8 %add.i, %conv15.i
  %8 = ptrtoint ptr %vclk_post_div.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %add18.i, ptr %vclk_post_div.i, align 2
  %idxprom.i = zext i8 %add18.i to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @aty_postdividers, i32 0, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %vclk_post_div_real.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 21
  %11 = ptrtoint ptr %vclk_post_div_real.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %vclk_post_div_real.i, align 4
  %conv22.i = zext i8 %10 to i32
  %mul23.i = mul nuw nsw i32 %div.i, %conv22.i
  %div2473.i = lshr i32 %mul23.i, 3
  %conv25.i = trunc i32 %div2473.i to i8
  %vclk_fb_div.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 7
  %12 = ptrtoint ptr %vclk_fb_div.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv25.i, ptr %vclk_fb_div.i, align 1
  %13 = ptrtoint ptr %ref_clk_per.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_clk_per.i, align 4
  %pll_vclk_cntl.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 5
  %15 = ptrtoint ptr %pll_vclk_cntl.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %pll_vclk_cntl.i, align 1
  %ecp_max.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 8, i32 8
  %16 = ptrtoint ptr %ecp_max.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ecp_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.else.i.if.end_crit_edge, label %if.then34.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv27.i = and i32 %div2473.i, 255
  %mul28.i = mul nuw nsw i32 %conv27.i, 2000000
  %mul32.i = mul i32 %14, %conv.i
  %div33.i = udiv i32 %mul28.i, %mul32.i
  %div37.i = udiv i32 %div33.i, %conv22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div37.i, i32 %17)
  %cmp4075.i = icmp sgt i32 %div37.i, %17
  %18 = lshr i32 %div37.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %17)
  %cmp40.i.peel = icmp sgt i32 %18, %17
  %spec.select = select i1 %cmp40.i.peel, i8 35, i8 19
  %ecp_div.0.lcssa.i = select i1 %cmp4075.i, i8 %spec.select, i8 3
  %19 = ptrtoint ptr %pll_vclk_cntl.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %ecp_div.0.lcssa.i, ptr %pll_vclk_cntl.i, align 1
  br label %if.end

aty_valid_pll_ct.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %if.then34.i, %if.else.i.if.end_crit_edge
  %features = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 4
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %mclk_fb_div.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 2
  %22 = ptrtoint ptr %mclk_fb_div.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mclk_fb_div.i, align 2
  %conv.i12 = zext i8 %23 to i32
  %24 = ptrtoint ptr %vclk_post_div_real.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vclk_post_div_real.i, align 4
  %conv1.i = zext i8 %25 to i32
  %mul.i14 = mul nuw nsw i32 %conv1.i, %conv.i12
  %26 = ptrtoint ptr %vclk_fb_div.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vclk_fb_div.i, align 1
  %conv2.i = zext i8 %27 to i32
  %xclk_ref_div.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 17
  %28 = ptrtoint ptr %xclk_ref_div.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %xclk_ref_div.i, align 4
  %conv3.i = zext i8 %29 to i32
  %xclkmaxrasdelay.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 16
  %30 = ptrtoint ptr %xclkmaxrasdelay.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xclkmaxrasdelay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %bpp)
  %cmp.i = icmp ugt i32 %bpp, 7
  %shr.i = lshr i32 %bpp, 2
  %mul6.i = select i1 %cmp.i, i32 %shr.i, i32 1
  %mul4.i = mul i32 %mul6.i, %conv2.i
  %divider.0.i = mul i32 %mul4.i, %conv3.i
  %xclk_post_div.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 18
  %32 = ptrtoint ptr %xclk_post_div.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %xclk_post_div.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bpp)
  %cmp9.i16 = icmp eq i32 %bpp, 0
  %.pn.i = select i1 %cmp9.i16, i8 3, i8 4
  %vshift.0.i = sub i8 %.pn.i, %33
  %xres.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 23
  %34 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xres.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp13.not.i = icmp eq i32 %35, 0
  br i1 %cmp13.not.i, label %land.lhs.true.if.end27.i_crit_edge, label %if.then15.i

land.lhs.true.if.end27.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then15.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %par1, align 4
  %lcd_width.i = getelementptr inbounds %struct.atyfb_par, ptr %37, i32 0, i32 30
  %38 = ptrtoint ptr %lcd_width.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %lcd_width.i, align 4
  %conv17.i = zext i16 %39 to i32
  %mul18.i = mul nuw i32 %mul.i14, %conv17.i
  %mul20.i = mul i32 %35, %divider.0.i
  %and.i = and i32 %mul20.i, -8
  %mul23.i17 = mul i32 %31, %conv17.i
  %and26.i = and i32 %35, -8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then15.i, %land.lhs.true.if.end27.i_crit_edge
  %multiplier.0.i = phi i32 [ %mul18.i, %if.then15.i ], [ %mul.i14, %land.lhs.true.if.end27.i_crit_edge ]
  %divider.1.i = phi i32 [ %and.i, %if.then15.i ], [ %divider.0.i, %land.lhs.true.if.end27.i_crit_edge ]
  %ras_multiplier.0.i = phi i32 [ %mul23.i17, %if.then15.i ], [ %31, %land.lhs.true.if.end27.i_crit_edge ]
  %ras_divider.0.i = phi i32 [ %and26.i, %if.then15.i ], [ 1, %land.lhs.true.if.end27.i_crit_edge ]
  %or1.i = or i32 %divider.1.i, %multiplier.0.i
  %and282.i = and i32 %or1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282.i)
  %cmp293.i = icmp eq i32 %and282.i, 0
  br i1 %cmp293.i, label %if.end27.i.while.body.i18_crit_edge, label %if.end27.i.while.end.i19_crit_edge

if.end27.i.while.end.i19_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i19

if.end27.i.while.body.i18_crit_edge:              ; preds = %if.end27.i
  br label %while.body.i18

while.body.i18:                                   ; preds = %while.body.i18.while.body.i18_crit_edge, %if.end27.i.while.body.i18_crit_edge
  %divider.25.i = phi i32 [ %shr32.i, %while.body.i18.while.body.i18_crit_edge ], [ %divider.1.i, %if.end27.i.while.body.i18_crit_edge ]
  %multiplier.14.i = phi i32 [ %shr31.i, %while.body.i18.while.body.i18_crit_edge ], [ %multiplier.0.i, %if.end27.i.while.body.i18_crit_edge ]
  %shr31.i = lshr i32 %multiplier.14.i, 1
  %shr32.i = lshr i32 %divider.25.i, 1
  %or.i = or i32 %shr31.i, %shr32.i
  %and28.i = and i32 %or.i, 1
  %cmp29.i = icmp eq i32 %and28.i, 0
  br i1 %cmp29.i, label %while.body.i18.while.body.i18_crit_edge, label %while.body.i18.while.end.i19_crit_edge

while.body.i18.while.end.i19_crit_edge:           ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i19

while.body.i18.while.body.i18_crit_edge:          ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i18

while.end.i19:                                    ; preds = %while.body.i18.while.end.i19_crit_edge, %if.end27.i.while.end.i19_crit_edge
  %multiplier.1.lcssa.i = phi i32 [ %multiplier.0.i, %if.end27.i.while.end.i19_crit_edge ], [ %shr31.i, %while.body.i18.while.end.i19_crit_edge ]
  %divider.2.lcssa.i = phi i32 [ %divider.1.i, %if.end27.i.while.end.i19_crit_edge ], [ %shr32.i, %while.body.i18.while.end.i19_crit_edge ]
  %fifo_size.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 14
  %40 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fifo_size.i, align 4
  %mul33.i = mul i32 %41, %multiplier.1.lcssa.i
  %conv34.i = zext i8 %vshift.0.i to i32
  %shl.i = shl i32 %mul33.i, %conv34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %divider.2.lcssa.i, i32 %shl.i)
  %tobool.not7.i = icmp ugt i32 %divider.2.lcssa.i, %shl.i
  br i1 %tobool.not7.i, label %while.end.i19.for.end.i_crit_edge, label %for.body.preheader.i

while.end.i19.for.end.i_crit_edge:                ; preds = %while.end.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.preheader.i:                             ; preds = %while.end.i19
  %div.i20 = udiv i32 %shl.i, %divider.2.lcssa.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %dsp_precision.09.i = phi i8 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ -5, %for.body.preheader.i ]
  %tmp.08.i = phi i32 [ %shr35.i, %for.body.i.for.body.i_crit_edge ], [ %div.i20, %for.body.preheader.i ]
  %shr35.i = lshr i32 %tmp.08.i, 1
  %inc.i = add nsw i8 %dsp_precision.09.i, 1
  %tobool.not.i21 = icmp ult i32 %tmp.08.i, 2
  br i1 %tobool.not.i21, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.end.i19.for.end.i_crit_edge
  %dsp_precision.0.lcssa.i = phi i8 [ -5, %while.end.i19.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %42 = tail call i8 @llvm.smin.i8(i8 %dsp_precision.0.lcssa.i, i8 7) #6
  %43 = tail call i8 @llvm.smax.i8(i8 %42, i8 0) #6
  %dsp_precision.1.i = zext i8 %43 to i32
  %conv48.i = sub nsw i32 6, %dsp_precision.1.i
  %conv49.i = and i32 %conv48.i, 255
  %44 = trunc i32 %conv48.i to i8
  %conv51.i = add i8 %vshift.0.i, %44
  %sub53.i = add i32 %41, -1
  %mul54.i = mul i32 %sub53.i, %multiplier.1.lcssa.i
  %conv55.i = zext i8 %conv51.i to i32
  %shl56.i = shl i32 %mul54.i, %conv55.i
  %div57.i = udiv i32 %shl56.i, %divider.2.lcssa.i
  %sub60.i = sub nsw i32 %conv55.i, %conv49.i
  %shl61.neg.i = shl nsw i32 -1, %sub60.i
  %sub62.i = add i32 %shl61.neg.i, %div57.i
  %shl64.i = shl i32 %multiplier.1.lcssa.i, %conv55.i
  %add65.i = add i32 %shl64.i, %divider.2.lcssa.i
  %div66.i = udiv i32 %add65.i, %divider.2.lcssa.i
  %shl68.i = shl i32 %ras_multiplier.0.i, %conv49.i
  %add69.i = add i32 %shl68.i, %ras_divider.0.i
  %div70.i = udiv i32 %add69.i, %ras_divider.0.i
  %45 = tail call i32 @llvm.umax.i32(i32 %div66.i, i32 %div70.i) #6
  %mul75.i = shl i32 %div70.i, 1
  %xclkpagefaultdelay.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 15
  %46 = ptrtoint ptr %xclkpagefaultdelay.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xclkpagefaultdelay.i, align 4
  %shl78.i = shl i32 %47, %conv49.i
  %sub81.i = sub nuw nsw i32 7, %dsp_precision.1.i
  %notmask.i = shl nsw i32 -1, %sub81.i
  %sub83.i = ashr i32 %notmask.i, 1
  %shr84.i = xor i32 %sub83.i, -1
  %add76.i = add i32 %45, %mul75.i
  %add79.i = add i32 %add76.i, %shr84.i
  %add85.i = add i32 %add79.i, %shl78.i
  %add86.i = sub nsw i32 0, %sub83.i
  %48 = urem i32 %add85.i, %add86.i
  %mul89.i = sub i32 %add85.i, %48
  %49 = urem i32 %sub62.i, %add86.i
  %mul93.i = sub i32 %sub62.i, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89.i, i32 %mul93.i)
  %cmp94.not.i = icmp ult i32 %mul89.i, %mul93.i
  br i1 %cmp94.not.i, label %for.end.i.aty_dsp_gt.exit_crit_edge, label %if.then96.i

for.end.i.aty_dsp_gt.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aty_dsp_gt.exit

if.then96.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %div99.i = udiv i32 %shl64.i, %divider.2.lcssa.i
  %sub100.i = sub i32 %sub62.i, %div99.i
  %50 = urem i32 %sub100.i, %add86.i
  %mul104.i = sub i32 %sub100.i, %50
  br label %aty_dsp_gt.exit

aty_dsp_gt.exit:                                  ; preds = %if.then96.i, %for.end.i.aty_dsp_gt.exit_crit_edge
  %dsp_on.1.i = phi i32 [ %mul104.i, %if.then96.i ], [ %mul89.i, %for.end.i.aty_dsp_gt.exit_crit_edge ]
  %add107.i = add nuw nsw i32 %conv55.i, 5
  %shl108.i = shl i32 %multiplier.1.lcssa.i, %add107.i
  %add109.i = add i32 %shl108.i, %divider.2.lcssa.i
  %div110.i = udiv i32 %add109.i, %divider.2.lcssa.i
  %shl111.i = shl i32 %dsp_on.1.i, 16
  %add112.i = add i32 %shl111.i, %sub62.i
  %dsp_on_off.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 12
  %51 = ptrtoint ptr %dsp_on_off.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add112.i, ptr %dsp_on_off.i, align 4
  %shl114.i = shl nuw nsw i32 %dsp_precision.1.i, 20
  %dsp_loop_latency.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 13
  %52 = ptrtoint ptr %dsp_loop_latency.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dsp_loop_latency.i, align 4
  %shl115.i = shl i32 %53, 16
  %or116.i = or i32 %div110.i, %shl114.i
  %or117.i = or i32 %or116.i, %shl115.i
  %dsp_config.i = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 11
  %54 = ptrtoint ptr %dsp_config.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or117.i, ptr %dsp_config.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %aty_dsp_gt.exit, %if.end.cleanup_crit_edge, %aty_valid_pll_ct.exit
  %retval.0 = phi i32 [ -22, %aty_valid_pll_ct.exit ], [ 0, %aty_dsp_gt.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aty_pll_to_var_ct(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ref_clk_per = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ref_clk_per to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_clk_per, align 4
  %4 = ptrtoint ptr %pll to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pll, align 4
  %conv = zext i8 %5 to i32
  %mul = mul i32 %3, %conv
  %vclk_post_div_real = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 21
  %6 = ptrtoint ptr %vclk_post_div_real to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vclk_post_div_real, align 4
  %conv2 = zext i8 %7 to i32
  %mul3 = mul i32 %mul, %conv2
  %vclk_fb_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 7
  %8 = ptrtoint ptr %vclk_fb_div to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vclk_fb_div, align 1
  %conv4 = zext i8 %9 to i32
  %div = udiv i32 %mul3, %conv4
  %div518 = lshr i32 %div, 1
  %xres = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 23
  %10 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lcd_width = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %lcd_width to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %lcd_width, align 4
  %conv7 = zext i16 %13 to i32
  %mul8 = mul i32 %div518, %conv7
  %div10 = udiv i32 %mul8, %11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %div10, %if.then ], [ %div518, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aty_get_pll_ct(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %5 = and i8 %4, 3
  %shl = shl nuw nsw i8 %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 24) #6, !srcloc !35
  %8 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %9, i32 146
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %shr = lshr i8 %10, %shl
  %and8 = and i8 %shr, 3
  %vclk_post_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 6
  %11 = ptrtoint ptr %vclk_post_div to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and8, ptr %vclk_post_div, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %13, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i46, i8 44) #6, !srcloc !35
  %14 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3.i47 = getelementptr i8, ptr %15, i32 146
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i47) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %17 = and i8 %16, 15
  %pll_ext_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 8
  %18 = ptrtoint ptr %pll_ext_cntl to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %pll_ext_cntl, align 4
  %narrow = shl nuw nsw i8 %5, 2
  %conv.i = add nuw nsw i8 %narrow, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %20, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i49, i8 %conv.i) #6, !srcloc !35
  %21 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3.i50 = getelementptr i8, ptr %22, i32 146
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i50) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %vclk_fb_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 7
  %24 = ptrtoint ptr %vclk_fb_div to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %vclk_fb_div, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %26, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i52, i8 8) #6, !srcloc !35
  %27 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3.i53 = getelementptr i8, ptr %28, i32 146
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i53) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %30 = ptrtoint ptr %pll to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %pll, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %32, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i55, i8 16) #6, !srcloc !35
  %33 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3.i56 = getelementptr i8, ptr %34, i32 146
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i56) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %mclk_fb_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 2
  %36 = ptrtoint ptr %mclk_fb_div to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %mclk_fb_div, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %38, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i58, i8 12) #6, !srcloc !35
  %39 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3.i59 = getelementptr i8, ptr %40, i32 146
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i59) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %pll_gen_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 1
  %42 = ptrtoint ptr %pll_gen_cntl to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %pll_gen_cntl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %44, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i61, i8 20) #6, !srcloc !35
  %45 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i3.i62 = getelementptr i8, ptr %46, i32 146
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i62) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %pll_vclk_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 5
  %48 = ptrtoint ptr %pll_vclk_cntl to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %pll_vclk_cntl, align 1
  %features = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %49 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %features, align 4
  %and23 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %52, i32 32
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #6, !srcloc !38
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %dsp_config = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 11
  %55 = ptrtoint ptr %dsp_config to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dsp_config, align 4
  %56 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %57, i32 36
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #6, !srcloc !38
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %dsp_on_off = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 12
  %60 = ptrtoint ptr %dsp_on_off to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %dsp_on_off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty_init_pll_ct(ptr nocapture noundef readonly %info, ptr noundef %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 44) #6, !srcloc !35
  %4 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 146
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %pll_ext_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 8
  %7 = ptrtoint ptr %pll_ext_cntl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %pll_ext_cntl, align 4
  %8 = and i8 %6, 7
  %xclk_post_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 18
  %9 = ptrtoint ptr %xclk_post_div to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %xclk_post_div, align 1
  %xclk_ref_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 17
  %10 = ptrtoint ptr %xclk_ref_div to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %xclk_ref_div, align 4
  %conv5 = zext i8 %8 to i32
  %11 = zext i32 %conv5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv5, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge396
    i32 2, label %entry.sw.epilog_crit_edge397
    i32 3, label %entry.sw.epilog_crit_edge398
    i32 4, label %sw.bb6
  ]

entry.sw.epilog_crit_edge398:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge397:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge396:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %xclk_ref_div to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %xclk_ref_div, align 4
  %13 = ptrtoint ptr %xclk_post_div to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %xclk_post_div, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv5) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge396, %entry.sw.epilog_crit_edge397, %entry.sw.epilog_crit_edge398
  %mclk_fb_mult = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 3
  %14 = ptrtoint ptr %mclk_fb_mult to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %mclk_fb_mult, align 1
  %15 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %mclk_fb_mult to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %mclk_fb_mult, align 1
  %17 = ptrtoint ptr %xclk_post_div to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %xclk_post_div, align 1
  %sub = add i8 %18, -1
  store i8 %sub, ptr %xclk_post_div, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %19 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 176
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !38
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %and20 = lshr i32 %22, 8
  %shr = and i32 %and20, 3
  %and21 = lshr i32 %22, 10
  %shr22 = and i32 %and21, 3
  %and23 = lshr i32 %22, 12
  %shr24 = and i32 %and23, 1
  %add = add nuw nsw i32 %shr22, %shr24
  %add25 = add nuw nsw i32 %add, %shr
  %add26 = add nuw nsw i32 %add25, 2
  %xclkpagefaultdelay = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 15
  %23 = ptrtoint ptr %xclkpagefaultdelay to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add26, ptr %xclkpagefaultdelay, align 4
  %and27 = lshr i32 %22, 16
  %shr28 = and i32 %and27, 7
  %add29 = add nuw nsw i32 %shr28, %shr
  %add30 = add nuw nsw i32 %add29, 2
  %xclkmaxrasdelay = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 16
  %24 = ptrtoint ptr %xclkmaxrasdelay to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add30, ptr %xclkmaxrasdelay, align 4
  %features = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %features, align 4
  %and31 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add36 = add nuw nsw i32 %add25, 4
  %27 = ptrtoint ptr %xclkpagefaultdelay to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add36, ptr %xclkpagefaultdelay, align 4
  %add38 = add nuw nsw i32 %add29, 5
  %28 = ptrtoint ptr %xclkmaxrasdelay to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add38, ptr %xclkmaxrasdelay, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.end.if.end39_crit_edge
  %.sink = phi i32 [ 24, %if.else ], [ 32, %if.end.if.end39_crit_edge ]
  %29 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 14
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %ram_type = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %ram_type to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ram_type, align 1
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %32, label %sw.default77 [
    i8 1, label %sw.bb41
    i8 2, label %if.end39.sw.bb49_crit_edge
    i8 3, label %if.end39.sw.bb49_crit_edge399
    i8 4, label %sw.bb61
    i8 5, label %sw.bb73
  ]

if.end39.sw.bb49_crit_edge399:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb49

if.end39.sw.bb49_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb49

sw.bb41:                                          ; preds = %if.end39
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %35)
  %cmp = icmp ult i32 %35, 1048577
  %dsp_loop_latency = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 13
  br i1 %cmp, label %if.then43, label %if.else44

if.then43:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %dsp_loop_latency to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 10, ptr %dsp_loop_latency, align 4
  br label %sw.epilog81

if.else44:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dsp_loop_latency to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %dsp_loop_latency, align 4
  %38 = ptrtoint ptr %xclkpagefaultdelay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xclkpagefaultdelay, align 4
  %add47 = add i32 %39, 2
  store i32 %add47, ptr %xclkpagefaultdelay, align 4
  br label %sw.epilog81

sw.bb49:                                          ; preds = %if.end39.sw.bb49_crit_edge, %if.end39.sw.bb49_crit_edge399
  %smem_len51 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %smem_len51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %smem_len51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %41)
  %cmp52 = icmp ult i32 %41, 1048577
  %dsp_loop_latency55 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 13
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %dsp_loop_latency55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 9, ptr %dsp_loop_latency55, align 4
  br label %sw.epilog81

if.else56:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %dsp_loop_latency55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %dsp_loop_latency55, align 4
  %44 = ptrtoint ptr %xclkpagefaultdelay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xclkpagefaultdelay, align 4
  %add59 = add i32 %45, 1
  store i32 %add59, ptr %xclkpagefaultdelay, align 4
  br label %sw.epilog81

sw.bb61:                                          ; preds = %if.end39
  %smem_len63 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %smem_len63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %smem_len63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %47)
  %cmp64 = icmp ult i32 %47, 1048577
  %dsp_loop_latency67 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 13
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %dsp_loop_latency67 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 11, ptr %dsp_loop_latency67, align 4
  br label %sw.epilog81

if.else68:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %dsp_loop_latency67 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 10, ptr %dsp_loop_latency67, align 4
  %50 = ptrtoint ptr %xclkpagefaultdelay to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %xclkpagefaultdelay, align 4
  %add71 = add i32 %51, 1
  store i32 %add71, ptr %xclkpagefaultdelay, align 4
  br label %sw.epilog81

sw.bb73:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %dsp_loop_latency74 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 13
  %52 = ptrtoint ptr %dsp_loop_latency74 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %dsp_loop_latency74, align 4
  %53 = ptrtoint ptr %xclkpagefaultdelay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %xclkpagefaultdelay, align 4
  %add76 = add i32 %54, 3
  store i32 %add76, ptr %xclkpagefaultdelay, align 4
  br label %sw.epilog81

sw.default77:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %dsp_loop_latency78 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 13
  %55 = ptrtoint ptr %dsp_loop_latency78 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 11, ptr %dsp_loop_latency78, align 4
  %56 = ptrtoint ptr %xclkpagefaultdelay to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %xclkpagefaultdelay, align 4
  %add80 = add i32 %57, 3
  store i32 %add80, ptr %xclkpagefaultdelay, align 4
  br label %sw.epilog81

sw.epilog81:                                      ; preds = %sw.default77, %sw.bb73, %if.else68, %if.then66, %if.else56, %if.then54, %if.else44, %if.then43
  %58 = ptrtoint ptr %xclkmaxrasdelay to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %xclkmaxrasdelay, align 4
  %60 = ptrtoint ptr %xclkpagefaultdelay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %xclkpagefaultdelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp84.not = icmp ugt i32 %59, %61
  br i1 %cmp84.not, label %sw.epilog81.if.end90_crit_edge, label %if.then86

sw.epilog81.if.end90_crit_edge:                   ; preds = %sw.epilog81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then86:                                        ; preds = %sw.epilog81
  call void @__sanitizer_cov_trace_pc() #8
  %add88 = add i32 %61, 1
  %62 = ptrtoint ptr %xclkmaxrasdelay to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add88, ptr %xclkmaxrasdelay, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %sw.epilog81.if.end90_crit_edge
  %63 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i375 = getelementptr i8, ptr %64, i32 32
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i375) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %66 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i377 = getelementptr i8, ptr %67, i32 36
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i377) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %69 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i379 = getelementptr i8, ptr %70, i32 76
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i379) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %72 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i381 = getelementptr i8, ptr %73, i32 80
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i381) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool95.not = icmp eq i32 %65, 0
  br i1 %tobool95.not, label %if.end90.if.end100_crit_edge, label %if.then96

if.end90.if.end100_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then96:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %75 = lshr i32 %65, 8
  %shr98 = and i32 %75, 15
  %dsp_loop_latency99 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 13
  %76 = ptrtoint ptr %dsp_loop_latency99 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr98, ptr %dsp_loop_latency99, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %if.end90.if.end100_crit_edge
  %mclk_per = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 12
  %77 = ptrtoint ptr %mclk_per to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mclk_per, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp101 = icmp eq i32 %78, 0
  br i1 %cmp101, label %if.then103, label %if.end118

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i383 = getelementptr i8, ptr %80, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i383, i8 8) #6, !srcloc !35
  %81 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i3.i384 = getelementptr i8, ptr %82, i32 146
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i384) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %84 = ptrtoint ptr %pll to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %pll, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i386 = getelementptr i8, ptr %86, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i386, i8 44) #6, !srcloc !35
  %87 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i3.i387 = getelementptr i8, ptr %88, i32 146
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i387) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %90 = and i8 %89, 7
  %and108 = zext i8 %90 to i32
  %arrayidx = getelementptr [8 x i8], ptr @aty_postdividers, i32 0, i32 %and108
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx, align 1
  %xclk_post_div_real = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 20
  %93 = ptrtoint ptr %xclk_post_div_real to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %xclk_post_div_real, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %94 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i389 = getelementptr i8, ptr %95, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i389, i8 16) #6, !srcloc !35
  %96 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i3.i390 = getelementptr i8, ptr %97, i32 146
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i390) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %and111 = lshr i8 %89, 3
  %and111.lobit = and i8 %and111, 1
  %spec.select = shl i8 %98, %and111.lobit
  %mclk_fb_div117 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 2
  %99 = ptrtoint ptr %mclk_fb_div117 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %spec.select, ptr %mclk_fb_div117, align 2
  br label %cleanup

if.end118:                                        ; preds = %if.end100
  %pll_per = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 11
  %100 = ptrtoint ptr %pll_per to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pll_per, align 4
  %mul119 = mul i32 %101, 510
  %ref_clk_per = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 10
  %102 = ptrtoint ptr %ref_clk_per to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ref_clk_per, align 4
  %div = udiv i32 %mul119, %103
  %conv120 = trunc i32 %div to i8
  %104 = ptrtoint ptr %pll to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv120, ptr %pll, align 4
  %105 = load i32, ptr %ref_clk_per, align 4
  %conv124 = shl i32 %div, 3
  %mul125 = and i32 %conv124, 2040
  %mul126 = mul i32 %mul125, %105
  %106 = ptrtoint ptr %mclk_fb_mult to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %mclk_fb_mult, align 1
  %conv128 = zext i8 %107 to i32
  %xclk_per = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 13
  %108 = ptrtoint ptr %xclk_per to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %xclk_per, align 4
  %mul129 = mul i32 %109, %conv128
  %div130 = udiv i32 %mul126, %mul129
  %110 = add i32 %div130, -2041
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1913, i32 %110)
  %111 = icmp ult i32 %110, -1913
  br i1 %111, label %do.end138, label %if.else141

do.end138:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.else141:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %div130)
  %cmp142 = icmp ult i32 %div130, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div130)
  %cmp145 = icmp ult i32 %div130, 512
  %conv146 = zext i1 %cmp145 to i8
  %conv147 = zext i1 %cmp142 to i8
  %add148 = add nuw nsw i8 %conv147, %conv146
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div130)
  %cmp150 = icmp ult i32 %div130, 256
  %conv151 = zext i1 %cmp150 to i8
  %add153 = add nuw nsw i8 %add148, %conv151
  %idxprom = zext i8 %add153 to i32
  %arrayidx156 = getelementptr [8 x i8], ptr @aty_postdividers, i32 0, i32 %idxprom
  %112 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx156, align 1
  %xclk_post_div_real157 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 20
  %114 = ptrtoint ptr %xclk_post_div_real157 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %xclk_post_div_real157, align 1
  %conv159 = zext i8 %113 to i32
  %mul160 = mul nuw nsw i32 %div130, %conv159
  %div161371 = lshr i32 %mul160, 3
  %conv162 = trunc i32 %div161371 to i8
  %mclk_fb_div163 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 2
  %115 = ptrtoint ptr %mclk_fb_div163 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv162, ptr %mclk_fb_div163, align 2
  %116 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %features, align 4
  %and165 = and i32 %117, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.else141.if.else172_crit_edge, label %land.lhs.true

if.else141.if.else172_crit_edge:                  ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else172

land.lhs.true:                                    ; preds = %if.else141
  %118 = ptrtoint ptr %ram_type to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ram_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %119)
  %cmp169 = icmp ugt i8 %119, 3
  br i1 %cmp169, label %land.lhs.true.if.end174_crit_edge, label %land.lhs.true.if.else172_crit_edge

land.lhs.true.if.else172_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else172

land.lhs.true.if.end174_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.else172:                                       ; preds = %land.lhs.true.if.else172_crit_edge, %if.else141.if.else172_crit_edge
  br label %if.end174

if.end174:                                        ; preds = %if.else172, %land.lhs.true.if.end174_crit_edge
  %.sink395 = phi i8 [ -124, %if.else172 ], [ 4, %land.lhs.true.if.end174_crit_edge ]
  %pll_gen_cntl173 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 1
  %120 = ptrtoint ptr %pll_gen_cntl173 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %.sink395, ptr %pll_gen_cntl173, align 1
  %121 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %features, align 4
  %and176 = and i32 %122, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  %add153. = select i1 %tobool177.not, i8 %add153, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %107)
  %cmp185 = icmp eq i8 %107, 4
  %123 = or i8 %add153., 8
  %spec.select394 = select i1 %cmp185, i8 %123, i8 %add153.
  %124 = ptrtoint ptr %pll_ext_cntl to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %spec.select394, ptr %pll_ext_cntl, align 4
  %125 = ptrtoint ptr %mclk_per to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mclk_per, align 4
  %127 = ptrtoint ptr %xclk_per to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %xclk_per, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp194 = icmp eq i32 %126, %128
  br i1 %cmp194, label %if.then196, label %if.else203

if.then196:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %shl198 = shl nuw nsw i8 %add153, 4
  %pll_gen_cntl199 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 1
  %129 = ptrtoint ptr %pll_gen_cntl199 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %pll_gen_cntl199, align 1
  %or201 = or i8 %130, %shl198
  store i8 %or201, ptr %pll_gen_cntl199, align 1
  br label %if.end250

if.else203:                                       ; preds = %if.end174
  %pll_gen_cntl204 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 1
  %131 = ptrtoint ptr %pll_gen_cntl204 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %pll_gen_cntl204, align 1
  %133 = or i8 %132, 96
  store i8 %133, ptr %pll_gen_cntl204, align 1
  %134 = ptrtoint ptr %ref_clk_per to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ref_clk_per, align 4
  %conv210 = shl i32 %div, 2
  %mul211 = and i32 %conv210, 1020
  %mul212 = mul i32 %mul211, %135
  %136 = ptrtoint ptr %mclk_per to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mclk_per, align 4
  %div214 = udiv i32 %mul212, %137
  %138 = add i32 %div214, -2041
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1913, i32 %138)
  %139 = icmp ult i32 %138, -1913
  br i1 %139, label %do.end223, label %if.else226

do.end223:                                        ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #8
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.else226:                                       ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %div214)
  %cmp227 = icmp ult i32 %div214, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div214)
  %cmp230 = icmp ult i32 %div214, 512
  %conv231 = zext i1 %cmp230 to i32
  %conv232 = zext i1 %cmp227 to i32
  %add233 = add nuw nsw i32 %conv232, %conv231
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div214)
  %cmp235 = icmp ult i32 %div214, 256
  %conv236 = zext i1 %cmp235 to i32
  %add238 = add nuw nsw i32 %add233, %conv236
  %arrayidx242 = getelementptr [8 x i8], ptr @aty_postdividers, i32 0, i32 %add238
  %140 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx242, align 1
  %conv243 = zext i8 %141 to i32
  %mul244 = mul nuw nsw i32 %div214, %conv243
  %div245372 = lshr i32 %mul244, 3
  %conv246 = trunc i32 %div245372 to i8
  %sclk_fb_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 4
  %142 = ptrtoint ptr %sclk_fb_div to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv246, ptr %sclk_fb_div, align 4
  %add238.tr = trunc i32 %add238 to i8
  %conv249 = shl nuw nsw i8 %add238.tr, 4
  %spll_cntl2 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 10
  %143 = ptrtoint ptr %spll_cntl2 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv249, ptr %spll_cntl2, align 2
  br label %if.end250

if.end250:                                        ; preds = %if.else226, %if.then196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %144 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i392 = getelementptr i8, ptr %145, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i392, i8 100) #6, !srcloc !35
  %146 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i3.i393 = getelementptr i8, ptr %147, i32 146
  %148 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i393) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %ext_vpll_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 9
  %149 = and i8 %148, -29
  %150 = ptrtoint ptr %ext_vpll_cntl to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %ext_vpll_cntl, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end250, %do.end223, %do.end138, %if.then103, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then103 ], [ -22, %do.end138 ], [ 0, %if.end250 ], [ -22, %do.end223 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aty_resume_pll_ct(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %mclk_per = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %mclk_per to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_per, align 4
  %xclk_per = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %xclk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xclk_per, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sclk_fb_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 4
  %6 = ptrtoint ptr %sclk_fb_div to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sclk_fb_div, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 86) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %11, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i, i8 %7) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %13, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i, i8 84) #6, !srcloc !35
  %spll_cntl2 = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 10
  %14 = ptrtoint ptr %spll_cntl2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %spll_cntl2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %17, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i17, i8 94) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i12.i18 = getelementptr i8, ptr %19, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i18, i8 %15) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i14.i19 = getelementptr i8, ptr %21, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i19, i8 92) #6, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %pll to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pll, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %ati_regbase.i.i20 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %30, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i21, i8 10) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i12.i22 = getelementptr i8, ptr %32, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i22, i8 %28) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i14.i23 = getelementptr i8, ptr %34, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i23, i8 8) #6, !srcloc !35
  %pll_gen_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 1
  %35 = ptrtoint ptr %pll_gen_cntl to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pll_gen_cntl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %38, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i25, i8 14) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i12.i26 = getelementptr i8, ptr %40, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i26, i8 %36) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i14.i27 = getelementptr i8, ptr %42, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i27, i8 12) #6, !srcloc !35
  %mclk_fb_div = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 2
  %43 = ptrtoint ptr %mclk_fb_div to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mclk_fb_div, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %46, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i29, i8 18) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i12.i30 = getelementptr i8, ptr %48, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i30, i8 %44) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i14.i31 = getelementptr i8, ptr %50, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i31, i8 16) #6, !srcloc !35
  %pll_ext_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 8
  %51 = ptrtoint ptr %pll_ext_cntl to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pll_ext_cntl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %54, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i33, i8 46) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i12.i34 = getelementptr i8, ptr %56, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i34, i8 %52) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i14.i35 = getelementptr i8, ptr %58, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i35, i8 44) #6, !srcloc !35
  %ext_vpll_cntl = getelementptr inbounds %struct.pll_ct, ptr %pll, i32 0, i32 9
  %59 = ptrtoint ptr %ext_vpll_cntl to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ext_vpll_cntl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %62, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i37, i8 102) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i12.i38 = getelementptr i8, ptr %64, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i38, i8 %60) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %ati_regbase.i.i20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ati_regbase.i.i20, align 4
  %add.ptr.i14.i39 = getelementptr i8, ptr %66, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i39, i8 100) #6, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @aty_postdividers, !1, !"aty_postdividers", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/mach64_ct.c", i32 118, i32 10}
!2 = !{ptr @aty_dac_ct, !3, !"aty_dac_ct", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/aty/mach64_ct.c", i32 642, i32 26}
!4 = !{ptr @aty_pll_ct, !5, !"aty_pll_ct", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/aty/mach64_ct.c", i32 646, i32 26}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/aty/mach64_ct.c", i32 218, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @aty_valid_pll_ct._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @aty_valid_pll_ct._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/aty/mach64_ct.c", i32 425, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @aty_init_pll_ct._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @aty_init_pll_ct._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/aty/mach64_ct.c", i32 534, i32 3}
!19 = !{ptr @aty_init_pll_ct._entry.5, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @aty_init_pll_ct._entry_ptr.7, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/aty/mach64_ct.c", i32 583, i32 4}
!23 = !{ptr @aty_init_pll_ct._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @aty_init_pll_ct._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2155904824}
!35 = !{i64 4314451}
!36 = !{i64 4314846}
!37 = !{i64 2155904431}
!38 = !{i64 4315066}
!39 = !{i64 2155902854}
!40 = !{i64 2155903247}
!41 = !{i64 4314648}
