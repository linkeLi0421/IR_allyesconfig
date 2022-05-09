; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/radeon_accel.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/radeon_accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
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
%struct.radeonfb_info = type { ptr, %struct.radeon_regs, %struct.radeon_regs, [50 x i8], i32, i32, ptr, ptr, i32, ptr, ptr, i32, [16 x i32], [256 x %struct.anon.86], i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.panel_info, i32, ptr, ptr, i32, i32, ptr, i32, %struct.pll_info, i32, [100 x i32], i32, i32, i32, i32, i32, ptr, %struct.spinlock, %struct.timer_list, i32, [4 x %struct.radeon_i2c_chan] }
%struct.radeon_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.86 = type { i8, i8, i8, i8 }
%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.radeon_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 8, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18]
@__sancov_gen_cov_switch_values.2 = internal global [9 x i64] [i64 7, i64 8, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 16, i64 8, i64 15, i64 16, i64 32]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeonfb_fillrect(ptr noundef %info, ptr noundef %region) local_unnamed_addr #0 align 64 {
entry:
  %modded = alloca %struct.fb_fillrect, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %modded) #4
  %2 = getelementptr inbounds %struct.fb_fillrect, ptr %modded, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fb_fillrect, ptr %modded, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fb_fillrect, ptr %modded, i32 0, i32 3
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %region) #4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call fastcc void @radeon_fixup_offset(ptr noundef %1)
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %yres_virtual, align 4
  %13 = call ptr @memcpy(ptr %modded, ptr %region, i32 24)
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %modded to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %modded, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %19)
  %cmp7.not = icmp ugt i32 %10, %19
  br i1 %cmp7.not, label %lor.lhs.false8, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %21)
  %cmp9.not = icmp ugt i32 %12, %21
  br i1 %cmp9.not, label %if.end11, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false8
  %add = add i32 %19, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp14 = icmp ugt i32 %add, %10
  br i1 %cmp14, label %if.then15, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 %10, %19
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %3, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end11.if.end18_crit_edge
  %add21 = add i32 %21, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %12)
  %cmp22 = icmp ugt i32 %add21, %12
  br i1 %cmp22, label %if.then23, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %sub25 = sub i32 %12, %21
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub25, ptr %4, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end18.if.end27_crit_edge
  call fastcc void @radeonfb_prim_fillrect(ptr noundef %1, ptr noundef nonnull %modded)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %modded) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_fixup_offset(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 1) #4
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 328
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !9
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %shl = shl i32 %3, 16
  %fb_local_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 8
  %4 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_local_base, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %5)
  %cmp = icmp eq i32 %shl, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %fb_local_base, align 8
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %pitch = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 22
  %7 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pitch, align 4
  %9 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fb_local_base, align 8
  %or = tail call i32 @llvm.fshl.i32(i32 %8, i32 %10, i32 22)
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base, align 8
  %add.ptr6 = getelementptr i8, ptr %13, i32 5856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %11) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pitch, align 4
  %16 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fb_local_base, align 8
  %or14 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %17, i32 22)
  %18 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %19 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base, align 8
  %add.ptr16 = getelementptr i8, ptr %20, i32 5164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %18) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pitch, align 4
  %23 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fb_local_base, align 8
  %or24 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %24, i32 22)
  %25 = tail call i32 @llvm.bswap.i32(i32 %or24)
  %26 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base, align 8
  %add.ptr26 = getelementptr i8, ptr %27, i32 5160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %25) #4, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeonfb_prim_fillrect(ptr noundef %rinfo, ptr nocapture noundef readonly %region) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %dp_gui_master_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 37
  %0 = ptrtoint ptr %dp_gui_master_cntl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dp_gui_master_cntl, align 4
  %or1 = or i32 %1, 15728848
  %2 = tail call i32 @llvm.bswap.i32(i32 %or1)
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %3 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 5228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !12
  %depth = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 24
  %5 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %depth, align 4
  %conv = trunc i32 %6 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %conv)
  %cond = icmp eq i16 %conv, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %color9 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  %7 = ptrtoint ptr %color9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %color9, align 4
  br i1 %cond, label %do.body7, label %do.body3

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 12, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base, align 8
  %add.ptr6 = getelementptr i8, ptr %13, i32 5244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %11) #4, !srcloc !12
  br label %do.body12

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %8)
  %15 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base, align 8
  %add.ptr11 = getelementptr i8, ptr %16, i32 5244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #4, !srcloc !12
  br label %do.body12

do.body12:                                        ; preds = %do.body7, %do.body3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %17 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_base, align 8
  %add.ptr15 = getelementptr i8, ptr %18, i32 5836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -1) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base, align 8
  %add.ptr19 = getelementptr i8, ptr %20, i32 5824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 50331648) #4, !srcloc !12
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base, align 8
  %add.ptr23 = getelementptr i8, ptr %22, i32 5908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 83886080) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_base, align 8
  %add.ptr27 = getelementptr i8, ptr %24, i32 5920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 131328) #4, !srcloc !12
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 1
  %25 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dy, align 4
  %shl = shl i32 %26, 16
  %27 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %region, align 4
  %or30 = or i32 %shl, %28
  %29 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %30 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base, align 8
  %add.ptr32 = getelementptr i8, ptr %31, i32 5176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %29) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 2
  %32 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width, align 4
  %shl35 = shl i32 %33, 16
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 3
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %or36 = or i32 %shl35, %35
  %36 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %37 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base, align 8
  %add.ptr38 = getelementptr i8, ptr %38, i32 5528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %36) #4, !srcloc !12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeonfb_copyarea(ptr noundef %info, ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  %modded = alloca %struct.fb_copyarea, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %modded) #4
  %2 = getelementptr inbounds %struct.fb_copyarea, ptr %modded, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fb_copyarea, ptr %modded, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fb_copyarea, ptr %modded, i32 0, i32 3
  %5 = getelementptr inbounds %struct.fb_copyarea, ptr %modded, i32 0, i32 4
  %6 = getelementptr inbounds %struct.fb_copyarea, ptr %modded, i32 0, i32 5
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %7 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sx, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %5, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %10 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sy, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %6, align 4
  %13 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %area, align 4
  %15 = ptrtoint ptr %modded to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %modded, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %16 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dy, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %2, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %3, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %4, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call fastcc void @radeon_fixup_offset(ptr noundef %1)
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %29 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %31 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not = icmp ne i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp ne i32 %23, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool13.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %8)
  %cmp16.not = icmp ugt i32 %30, %8
  %or.cond90 = select i1 %or.cond, i1 %cmp16.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %11)
  %cmp19.not = icmp ugt i32 %32, %11
  %or.cond91 = select i1 %or.cond90, i1 %cmp19.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %14)
  %cmp22.not = icmp ugt i32 %30, %14
  %or.cond92 = select i1 %or.cond91, i1 %cmp22.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %17)
  %cmp25.not = icmp ugt i32 %32, %17
  %or.cond93 = select i1 %or.cond92, i1 %cmp25.not, i1 false
  br i1 %or.cond93, label %if.end27, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end8
  %add = add i32 %20, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp30 = icmp ugt i32 %add, %30
  br i1 %cmp30, label %if.then31, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 %30, %8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %3, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 4
  %add37 = add i32 %35, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %30)
  %cmp38 = icmp ugt i32 %add37, %30
  br i1 %cmp38, label %if.then39, label %if.end34.if.end43_crit_edge

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %sub41 = sub i32 %30, %14
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub41, ptr %3, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end34.if.end43_crit_edge
  %add46 = add i32 %23, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %32)
  %cmp47 = icmp ugt i32 %add46, %32
  br i1 %cmp47, label %if.then48, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %sub50 = sub i32 %32, %11
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub50, ptr %4, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end43.if.end52_crit_edge
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %4, align 4
  %add55 = add i32 %39, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %32)
  %cmp56 = icmp ugt i32 %add55, %32
  br i1 %cmp56, label %if.then57, label %if.end52.if.end61_crit_edge

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %sub59 = sub i32 %32, %17
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub59, ptr %4, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end52.if.end61_crit_edge
  call fastcc void @radeonfb_prim_copyarea(ptr noundef %1, ptr noundef nonnull %modded)
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end8.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %modded) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeonfb_prim_copyarea(ptr noundef %rinfo, ptr nocapture noundef readonly %area) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %4 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %area, align 4
  %dy2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %6 = ptrtoint ptr %dy2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dy2, align 4
  %sx3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %8 = ptrtoint ptr %sx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sx3, align 4
  %sy4 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %10 = ptrtoint ptr %sy4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sy4, align 4
  %sub = sub i32 %9, %5
  %sub5 = sub i32 %11, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %sub6 = add i32 %1, -1
  %add = select i1 %cmp, i32 %sub6, i32 0
  %sx.0 = add i32 %add, %9
  %dx.0 = add i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp9 = icmp slt i32 %sub5, 0
  %sub11 = add i32 %3, -1
  %add12 = select i1 %cmp9, i32 %sub11, i32 0
  %sy.0 = add i32 %add12, %11
  %dy.0 = add i32 %add12, %7
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %dp_gui_master_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 37
  %12 = ptrtoint ptr %dp_gui_master_cntl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_gui_master_cntl, align 4
  %or18 = or i32 %13, 46936304
  %14 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %15 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 5228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %17 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_base, align 8
  %add.ptr23 = getelementptr i8, ptr %18, i32 5836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 -1) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %19 = xor i32 %sub, -1
  %sub.lobit.not = lshr i32 %19, 31
  %20 = lshr i32 %sub5, 30
  %21 = and i32 %20, 2
  %22 = or i32 %21, %sub.lobit.not
  %or30 = shl nuw nsw i32 %22, 24
  %23 = xor i32 %or30, 33554432
  %24 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base, align 8
  %add.ptr32 = getelementptr i8, ptr %25, i32 5824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %23) #4, !srcloc !12
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base, align 8
  %add.ptr37 = getelementptr i8, ptr %27, i32 5908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 83886080) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_base, align 8
  %add.ptr42 = getelementptr i8, ptr %29, i32 5920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 131328) #4, !srcloc !12
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %shl = shl i32 %sy.0, 16
  %or46 = or i32 %shl, %sx.0
  %30 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %31 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base, align 8
  %add.ptr48 = getelementptr i8, ptr %32, i32 5172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %30) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %shl52 = shl i32 %dy.0, 16
  %or53 = or i32 %shl52, %dx.0
  %33 = tail call i32 @llvm.bswap.i32(i32 %or53)
  %34 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base, align 8
  %add.ptr55 = getelementptr i8, ptr %35, i32 5176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %33) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %shl59 = shl i32 %3, 16
  %or60 = or i32 %shl59, %1
  %36 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %37 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base, align 8
  %add.ptr62 = getelementptr i8, ptr %38, i32 5180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %36) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeonfb_imageblit(ptr noundef %info, ptr noundef %image) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  tail call void @_radeon_engine_idle(ptr noundef %3) #4
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_radeon_engine_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeonfb_sync(ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  tail call void @_radeon_engine_idle(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeonfb_engine_reset(ptr noundef %rinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_engine_flush(ptr noundef %rinfo) #4
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %call2 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 18) #4
  %or7 = or i32 %call2, 4128768
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 18, i32 noundef %or7) #4
  %3 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_base, align 8
  %add.ptr11 = getelementptr i8, ptr %4, i32 304
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 8
  %add.ptr18 = getelementptr i8, ptr %7, i32 240
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #4, !srcloc !9
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %do.body83 [
    i8 11, label %entry.if.then_crit_edge
    i8 13, label %entry.if.then_crit_edge217
    i8 12, label %entry.if.then_crit_edge218
    i8 14, label %entry.if.then_crit_edge219
    i8 15, label %entry.if.then_crit_edge220
    i8 16, label %entry.if.then_crit_edge221
    i8 18, label %entry.if.then_crit_edge222
  ]

entry.if.then_crit_edge222:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge221:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge220:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge219:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge218:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge217:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge217, %entry.if.then_crit_edge218, %entry.if.then_crit_edge219, %entry.if.then_crit_edge220, %entry.if.then_crit_edge221, %entry.if.then_crit_edge222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %or55 = or i32 %9, 35
  %13 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base, align 8
  %add.ptr57 = getelementptr i8, ptr %15, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %13) #4, !srcloc !12
  %16 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base, align 8
  %add.ptr61 = getelementptr i8, ptr %17, i32 240
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base, align 8
  %add.ptr69 = getelementptr i8, ptr %20, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 0) #4, !srcloc !12
  %21 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base, align 8
  %add.ptr73 = getelementptr i8, ptr %22, i32 13352
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %24 = or i32 %23, 512
  %25 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_base, align 8
  %add.ptr82 = getelementptr i8, ptr %26, i32 13352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %24) #4, !srcloc !12
  br label %do.body114

do.body83:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %or92 = or i32 %9, 127
  %27 = tail call i32 @llvm.bswap.i32(i32 %or92)
  %28 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_base, align 8
  %add.ptr94 = getelementptr i8, ptr %29, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %27) #4, !srcloc !12
  %30 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base, align 8
  %add.ptr98 = getelementptr i8, ptr %31, i32 240
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %and = and i32 %9, -128
  %33 = tail call i32 @llvm.bswap.i32(i32 %and)
  %34 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base, align 8
  %add.ptr106 = getelementptr i8, ptr %35, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %33) #4, !srcloc !12
  %36 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_base, align 8
  %add.ptr110 = getelementptr i8, ptr %37, i32 240
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  br label %do.body114

do.body114:                                       ; preds = %do.body83, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %39 = or i32 %5, 4
  %40 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_base, align 8
  %add.ptr119 = getelementptr i8, ptr %41, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %39) #4, !srcloc !12
  %42 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio_base, align 8
  %add.ptr123 = getelementptr i8, ptr %43, i32 304
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %45 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_base, align 8
  %add.ptr131 = getelementptr i8, ptr %46, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %5) #4, !srcloc !12
  %47 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %family, align 4
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %48, label %do.body167 [
    i8 11, label %do.body114.do.body173_crit_edge
    i8 13, label %do.body114.do.body173_crit_edge223
    i8 12, label %do.body114.do.body173_crit_edge224
    i8 14, label %do.body114.do.body173_crit_edge225
    i8 15, label %do.body114.do.body173_crit_edge226
    i8 16, label %do.body114.do.body173_crit_edge227
    i8 18, label %do.body114.do.body173_crit_edge228
  ]

do.body114.do.body173_crit_edge228:               ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body173

do.body114.do.body173_crit_edge227:               ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body173

do.body114.do.body173_crit_edge226:               ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body173

do.body114.do.body173_crit_edge225:               ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body173

do.body114.do.body173_crit_edge224:               ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body173

do.body114.do.body173_crit_edge223:               ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body173

do.body114.do.body173_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body173

do.body167:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %50 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_base, align 8
  %add.ptr171 = getelementptr i8, ptr %51, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 %8) #4, !srcloc !12
  br label %do.body173

do.body173:                                       ; preds = %do.body167, %do.body114.do.body173_crit_edge, %do.body114.do.body173_crit_edge223, %do.body114.do.body173_crit_edge224, %do.body114.do.body173_crit_edge225, %do.body114.do.body173_crit_edge226, %do.body114.do.body173_crit_edge227, %do.body114.do.body173_crit_edge228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %52 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_base, align 8
  %add.ptr177 = getelementptr i8, ptr %53, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %2) #4, !srcloc !12
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 18, i32 noundef %call2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_engine_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__INPLL(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__OUTPLL(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeonfb_engine_init(ptr noundef %rinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 7228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !12
  tail call void @radeonfb_engine_reset(ptr noundef %rinfo)
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 1) #4
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %3, label %do.body40 [
    i8 11, label %entry.do.body31_crit_edge
    i8 13, label %entry.do.body31_crit_edge180
    i8 12, label %entry.do.body31_crit_edge181
    i8 14, label %entry.do.body31_crit_edge182
    i8 15, label %entry.do.body31_crit_edge183
    i8 16, label %entry.do.body31_crit_edge184
    i8 18, label %entry.do.body31_crit_edge185
  ]

entry.do.body31_crit_edge185:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

entry.do.body31_crit_edge184:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

entry.do.body31_crit_edge183:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

entry.do.body31_crit_edge182:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

entry.do.body31_crit_edge181:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

entry.do.body31_crit_edge180:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

do.body31:                                        ; preds = %entry.do.body31_crit_edge, %entry.do.body31_crit_edge180, %entry.do.body31_crit_edge181, %entry.do.body31_crit_edge182, %entry.do.body31_crit_edge183, %entry.do.body31_crit_edge184, %entry.do.body31_crit_edge185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %5 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base, align 8
  %add.ptr35 = getelementptr i8, ptr %6, i32 13352
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %8 = or i32 %7, 66048
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base, align 8
  %add.ptr39 = getelementptr i8, ptr %10, i32 13352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %8) #4, !srcloc !12
  br label %if.end

do.body40:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base, align 8
  %add.ptr44 = getelementptr i8, ptr %12, i32 13352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 0) #4, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %do.body40, %do.body31
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 3) #4
  %13 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base, align 8
  %add.ptr48 = getelementptr i8, ptr %14, i32 328
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #4, !srcloc !9
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %shl = shl i32 %16, 16
  %fb_local_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 8
  %17 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl, ptr %fb_local_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %pitch = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 22
  %18 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pitch, align 4
  %20 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fb_local_base, align 8
  %or57 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %21, i32 22)
  %22 = tail call i32 @llvm.bswap.i32(i32 %or57)
  %23 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_base, align 8
  %add.ptr59 = getelementptr i8, ptr %24, i32 5856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %22) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pitch, align 4
  %27 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fb_local_base, align 8
  %or67 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %28, i32 22)
  %29 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %30 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base, align 8
  %add.ptr69 = getelementptr i8, ptr %31, i32 5164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %29) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pitch, align 4
  %34 = ptrtoint ptr %fb_local_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fb_local_base, align 8
  %or77 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %35, i32 22)
  %36 = tail call i32 @llvm.bswap.i32(i32 %or77)
  %37 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base, align 8
  %add.ptr79 = getelementptr i8, ptr %38, i32 5160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %36) #4, !srcloc !12
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 1) #4
  tail call void @_OUTREGP(ptr noundef %rinfo, i32 noundef 5828, i32 noundef 536870912, i32 noundef -536870913) #4
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base, align 8
  %add.ptr84 = getelementptr i8, ptr %40, i32 5868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %41 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio_base, align 8
  %add.ptr89 = getelementptr i8, ptr %42, i32 5864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 -14680289) #4, !srcloc !12
  %depth = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 24
  %43 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %depth, align 4
  %conv90 = trunc i32 %44 to i16
  %45 = zext i16 %conv90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %conv90, label %sw.default.i [
    i16 8, label %if.end.radeon_get_dstbpp.exit_crit_edge
    i16 15, label %sw.bb1.i
    i16 16, label %sw.bb2.i
    i16 32, label %sw.bb3.i
  ]

if.end.radeon_get_dstbpp.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_get_dstbpp.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_get_dstbpp.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_get_dstbpp.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_get_dstbpp.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_get_dstbpp.exit

radeon_get_dstbpp.exit:                           ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.radeon_get_dstbpp.exit_crit_edge
  %retval.0.i = phi i32 [ 268435456, %sw.default.i ], [ 268436992, %sw.bb3.i ], [ 268436480, %sw.bb2.i ], [ 268436224, %sw.bb1.i ], [ 268435968, %if.end.radeon_get_dstbpp.exit_crit_edge ]
  %dp_gui_master_cntl = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 37
  %46 = ptrtoint ptr %dp_gui_master_cntl to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i, ptr %dp_gui_master_cntl, align 4
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 1) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %47 = ptrtoint ptr %dp_gui_master_cntl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dp_gui_master_cntl, align 4
  %or99 = or i32 %48, 12496
  %49 = tail call i32 @llvm.bswap.i32(i32 %or99)
  %50 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_base, align 8
  %add.ptr101 = getelementptr i8, ptr %51, i32 5228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %49) #4, !srcloc !12
  tail call void @_radeon_fifo_wait(ptr noundef %rinfo, i32 noundef 7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %52 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_base, align 8
  %add.ptr106 = getelementptr i8, ptr %53, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %54 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio_base, align 8
  %add.ptr111 = getelementptr i8, ptr %55, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %56 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_base, align 8
  %add.ptr116 = getelementptr i8, ptr %57, i32 5244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 -1) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %58 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio_base, align 8
  %add.ptr121 = getelementptr i8, ptr %59, i32 5240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %60 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_base, align 8
  %add.ptr126 = getelementptr i8, ptr %61, i32 5592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 -1) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %62 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio_base, align 8
  %add.ptr131 = getelementptr i8, ptr %63, i32 5596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %64 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio_base, align 8
  %add.ptr136 = getelementptr i8, ptr %65, i32 5836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 -1) #4, !srcloc !12
  tail call void @_radeon_engine_idle(ptr noundef %rinfo) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_radeon_fifo_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_OUTREGP(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 5008305}
!10 = !{i64 2156328615}
!11 = !{i64 2156329046}
!12 = !{i64 5007887}
!13 = !{i64 2156329785}
!14 = !{i64 2156330497}
!15 = !{i64 2156331262}
!16 = !{i64 2156333032}
!17 = !{i64 2156333585}
!18 = !{i64 2156334249}
!19 = !{i64 2156334832}
!20 = !{i64 2156335448}
!21 = !{i64 2156336064}
!22 = !{i64 2156336933}
!23 = !{i64 2156337724}
!24 = !{i64 2156338339}
!25 = !{i64 2156339096}
!26 = !{i64 2156339679}
!27 = !{i64 2156340263}
!28 = !{i64 2156340785}
!29 = !{i64 2156341303}
!30 = !{i64 2156342151}
!31 = !{i64 2156342940}
!32 = !{i64 2156343507}
!33 = !{i64 2156344342}
!34 = !{i64 2156345246}
!35 = !{i64 2156345520}
!36 = !{i64 2156346265}
!37 = !{i64 2156346567}
!38 = !{i64 2156347327}
!39 = !{i64 2156348366}
!40 = !{i64 2156348938}
!41 = !{i64 2156350025}
!42 = !{i64 2156350359}
!43 = !{i64 2156351179}
!44 = !{i64 2156351479}
!45 = !{i64 2156352423}
!46 = !{i64 2156352947}
!47 = !{i64 2156353496}
!48 = !{i64 2156355550}
!49 = !{i64 2156356527}
!50 = !{i64 2156356836}
!51 = !{i64 2156357616}
!52 = !{i64 2156358012}
!53 = !{i64 2156358751}
!54 = !{i64 2156359463}
!55 = !{i64 2156360229}
!56 = !{i64 2156360776}
!57 = !{i64 2156361497}
!58 = !{i64 2156362140}
!59 = !{i64 2156362592}
!60 = !{i64 2156363062}
!61 = !{i64 2156363559}
!62 = !{i64 2156364056}
!63 = !{i64 2156364553}
!64 = !{i64 2156365050}
