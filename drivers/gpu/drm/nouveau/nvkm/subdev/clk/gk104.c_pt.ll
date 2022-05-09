; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gk104_clk = type { %struct.nvkm_clk, [16 x %struct.gk104_clk_info] }
%struct.gk104_clk_info = type { i32, i32, i32, i32, i32, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.137, %struct.anon.137 }
%struct.anon.137 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@gk104_clk = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [11 x %struct.nvkm_domain] }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [11 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @gk104_clk_read, ptr @gk104_clk_calc, ptr @gk104_clk_prog, ptr @gk104_clk_tidy, ptr null, i32 0, [11 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 0, i8 3, ptr @.str, i32 2000 }, %struct.nvkm_domain { i32 23, i8 1, i8 1, ptr null, i32 0 }, %struct.nvkm_domain { i32 20, i8 2, i8 1, ptr null, i32 0 }, %struct.nvkm_domain { i32 18, i8 3, i8 0, ptr @.str.1, i32 500 }, %struct.nvkm_domain { i32 22, i8 4, i8 1, ptr null, i32 0 }, %struct.nvkm_domain { i32 21, i8 5, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 27, i8 6, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 25, i8 7, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@gk104_clk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 217, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid clock source %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gk104_clk_read\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk104_clk_read._entry_ptr = internal global ptr @gk104_clk_read._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 25, i64 27]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [10 x i64] [i64 8, i64 32, i64 59392, i64 59424, i64 1253376, i64 1253408, i64 1273856, i64 1273888, i64 1273920, i64 1274080]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 27000, i64 100000, i64 108000]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 494, i32 83 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 497, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"gk104_clk\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 486, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 217, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 372, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @gk104_clk_read._entry, ptr @gk104_clk_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @gk104_clk, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clk to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_clk_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 844) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pclk, align 4
  %call2 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @gk104_clk, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_clk_read(ptr noundef %base, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %2 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %src, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
    i32 18, label %sw.bb5
    i32 19, label %sw.bb6
    i32 20, label %sw.bb8
    i32 23, label %sw.bb10
    i32 22, label %sw.bb12
    i32 21, label %sw.bb14
    i32 25, label %sw.bb16
    i32 27, label %sw.bb18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %crystal, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 1274868
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %and.i = and i32 %7, 15
  %8 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and.i, label %sw.bb5.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
  ]

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb5
  %9 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device3, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 1253408
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %14 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %15, i32 1253412
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.cleanup_crit_edge, label %if.end.i.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i.i = and i32 %16, 255
  %and8.i.i = lshr i32 %16, 8
  %shr9.i.i = and i32 %and8.i.i, 255
  %and.i.i = lshr i32 %16, 16
  %shr.i.i = and i32 %and.i.i, 63
  %call18.i.i = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 0, i32 noundef 1274656, i32 noundef 1274672) #7
  %17 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %18, i32 1253424
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %shr25.i.i = lshr i32 %19, 16
  %phi.cast.i.i = add nuw nsw i32 %shr25.i.i, 4096
  %phi.cast65.i.i = and i32 %phi.cast.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %shr.i.i
  %mul.i.i = mul i32 %call18.i.i, %shr9.i.i
  %mul36.i.i = mul i32 %phi.cast65.i.i, %call18.i.i
  %shr37.i.i = lshr i32 %mul36.i.i, 13
  %add38.i.i = add i32 %shr37.i.i, %mul.i.i
  %mul39.i.i = mul nuw nsw i32 %spec.select.i.i, %and10.i.i
  %div40.i.i = udiv i32 %add38.i.i, %mul39.i.i
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call fastcc i32 @read_pll(ptr noundef %base, i32 noundef 1253376) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %pri.i39 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %pri.i39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i39, align 4
  %add.ptr.i40 = getelementptr i8, ptr %21, i32 1274448
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  %23 = ptrtoint ptr %pri.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i39, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 1274112
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %and.i41 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.not.i = icmp eq i32 %and.i41, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %sw.bb6
  %26 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device3, align 4
  %pri.i90 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %pri.i90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri.i90, align 4
  %add.ptr.i91 = getelementptr i8, ptr %29, i32 1273856
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %31 = ptrtoint ptr %pri.i90 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i90, align 4
  %add.ptr5.i = getelementptr i8, ptr %32, i32 1273860
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i93 = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i93, label %if.then7.i.if.end37.i_crit_edge, label %if.end.i

if.then7.i.if.end37.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i = and i32 %33, 255
  %and8.i = lshr i32 %33, 8
  %shr9.i = and i32 %and8.i, 255
  %and.i92 = lshr i32 %33, 16
  %shr.i = and i32 %and.i92, 63
  %call28.i = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 0, i32 noundef 1274144, i32 noundef 1274176) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 0
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %shr.i
  %mul.i = mul i32 %call28.i, %shr9.i
  %mul39.i = mul nuw nsw i32 %spec.select.i, %and10.i
  %div40.i = udiv i32 %mul.i, %mul39.i
  br label %if.end37.i

if.else.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 0, i32 noundef 1274208, i32 noundef 1274320) #7
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.end.i, %if.then7.i.if.end37.i_crit_edge
  %sclk.3.i = phi i32 [ %call11.i, %if.else.i ], [ %div40.i, %if.end.i ], [ 0, %if.then7.i.if.end37.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool39.not.i = icmp sgt i32 %22, -1
  br i1 %tobool39.not.i, label %if.end37.i.cleanup_crit_edge, label %if.then40.i

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %and43.i = lshr i32 %22, 8
  %sdiv.3.in.in.i = select i1 %tobool.not.i, i32 %22, i32 %and43.i
  %sdiv.3.in.i = and i32 %sdiv.3.in.in.i, 63
  %sdiv.3.i = add nuw nsw i32 %sdiv.3.in.i, 2
  %mul50.i = shl i32 %sclk.3.i, 1
  %div.i = udiv i32 %mul50.i, %sdiv.3.i
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %pri.i44 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %pri.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %35, i32 1274452
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  %37 = ptrtoint ptr %pri.i44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri.i44, align 4
  %add.ptr4.i46 = getelementptr i8, ptr %38, i32 1274112
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i46) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %and.i47 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i48, label %if.else.i52, label %if.then7.i50

if.then7.i50:                                     ; preds = %sw.bb8
  %40 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device3, align 4
  %pri.i96 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %pri.i96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri.i96, align 4
  %add.ptr.i97 = getelementptr i8, ptr %43, i32 1273888
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %45 = ptrtoint ptr %pri.i96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri.i96, align 4
  %add.ptr5.i98 = getelementptr i8, ptr %46, i32 1273892
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i98) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i104 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i104)
  %tobool.not.i105 = icmp eq i32 %and12.i104, 0
  br i1 %tobool.not.i105, label %if.then7.i50.if.end37.i56_crit_edge, label %if.end.i106

if.then7.i50.if.end37.i56_crit_edge:              ; preds = %if.then7.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i56

if.end.i106:                                      ; preds = %if.then7.i50
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i103 = and i32 %47, 255
  %and8.i101 = lshr i32 %47, 8
  %shr9.i102 = and i32 %and8.i101, 255
  %and.i99 = lshr i32 %47, 16
  %shr.i100 = and i32 %and.i99, 63
  %call28.i107 = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 1, i32 noundef 1274144, i32 noundef 1274176) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i100)
  %cmp.i108 = icmp eq i32 %shr.i100, 0
  %spec.select.i109 = select i1 %cmp.i108, i32 1, i32 %shr.i100
  %mul.i110 = mul i32 %call28.i107, %shr9.i102
  %mul39.i111 = mul nuw nsw i32 %spec.select.i109, %and10.i103
  %div40.i112 = udiv i32 %mul.i110, %mul39.i111
  br label %if.end37.i56

if.else.i52:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i51 = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 1, i32 noundef 1274208, i32 noundef 1274320) #7
  br label %if.end37.i56

if.end37.i56:                                     ; preds = %if.else.i52, %if.end.i106, %if.then7.i50.if.end37.i56_crit_edge
  %sclk.3.i54 = phi i32 [ %call11.i51, %if.else.i52 ], [ %div40.i112, %if.end.i106 ], [ 0, %if.then7.i50.if.end37.i56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %tobool39.not.i55 = icmp sgt i32 %36, -1
  br i1 %tobool39.not.i55, label %if.end37.i56.cleanup_crit_edge, label %if.then40.i63

if.end37.i56.cleanup_crit_edge:                   ; preds = %if.end37.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40.i63:                                    ; preds = %if.end37.i56
  call void @__sanitizer_cov_trace_pc() #9
  %and43.i57 = lshr i32 %36, 8
  %sdiv.3.in.in.i58 = select i1 %tobool.not.i48, i32 %36, i32 %and43.i57
  %sdiv.3.in.i59 = and i32 %sdiv.3.in.in.i58, 63
  %sdiv.3.i60 = add nuw nsw i32 %sdiv.3.in.i59, 2
  %mul50.i61 = shl i32 %sclk.3.i54, 1
  %div.i62 = udiv i32 %mul50.i61, %sdiv.3.i60
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %pri.i67 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %48 = ptrtoint ptr %pri.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %49, i32 1274456
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  %51 = ptrtoint ptr %pri.i67 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri.i67, align 4
  %add.ptr4.i69 = getelementptr i8, ptr %52, i32 1274112
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i69) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %and.i70 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %tobool.not.i71, label %if.else.i75, label %if.then7.i73

if.then7.i73:                                     ; preds = %sw.bb10
  %54 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device3, align 4
  %pri.i116 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %pri.i116 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i116, align 4
  %add.ptr.i117 = getelementptr i8, ptr %57, i32 1273920
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %59 = ptrtoint ptr %pri.i116 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri.i116, align 4
  %add.ptr5.i118 = getelementptr i8, ptr %60, i32 1273924
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i118) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i124 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i124)
  %tobool.not.i125 = icmp eq i32 %and12.i124, 0
  br i1 %tobool.not.i125, label %if.then7.i73.if.end37.i79_crit_edge, label %if.end.i126

if.then7.i73.if.end37.i79_crit_edge:              ; preds = %if.then7.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i79

if.end.i126:                                      ; preds = %if.then7.i73
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i123 = and i32 %61, 255
  %and8.i121 = lshr i32 %61, 8
  %shr9.i122 = and i32 %and8.i121, 255
  %and.i119 = lshr i32 %61, 16
  %shr.i120 = and i32 %and.i119, 63
  %call28.i127 = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 2, i32 noundef 1274144, i32 noundef 1274176) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i120)
  %cmp.i128 = icmp eq i32 %shr.i120, 0
  %spec.select.i129 = select i1 %cmp.i128, i32 1, i32 %shr.i120
  %mul.i130 = mul i32 %call28.i127, %shr9.i122
  %mul39.i131 = mul nuw nsw i32 %spec.select.i129, %and10.i123
  %div40.i132 = udiv i32 %mul.i130, %mul39.i131
  br label %if.end37.i79

if.else.i75:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i74 = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 2, i32 noundef 1274208, i32 noundef 1274320) #7
  br label %if.end37.i79

if.end37.i79:                                     ; preds = %if.else.i75, %if.end.i126, %if.then7.i73.if.end37.i79_crit_edge
  %sclk.3.i77 = phi i32 [ %call11.i74, %if.else.i75 ], [ %div40.i132, %if.end.i126 ], [ 0, %if.then7.i73.if.end37.i79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %tobool39.not.i78 = icmp sgt i32 %50, -1
  br i1 %tobool39.not.i78, label %if.end37.i79.cleanup_crit_edge, label %if.then40.i86

if.end37.i79.cleanup_crit_edge:                   ; preds = %if.end37.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40.i86:                                    ; preds = %if.end37.i79
  call void @__sanitizer_cov_trace_pc() #9
  %and43.i80 = lshr i32 %50, 8
  %sdiv.3.in.in.i81 = select i1 %tobool.not.i71, i32 %50, i32 %and43.i80
  %sdiv.3.in.i82 = and i32 %sdiv.3.in.in.i81, 63
  %sdiv.3.i83 = add nuw nsw i32 %sdiv.3.in.i82, 2
  %mul50.i84 = shl i32 %sclk.3.i77, 1
  %div.i85 = udiv i32 %mul50.i84, %sdiv.3.i83
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef 7)
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef 8)
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef 12)
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef 14)
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %62 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not = icmp eq i32 %63, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %src) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %if.then40.i86, %if.end37.i79.cleanup_crit_edge, %if.then40.i63, %if.end37.i56.cleanup_crit_edge, %if.then40.i, %if.end37.i.cleanup_crit_edge, %sw.bb3.i, %if.end.i.i, %sw.bb.i.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %4, %sw.bb ], [ 100000, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call4.i, %sw.bb3.i ], [ 0, %sw.bb5.cleanup_crit_edge ], [ %div40.i.i, %if.end.i.i ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ %div.i, %if.then40.i ], [ %sclk.3.i, %if.end37.i.cleanup_crit_edge ], [ %div.i62, %if.then40.i63 ], [ %sclk.3.i54, %if.end37.i56.cleanup_crit_edge ], [ %div.i85, %if.then40.i86 ], [ %sclk.3.i77, %if.end37.i79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_clk_calc(ptr noundef %base, ptr nocapture noundef readonly %cstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 0, i32 noundef 19)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 1, i32 noundef 20)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 2, i32 noundef 23)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 7, i32 noundef 22)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 8, i32 noundef 21)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 12, i32 noundef 25)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 14, i32 noundef 27)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_clk_prog(ptr noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %entry
  %j.020 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %j.020)
  %tobool.not = icmp ugt i32 %j.020, 6
  br i1 %tobool.not, label %for.body3.for.inc_crit_edge, label %if.end

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body3
  %arrayidx4 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.end7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %ssel.i = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020, i32 1
  %2 = ptrtoint ptr %ssel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1.i, align 4
  %mul.i = shl nuw nsw i32 %j.020, 2
  %add.i = add nuw nsw i32 %mul.i, 1274320
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %8, 2147483584
  %ddiv.i = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020, i32 4
  %9 = ptrtoint ptr %ddiv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ddiv.i, align 4
  %or.i = or i32 %10, %and.i
  %11 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %or.i) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %dsrc.i = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020, i32 3
  %13 = ptrtoint ptr %dsrc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dsrc.i, align 4
  %15 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i, align 4
  %add10.i = add nuw nsw i32 %mul.i, 1274208
  %add.ptr11.i = getelementptr i8, ptr %16, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %14) #7, !srcloc !34
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.end7.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body3.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.020, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end.1.peel, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

if.end.1.peel:                                    ; preds = %for.inc
  %arrayidx4.1.peel = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 0
  %17 = ptrtoint ptr %arrayidx4.1.peel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.1.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.1.peel = icmp eq i32 %18, 0
  br i1 %tobool5.not.1.peel, label %if.end.1.peel.if.end.1.peel52_crit_edge, label %if.end7.1.peel

if.end.1.peel.if.end.1.peel52_crit_edge:          ; preds = %if.end.1.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.peel52

if.end7.1.peel:                                   ; preds = %if.end.1.peel
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %base, i32 noundef 0) #7
  br label %if.end.1.peel52

if.end.1.peel52:                                  ; preds = %if.end7.1.peel, %if.end.1.peel.if.end.1.peel52_crit_edge
  %arrayidx4.1.peel53 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx4.1.peel53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.1.peel53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not.1.peel54 = icmp eq i32 %20, 0
  br i1 %tobool5.not.1.peel54, label %if.end.1.peel52.if.end.1.peel62_crit_edge, label %if.end7.1.peel55

if.end.1.peel52.if.end.1.peel62_crit_edge:        ; preds = %if.end.1.peel52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.peel62

if.end7.1.peel55:                                 ; preds = %if.end.1.peel52
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %base, i32 noundef 1) #7
  br label %if.end.1.peel62

if.end.1.peel62:                                  ; preds = %if.end7.1.peel55, %if.end.1.peel52.if.end.1.peel62_crit_edge
  %arrayidx4.1.peel63 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx4.1.peel63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.1.peel63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool5.not.1.peel64 = icmp eq i32 %22, 0
  br i1 %tobool5.not.1.peel64, label %if.end.1.peel62.if.end.1.peel72_crit_edge, label %if.end7.1.peel65

if.end.1.peel62.if.end.1.peel72_crit_edge:        ; preds = %if.end.1.peel62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.peel72

if.end7.1.peel65:                                 ; preds = %if.end.1.peel62
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %base, i32 noundef 2) #7
  br label %if.end.1.peel72

if.end.1.peel72:                                  ; preds = %if.end7.1.peel65, %if.end.1.peel62.if.end.1.peel72_crit_edge
  %arrayidx4.1.peel73 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %arrayidx4.1.peel73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.1.peel73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not.1.peel74 = icmp eq i32 %24, 0
  br i1 %tobool5.not.1.peel74, label %if.end.1.peel72.if.end.1.peel82_crit_edge, label %if.end7.1.peel75

if.end.1.peel72.if.end.1.peel82_crit_edge:        ; preds = %if.end.1.peel72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.peel82

if.end7.1.peel75:                                 ; preds = %if.end.1.peel72
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %base, i32 noundef 3) #7
  br label %if.end.1.peel82

if.end.1.peel82:                                  ; preds = %if.end7.1.peel75, %if.end.1.peel72.if.end.1.peel82_crit_edge
  %arrayidx4.1.peel83 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx4.1.peel83 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.1.peel83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool5.not.1.peel84 = icmp eq i32 %26, 0
  br i1 %tobool5.not.1.peel84, label %if.end.1.peel82.if.end.1.peel92_crit_edge, label %if.end7.1.peel85

if.end.1.peel82.if.end.1.peel92_crit_edge:        ; preds = %if.end.1.peel82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.peel92

if.end7.1.peel85:                                 ; preds = %if.end.1.peel82
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %base, i32 noundef 4) #7
  br label %if.end.1.peel92

if.end.1.peel92:                                  ; preds = %if.end7.1.peel85, %if.end.1.peel82.if.end.1.peel92_crit_edge
  %arrayidx4.1.peel93 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx4.1.peel93 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.1.peel93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not.1.peel94 = icmp eq i32 %28, 0
  br i1 %tobool5.not.1.peel94, label %if.end.1.peel92.if.end.1.peel102_crit_edge, label %if.end7.1.peel95

if.end.1.peel92.if.end.1.peel102_crit_edge:       ; preds = %if.end.1.peel92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.peel102

if.end7.1.peel95:                                 ; preds = %if.end.1.peel92
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %base, i32 noundef 5) #7
  br label %if.end.1.peel102

if.end.1.peel102:                                 ; preds = %if.end7.1.peel95, %if.end.1.peel92.if.end.1.peel102_crit_edge
  %arrayidx4.1.peel103 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 6
  %29 = ptrtoint ptr %arrayidx4.1.peel103 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.1.peel103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool5.not.1.peel104 = icmp eq i32 %30, 0
  br i1 %tobool5.not.1.peel104, label %if.end.1.peel102.for.body3.2.preheader_crit_edge, label %if.end7.1.peel105

if.end.1.peel102.for.body3.2.preheader_crit_edge: ; preds = %if.end.1.peel102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.2.preheader

if.end7.1.peel105:                                ; preds = %if.end.1.peel102
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_1_0(ptr noundef %base, i32 noundef 6) #7
  br label %for.body3.2.preheader

for.body3.2.preheader:                            ; preds = %if.end7.1.peel105, %if.end.1.peel102.for.body3.2.preheader_crit_edge
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc.2.for.body3.2_crit_edge, %for.body3.2.preheader
  %j.020.2 = phi i32 [ %inc.2, %for.inc.2.for.body3.2_crit_edge ], [ 0, %for.body3.2.preheader ]
  %shl.2 = shl nuw nsw i32 1, %j.020.2
  %and.2 = and i32 %shl.2, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.body3.2.for.inc.2_crit_edge, label %if.end.2

for.body3.2.for.inc.2_crit_edge:                  ; preds = %for.body3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.body3.2
  %arrayidx4.2 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020.2
  %31 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool5.not.2 = icmp eq i32 %32, 0
  br i1 %tobool5.not.2, label %if.end.2.for.inc.2_crit_edge, label %if.end7.2

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end7.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device1.i, align 4
  %mul.i25 = shl i32 %j.020.2, 2
  %add.i26 = add nuw nsw i32 %mul.i25, 1274208
  %pri.i27 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %pri.i27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i27, align 4
  %add.ptr.i28 = getelementptr i8, ptr %36, i32 %add.i26
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %and.i29 = and i32 %37, -257
  %38 = ptrtoint ptr %pri.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i27, align 4
  %add.ptr3.i30 = getelementptr i8, ptr %39, i32 %add.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i30, i32 %and.i29) #7, !srcloc !34
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end7.2, %if.end.2.for.inc.2_crit_edge, %for.body3.2.for.inc.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.020.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 16
  br i1 %exitcond.2.not, label %for.inc.2.for.body3.3_crit_edge, label %for.inc.2.for.body3.2_crit_edge

for.inc.2.for.body3.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.2

for.inc.2.for.body3.3_crit_edge:                  ; preds = %for.inc.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc.3.for.body3.3_crit_edge, %for.inc.2.for.body3.3_crit_edge
  %j.020.3 = phi i32 [ %inc.3, %for.inc.3.for.body3.3_crit_edge ], [ 0, %for.inc.2.for.body3.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %j.020.3)
  %tobool.not.3 = icmp ugt i32 %j.020.3, 7
  br i1 %tobool.not.3, label %for.body3.3.for.inc.3_crit_edge, label %if.end.3

for.body3.3.for.inc.3_crit_edge:                  ; preds = %for.body3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3:                                         ; preds = %for.body3.3
  %arrayidx4.3 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020.3
  %40 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx4.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool5.not.3 = icmp eq i32 %41, 0
  br i1 %tobool5.not.3, label %if.end.3.for.inc.3_crit_edge, label %if.end7.3

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end7.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_2(ptr noundef %base, i32 noundef %j.020.3) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end7.3, %if.end.3.for.inc.3_crit_edge, %for.body3.3.for.inc.3_crit_edge
  %inc.3 = add nuw nsw i32 %j.020.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 16
  br i1 %exitcond.3.not, label %for.inc.3.for.body3.4_crit_edge, label %for.inc.3.for.body3.3_crit_edge

for.inc.3.for.body3.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.3

for.inc.3.for.body3.4_crit_edge:                  ; preds = %for.inc.3
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.inc.4.for.body3.4_crit_edge, %for.inc.3.for.body3.4_crit_edge
  %j.020.4 = phi i32 [ %inc.4, %for.inc.4.for.body3.4_crit_edge ], [ 0, %for.inc.3.for.body3.4_crit_edge ]
  %shl.4 = shl nuw nsw i32 1, %j.020.4
  %and.4 = and i32 %shl.4, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.body3.4.for.inc.4_crit_edge, label %if.end.4

for.body3.4.for.inc.4_crit_edge:                  ; preds = %for.body3.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end.4:                                         ; preds = %for.body3.4
  %arrayidx4.4 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020.4
  %42 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx4.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool5.not.4 = icmp eq i32 %43, 0
  br i1 %tobool5.not.4, label %if.end.4.for.inc.4_crit_edge, label %if.end7.4

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end7.4:                                        ; preds = %if.end.4
  %44 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device1.i, align 4
  %ssel.i32 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020.4, i32 1
  %46 = ptrtoint ptr %ssel.i32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ssel.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i33 = icmp eq i32 %47, 0
  %mul7.i = shl i32 %j.020.4, 2
  %add8.i = add nuw nsw i32 %mul7.i, 1274448
  %pri11.i = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 11
  %48 = ptrtoint ptr %pri11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %49, i32 %add8.i
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i33, label %if.else.i, label %if.then.i37

if.then.i37:                                      ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #9
  %and.i34 = and i32 %50, -16129
  %mdiv.i = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020.4, i32 2
  %51 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mdiv.i, align 4
  %or.i35 = or i32 %52, %and.i34
  %53 = ptrtoint ptr %pri11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri11.i, align 4
  %add.ptr3.i36 = getelementptr i8, ptr %54, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i36, i32 %or.i35) #7, !srcloc !34
  br label %for.inc.4

if.else.i:                                        ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #9
  %and18.i = and i32 %50, -64
  %mdiv19.i = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020.4, i32 2
  %55 = ptrtoint ptr %mdiv19.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mdiv19.i, align 4
  %or20.i = or i32 %56, %and18.i
  %57 = ptrtoint ptr %pri11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri11.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %58, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %or20.i) #7, !srcloc !34
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.i, %if.then.i37, %if.end.4.for.inc.4_crit_edge, %for.body3.4.for.inc.4_crit_edge
  %inc.4 = add nuw nsw i32 %j.020.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, 16
  br i1 %exitcond.4.not, label %if.end.5.peel, label %for.inc.4.for.body3.4_crit_edge

for.inc.4.for.body3.4_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.4

if.end.5.peel:                                    ; preds = %for.inc.4
  %arrayidx4.5.peel = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 0
  %59 = ptrtoint ptr %arrayidx4.5.peel to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx4.5.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool5.not.5.peel = icmp eq i32 %60, 0
  br i1 %tobool5.not.5.peel, label %if.end.5.peel.if.end.5.peel113_crit_edge, label %if.end7.5.peel

if.end.5.peel.if.end.5.peel113_crit_edge:         ; preds = %if.end.5.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.5.peel113

if.end7.5.peel:                                   ; preds = %if.end.5.peel
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %base, i32 noundef 0) #7
  br label %if.end.5.peel113

if.end.5.peel113:                                 ; preds = %if.end7.5.peel, %if.end.5.peel.if.end.5.peel113_crit_edge
  %arrayidx4.5.peel114 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %arrayidx4.5.peel114 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx4.5.peel114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool5.not.5.peel115 = icmp eq i32 %62, 0
  br i1 %tobool5.not.5.peel115, label %if.end.5.peel113.if.end.5.peel123_crit_edge, label %if.end7.5.peel116

if.end.5.peel113.if.end.5.peel123_crit_edge:      ; preds = %if.end.5.peel113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.5.peel123

if.end7.5.peel116:                                ; preds = %if.end.5.peel113
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %base, i32 noundef 1) #7
  br label %if.end.5.peel123

if.end.5.peel123:                                 ; preds = %if.end7.5.peel116, %if.end.5.peel113.if.end.5.peel123_crit_edge
  %arrayidx4.5.peel124 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %arrayidx4.5.peel124 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx4.5.peel124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool5.not.5.peel125 = icmp eq i32 %64, 0
  br i1 %tobool5.not.5.peel125, label %if.end.5.peel123.if.end.5.peel133_crit_edge, label %if.end7.5.peel126

if.end.5.peel123.if.end.5.peel133_crit_edge:      ; preds = %if.end.5.peel123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.5.peel133

if.end7.5.peel126:                                ; preds = %if.end.5.peel123
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %base, i32 noundef 2) #7
  br label %if.end.5.peel133

if.end.5.peel133:                                 ; preds = %if.end7.5.peel126, %if.end.5.peel123.if.end.5.peel133_crit_edge
  %arrayidx4.5.peel134 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %arrayidx4.5.peel134 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx4.5.peel134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool5.not.5.peel135 = icmp eq i32 %66, 0
  br i1 %tobool5.not.5.peel135, label %if.end.5.peel133.if.end.5.peel143_crit_edge, label %if.end7.5.peel136

if.end.5.peel133.if.end.5.peel143_crit_edge:      ; preds = %if.end.5.peel133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.5.peel143

if.end7.5.peel136:                                ; preds = %if.end.5.peel133
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %base, i32 noundef 3) #7
  br label %if.end.5.peel143

if.end.5.peel143:                                 ; preds = %if.end7.5.peel136, %if.end.5.peel133.if.end.5.peel143_crit_edge
  %arrayidx4.5.peel144 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 4
  %67 = ptrtoint ptr %arrayidx4.5.peel144 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx4.5.peel144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool5.not.5.peel145 = icmp eq i32 %68, 0
  br i1 %tobool5.not.5.peel145, label %if.end.5.peel143.if.end.5.peel153_crit_edge, label %if.end7.5.peel146

if.end.5.peel143.if.end.5.peel153_crit_edge:      ; preds = %if.end.5.peel143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.5.peel153

if.end7.5.peel146:                                ; preds = %if.end.5.peel143
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %base, i32 noundef 4) #7
  br label %if.end.5.peel153

if.end.5.peel153:                                 ; preds = %if.end7.5.peel146, %if.end.5.peel143.if.end.5.peel153_crit_edge
  %arrayidx4.5.peel154 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 5
  %69 = ptrtoint ptr %arrayidx4.5.peel154 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx4.5.peel154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool5.not.5.peel155 = icmp eq i32 %70, 0
  br i1 %tobool5.not.5.peel155, label %if.end.5.peel153.if.end.5.peel163_crit_edge, label %if.end7.5.peel156

if.end.5.peel153.if.end.5.peel163_crit_edge:      ; preds = %if.end.5.peel153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.5.peel163

if.end7.5.peel156:                                ; preds = %if.end.5.peel153
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %base, i32 noundef 5) #7
  br label %if.end.5.peel163

if.end.5.peel163:                                 ; preds = %if.end7.5.peel156, %if.end.5.peel153.if.end.5.peel163_crit_edge
  %arrayidx4.5.peel164 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 6
  %71 = ptrtoint ptr %arrayidx4.5.peel164 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx4.5.peel164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool5.not.5.peel165 = icmp eq i32 %72, 0
  br i1 %tobool5.not.5.peel165, label %if.end.5.peel163.for.body3.6.preheader_crit_edge, label %if.end7.5.peel166

if.end.5.peel163.for.body3.6.preheader_crit_edge: ; preds = %if.end.5.peel163
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.6.preheader

if.end7.5.peel166:                                ; preds = %if.end.5.peel163
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gk104_clk_prog_4_0(ptr noundef %base, i32 noundef 6) #7
  br label %for.body3.6.preheader

for.body3.6.preheader:                            ; preds = %if.end7.5.peel166, %if.end.5.peel163.for.body3.6.preheader_crit_edge
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.inc.6.for.body3.6_crit_edge, %for.body3.6.preheader
  %j.020.6 = phi i32 [ %inc.6, %for.inc.6.for.body3.6_crit_edge ], [ 0, %for.body3.6.preheader ]
  %shl.6 = shl nuw nsw i32 1, %j.020.6
  %and.6 = and i32 %shl.6, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.body3.6.for.inc.6_crit_edge, label %if.end.6

for.body3.6.for.inc.6_crit_edge:                  ; preds = %for.body3.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.end.6:                                         ; preds = %for.body3.6
  %arrayidx4.6 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020.6
  %73 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx4.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool5.not.6 = icmp eq i32 %74, 0
  br i1 %tobool5.not.6, label %if.end.6.for.inc.6_crit_edge, label %if.end7.6

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.end7.6:                                        ; preds = %if.end.6
  %ssel.i38 = getelementptr %struct.gk104_clk, ptr %base, i32 0, i32 1, i32 %j.020.6, i32 1
  %75 = ptrtoint ptr %ssel.i38 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ssel.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i39 = icmp eq i32 %76, 0
  br i1 %tobool.not.i39, label %if.end7.6.for.inc.6_crit_edge, label %if.then.i48

if.end7.6.for.inc.6_crit_edge:                    ; preds = %if.end7.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.i48:                                      ; preds = %if.end7.6
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device1.i, align 4
  %mul.i41 = shl i32 %j.020.6, 2
  %add.i42 = add nuw nsw i32 %mul.i41, 1274208
  %pri.i43 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 11
  %79 = ptrtoint ptr %pri.i43 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %80, i32 %add.i42
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %or.i45 = or i32 %81, 1073741824
  %82 = ptrtoint ptr %pri.i43 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pri.i43, align 4
  %add.ptr3.i46 = getelementptr i8, ptr %83, i32 %add.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i46, i32 %or.i45) #7, !srcloc !34
  %84 = ptrtoint ptr %pri.i43 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri.i43, align 4
  %add.ptr12.i47 = getelementptr i8, ptr %85, i32 %add.i42
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i47) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %or19.i = or i32 %86, 256
  %87 = ptrtoint ptr %pri.i43 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri.i43, align 4
  %add.ptr21.i = getelementptr i8, ptr %88, i32 %add.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %or19.i) #7, !srcloc !34
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.i48, %if.end7.6.for.inc.6_crit_edge, %if.end.6.for.inc.6_crit_edge, %for.body3.6.for.inc.6_crit_edge
  %inc.6 = add nuw nsw i32 %j.020.6, 1
  %exitcond.6.not = icmp eq i32 %inc.6, 16
  br i1 %exitcond.6.not, label %for.inc9.6, label %for.inc.6.for.body3.6_crit_edge

for.inc.6.for.body3.6_crit_edge:                  ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.6

for.inc9.6:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @gk104_clk_tidy(ptr nocapture noundef writeonly %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eng = getelementptr inbounds %struct.gk104_clk, ptr %base, i32 0, i32 1
  %0 = call ptr @memset(ptr %eng, i32 0, i32 384)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_clk(ptr nocapture noundef readonly %clk, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %idx, 2
  %add = add i32 %mul, 1274448
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %idx)
  %cmp = icmp slt i32 %idx, 7
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %6, i32 1274112
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %shl = shl nuw nsw i32 1, %idx
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mul8 = shl i32 %idx, 5
  %add9 = add i32 %mul8, 1273856
  %call10 = tail call fastcc i32 @read_pll(ptr noundef %clk, i32 noundef %add9)
  br label %if.end37

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call fastcc i32 @read_div(ptr noundef %clk, i32 noundef %idx, i32 noundef 1274208, i32 noundef 1274320)
  br label %if.end37

if.else12:                                        ; preds = %entry
  %add16 = add i32 %mul, 1274208
  %add.ptr17 = getelementptr i8, ptr %6, i32 %add16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %call23 = tail call fastcc i32 @read_div(ptr noundef %clk, i32 noundef %idx, i32 noundef 1274208, i32 noundef 1274320)
  %9 = and i32 %8, 259
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %9)
  %.not = icmp eq i32 %9, 259
  br i1 %.not, label %if.then26, label %if.else12.if.end37_crit_edge

if.else12.if.end37_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then26:                                        ; preds = %if.else12
  %and27 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then26.if.end37_crit_edge, label %if.then29

if.then26.if.end37_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then29:                                        ; preds = %if.then26
  %10 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 1274080
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %15 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %16, i32 1274084
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i, label %if.then29.if.end37_crit_edge, label %if.end.i

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end.i:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i = and i32 %17, 255
  %and8.i = lshr i32 %17, 8
  %shr9.i = and i32 %and8.i, 255
  %and.i = lshr i32 %17, 16
  %shr.i = and i32 %and.i, 63
  %call28.i = tail call fastcc i32 @read_div(ptr noundef %clk, i32 noundef 7, i32 noundef 1274144, i32 noundef 1274176) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 0
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %shr.i
  %mul.i = mul i32 %call28.i, %shr9.i
  %mul39.i = mul nuw nsw i32 %spec.select.i, %and10.i
  %div40.i = udiv i32 %mul.i, %mul39.i
  br label %if.end37

if.end37:                                         ; preds = %if.end.i, %if.then29.if.end37_crit_edge, %if.then26.if.end37_crit_edge, %if.else12.if.end37_crit_edge, %if.else, %if.then7
  %tobool41.not = phi i1 [ false, %if.end.i ], [ false, %if.then29.if.end37_crit_edge ], [ false, %if.then26.if.end37_crit_edge ], [ false, %if.then7 ], [ true, %if.else ], [ true, %if.else12.if.end37_crit_edge ]
  %sclk.3 = phi i32 [ %div40.i, %if.end.i ], [ 0, %if.then29.if.end37_crit_edge ], [ %call23, %if.then26.if.end37_crit_edge ], [ %call10, %if.then7 ], [ %call11, %if.else ], [ %call23, %if.else12.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool39.not = icmp sgt i32 %4, -1
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.then40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %and43 = lshr i32 %4, 8
  %sdiv.3.in.in = select i1 %tobool41.not, i32 %4, i32 %and43
  %sdiv.3.in = and i32 %sdiv.3.in.in, 63
  %sdiv.3 = add nuw nsw i32 %sdiv.3.in, 2
  %mul50 = shl i32 %sclk.3, 1
  %div = udiv i32 %mul50, %sdiv.3
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.then40 ], [ %sclk.3, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_pll(ptr nocapture noundef readonly %clk, i32 noundef %pll) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %pll
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add4 = add i32 %pll, 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 %add4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and = lshr i32 %7, 16
  %shr = and i32 %and, 63
  %and8 = lshr i32 %7, 8
  %shr9 = and i32 %and8, 255
  %and10 = and i32 %7, 255
  %and12 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %pll to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %pll, label %if.end.cleanup_crit_edge [
    i32 59392, label %if.end.sw.bb_crit_edge
    i32 59424, label %if.end.sw.bb_crit_edge72
    i32 1253376, label %sw.bb13
    i32 1253408, label %sw.bb17
    i32 1273856, label %if.end.sw.bb26_crit_edge
    i32 1273888, label %if.end.sw.bb26_crit_edge73
    i32 1273920, label %if.end.sw.bb26_crit_edge74
    i32 1274080, label %if.end.sw.bb26_crit_edge75
  ]

if.end.sw.bb26_crit_edge75:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end.sw.bb26_crit_edge74:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end.sw.bb26_crit_edge73:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end.sw.bb26_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end.sw.bb_crit_edge72:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge72
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crystal, align 4
  br label %sw.epilog.thread

sw.bb13:                                          ; preds = %if.end
  %11 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 1253408
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %16 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 1253412
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i, label %sw.bb13.read_pll.exit_crit_edge, label %if.end.i

sw.bb13.read_pll.exit_crit_edge:                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pll.exit

if.end.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i = and i32 %18, 255
  %and8.i = lshr i32 %18, 8
  %shr9.i = and i32 %and8.i, 255
  %and.i = lshr i32 %18, 16
  %shr.i = and i32 %and.i, 63
  %call18.i = tail call fastcc i32 @read_div(ptr noundef %clk, i32 noundef 0, i32 noundef 1274656, i32 noundef 1274672) #7
  %19 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %20, i32 1253424
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %shr25.i = lshr i32 %21, 16
  %phi.cast.i = add nuw nsw i32 %shr25.i, 4096
  %phi.cast65.i = and i32 %phi.cast.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 %shr.i
  %mul.i = mul i32 %call18.i, %shr9.i
  %mul36.i = mul i32 %phi.cast65.i, %call18.i
  %shr37.i = lshr i32 %mul36.i, 13
  %add38.i = add i32 %shr37.i, %mul.i
  %mul39.i = mul nuw nsw i32 %spec.store.select.i, %and10.i
  %div40.i = udiv i32 %add38.i, %mul39.i
  br label %read_pll.exit

read_pll.exit:                                    ; preds = %if.end.i, %sw.bb13.read_pll.exit_crit_edge
  %retval.0.i = phi i32 [ %div40.i, %if.end.i ], [ 0, %sw.bb13.read_pll.exit_crit_edge ]
  %and15 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond = select i1 %tobool16.not, i32 1, i32 2
  br label %sw.epilog.thread

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call fastcc i32 @read_div(ptr noundef %clk, i32 noundef 0, i32 noundef 1274656, i32 noundef 1274672)
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr22 = getelementptr i8, ptr %23, i32 1253424
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %shr25 = lshr i32 %24, 16
  %phi.cast = add nuw nsw i32 %shr25, 4096
  %phi.cast65 = and i32 %phi.cast, 65535
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end.sw.bb26_crit_edge, %if.end.sw.bb26_crit_edge73, %if.end.sw.bb26_crit_edge74, %if.end.sw.bb26_crit_edge75
  %and27 = lshr i32 %pll, 5
  %div64 = and i32 %and27, 7
  %call28 = tail call fastcc i32 @read_div(ptr noundef %clk, i32 noundef %div64, i32 noundef 1274144, i32 noundef 1274176)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb17
  %sclk.0 = phi i32 [ %call28, %sw.bb26 ], [ %call18, %sw.bb17 ]
  %fN.0 = phi i32 [ 0, %sw.bb26 ], [ %phi.cast65, %sw.bb17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp = icmp eq i32 %shr, 0
  %spec.select = select i1 %cmp, i32 1, i32 %shr
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog, %read_pll.exit, %sw.bb
  %fN.071 = phi i32 [ 0, %read_pll.exit ], [ 0, %sw.bb ], [ %fN.0, %sw.epilog ]
  %sclk.070 = phi i32 [ %retval.0.i, %read_pll.exit ], [ %10, %sw.bb ], [ %sclk.0, %sw.epilog ]
  %25 = phi i32 [ %cond, %read_pll.exit ], [ 1, %sw.bb ], [ %spec.select, %sw.epilog ]
  %mul = mul i32 %sclk.070, %shr9
  %mul36 = mul i32 %sclk.070, %fN.071
  %shr37 = lshr i32 %mul36, 13
  %add38 = add i32 %shr37, %mul
  %mul39 = mul nuw nsw i32 %25, %and10
  %div40 = udiv i32 %add38, %mul39
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div40, %sw.epilog.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_div(ptr nocapture noundef readonly %clk, i32 noundef %doff, i32 noundef %dsrc, i32 noundef %dctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %doff, 2
  %add = add i32 %mul, %dsrc
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add5 = add i32 %mul, %dctl
  %add.ptr6 = getelementptr i8, ptr %6, i32 %add5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %and = and i32 %4, 3
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %entry.cleanup_crit_edge
    i32 3, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %and9 = and i32 %4, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 196608
  br i1 %cmp.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crystal, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  %11 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device1, align 4
  %pri.i38 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %pri.i38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %14, i32 %add
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %and.i40 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not.i41 = icmp eq i32 %and.i40, 0
  %16 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device1, align 4
  %pri.i.i42 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %pri.i.i42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i.i42, align 4
  br i1 %tobool.not, label %if.end20, label %if.then13

if.then13:                                        ; preds = %sw.bb11
  br i1 %tobool.not.i41, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then13
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 59392
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %21 = ptrtoint ptr %pri.i.i42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i.i42, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %22, i32 59396
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.read_vco.exit_crit_edge, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then.i.read_vco.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_vco.exit

if.end.i:                                         ; preds = %if.then13
  %add.ptr.i9.i = getelementptr i8, ptr %19, i32 59424
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %25 = ptrtoint ptr %pri.i.i42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i.i42, align 4
  %add.ptr5.i11.i = getelementptr i8, ptr %26, i32 59428
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i11.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i18.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i18.i)
  %tobool.not.i19.i = icmp eq i32 %and12.i18.i, 0
  br i1 %tobool.not.i19.i, label %if.end.i.read_vco.exit_crit_edge, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i.read_vco.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_vco.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.sink26.i = phi i32 [ %23, %if.then.i.cleanup.sink.split.i_crit_edge ], [ %27, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %and10.i17.i = and i32 %.sink26.i, 255
  %and8.i15.i = lshr i32 %.sink26.i, 8
  %shr9.i16.i = and i32 %and8.i15.i, 255
  %crystal.i21.i = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 18
  %28 = ptrtoint ptr %crystal.i21.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crystal.i21.i, align 4
  %mul.i22.i = mul i32 %shr9.i16.i, %29
  %div40.i23.i = udiv i32 %mul.i22.i, %and10.i17.i
  %phi.bo = shl i32 %div40.i23.i, 1
  br label %read_vco.exit

read_vco.exit:                                    ; preds = %cleanup.sink.split.i, %if.end.i.read_vco.exit_crit_edge, %if.then.i.read_vco.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i.read_vco.exit_crit_edge ], [ 0, %if.end.i.read_vco.exit_crit_edge ], [ %phi.bo, %cleanup.sink.split.i ]
  %and17 = and i32 %7, 63
  %add18 = add nuw nsw i32 %and17, 2
  %div = udiv i32 %retval.0.i, %add18
  br label %cleanup

if.end20:                                         ; preds = %sw.bb11
  br i1 %tobool.not.i41, label %if.then.i47, label %if.end.i52

if.then.i47:                                      ; preds = %if.end20
  %add.ptr.i.i43 = getelementptr i8, ptr %19, i32 59392
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %31 = ptrtoint ptr %pri.i.i42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i.i42, align 4
  %add.ptr5.i.i44 = getelementptr i8, ptr %32, i32 59396
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i44) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i.i45 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %and12.i.i45, 0
  br i1 %tobool.not.i.i46, label %if.then.i47.cleanup_crit_edge, label %if.then.i47.cleanup.sink.split.i60_crit_edge

if.then.i47.cleanup.sink.split.i60_crit_edge:     ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i60

if.then.i47.cleanup_crit_edge:                    ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i52:                                       ; preds = %if.end20
  %add.ptr.i9.i48 = getelementptr i8, ptr %19, i32 59424
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i48) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %35 = ptrtoint ptr %pri.i.i42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i.i42, align 4
  %add.ptr5.i11.i49 = getelementptr i8, ptr %36, i32 59428
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i11.i49) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i18.i50 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i18.i50)
  %tobool.not.i19.i51 = icmp eq i32 %and12.i18.i50, 0
  br i1 %tobool.not.i19.i51, label %if.end.i52.cleanup_crit_edge, label %if.end.i52.cleanup.sink.split.i60_crit_edge

if.end.i52.cleanup.sink.split.i60_crit_edge:      ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i60

if.end.i52.cleanup_crit_edge:                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split.i60:                           ; preds = %if.end.i52.cleanup.sink.split.i60_crit_edge, %if.then.i47.cleanup.sink.split.i60_crit_edge
  %.sink26.i53 = phi i32 [ %33, %if.then.i47.cleanup.sink.split.i60_crit_edge ], [ %37, %if.end.i52.cleanup.sink.split.i60_crit_edge ]
  %and10.i17.i54 = and i32 %.sink26.i53, 255
  %and8.i15.i55 = lshr i32 %.sink26.i53, 8
  %shr9.i16.i56 = and i32 %and8.i15.i55, 255
  %crystal.i21.i57 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 18
  %38 = ptrtoint ptr %crystal.i21.i57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %crystal.i21.i57, align 4
  %mul.i22.i58 = mul i32 %shr9.i16.i56, %39
  %div40.i23.i59 = udiv i32 %mul.i22.i58, %and10.i17.i54
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %cleanup.sink.split.i60, %if.end.i52.cleanup_crit_edge, %if.then.i47.cleanup_crit_edge, %read_vco.exit, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ %div, %read_vco.exit ], [ %10, %if.then ], [ 108000, %sw.bb.cleanup_crit_edge ], [ 100000, %entry.cleanup_crit_edge ], [ 0, %if.then.i47.cleanup_crit_edge ], [ 0, %if.end.i52.cleanup_crit_edge ], [ %div40.i23.i59, %cleanup.sink.split.i60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calc_clk(ptr noundef %clk, ptr nocapture noundef readonly %cstate, i32 noundef %idx, i32 noundef %dom) unnamed_addr #0 align 64 {
entry:
  %limits.i = alloca %struct.nvbios_pll, align 4
  %N.i = alloca i32, align 4
  %M.i = alloca i32, align 4
  %P.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx
  %arrayidx1 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 %dom
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %1, label %sw.default.i [
    i32 0, label %entry.cleanup_crit_edge
    i32 100000, label %sw.bb1.i
    i32 108000, label %if.then.i
    i32 27000, label %entry.calc_src.exit_crit_edge
  ]

entry.calc_src.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_src.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_src.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_src.exit

sw.default.i:                                     ; preds = %entry
  %mul.i = shl i32 %idx, 2
  %add.i = add i32 %mul.i, 1274208
  %device1.i.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %add.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %and.i.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %8 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i.i.i, align 4
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.default.i
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 59392
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %13 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %14, i32 59396
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and12.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.read_vco.exit.i_crit_edge, label %if.then.i.i.cleanup.sink.split.i.i_crit_edge

if.then.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.then.i.i.read_vco.exit.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_vco.exit.i

if.end.i.i:                                       ; preds = %sw.default.i
  %add.ptr.i9.i.i = getelementptr i8, ptr %11, i32 59424
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %17 = ptrtoint ptr %pri.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i.i.i, align 4
  %add.ptr5.i11.i.i = getelementptr i8, ptr %18, i32 59428
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i11.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and12.i18.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i18.i.i)
  %tobool.not.i19.i.i = icmp eq i32 %and12.i18.i.i, 0
  br i1 %tobool.not.i19.i.i, label %if.end.i.i.read_vco.exit.i_crit_edge, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.end.i.i.read_vco.exit.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_vco.exit.i

cleanup.sink.split.i.i:                           ; preds = %if.end.i.i.cleanup.sink.split.i.i_crit_edge, %if.then.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink26.i.i = phi i32 [ %15, %if.then.i.i.cleanup.sink.split.i.i_crit_edge ], [ %19, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %and10.i17.i.i = and i32 %.sink26.i.i, 255
  %and8.i15.i.i = lshr i32 %.sink26.i.i, 8
  %shr9.i16.i.i = and i32 %and8.i15.i.i, 255
  %crystal.i21.i.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 18
  %20 = ptrtoint ptr %crystal.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crystal.i21.i.i, align 4
  %mul.i22.i.i = mul i32 %shr9.i16.i.i, %21
  %div40.i23.i.i = udiv i32 %mul.i22.i.i, %and10.i17.i.i
  br label %read_vco.exit.i

read_vco.exit.i:                                  ; preds = %cleanup.sink.split.i.i, %if.end.i.i.read_vco.exit.i_crit_edge, %if.then.i.i.read_vco.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.then.i.i.read_vco.exit.i_crit_edge ], [ 0, %if.end.i.i.read_vco.exit.i_crit_edge ], [ %div40.i23.i.i, %cleanup.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %idx)
  %cmp2.i = icmp slt i32 %idx, 7
  br i1 %cmp2.i, label %if.then3.i, label %read_vco.exit.i.calc_src.exit_crit_edge

read_vco.exit.i.calc_src.exit_crit_edge:          ; preds = %read_vco.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_src.exit

if.then3.i:                                       ; preds = %read_vco.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = shl i32 %retval.0.i.i, 1
  %div1.i.i = udiv i32 %mul.i.i, %1
  %22 = tail call i32 @llvm.umin.i32(i32 %div1.i.i, i32 65) #7
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 2) #7
  %sub.i.i = add nsw i32 %23, -2
  %div4.i.i = udiv i32 %mul.i.i, %23
  br label %calc_src.exit

calc_src.exit:                                    ; preds = %if.then3.i, %read_vco.exit.i.calc_src.exit_crit_edge, %sw.bb1.i, %if.then.i, %entry.calc_src.exit_crit_edge
  %src0.0 = phi i32 [ 3, %if.then3.i ], [ 3, %read_vco.exit.i.calc_src.exit_crit_edge ], [ 2, %sw.bb1.i ], [ 196608, %if.then.i ], [ 0, %entry.calc_src.exit_crit_edge ]
  %div0.0 = phi i32 [ %sub.i.i, %if.then3.i ], [ 0, %read_vco.exit.i.calc_src.exit_crit_edge ], [ 0, %sw.bb1.i ], [ 0, %if.then.i ], [ 0, %entry.calc_src.exit_crit_edge ]
  %retval.0.i = phi i32 [ %div4.i.i, %if.then3.i ], [ %retval.0.i.i, %read_vco.exit.i.calc_src.exit_crit_edge ], [ %1, %sw.bb1.i ], [ %1, %if.then.i ], [ %1, %entry.calc_src.exit_crit_edge ]
  %mul.i1 = shl i32 %retval.0.i, 1
  %div1.i = udiv i32 %mul.i1, %1
  %24 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 65) #7
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 2) #7
  %sub.i = add nsw i32 %25, -2
  %div4.i = udiv i32 %mul.i1, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div4.i)
  %cmp.not = icmp eq i32 %1, %div4.i
  br i1 %cmp.not, label %calc_src.exit.if.end12_crit_edge, label %land.lhs.true

calc_src.exit.if.end12_crit_edge:                 ; preds = %calc_src.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %calc_src.exit
  %shl = shl nuw i32 1, %idx
  %and = and i32 %shl, 65415
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end12_crit_edge, label %if.then4

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %idx)
  %cmp5 = icmp slt i32 %idx, 8
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %coef = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 5
  %subdev1.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i, align 4
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bios2.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %limits.i) #7
  %30 = call ptr @memset(ptr %limits.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N.i) #7
  %31 = ptrtoint ptr %N.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %N.i, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M.i) #7
  %32 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %M.i, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P.i) #7
  %33 = ptrtoint ptr %P.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %P.i, align 4, !annotation !46
  %mul.i2 = shl i32 %idx, 5
  %add.i3 = add i32 %mul.i2, 1273856
  %call.i = call i32 @nvbios_pll_parse(ptr noundef %29, i32 noundef %add.i3, ptr noundef nonnull %limits.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i4, label %if.then6.calc_pll.exit_crit_edge

if.then6.calc_pll.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_pll.exit

if.end.i4:                                        ; preds = %if.then6
  %call3.i = call fastcc i32 @read_div(ptr noundef %clk, i32 noundef %idx, i32 noundef 1274144, i32 noundef 1274176) #7
  %refclk.i = getelementptr inbounds %struct.nvbios_pll, ptr %limits.i, i32 0, i32 2
  %34 = ptrtoint ptr %refclk.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call3.i, ptr %refclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool5.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool5.not.i, label %if.end.i4.calc_pll.exit_crit_edge, label %if.end7.i

if.end.i4.calc_pll.exit_crit_edge:                ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_pll.exit

if.end7.i:                                        ; preds = %if.end.i4
  %call8.i = call i32 @gt215_pll_calc(ptr noundef %subdev1.i, ptr noundef nonnull %limits.i, i32 noundef %1, ptr noundef nonnull %N.i, ptr noundef null, ptr noundef nonnull %M.i, ptr noundef nonnull %P.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 1
  br i1 %cmp.i, label %if.end7.i.calc_pll.exit_crit_edge, label %if.end10.i

if.end7.i.calc_pll.exit_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_pll.exit

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %P.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %P.i, align 4
  %shl.i = shl i32 %36, 16
  %37 = ptrtoint ptr %N.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %N.i, align 4
  %shl11.i = shl i32 %38, 8
  %or.i = or i32 %shl11.i, %shl.i
  %39 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %M.i, align 4
  %or12.i = or i32 %or.i, %40
  %41 = ptrtoint ptr %coef to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or12.i, ptr %coef, align 4
  br label %calc_pll.exit

calc_pll.exit:                                    ; preds = %if.end10.i, %if.end7.i.calc_pll.exit_crit_edge, %if.end.i4.calc_pll.exit_crit_edge, %if.then6.calc_pll.exit_crit_edge
  %retval.0.i5 = phi i32 [ %call8.i, %if.end10.i ], [ 0, %if.then6.calc_pll.exit_crit_edge ], [ 0, %if.end.i4.calc_pll.exit_crit_edge ], [ 0, %if.end7.i.calc_pll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %limits.i) #7
  br label %if.end10

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 22
  %42 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %calc_pll.exit
  %clk1.0 = phi i32 [ %retval.0.i5, %calc_pll.exit ], [ %43, %if.else ]
  %mul.i6 = shl i32 %clk1.0, 1
  %div1.i7 = udiv i32 %mul.i6, %1
  %44 = call i32 @llvm.umin.i32(i32 %div1.i7, i32 65) #7
  %45 = call i32 @llvm.umax.i32(i32 %44, i32 2) #7
  %sub.i8 = add nsw i32 %45, -2
  %div4.i9 = udiv i32 %mul.i6, %45
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %land.lhs.true.if.end12_crit_edge, %calc_src.exit.if.end12_crit_edge
  %div1P.0 = phi i32 [ 0, %calc_src.exit.if.end12_crit_edge ], [ 0, %land.lhs.true.if.end12_crit_edge ], [ %sub.i8, %if.end10 ]
  %clk1.1 = phi i32 [ 0, %calc_src.exit.if.end12_crit_edge ], [ 0, %land.lhs.true.if.end12_crit_edge ], [ %div4.i9, %if.end10 ]
  %sub = sub i32 %1, %div4.i
  %46 = call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub16 = sub i32 %1, %clk1.1
  %47 = call i32 @llvm.abs.i32(i32 %sub16, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %47)
  %cmp24.not = icmp sgt i32 %46, %47
  br i1 %cmp24.not, label %if.else38, label %if.then25

if.then25:                                        ; preds = %if.end12
  %dsrc = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 3
  %48 = ptrtoint ptr %dsrc to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %src0.0, ptr %dsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div0.0)
  %tobool26.not = icmp eq i32 %div0.0, 0
  br i1 %tobool26.not, label %if.then25.if.end30_crit_edge, label %if.then27

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %ddiv = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 4
  %49 = ptrtoint ptr %ddiv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ddiv, align 4
  %or = or i32 %div0.0, %50
  %or29 = or i32 %or, -2147483648
  store i32 %or29, ptr %ddiv, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then25.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool31.not = icmp eq i32 %sub.i, 0
  br i1 %tobool31.not, label %if.end30.if.end36_crit_edge, label %if.then32

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %mdiv = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 2
  %51 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mdiv, align 4
  %or33 = or i32 %sub.i, %52
  %or35 = or i32 %or33, -2147483648
  store i32 %or35, ptr %mdiv, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end30.if.end36_crit_edge
  %ssel = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 1
  %53 = ptrtoint ptr %ssel to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %ssel, align 4
  br label %if.end51

if.else38:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div1P.0)
  %tobool39.not = icmp eq i32 %div1P.0, 0
  br i1 %tobool39.not, label %if.else38.if.end46_crit_edge, label %if.then40

if.else38.if.end46_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then40:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  %mdiv41 = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 2
  %54 = ptrtoint ptr %mdiv41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mdiv41, align 4
  %shl43 = shl nuw nsw i32 %div1P.0, 8
  %or42 = or i32 %shl43, %55
  %or45 = or i32 %or42, -2147483648
  store i32 %or45, ptr %mdiv41, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.else38.if.end46_crit_edge
  %shl47 = shl nuw i32 1, %idx
  %ssel48 = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 1
  %56 = ptrtoint ptr %ssel48 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl47, ptr %ssel48, align 4
  %dsrc49 = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 3
  %57 = ptrtoint ptr %dsrc49 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1073742080, ptr %dsrc49, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end46, %if.end36
  %storemerge = phi i32 [ %clk1.1, %if.end46 ], [ %div4.i, %if.end36 ]
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %storemerge, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gk104_clk_prog_1_0(ptr nocapture noundef readonly %clk, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1274112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %idx
  %neg = xor i32 %shl, -1
  %and = and i32 %4, %neg
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 1274112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #7, !srcloc !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %7 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  br label %do.body5

do.body5:                                         ; preds = %do.cond13.do.body5_crit_edge, %entry
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 1274112
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %and12 = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %do.body5.if.end48_crit_edge, label %do.cond13

do.body5.if.end48_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.cond13:                                        ; preds = %do.body5
  %call14 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp = icmp sgt i64 %call14, -1
  br i1 %cmp, label %do.cond13.do.body5_crit_edge, label %do.end26

do.cond13.do.body5_crit_edge:                     ; preds = %do.cond13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end26:                                         ; preds = %do.cond13
  %11 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_wait, align 8
  %device28 = getelementptr inbounds %struct.nvkm_timer, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %device28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device28, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %call29 = call ptr @dev_driver_string(ptr noundef %16) #7
  %17 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_wait, align 8
  %device32 = getelementptr inbounds %struct.nvkm_timer, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %device32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device32, align 4
  %dev33 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev33, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end26.dev_name.exit_crit_edge

do.end26.dev_name.exit_crit_edge:                 ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end26.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %do.end26.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 375, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call29, ptr noundef %retval.0.i) #7
  br label %if.end48

if.end48:                                         ; preds = %dev_name.exit, %do.body5.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gk104_clk_prog_2(ptr nocapture noundef readonly %clk, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %mul = shl i32 %idx, 5
  %add = add i32 %mul, 1273856
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %and = and i32 %4, -5
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %and) #7, !srcloc !34
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %and18 = and i32 %9, -2
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %and18) #7, !srcloc !34
  %coef = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 5
  %12 = ptrtoint ptr %coef to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %coef, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end145_crit_edge, label %do.body23

entry.if.end145_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

do.body23:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %coef to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %coef, align 4
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add28 = add i32 %mul, 1273860
  %add.ptr29 = getelementptr i8, ptr %17, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %15) #7, !srcloc !34
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %or43 = or i32 %20, 1
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %or43) #7, !srcloc !34
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr53 = getelementptr i8, ptr %24, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %and59 = and i32 %25, -17
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr62 = getelementptr i8, ptr %27, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %and59) #7, !srcloc !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %28 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  br label %do.body64

do.body64:                                        ; preds = %do.cond74.do.body64_crit_edge, %do.body23
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr68 = getelementptr i8, ptr %30, i32 %add
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %and71 = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.cond74, label %do.body64.if.end109_crit_edge

do.body64.if.end109_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

do.cond74:                                        ; preds = %do.body64
  %call75 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp = icmp sgt i64 %call75, -1
  br i1 %cmp, label %do.cond74.do.body64_crit_edge, label %do.end87

do.cond74.do.body64_crit_edge:                    ; preds = %do.cond74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body64

do.end87:                                         ; preds = %do.cond74
  %32 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_wait, align 8
  %device89 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device89, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %call90 = call ptr @dev_driver_string(ptr noundef %37) #7
  %38 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_wait, align 8
  %device93 = getelementptr inbounds %struct.nvkm_timer, ptr %39, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %device93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device93, align 4
  %dev94 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev94, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end87.dev_name.exit_crit_edge

do.end87.dev_name.exit_crit_edge:                 ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end87.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %47, %if.end.i ], [ %45, %do.end87.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 402, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call90, ptr noundef %retval.0.i) #7
  br label %if.end109

if.end109:                                        ; preds = %dev_name.exit, %do.body64.if.end109_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr117 = getelementptr i8, ptr %49, i32 %add
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @arm_heavy_mb() #7
  %or124 = or i32 %50, 16
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr126 = getelementptr i8, ptr %52, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %or124) #7, !srcloc !34
  %53 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri, align 4
  %add.ptr134 = getelementptr i8, ptr %54, i32 %add
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @arm_heavy_mb() #7
  %or141 = or i32 %55, 4
  %56 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri, align 4
  %add.ptr143 = getelementptr i8, ptr %57, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %or141) #7, !srcloc !34
  br label %if.end145

if.end145:                                        ; preds = %if.end109, %entry.if.end145_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gk104_clk_prog_4_0(ptr nocapture noundef readonly %clk, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ssel = getelementptr %struct.gk104_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 1
  %0 = ptrtoint ptr %ssel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end55_crit_edge, label %if.then

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then:                                          ; preds = %entry
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1274112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %idx
  %neg = xor i32 %shl, -1
  %and = and i32 %6, %neg
  %7 = ptrtoint ptr %ssel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ssel, align 4
  %or = or i32 %8, %and
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 1274112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #7, !srcloc !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %11 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  br label %do.body6

do.body6:                                         ; preds = %do.cond17.do.body6_crit_edge, %if.then
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 1274112
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %and14 = and i32 %14, %shl
  %15 = ptrtoint ptr %ssel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ssel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %16)
  %cmp = icmp eq i32 %and14, %16
  br i1 %cmp, label %do.body6.if.end53_crit_edge, label %do.cond17

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.cond17:                                        ; preds = %do.body6
  %call18 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp19 = icmp sgt i64 %call18, -1
  br i1 %cmp19, label %do.cond17.do.body6_crit_edge, label %do.end31

do.cond17.do.body6_crit_edge:                     ; preds = %do.cond17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.end31:                                         ; preds = %do.cond17
  %17 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_wait, align 8
  %device33 = getelementptr inbounds %struct.nvkm_timer, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %device33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device33, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %call34 = call ptr @dev_driver_string(ptr noundef %22) #7
  %23 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_wait, align 8
  %device37 = getelementptr inbounds %struct.nvkm_timer, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %device37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device37, align 4
  %dev38 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev38, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end31.dev_name.exit_crit_edge

do.end31.dev_name.exit_crit_edge:                 ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end31.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %32, %if.end.i ], [ %30, %do.end31.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 432, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call34, ptr noundef %retval.0.i) #7
  br label %if.end53

if.end53:                                         ; preds = %dev_name.exit, %do.body6.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %entry.if.end55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c", i32 494, i32 83}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c", i32 497, i32 34}
!4 = !{ptr @gk104_clk, !5, !"gk104_clk", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c", i32 486, i32 1}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c", i32 217, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gk104_clk_read._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @gk104_clk_read._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk104.c", i32 372, i32 2}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 5397697}
!26 = !{i64 2156244855}
!27 = !{i64 2156242864}
!28 = !{i64 2156243255}
!29 = !{i64 2156243646}
!30 = !{i64 2156245276}
!31 = !{i64 2156245661}
!32 = !{i64 2156263704}
!33 = !{i64 2156264106}
!34 = !{i64 5397279}
!35 = !{i64 2156264581}
!36 = !{i64 2156269417}
!37 = !{i64 2156269819}
!38 = !{i64 2156288160}
!39 = !{i64 2156288562}
!40 = !{i64 2156289450}
!41 = !{i64 2156289852}
!42 = !{i64 2156246091}
!43 = !{i64 2156244058}
!44 = !{i64 2156244470}
!45 = !{i64 2156242473}
!46 = !{!"auto-init"}
!47 = !{i64 2156265422}
!48 = !{i64 2156265824}
!49 = !{i64 2156267739}
!50 = !{i64 2156270695}
!51 = !{i64 2156271097}
!52 = !{i64 2156271973}
!53 = !{i64 2156272375}
!54 = !{i64 2156272826}
!55 = !{i64 2156273670}
!56 = !{i64 2156274072}
!57 = !{i64 2156274948}
!58 = !{i64 2156275350}
!59 = !{i64 2156277277}
!60 = !{i64 2156278943}
!61 = !{i64 2156279345}
!62 = !{i64 2156280221}
!63 = !{i64 2156280623}
!64 = !{i64 2156284076}
!65 = !{i64 2156284478}
!66 = !{i64 2156286456}
