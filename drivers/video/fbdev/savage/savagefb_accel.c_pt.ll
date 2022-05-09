; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/savage/savagefb_accel.c_pt.bc'
source_filename = "../drivers/video/fbdev/savage/savagefb_accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.savagefb_par = type { ptr, i32, %struct.savagefb_i2c_chan, %struct.savage_reg, %struct.savage_reg, %struct.savage_reg, %struct.vgastate, %struct.mutex, ptr, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, %struct.anon.85, %struct.anon.86, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, [256 x %struct.anon.87], i32, i32 }
%struct.savagefb_i2c_chan = type { ptr, %struct.i2c_adapter, %struct.i2c_algo_bit_data, ptr, i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.savage_reg = type { i8, [25 x i8], [5 x i8], [9 x i8], [21 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [22 x i32], i32, i32, i32, i32 }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.85 = type { ptr, i32, i32, i32 }
%struct.anon.86 = type { ptr, i32, i32 }
%struct.anon.87 = type { i16, i16, i16, i16 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@savagefb_rop = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 204, i32 90], [24 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file301 = internal constant [50 x i8] c"savagefb.file=drivers/video/fbdev/savage/savagefb\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [21 x i8] c"savagefb.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"savagefb_rop\00", align 1
@___asan_gen_.2 = private constant [47 x i8] c"../drivers/video/fbdev/savage/savagefb_accel.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 18, i32 12 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @savagefb_rop], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_rop to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @savagefb_sync(ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %SavageWaitIdle = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %SavageWaitIdle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %SavageWaitIdle, align 4
  tail call void %3(ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savagefb_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %sx2 = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 4
  %2 = ptrtoint ptr %sx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sx2, align 4
  %4 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %region, align 4
  %sy4 = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 5
  %6 = ptrtoint ptr %sy4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sy4, align 4
  %dy5 = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 1
  %8 = ptrtoint ptr %dy5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dy5, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bci_ptr = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 27
  %14 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bci_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not = icmp sgt i32 %5, %3
  br i1 %cmp.not, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %sub = add i32 %16, -1
  %add = add i32 %sub, %3
  %add12 = add i32 %sub, %5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end.if.end13_crit_edge
  %sx.0 = phi i32 [ %add, %if.else ], [ %3, %if.end.if.end13_crit_edge ]
  %dx.0 = phi i32 [ %add12, %if.else ], [ %5, %if.end.if.end13_crit_edge ]
  %cmd.0 = phi i32 [ 1221328928, %if.else ], [ 1238106144, %if.end.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp14.not = icmp sgt i32 %9, %7
  br i1 %cmp14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %or16 = or i32 %cmd.0, 33554432
  br label %if.end24

if.else17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %sub19 = add i32 %18, -1
  %add20 = add i32 %sub19, %7
  %add23 = add i32 %sub19, %9
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %if.then15
  %sy.0 = phi i32 [ %7, %if.then15 ], [ %add20, %if.else17 ]
  %dy.0 = phi i32 [ %9, %if.then15 ], [ %add23, %if.else17 ]
  %cmd.1 = phi i32 [ %or16, %if.then15 ], [ %cmd.0, %if.else17 ]
  %SavageWaitFifo = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %SavageWaitFifo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %SavageWaitFifo, align 8
  tail call void %20(ptr noundef %1, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %21 = tail call i32 @llvm.bswap.i32(i32 %cmd.1)
  %bci_base = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 26
  %22 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bci_base, align 8
  %24 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bci_ptr, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %bci_ptr, align 4
  %add.ptr = getelementptr i32, ptr %23, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %shl29 = shl i32 %sy.0, 16
  %and30 = and i32 %sx.0, 4095
  %or31 = or i32 %shl29, %and30
  %26 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %27 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bci_base, align 8
  %29 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bci_ptr, align 4
  %inc34 = add i32 %30, 1
  store i32 %inc34, ptr %bci_ptr, align 4
  %add.ptr35 = getelementptr i32, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %26) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %shl39 = shl i32 %dy.0, 16
  %and40 = and i32 %dx.0, 4095
  %or41 = or i32 %shl39, %and40
  %31 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %32 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bci_base, align 8
  %34 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bci_ptr, align 4
  %inc44 = add i32 %35, 1
  store i32 %inc44, ptr %bci_ptr, align 4
  %add.ptr45 = getelementptr i32, ptr %33, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %31) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %36 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height, align 4
  %shl50 = shl i32 %37, 16
  %38 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %width, align 4
  %and52 = and i32 %39, 4095
  %or53 = or i32 %and52, %shl50
  %40 = tail call i32 @llvm.bswap.i32(i32 %or53)
  %41 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bci_base, align 8
  %43 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bci_ptr, align 4
  %inc56 = add i32 %44, 1
  store i32 %inc56, ptr %bci_ptr, align 4
  %add.ptr57 = getelementptr i32, ptr %42, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %40) #3, !srcloc !15
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savagefb_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %color4 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %8 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pseudo_palette, align 4
  %color5 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %10 = ptrtoint ptr %color5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %color5, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %11
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %color.0.in = phi ptr [ %color4, %if.then3 ], [ %arrayidx, %if.else ]
  %12 = ptrtoint ptr %color.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %color.0 = load i32, ptr %color.0.in, align 4
  %bci_ptr = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bci_ptr, align 4
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %14 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rop, align 4
  %arrayidx7 = getelementptr [2 x i32], ptr @savagefb_rop, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7, align 4
  %and = shl i32 %17, 16
  %shl = and i32 %and, 16711680
  %or = or i32 %shl, 1258323968
  %SavageWaitFifo = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 32
  %18 = ptrtoint ptr %SavageWaitFifo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %SavageWaitFifo, align 8
  tail call void %19(ptr noundef %1, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  %bci_base = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 26
  %21 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bci_base, align 8
  %23 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bci_ptr, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %bci_ptr, align 4
  %add.ptr = getelementptr i32, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %color.0)
  %26 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bci_base, align 8
  %28 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bci_ptr, align 4
  %inc14 = add i32 %29, 1
  store i32 %inc14, ptr %bci_ptr, align 4
  %add.ptr15 = getelementptr i32, ptr %27, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %25) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %30 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dy, align 4
  %shl19 = shl i32 %31, 16
  %32 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rect, align 4
  %and20 = and i32 %33, 4095
  %or21 = or i32 %and20, %shl19
  %34 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %35 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bci_base, align 8
  %37 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bci_ptr, align 4
  %inc24 = add i32 %38, 1
  store i32 %inc24, ptr %bci_ptr, align 4
  %add.ptr25 = getelementptr i32, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %34) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %39 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height, align 4
  %shl30 = shl i32 %40, 16
  %41 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %width, align 4
  %and32 = and i32 %42, 4095
  %or33 = or i32 %and32, %shl30
  %43 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %44 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bci_base, align 8
  %46 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bci_ptr, align 4
  %inc36 = add i32 %47, 1
  store i32 %inc36, ptr %bci_ptr, align 4
  %add.ptr37 = getelementptr i32, ptr %45, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %43) #3, !srcloc !15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savagefb_imageblit(ptr noundef %info, ptr noundef %image) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %width2 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %4 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not = icmp eq i8 %9, 1
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #3
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp7 = icmp eq i32 %11, 3
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %if.end14

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %12 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pseudo_palette, align 4
  %fg_color10 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %14 = ptrtoint ptr %fg_color10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fg_color10, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %15
  %bg_color12 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %16 = ptrtoint ptr %bg_color12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bg_color12, align 4
  %arrayidx13 = getelementptr i32, ptr %13, i32 %17
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %fg.0.in = phi ptr [ %fg_color, %if.then9 ], [ %arrayidx, %if.else ]
  %bg.0.in = phi ptr [ %bg_color, %if.then9 ], [ %arrayidx13, %if.else ]
  %18 = ptrtoint ptr %bg.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %bg.0 = load i32, ptr %bg.0.in, align 4
  %19 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  %bci_ptr = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 27
  %20 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bci_ptr, align 4
  %21 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width2, align 4
  %add = add i32 %22, 31
  %and16 = and i32 %add, -32
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %mul = mul i32 %and16, %24
  %div129 = lshr exact i32 %mul, 5
  %SavageWaitFifo = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %SavageWaitFifo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %SavageWaitFifo, align 8
  %add18 = add nuw nsw i32 %div129, 5
  tail call void %26(ptr noundef %1, i32 noundef %add18) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %bci_base = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 26
  %27 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bci_base, align 8
  %29 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bci_ptr, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %bci_ptr, align 4
  %add.ptr = getelementptr i32, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1623247947) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %31 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %image, align 4
  %33 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width2, align 4
  %add24 = add i32 %34, %32
  %sub = shl i32 %add24, 16
  %shl25 = add i32 %sub, 268369920
  %or27 = or i32 %shl25, %32
  %and28 = and i32 %or27, 268374015
  %35 = tail call i32 @llvm.bswap.i32(i32 %and28)
  %36 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bci_base, align 8
  %38 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bci_ptr, align 4
  %inc31 = add i32 %39, 1
  store i32 %inc31, ptr %bci_ptr, align 4
  %add.ptr32 = getelementptr i32, ptr %37, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %35) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %40 = tail call i32 @llvm.bswap.i32(i32 %fg.0)
  %41 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bci_base, align 8
  %43 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bci_ptr, align 4
  %inc38 = add i32 %44, 1
  store i32 %inc38, ptr %bci_ptr, align 4
  %add.ptr39 = getelementptr i32, ptr %42, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %40) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %45 = tail call i32 @llvm.bswap.i32(i32 %bg.0)
  %46 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bci_base, align 8
  %48 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bci_ptr, align 4
  %inc45 = add i32 %49, 1
  store i32 %inc45, ptr %bci_ptr, align 4
  %add.ptr46 = getelementptr i32, ptr %47, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %45) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %50 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dy, align 4
  %shl50 = shl i32 %51, 16
  %52 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %image, align 4
  %and52 = and i32 %53, 4095
  %or53 = or i32 %and52, %shl50
  %54 = tail call i32 @llvm.bswap.i32(i32 %or53)
  %55 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bci_base, align 8
  %57 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bci_ptr, align 4
  %inc56 = add i32 %58, 1
  store i32 %inc56, ptr %bci_ptr, align 4
  %add.ptr57 = getelementptr i32, ptr %56, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %54) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %59 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %height, align 4
  %shl62 = shl i32 %60, 16
  %and63 = and i32 %add, 4064
  %or64 = or i32 %shl62, %and63
  %61 = tail call i32 @llvm.bswap.i32(i32 %or64)
  %62 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bci_base, align 8
  %64 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bci_ptr, align 4
  %inc67 = add i32 %65, 1
  store i32 %inc67, ptr %bci_ptr, align 4
  %add.ptr68 = getelementptr i32, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %61) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp69130.not = icmp eq i32 %mul, 0
  br i1 %cmp69130.not, label %if.end14.cleanup_crit_edge, label %do.body71.preheader

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body71.preheader:                              ; preds = %if.end14
  %umax = call i32 @llvm.umax.i32(i32 %div129, i32 1)
  br label %do.body71

do.body71:                                        ; preds = %do.body71.do.body71_crit_edge, %do.body71.preheader
  %i.0131 = phi i32 [ %inc79, %do.body71.do.body71_crit_edge ], [ 0, %do.body71.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %arrayidx74 = getelementptr i32, ptr %3, i32 %i.0131
  %66 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx74, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %69 = ptrtoint ptr %bci_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bci_base, align 8
  %71 = ptrtoint ptr %bci_ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bci_ptr, align 4
  %inc77 = add i32 %72, 1
  store i32 %inc77, ptr %bci_ptr, align 4
  %add.ptr78 = getelementptr i32, ptr %70, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %68) #3, !srcloc !15
  %inc79 = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc79, %umax
  br i1 %exitcond.not, label %do.body71.cleanup_crit_edge, label %do.body71.do.body71_crit_edge

do.body71.do.body71_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body71

do.body71.cleanup_crit_edge:                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %do.body71.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__UNIQUE_ID_file301, !1, !"__UNIQUE_ID_file301", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/savage/savagefb_accel.c", i32 137, i32 1}
!2 = !{ptr @__UNIQUE_ID_license302, !1, !"__UNIQUE_ID_license302", i1 false, i1 false}
!3 = !{ptr @savagefb_rop, !4, !"savagefb_rop", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/savage/savagefb_accel.c", i32 18, i32 12}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2155866146}
!15 = !{i64 4298117}
!16 = !{i64 2155866708}
!17 = !{i64 2155867366}
!18 = !{i64 2155868093}
!19 = !{i64 2155868848}
!20 = !{i64 2155869314}
!21 = !{i64 2155869918}
!22 = !{i64 2155870669}
!23 = !{i64 2155871415}
!24 = !{i64 2155872091}
!25 = !{i64 2155872761}
!26 = !{i64 2155873218}
!27 = !{i64 2155873819}
!28 = !{i64 2155874561}
!29 = !{i64 2155875167}
