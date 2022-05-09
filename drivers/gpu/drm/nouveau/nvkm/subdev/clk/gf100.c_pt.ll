; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c"
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
%struct.gf100_clk = type { %struct.nvkm_clk, [16 x %struct.gf100_clk_info] }
%struct.gf100_clk_info = type { i32, i32, i32, i32, i32, i32 }
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
@gf100_clk = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [12 x %struct.nvkm_domain] }, [32 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [12 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @gf100_clk_read, ptr @gf100_clk_calc, ptr @gf100_clk_prog, ptr @gf100_clk_tidy, ptr null, i32 0, [12 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 22, i8 0, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 21, i8 1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 24, i8 2, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 3, i8 2, ptr @.str, i32 2000 }, %struct.nvkm_domain { i32 20, i8 4, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 18, i8 5, i8 0, ptr @.str.1, i32 1000 }, %struct.nvkm_domain { i32 27, i8 6, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 25, i8 10, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 23, i8 11, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@gf100_clk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 204, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid clock source %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gf100_clk_read\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_clk_read._entry_ptr = internal global ptr @gf100_clk_read._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 27]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [10 x i64] [i64 8, i64 32, i64 59392, i64 59424, i64 1253376, i64 1253408, i64 1273856, i64 1273888, i64 1273920, i64 1274080]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 27000, i64 100000, i64 108000]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 460, i32 58 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 462, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"gf100_clk\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 449, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 204, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 359, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @gf100_clk_read._entry, ptr @gf100_clk_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @gf100_clk, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_clk to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_clk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_clk_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
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
  %call2 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @gf100_clk, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext false, ptr noundef nonnull %call7.i.i) #7
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
define internal i32 @gf100_clk_read(ptr noundef %base, i32 noundef %src) #0 align 64 {
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
    i32 9, label %sw.bb5
    i32 10, label %sw.bb6
    i32 11, label %sw.bb8
    i32 12, label %sw.bb10
    i32 13, label %sw.bb12
    i32 14, label %sw.bb14
    i32 18, label %sw.bb16
    i32 19, label %sw.bb24
    i32 20, label %sw.bb26
    i32 23, label %sw.bb28
    i32 22, label %sw.bb30
    i32 21, label %sw.bb32
    i32 24, label %sw.bb34
    i32 25, label %sw.bb36
    i32 27, label %sw.bb38
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
  %add.ptr.i = getelementptr i8, ptr %6, i32 59392
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 59396
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %and12.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i, label %sw.bb5.cleanup_crit_edge, label %if.end.i

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i = and i32 %10, 255
  %and8.i = lshr i32 %10, 8
  %shr9.i = and i32 %and8.i, 255
  %crystal.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %crystal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crystal.i, align 4
  %mul.i = mul i32 %12, %shr9.i
  %div22.i = udiv i32 %mul.i, %and10.i
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %pri.i70 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %pri.i70 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i70, align 4
  %add.ptr.i71 = getelementptr i8, ptr %14, i32 59424
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %16 = ptrtoint ptr %pri.i70 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri.i70, align 4
  %add.ptr5.i72 = getelementptr i8, ptr %17, i32 59428
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i72) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %and12.i78 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i78)
  %tobool.not.i79 = icmp eq i32 %and12.i78, 0
  br i1 %tobool.not.i79, label %sw.bb6.cleanup_crit_edge, label %if.end.i80

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i80:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i77 = and i32 %18, 255
  %and8.i75 = lshr i32 %18, 8
  %shr9.i76 = and i32 %and8.i75, 255
  %crystal.i81 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %crystal.i81 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crystal.i81, align 4
  %mul.i82 = mul i32 %20, %shr9.i76
  %div22.i83 = udiv i32 %mul.i82, %and10.i77
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %pri.i87 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %pri.i87 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %22, i32 1274656
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and.i89 = and i32 %23, 3
  %24 = zext i32 %and.i89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and.i89, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb8.cleanup_crit_edge
    i32 3, label %sw.bb4.i
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb8
  %and2.i = and i32 %23, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and2.i)
  %cmp.not.i = icmp eq i32 %and2.i, 196608
  br i1 %cmp.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.then.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i90 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %crystal.i90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %crystal.i90, align 4
  br label %cleanup

sw.bb4.i:                                         ; preds = %sw.bb8
  %27 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device3, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 1274656
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %and.i.i = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 9, i32 10
  %call5.i.i = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef %..i.i) #7
  %32 = ptrtoint ptr %pri.i87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri.i87, align 4
  %add.ptr14.i = getelementptr i8, ptr %33, i32 1274672
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool.not.i91 = icmp sgt i32 %34, -1
  br i1 %tobool.not.i91, label %sw.bb4.i.if.end26.i_crit_edge, label %if.then18.i

sw.bb4.i.if.end26.i_crit_edge:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then18.i:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  %and19.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %shr.i92 = lshr i32 %34, 8
  %spec.select.i = select i1 %tobool20.not.i, i32 %34, i32 %shr.i92
  %and23.i = and i32 %spec.select.i, 63
  %add24.i = add nuw nsw i32 %and23.i, 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then18.i, %sw.bb4.i.if.end26.i_crit_edge
  %sdiv.0.i = phi i32 [ %add24.i, %if.then18.i ], [ 2, %sw.bb4.i.if.end26.i_crit_edge ]
  %mul27.i = shl i32 %call5.i.i, 1
  %div.i = udiv i32 %mul27.i, %sdiv.0.i
  br label %cleanup

sw.default.i:                                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %pri.i95 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %pri.i95 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %36, i32 1253408
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %38 = ptrtoint ptr %pri.i95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i95, align 4
  %add.ptr5.i97 = getelementptr i8, ptr %39, i32 1253412
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i97) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %and12.i103 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i103)
  %tobool.not.i104 = icmp eq i32 %and12.i103, 0
  br i1 %tobool.not.i104, label %sw.bb10.cleanup_crit_edge, label %if.end.i105

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i105:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i102 = and i32 %40, 255
  %and8.i100 = lshr i32 %40, 8
  %shr9.i101 = and i32 %and8.i100, 255
  %and.i98 = lshr i32 %40, 16
  %shr.i99 = and i32 %and.i98, 63
  %call18.i = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 11) #7
  %mul.i106 = mul i32 %call18.i, %shr9.i101
  %div22.i107 = udiv i32 %mul.i106, %and10.i102
  %div23.i = udiv i32 %div22.i107, %shr.i99
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %pri.i111 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %41 = ptrtoint ptr %pri.i111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i111, align 4
  %add.ptr.i112 = getelementptr i8, ptr %42, i32 1253376
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %44 = ptrtoint ptr %pri.i111 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i111, align 4
  %add.ptr5.i113 = getelementptr i8, ptr %45, i32 1253380
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i113) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %and12.i119 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i119)
  %tobool.not.i120 = icmp eq i32 %and12.i119, 0
  br i1 %tobool.not.i120, label %sw.bb12.cleanup_crit_edge, label %if.end.i121

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i121:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i118 = and i32 %46, 255
  %and8.i116 = lshr i32 %46, 8
  %shr9.i117 = and i32 %and8.i116, 255
  %and.i114 = lshr i32 %46, 16
  %shr.i115 = and i32 %and.i114, 63
  %call15.i = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 12) #7
  %mul.i122 = mul i32 %call15.i, %shr9.i117
  %div22.i123 = udiv i32 %mul.i122, %and10.i118
  %div23.i124 = udiv i32 %div22.i123, %shr.i115
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %pri.i128 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %47 = ptrtoint ptr %pri.i128 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i128, align 4
  %add.ptr.i129 = getelementptr i8, ptr %48, i32 1274624
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and.i130 = and i32 %49, 3
  %50 = zext i32 %and.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and.i130, label %sw.default.i156 [
    i32 0, label %sw.bb.i133
    i32 2, label %sw.bb14.cleanup_crit_edge
    i32 3, label %sw.bb4.i142
  ]

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i133:                                       ; preds = %sw.bb14
  %and2.i131 = and i32 %49, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and2.i131)
  %cmp.not.i132 = icmp eq i32 %and2.i131, 196608
  br i1 %cmp.not.i132, label %sw.bb.i133.cleanup_crit_edge, label %if.then.i135

sw.bb.i133.cleanup_crit_edge:                     ; preds = %sw.bb.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i135:                                     ; preds = %sw.bb.i133
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i134 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %51 = ptrtoint ptr %crystal.i134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %crystal.i134, align 4
  br label %cleanup

sw.bb4.i142:                                      ; preds = %sw.bb14
  %53 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device3, align 4
  %pri.i.i136 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %pri.i.i136 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri.i.i136, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %56, i32 1274624
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i137) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %and.i.i138 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i138)
  %tobool.not.i.i139 = icmp eq i32 %and.i.i138, 0
  %..i.i140 = select i1 %tobool.not.i.i139, i32 9, i32 10
  %call5.i.i141 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef %..i.i140) #7
  %58 = ptrtoint ptr %pri.i128 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri.i128, align 4
  %add.ptr14.i143 = getelementptr i8, ptr %59, i32 1274640
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i143) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %tobool.not.i144 = icmp sgt i32 %60, -1
  br i1 %tobool.not.i144, label %sw.bb4.i142.if.end26.i155_crit_edge, label %if.then18.i151

sw.bb4.i142.if.end26.i155_crit_edge:              ; preds = %sw.bb4.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i155

if.then18.i151:                                   ; preds = %sw.bb4.i142
  call void @__sanitizer_cov_trace_pc() #9
  %and19.i145 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i145)
  %tobool20.not.i146 = icmp eq i32 %and19.i145, 0
  %shr.i147 = lshr i32 %60, 8
  %spec.select.i148 = select i1 %tobool20.not.i146, i32 %60, i32 %shr.i147
  %and23.i149 = and i32 %spec.select.i148, 63
  %add24.i150 = add nuw nsw i32 %and23.i149, 2
  br label %if.end26.i155

if.end26.i155:                                    ; preds = %if.then18.i151, %sw.bb4.i142.if.end26.i155_crit_edge
  %sdiv.0.i152 = phi i32 [ %add24.i150, %if.then18.i151 ], [ 2, %sw.bb4.i142.if.end26.i155_crit_edge ]
  %mul27.i153 = shl i32 %call5.i.i141, 1
  %div.i154 = udiv i32 %mul27.i153, %sdiv.0.i152
  br label %cleanup

sw.default.i156:                                  ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %61 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %62, i32 1274864
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %and = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 13) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 14) #7
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %pri.i160 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %64 = ptrtoint ptr %pri.i160 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri.i160, align 4
  %add.ptr.i161 = getelementptr i8, ptr %65, i32 1274448
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  %67 = ptrtoint ptr %pri.i160 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri.i160, align 4
  %add.ptr4.i = getelementptr i8, ptr %68, i32 1274112
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  %and.i162 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool.not.i163 = icmp eq i32 %and.i162, 0
  %70 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device3, align 4
  %pri.i218 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %pri.i218 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri.i218, align 4
  br i1 %tobool.not.i163, label %if.else14.i, label %if.then.i164

if.then.i164:                                     ; preds = %sw.bb24
  %add.ptr.i251 = getelementptr i8, ptr %73, i32 1273856
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i251) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %75 = ptrtoint ptr %pri.i218 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri.i218, align 4
  %add.ptr5.i252 = getelementptr i8, ptr %76, i32 1273860
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i252) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %and12.i258 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i258)
  %tobool.not.i259 = icmp eq i32 %and12.i258, 0
  br i1 %tobool.not.i259, label %if.then.i164.read_pll.exit265_crit_edge, label %if.end.i260

if.then.i164.read_pll.exit265_crit_edge:          ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pll.exit265

if.end.i260:                                      ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i257 = and i32 %77, 255
  %and8.i255 = lshr i32 %77, 8
  %shr9.i256 = and i32 %and8.i255, 255
  %and.i253 = lshr i32 %77, 16
  %shr.i254 = and i32 %and.i253, 63
  %call21.i = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 0, i32 noundef 1274144, i32 noundef 1274176) #7
  %mul.i261 = mul i32 %call21.i, %shr9.i256
  %div22.i262 = udiv i32 %mul.i261, %and10.i257
  %div23.i263 = udiv i32 %div22.i262, %shr.i254
  br label %read_pll.exit265

read_pll.exit265:                                 ; preds = %if.end.i260, %if.then.i164.read_pll.exit265_crit_edge
  %retval.0.i264 = phi i32 [ %div23.i263, %if.end.i260 ], [ 0, %if.then.i164.read_pll.exit265_crit_edge ]
  %and12.i165 = lshr i32 %66, 8
  br label %if.end19.i

if.else14.i:                                      ; preds = %sw.bb24
  %add.ptr.i219 = getelementptr i8, ptr %73, i32 1274208
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and.i220 = and i32 %78, 3
  %79 = zext i32 %and.i220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and.i220, label %sw.default.i246 [
    i32 0, label %sw.bb.i223
    i32 2, label %if.else14.i.if.end19.i_crit_edge
    i32 3, label %sw.bb4.i232
  ]

if.else14.i.if.end19.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

sw.bb.i223:                                       ; preds = %if.else14.i
  %and2.i221 = and i32 %78, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and2.i221)
  %cmp.not.i222 = icmp eq i32 %and2.i221, 196608
  br i1 %cmp.not.i222, label %sw.bb.i223.if.end19.i_crit_edge, label %if.then.i225

sw.bb.i223.if.end19.i_crit_edge:                  ; preds = %sw.bb.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then.i225:                                     ; preds = %sw.bb.i223
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i224 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 18
  %80 = ptrtoint ptr %crystal.i224 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %crystal.i224, align 4
  br label %if.end19.i

sw.bb4.i232:                                      ; preds = %if.else14.i
  %82 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device3, align 4
  %pri.i.i226 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %pri.i.i226 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri.i.i226, align 4
  %add.ptr.i.i227 = getelementptr i8, ptr %85, i32 1274208
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i227) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %and.i.i228 = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i228)
  %tobool.not.i.i229 = icmp eq i32 %and.i.i228, 0
  %..i.i230 = select i1 %tobool.not.i.i229, i32 9, i32 10
  %call5.i.i231 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef %..i.i230) #7
  %87 = ptrtoint ptr %pri.i218 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri.i218, align 4
  %add.ptr14.i233 = getelementptr i8, ptr %88, i32 1274320
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i233) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %tobool.not.i234 = icmp sgt i32 %89, -1
  br i1 %tobool.not.i234, label %sw.bb4.i232.if.end26.i245_crit_edge, label %if.then18.i241

sw.bb4.i232.if.end26.i245_crit_edge:              ; preds = %sw.bb4.i232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i245

if.then18.i241:                                   ; preds = %sw.bb4.i232
  call void @__sanitizer_cov_trace_pc() #9
  %and19.i235 = and i32 %78, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i235)
  %tobool20.not.i236 = icmp eq i32 %and19.i235, 0
  %shr.i237 = lshr i32 %89, 8
  %spec.select.i238 = select i1 %tobool20.not.i236, i32 %89, i32 %shr.i237
  %and23.i239 = and i32 %spec.select.i238, 63
  %add24.i240 = add nuw nsw i32 %and23.i239, 2
  br label %if.end26.i245

if.end26.i245:                                    ; preds = %if.then18.i241, %sw.bb4.i232.if.end26.i245_crit_edge
  %sdiv.0.i242 = phi i32 [ %add24.i240, %if.then18.i241 ], [ 2, %sw.bb4.i232.if.end26.i245_crit_edge ]
  %mul27.i243 = shl i32 %call5.i.i231, 1
  %div.i244 = udiv i32 %mul27.i243, %sdiv.0.i242
  br label %if.end19.i

sw.default.i246:                                  ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %sw.default.i246, %if.end26.i245, %if.then.i225, %sw.bb.i223.if.end19.i_crit_edge, %if.else14.i.if.end19.i_crit_edge, %read_pll.exit265
  %sclk.1.i = phi i32 [ %retval.0.i264, %read_pll.exit265 ], [ 0, %sw.default.i246 ], [ %div.i244, %if.end26.i245 ], [ %81, %if.then.i225 ], [ 108000, %sw.bb.i223.if.end19.i_crit_edge ], [ 100000, %if.else14.i.if.end19.i_crit_edge ]
  %sdiv.0.in.in.i = phi i32 [ %and12.i165, %read_pll.exit265 ], [ %66, %sw.default.i246 ], [ %66, %if.end26.i245 ], [ %66, %if.then.i225 ], [ %66, %sw.bb.i223.if.end19.i_crit_edge ], [ %66, %if.else14.i.if.end19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %tobool21.not.i = icmp sgt i32 %66, -1
  br i1 %tobool21.not.i, label %if.end19.i.cleanup_crit_edge, label %if.then22.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %sdiv.0.in.i = and i32 %sdiv.0.in.in.i, 63
  %sdiv.0.i168 = add nuw nsw i32 %sdiv.0.in.i, 2
  %mul23.i = shl i32 %sclk.1.i, 1
  %div.i169 = udiv i32 %mul23.i, %sdiv.0.i168
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %pri.i172 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %90 = ptrtoint ptr %pri.i172 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri.i172, align 4
  %add.ptr.i173 = getelementptr i8, ptr %91, i32 1274452
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  %93 = ptrtoint ptr %pri.i172 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri.i172, align 4
  %add.ptr4.i174 = getelementptr i8, ptr %94, i32 1274112
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i174) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  %and.i175 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool.not.i176 = icmp eq i32 %and.i175, 0
  %96 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device3, align 4
  %pri.i267 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %pri.i267 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri.i267, align 4
  br i1 %tobool.not.i176, label %if.else14.i182, label %if.then.i177

if.then.i177:                                     ; preds = %sw.bb26
  %add.ptr.i300 = getelementptr i8, ptr %99, i32 1273888
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i300) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %101 = ptrtoint ptr %pri.i267 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri.i267, align 4
  %add.ptr5.i301 = getelementptr i8, ptr %102, i32 1273892
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i301) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %and12.i307 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i307)
  %tobool.not.i308 = icmp eq i32 %and12.i307, 0
  br i1 %tobool.not.i308, label %if.then.i177.read_pll.exit315_crit_edge, label %if.end.i309

if.then.i177.read_pll.exit315_crit_edge:          ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pll.exit315

if.end.i309:                                      ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i306 = and i32 %103, 255
  %and8.i304 = lshr i32 %103, 8
  %shr9.i305 = and i32 %and8.i304, 255
  %and.i302 = lshr i32 %103, 16
  %shr.i303 = and i32 %and.i302, 63
  %call21.i310 = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 1, i32 noundef 1274144, i32 noundef 1274176) #7
  %mul.i311 = mul i32 %call21.i310, %shr9.i305
  %div22.i312 = udiv i32 %mul.i311, %and10.i306
  %div23.i313 = udiv i32 %div22.i312, %shr.i303
  br label %read_pll.exit315

read_pll.exit315:                                 ; preds = %if.end.i309, %if.then.i177.read_pll.exit315_crit_edge
  %retval.0.i314 = phi i32 [ %div23.i313, %if.end.i309 ], [ 0, %if.then.i177.read_pll.exit315_crit_edge ]
  %and12.i179 = lshr i32 %92, 8
  br label %if.end19.i186

if.else14.i182:                                   ; preds = %sw.bb26
  %add.ptr.i268 = getelementptr i8, ptr %99, i32 1274212
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i268) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and.i269 = and i32 %104, 3
  %105 = zext i32 %and.i269 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and.i269, label %sw.default.i295 [
    i32 0, label %sw.bb.i272
    i32 2, label %if.else14.i182.if.end19.i186_crit_edge
    i32 3, label %sw.bb4.i281
  ]

if.else14.i182.if.end19.i186_crit_edge:           ; preds = %if.else14.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i186

sw.bb.i272:                                       ; preds = %if.else14.i182
  %and2.i270 = and i32 %104, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and2.i270)
  %cmp.not.i271 = icmp eq i32 %and2.i270, 196608
  br i1 %cmp.not.i271, label %sw.bb.i272.if.end19.i186_crit_edge, label %if.then.i274

sw.bb.i272.if.end19.i186_crit_edge:               ; preds = %sw.bb.i272
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i186

if.then.i274:                                     ; preds = %sw.bb.i272
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i273 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 18
  %106 = ptrtoint ptr %crystal.i273 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %crystal.i273, align 4
  br label %if.end19.i186

sw.bb4.i281:                                      ; preds = %if.else14.i182
  %108 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device3, align 4
  %pri.i.i275 = getelementptr inbounds %struct.nvkm_device, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %pri.i.i275 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri.i.i275, align 4
  %add.ptr.i.i276 = getelementptr i8, ptr %111, i32 1274212
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i276) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %and.i.i277 = and i32 %112, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i277)
  %tobool.not.i.i278 = icmp eq i32 %and.i.i277, 0
  %..i.i279 = select i1 %tobool.not.i.i278, i32 9, i32 10
  %call5.i.i280 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef %..i.i279) #7
  %113 = ptrtoint ptr %pri.i267 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pri.i267, align 4
  %add.ptr14.i282 = getelementptr i8, ptr %114, i32 1274324
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i282) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %tobool.not.i283 = icmp sgt i32 %115, -1
  br i1 %tobool.not.i283, label %sw.bb4.i281.if.end26.i294_crit_edge, label %if.then18.i290

sw.bb4.i281.if.end26.i294_crit_edge:              ; preds = %sw.bb4.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i294

if.then18.i290:                                   ; preds = %sw.bb4.i281
  call void @__sanitizer_cov_trace_pc() #9
  %and19.i284 = and i32 %104, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i284)
  %tobool20.not.i285 = icmp eq i32 %and19.i284, 0
  %shr.i286 = lshr i32 %115, 8
  %spec.select.i287 = select i1 %tobool20.not.i285, i32 %115, i32 %shr.i286
  %and23.i288 = and i32 %spec.select.i287, 63
  %add24.i289 = add nuw nsw i32 %and23.i288, 2
  br label %if.end26.i294

if.end26.i294:                                    ; preds = %if.then18.i290, %sw.bb4.i281.if.end26.i294_crit_edge
  %sdiv.0.i291 = phi i32 [ %add24.i289, %if.then18.i290 ], [ 2, %sw.bb4.i281.if.end26.i294_crit_edge ]
  %mul27.i292 = shl i32 %call5.i.i280, 1
  %div.i293 = udiv i32 %mul27.i292, %sdiv.0.i291
  br label %if.end19.i186

sw.default.i295:                                  ; preds = %if.else14.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i186

if.end19.i186:                                    ; preds = %sw.default.i295, %if.end26.i294, %if.then.i274, %sw.bb.i272.if.end19.i186_crit_edge, %if.else14.i182.if.end19.i186_crit_edge, %read_pll.exit315
  %sclk.1.i183 = phi i32 [ %retval.0.i314, %read_pll.exit315 ], [ 0, %sw.default.i295 ], [ %div.i293, %if.end26.i294 ], [ %107, %if.then.i274 ], [ 108000, %sw.bb.i272.if.end19.i186_crit_edge ], [ 100000, %if.else14.i182.if.end19.i186_crit_edge ]
  %sdiv.0.in.in.i184 = phi i32 [ %and12.i179, %read_pll.exit315 ], [ %92, %sw.default.i295 ], [ %92, %if.end26.i294 ], [ %92, %if.then.i274 ], [ %92, %sw.bb.i272.if.end19.i186_crit_edge ], [ %92, %if.else14.i182.if.end19.i186_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %tobool21.not.i185 = icmp sgt i32 %92, -1
  br i1 %tobool21.not.i185, label %if.end19.i186.cleanup_crit_edge, label %if.then22.i191

if.end19.i186.cleanup_crit_edge:                  ; preds = %if.end19.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.i191:                                   ; preds = %if.end19.i186
  call void @__sanitizer_cov_trace_pc() #9
  %sdiv.0.in.i187 = and i32 %sdiv.0.in.in.i184, 63
  %sdiv.0.i188 = add nuw nsw i32 %sdiv.0.in.i187, 2
  %mul23.i189 = shl i32 %sclk.1.i183, 1
  %div.i190 = udiv i32 %mul23.i189, %sdiv.0.i188
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  %pri.i195 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %116 = ptrtoint ptr %pri.i195 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri.i195, align 4
  %add.ptr.i196 = getelementptr i8, ptr %117, i32 1274456
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  %119 = ptrtoint ptr %pri.i195 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pri.i195, align 4
  %add.ptr4.i197 = getelementptr i8, ptr %120, i32 1274112
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i197) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  %and.i198 = and i32 %121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool.not.i199 = icmp eq i32 %and.i198, 0
  %122 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device3, align 4
  %pri.i317 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 11
  %124 = ptrtoint ptr %pri.i317 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri.i317, align 4
  br i1 %tobool.not.i199, label %if.else14.i205, label %if.then.i200

if.then.i200:                                     ; preds = %sw.bb28
  %add.ptr.i350 = getelementptr i8, ptr %125, i32 1273920
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i350) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %127 = ptrtoint ptr %pri.i317 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pri.i317, align 4
  %add.ptr5.i351 = getelementptr i8, ptr %128, i32 1273924
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i351) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %and12.i357 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i357)
  %tobool.not.i358 = icmp eq i32 %and12.i357, 0
  br i1 %tobool.not.i358, label %if.then.i200.read_pll.exit365_crit_edge, label %if.end.i359

if.then.i200.read_pll.exit365_crit_edge:          ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_pll.exit365

if.end.i359:                                      ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i356 = and i32 %129, 255
  %and8.i354 = lshr i32 %129, 8
  %shr9.i355 = and i32 %and8.i354, 255
  %and.i352 = lshr i32 %129, 16
  %shr.i353 = and i32 %and.i352, 63
  %call21.i360 = tail call fastcc i32 @read_div(ptr noundef %base, i32 noundef 2, i32 noundef 1274144, i32 noundef 1274176) #7
  %mul.i361 = mul i32 %call21.i360, %shr9.i355
  %div22.i362 = udiv i32 %mul.i361, %and10.i356
  %div23.i363 = udiv i32 %div22.i362, %shr.i353
  br label %read_pll.exit365

read_pll.exit365:                                 ; preds = %if.end.i359, %if.then.i200.read_pll.exit365_crit_edge
  %retval.0.i364 = phi i32 [ %div23.i363, %if.end.i359 ], [ 0, %if.then.i200.read_pll.exit365_crit_edge ]
  %and12.i202 = lshr i32 %118, 8
  br label %if.end19.i209

if.else14.i205:                                   ; preds = %sw.bb28
  %add.ptr.i318 = getelementptr i8, ptr %125, i32 1274216
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and.i319 = and i32 %130, 3
  %131 = zext i32 %and.i319 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and.i319, label %sw.default.i345 [
    i32 0, label %sw.bb.i322
    i32 2, label %if.else14.i205.if.end19.i209_crit_edge
    i32 3, label %sw.bb4.i331
  ]

if.else14.i205.if.end19.i209_crit_edge:           ; preds = %if.else14.i205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i209

sw.bb.i322:                                       ; preds = %if.else14.i205
  %and2.i320 = and i32 %130, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and2.i320)
  %cmp.not.i321 = icmp eq i32 %and2.i320, 196608
  br i1 %cmp.not.i321, label %sw.bb.i322.if.end19.i209_crit_edge, label %if.then.i324

sw.bb.i322.if.end19.i209_crit_edge:               ; preds = %sw.bb.i322
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i209

if.then.i324:                                     ; preds = %sw.bb.i322
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i323 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 18
  %132 = ptrtoint ptr %crystal.i323 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %crystal.i323, align 4
  br label %if.end19.i209

sw.bb4.i331:                                      ; preds = %if.else14.i205
  %134 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %device3, align 4
  %pri.i.i325 = getelementptr inbounds %struct.nvkm_device, ptr %135, i32 0, i32 11
  %136 = ptrtoint ptr %pri.i.i325 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri.i.i325, align 4
  %add.ptr.i.i326 = getelementptr i8, ptr %137, i32 1274216
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i326) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %and.i.i327 = and i32 %138, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i327)
  %tobool.not.i.i328 = icmp eq i32 %and.i.i327, 0
  %..i.i329 = select i1 %tobool.not.i.i328, i32 9, i32 10
  %call5.i.i330 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef %..i.i329) #7
  %139 = ptrtoint ptr %pri.i317 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pri.i317, align 4
  %add.ptr14.i332 = getelementptr i8, ptr %140, i32 1274328
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i332) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %141)
  %tobool.not.i333 = icmp sgt i32 %141, -1
  br i1 %tobool.not.i333, label %sw.bb4.i331.if.end26.i344_crit_edge, label %if.then18.i340

sw.bb4.i331.if.end26.i344_crit_edge:              ; preds = %sw.bb4.i331
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i344

if.then18.i340:                                   ; preds = %sw.bb4.i331
  call void @__sanitizer_cov_trace_pc() #9
  %and19.i334 = and i32 %130, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i334)
  %tobool20.not.i335 = icmp eq i32 %and19.i334, 0
  %shr.i336 = lshr i32 %141, 8
  %spec.select.i337 = select i1 %tobool20.not.i335, i32 %141, i32 %shr.i336
  %and23.i338 = and i32 %spec.select.i337, 63
  %add24.i339 = add nuw nsw i32 %and23.i338, 2
  br label %if.end26.i344

if.end26.i344:                                    ; preds = %if.then18.i340, %sw.bb4.i331.if.end26.i344_crit_edge
  %sdiv.0.i341 = phi i32 [ %add24.i339, %if.then18.i340 ], [ 2, %sw.bb4.i331.if.end26.i344_crit_edge ]
  %mul27.i342 = shl i32 %call5.i.i330, 1
  %div.i343 = udiv i32 %mul27.i342, %sdiv.0.i341
  br label %if.end19.i209

sw.default.i345:                                  ; preds = %if.else14.i205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i209

if.end19.i209:                                    ; preds = %sw.default.i345, %if.end26.i344, %if.then.i324, %sw.bb.i322.if.end19.i209_crit_edge, %if.else14.i205.if.end19.i209_crit_edge, %read_pll.exit365
  %sclk.1.i206 = phi i32 [ %retval.0.i364, %read_pll.exit365 ], [ 0, %sw.default.i345 ], [ %div.i343, %if.end26.i344 ], [ %133, %if.then.i324 ], [ 108000, %sw.bb.i322.if.end19.i209_crit_edge ], [ 100000, %if.else14.i205.if.end19.i209_crit_edge ]
  %sdiv.0.in.in.i207 = phi i32 [ %and12.i202, %read_pll.exit365 ], [ %118, %sw.default.i345 ], [ %118, %if.end26.i344 ], [ %118, %if.then.i324 ], [ %118, %sw.bb.i322.if.end19.i209_crit_edge ], [ %118, %if.else14.i205.if.end19.i209_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %tobool21.not.i208 = icmp sgt i32 %118, -1
  br i1 %tobool21.not.i208, label %if.end19.i209.cleanup_crit_edge, label %if.then22.i214

if.end19.i209.cleanup_crit_edge:                  ; preds = %if.end19.i209
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.i214:                                   ; preds = %if.end19.i209
  call void @__sanitizer_cov_trace_pc() #9
  %sdiv.0.in.i210 = and i32 %sdiv.0.in.in.i207, 63
  %sdiv.0.i211 = add nuw nsw i32 %sdiv.0.in.i210, 2
  %mul23.i212 = shl i32 %sclk.1.i206, 1
  %div.i213 = udiv i32 %mul23.i212, %sdiv.0.i211
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef 7)
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef 8)
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef 9)
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef 12)
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef 14)
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %142 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.not = icmp eq i32 %143, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %src) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %if.then22.i214, %if.end19.i209.cleanup_crit_edge, %if.then22.i191, %if.end19.i186.cleanup_crit_edge, %if.then22.i, %if.end19.i.cleanup_crit_edge, %if.end, %if.then, %sw.default.i156, %if.end26.i155, %if.then.i135, %sw.bb.i133.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end.i121, %sw.bb12.cleanup_crit_edge, %if.end.i105, %sw.bb10.cleanup_crit_edge, %sw.default.i, %if.end26.i, %if.then.i, %sw.bb.i.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end.i80, %sw.bb6.cleanup_crit_edge, %if.end.i, %sw.bb5.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %sw.bb38 ], [ %call37, %sw.bb36 ], [ %call35, %sw.bb34 ], [ %call33, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %call21, %if.then ], [ %call23, %if.end ], [ %4, %sw.bb ], [ 100000, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %div22.i, %if.end.i ], [ 0, %sw.bb5.cleanup_crit_edge ], [ %div22.i83, %if.end.i80 ], [ 0, %sw.bb6.cleanup_crit_edge ], [ 0, %sw.default.i ], [ %div.i, %if.end26.i ], [ %26, %if.then.i ], [ 108000, %sw.bb.i.cleanup_crit_edge ], [ 100000, %sw.bb8.cleanup_crit_edge ], [ %div23.i, %if.end.i105 ], [ 0, %sw.bb10.cleanup_crit_edge ], [ %div23.i124, %if.end.i121 ], [ 0, %sw.bb12.cleanup_crit_edge ], [ 0, %sw.default.i156 ], [ %div.i154, %if.end26.i155 ], [ %52, %if.then.i135 ], [ 108000, %sw.bb.i133.cleanup_crit_edge ], [ 100000, %sw.bb14.cleanup_crit_edge ], [ %div.i169, %if.then22.i ], [ %sclk.1.i, %if.end19.i.cleanup_crit_edge ], [ %div.i190, %if.then22.i191 ], [ %sclk.1.i183, %if.end19.i186.cleanup_crit_edge ], [ %div.i213, %if.then22.i214 ], [ %sclk.1.i206, %if.end19.i209.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_clk_calc(ptr noundef %base, ptr nocapture noundef readonly %cstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 0, i32 noundef 19)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 1, i32 noundef 20)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 2, i32 noundef 23)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 7, i32 noundef 22)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 8, i32 noundef 21)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 9, i32 noundef 24)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 12, i32 noundef 25)
  tail call fastcc void @calc_clk(ptr noundef %base, ptr noundef %cstate, i32 noundef 14, i32 noundef 27)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_clk_prog(ptr noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  %ssel.i = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %ssel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1274320
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %8, 2147467456
  %ddiv.i = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %ddiv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ddiv.i, align 4
  %or.i = or i32 %10, %and.i
  %11 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 1274320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %or.i) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %dsrc.i = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %dsrc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dsrc.i, align 4
  %15 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %16, i32 1274208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %14) #7, !srcloc !36
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.118 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.118 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.119 = icmp eq i32 %18, 0
  br i1 %tobool.not.119, label %for.inc.for.inc.122_crit_edge, label %if.end.121

for.inc.for.inc.122_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.122

if.end.121:                                       ; preds = %for.inc
  %ssel.i39 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %ssel.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ssel.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i40 = icmp eq i32 %20, 0
  br i1 %tobool.not.i40, label %if.then.i49, label %if.end.121.for.inc.122_crit_edge

if.end.121.for.inc.122_crit_edge:                 ; preds = %if.end.121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.122

if.then.i49:                                      ; preds = %if.end.121
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i38 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %device1.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device1.i38, align 4
  %pri.i41 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %pri.i41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %24, i32 1274324
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %and.i43 = and i32 %25, 2147467456
  %ddiv.i44 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 1, i32 4
  %26 = ptrtoint ptr %ddiv.i44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ddiv.i44, align 4
  %or.i45 = or i32 %27, %and.i43
  %28 = ptrtoint ptr %pri.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri.i41, align 4
  %add.ptr3.i46 = getelementptr i8, ptr %29, i32 1274324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i46, i32 %or.i45) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %dsrc.i47 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 1, i32 3
  %30 = ptrtoint ptr %dsrc.i47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dsrc.i47, align 4
  %32 = ptrtoint ptr %pri.i41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri.i41, align 4
  %add.ptr11.i48 = getelementptr i8, ptr %33, i32 1274212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i48, i32 %31) #7, !srcloc !36
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.then.i49, %if.end.121.for.inc.122_crit_edge, %for.inc.for.inc.122_crit_edge
  %arrayidx.223 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx.223 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.224 = icmp eq i32 %35, 0
  br i1 %tobool.not.224, label %for.inc.122.for.inc.227_crit_edge, label %if.end.226

for.inc.122.for.inc.227_crit_edge:                ; preds = %for.inc.122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.227

if.end.226:                                       ; preds = %for.inc.122
  %ssel.i52 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 2, i32 1
  %36 = ptrtoint ptr %ssel.i52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ssel.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i53 = icmp eq i32 %37, 0
  br i1 %tobool.not.i53, label %if.then.i62, label %if.end.226.for.inc.227_crit_edge

if.end.226.for.inc.227_crit_edge:                 ; preds = %if.end.226
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.227

if.then.i62:                                      ; preds = %if.end.226
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i51 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %device1.i51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device1.i51, align 4
  %pri.i54 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %pri.i54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %41, i32 1274328
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %and.i56 = and i32 %42, 2147467456
  %ddiv.i57 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 2, i32 4
  %43 = ptrtoint ptr %ddiv.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ddiv.i57, align 4
  %or.i58 = or i32 %44, %and.i56
  %45 = ptrtoint ptr %pri.i54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri.i54, align 4
  %add.ptr3.i59 = getelementptr i8, ptr %46, i32 1274328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i59, i32 %or.i58) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %dsrc.i60 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 2, i32 3
  %47 = ptrtoint ptr %dsrc.i60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dsrc.i60, align 4
  %49 = ptrtoint ptr %pri.i54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri.i54, align 4
  %add.ptr11.i61 = getelementptr i8, ptr %50, i32 1274216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i61, i32 %48) #7, !srcloc !36
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.then.i62, %if.end.226.for.inc.227_crit_edge, %for.inc.122.for.inc.227_crit_edge
  %arrayidx.328 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %arrayidx.328 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.328, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.329 = icmp eq i32 %52, 0
  br i1 %tobool.not.329, label %for.inc.227.for.inc.332_crit_edge, label %if.end.331

for.inc.227.for.inc.332_crit_edge:                ; preds = %for.inc.227
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.332

if.end.331:                                       ; preds = %for.inc.227
  %ssel.i65 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 3, i32 1
  %53 = ptrtoint ptr %ssel.i65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ssel.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i66 = icmp eq i32 %54, 0
  br i1 %tobool.not.i66, label %if.then.i75, label %if.end.331.for.inc.332_crit_edge

if.end.331.for.inc.332_crit_edge:                 ; preds = %if.end.331
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.332

if.then.i75:                                      ; preds = %if.end.331
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i64 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %device1.i64 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device1.i64, align 4
  %pri.i67 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %pri.i67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %58, i32 1274332
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %and.i69 = and i32 %59, 2147467456
  %ddiv.i70 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 3, i32 4
  %60 = ptrtoint ptr %ddiv.i70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ddiv.i70, align 4
  %or.i71 = or i32 %61, %and.i69
  %62 = ptrtoint ptr %pri.i67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri.i67, align 4
  %add.ptr3.i72 = getelementptr i8, ptr %63, i32 1274332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i72, i32 %or.i71) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %dsrc.i73 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 3, i32 3
  %64 = ptrtoint ptr %dsrc.i73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dsrc.i73, align 4
  %66 = ptrtoint ptr %pri.i67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri.i67, align 4
  %add.ptr11.i74 = getelementptr i8, ptr %67, i32 1274220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i74, i32 %65) #7, !srcloc !36
  br label %for.inc.332

for.inc.332:                                      ; preds = %if.then.i75, %if.end.331.for.inc.332_crit_edge, %for.inc.227.for.inc.332_crit_edge
  %arrayidx.433 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 4
  %68 = ptrtoint ptr %arrayidx.433 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.434 = icmp eq i32 %69, 0
  br i1 %tobool.not.434, label %for.inc.332.for.inc.437_crit_edge, label %if.end.436

for.inc.332.for.inc.437_crit_edge:                ; preds = %for.inc.332
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.437

if.end.436:                                       ; preds = %for.inc.332
  %ssel.i78 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 4, i32 1
  %70 = ptrtoint ptr %ssel.i78 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ssel.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i79 = icmp eq i32 %71, 0
  br i1 %tobool.not.i79, label %if.then.i88, label %if.end.436.for.inc.437_crit_edge

if.end.436.for.inc.437_crit_edge:                 ; preds = %if.end.436
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.437

if.then.i88:                                      ; preds = %if.end.436
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i77 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %device1.i77 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device1.i77, align 4
  %pri.i80 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %pri.i80 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %75, i32 1274336
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %and.i82 = and i32 %76, 2147467456
  %ddiv.i83 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 4, i32 4
  %77 = ptrtoint ptr %ddiv.i83 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ddiv.i83, align 4
  %or.i84 = or i32 %78, %and.i82
  %79 = ptrtoint ptr %pri.i80 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri.i80, align 4
  %add.ptr3.i85 = getelementptr i8, ptr %80, i32 1274336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i85, i32 %or.i84) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %dsrc.i86 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 4, i32 3
  %81 = ptrtoint ptr %dsrc.i86 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dsrc.i86, align 4
  %83 = ptrtoint ptr %pri.i80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri.i80, align 4
  %add.ptr11.i87 = getelementptr i8, ptr %84, i32 1274224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i87, i32 %82) #7, !srcloc !36
  br label %for.inc.437

for.inc.437:                                      ; preds = %if.then.i88, %if.end.436.for.inc.437_crit_edge, %for.inc.332.for.inc.437_crit_edge
  %arrayidx.5 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 5
  %85 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.5 = icmp eq i32 %86, 0
  br i1 %tobool.not.5, label %for.inc.437.for.inc.5_crit_edge, label %if.end.5

for.inc.437.for.inc.5_crit_edge:                  ; preds = %for.inc.437
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.437
  %ssel.i91 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 5, i32 1
  %87 = ptrtoint ptr %ssel.i91 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ssel.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i92 = icmp eq i32 %88, 0
  br i1 %tobool.not.i92, label %if.then.i101, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.i101:                                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i90 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %device1.i90 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device1.i90, align 4
  %pri.i93 = getelementptr inbounds %struct.nvkm_device, ptr %90, i32 0, i32 11
  %91 = ptrtoint ptr %pri.i93 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri.i93, align 4
  %add.ptr.i94 = getelementptr i8, ptr %92, i32 1274340
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %and.i95 = and i32 %93, 2147467456
  %ddiv.i96 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 5, i32 4
  %94 = ptrtoint ptr %ddiv.i96 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ddiv.i96, align 4
  %or.i97 = or i32 %95, %and.i95
  %96 = ptrtoint ptr %pri.i93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri.i93, align 4
  %add.ptr3.i98 = getelementptr i8, ptr %97, i32 1274340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i98, i32 %or.i97) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %dsrc.i99 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 5, i32 3
  %98 = ptrtoint ptr %dsrc.i99 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dsrc.i99, align 4
  %100 = ptrtoint ptr %pri.i93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri.i93, align 4
  %add.ptr11.i100 = getelementptr i8, ptr %101, i32 1274228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i100, i32 %99) #7, !srcloc !36
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.i101, %if.end.5.for.inc.5_crit_edge, %for.inc.437.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 6
  %102 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.6 = icmp eq i32 %103, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %ssel.i104 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 6, i32 1
  %104 = ptrtoint ptr %ssel.i104 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ssel.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i105 = icmp eq i32 %105, 0
  br i1 %tobool.not.i105, label %if.then.i114, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.i114:                                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i103 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %106 = ptrtoint ptr %device1.i103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device1.i103, align 4
  %pri.i106 = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 11
  %108 = ptrtoint ptr %pri.i106 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %109, i32 1274344
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %and.i108 = and i32 %110, 2147467456
  %ddiv.i109 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 6, i32 4
  %111 = ptrtoint ptr %ddiv.i109 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ddiv.i109, align 4
  %or.i110 = or i32 %112, %and.i108
  %113 = ptrtoint ptr %pri.i106 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pri.i106, align 4
  %add.ptr3.i111 = getelementptr i8, ptr %114, i32 1274344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i111, i32 %or.i110) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %dsrc.i112 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 6, i32 3
  %115 = ptrtoint ptr %dsrc.i112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dsrc.i112, align 4
  %117 = ptrtoint ptr %pri.i106 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pri.i106, align 4
  %add.ptr11.i113 = getelementptr i8, ptr %118, i32 1274232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i113, i32 %116) #7, !srcloc !36
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.i114, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 7
  %arrayidx.8 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 8
  %arrayidx.9 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 9
  %arrayidx.10 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 10
  %arrayidx.11 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 11
  %arrayidx.12 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 12
  %arrayidx.13 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 13
  %arrayidx.14 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 14
  %arrayidx.15 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 15
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.1 = icmp eq i32 %120, 0
  br i1 %tobool.not.1, label %for.inc.6.for.inc.1_crit_edge, label %if.end.1

for.inc.6.for.inc.1_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 0) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.6.for.inc.1_crit_edge
  %121 = ptrtoint ptr %arrayidx.118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.1.1 = icmp eq i32 %122, 0
  br i1 %tobool.not.1.1, label %for.inc.1.for.inc.1.1_crit_edge, label %if.end.1.1

for.inc.1.for.inc.1.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.1

if.end.1.1:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 1) #7
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %if.end.1.1, %for.inc.1.for.inc.1.1_crit_edge
  %123 = ptrtoint ptr %arrayidx.223 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.1.2 = icmp eq i32 %124, 0
  br i1 %tobool.not.1.2, label %for.inc.1.1.for.inc.1.2_crit_edge, label %if.end.1.2

for.inc.1.1.for.inc.1.2_crit_edge:                ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.2

if.end.1.2:                                       ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 2) #7
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %if.end.1.2, %for.inc.1.1.for.inc.1.2_crit_edge
  %125 = ptrtoint ptr %arrayidx.328 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.328, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.1.3 = icmp eq i32 %126, 0
  br i1 %tobool.not.1.3, label %for.inc.1.2.for.inc.1.3_crit_edge, label %if.end.1.3

for.inc.1.2.for.inc.1.3_crit_edge:                ; preds = %for.inc.1.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.3

if.end.1.3:                                       ; preds = %for.inc.1.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 3) #7
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %if.end.1.3, %for.inc.1.2.for.inc.1.3_crit_edge
  %127 = ptrtoint ptr %arrayidx.433 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.1.4 = icmp eq i32 %128, 0
  br i1 %tobool.not.1.4, label %for.inc.1.3.for.inc.1.4_crit_edge, label %if.end.1.4

for.inc.1.3.for.inc.1.4_crit_edge:                ; preds = %for.inc.1.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.4

if.end.1.4:                                       ; preds = %for.inc.1.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 4) #7
  br label %for.inc.1.4

for.inc.1.4:                                      ; preds = %if.end.1.4, %for.inc.1.3.for.inc.1.4_crit_edge
  %129 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.1.5 = icmp eq i32 %130, 0
  br i1 %tobool.not.1.5, label %for.inc.1.4.for.inc.1.5_crit_edge, label %if.end.1.5

for.inc.1.4.for.inc.1.5_crit_edge:                ; preds = %for.inc.1.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.5

if.end.1.5:                                       ; preds = %for.inc.1.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 5) #7
  br label %for.inc.1.5

for.inc.1.5:                                      ; preds = %if.end.1.5, %for.inc.1.4.for.inc.1.5_crit_edge
  %131 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.1.6 = icmp eq i32 %132, 0
  br i1 %tobool.not.1.6, label %for.inc.1.5.for.inc.1.6_crit_edge, label %if.end.1.6

for.inc.1.5.for.inc.1.6_crit_edge:                ; preds = %for.inc.1.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.6

if.end.1.6:                                       ; preds = %for.inc.1.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 6) #7
  br label %for.inc.1.6

for.inc.1.6:                                      ; preds = %if.end.1.6, %for.inc.1.5.for.inc.1.6_crit_edge
  %133 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.1.7 = icmp eq i32 %134, 0
  br i1 %tobool.not.1.7, label %for.inc.1.6.for.inc.1.7_crit_edge, label %if.end.1.7

for.inc.1.6.for.inc.1.7_crit_edge:                ; preds = %for.inc.1.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.7

if.end.1.7:                                       ; preds = %for.inc.1.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 7) #7
  br label %for.inc.1.7

for.inc.1.7:                                      ; preds = %if.end.1.7, %for.inc.1.6.for.inc.1.7_crit_edge
  %135 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.1.8 = icmp eq i32 %136, 0
  br i1 %tobool.not.1.8, label %for.inc.1.7.for.inc.1.8_crit_edge, label %if.end.1.8

for.inc.1.7.for.inc.1.8_crit_edge:                ; preds = %for.inc.1.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.8

if.end.1.8:                                       ; preds = %for.inc.1.7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 8) #7
  br label %for.inc.1.8

for.inc.1.8:                                      ; preds = %if.end.1.8, %for.inc.1.7.for.inc.1.8_crit_edge
  %137 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.1.9 = icmp eq i32 %138, 0
  br i1 %tobool.not.1.9, label %for.inc.1.8.for.inc.1.9_crit_edge, label %if.end.1.9

for.inc.1.8.for.inc.1.9_crit_edge:                ; preds = %for.inc.1.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.9

if.end.1.9:                                       ; preds = %for.inc.1.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 9) #7
  br label %for.inc.1.9

for.inc.1.9:                                      ; preds = %if.end.1.9, %for.inc.1.8.for.inc.1.9_crit_edge
  %139 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.1.10 = icmp eq i32 %140, 0
  br i1 %tobool.not.1.10, label %for.inc.1.9.for.inc.1.10_crit_edge, label %if.end.1.10

for.inc.1.9.for.inc.1.10_crit_edge:               ; preds = %for.inc.1.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.10

if.end.1.10:                                      ; preds = %for.inc.1.9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 10) #7
  br label %for.inc.1.10

for.inc.1.10:                                     ; preds = %if.end.1.10, %for.inc.1.9.for.inc.1.10_crit_edge
  %141 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.1.11 = icmp eq i32 %142, 0
  br i1 %tobool.not.1.11, label %for.inc.1.10.for.inc.1.11_crit_edge, label %if.end.1.11

for.inc.1.10.for.inc.1.11_crit_edge:              ; preds = %for.inc.1.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.11

if.end.1.11:                                      ; preds = %for.inc.1.10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 11) #7
  br label %for.inc.1.11

for.inc.1.11:                                     ; preds = %if.end.1.11, %for.inc.1.10.for.inc.1.11_crit_edge
  %143 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.1.12 = icmp eq i32 %144, 0
  br i1 %tobool.not.1.12, label %for.inc.1.11.for.inc.1.12_crit_edge, label %if.end.1.12

for.inc.1.11.for.inc.1.12_crit_edge:              ; preds = %for.inc.1.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.12

if.end.1.12:                                      ; preds = %for.inc.1.11
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 12) #7
  br label %for.inc.1.12

for.inc.1.12:                                     ; preds = %if.end.1.12, %for.inc.1.11.for.inc.1.12_crit_edge
  %145 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.1.13 = icmp eq i32 %146, 0
  br i1 %tobool.not.1.13, label %for.inc.1.12.for.inc.1.13_crit_edge, label %if.end.1.13

for.inc.1.12.for.inc.1.13_crit_edge:              ; preds = %for.inc.1.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.13

if.end.1.13:                                      ; preds = %for.inc.1.12
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 13) #7
  br label %for.inc.1.13

for.inc.1.13:                                     ; preds = %if.end.1.13, %for.inc.1.12.for.inc.1.13_crit_edge
  %147 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.1.14 = icmp eq i32 %148, 0
  br i1 %tobool.not.1.14, label %for.inc.1.13.for.inc.1.14_crit_edge, label %if.end.1.14

for.inc.1.13.for.inc.1.14_crit_edge:              ; preds = %for.inc.1.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.14

if.end.1.14:                                      ; preds = %for.inc.1.13
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 14) #7
  br label %for.inc.1.14

for.inc.1.14:                                     ; preds = %if.end.1.14, %for.inc.1.13.for.inc.1.14_crit_edge
  %149 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.1.15 = icmp eq i32 %150, 0
  br i1 %tobool.not.1.15, label %for.inc.1.14.for.inc.1.15_crit_edge, label %if.end.1.15

for.inc.1.14.for.inc.1.15_crit_edge:              ; preds = %for.inc.1.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.15

if.end.1.15:                                      ; preds = %for.inc.1.14
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_1(ptr noundef %base, i32 noundef 15) #7
  br label %for.inc.1.15

for.inc.1.15:                                     ; preds = %if.end.1.15, %for.inc.1.14.for.inc.1.15_crit_edge
  %151 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not.2 = icmp eq i32 %152, 0
  br i1 %tobool.not.2, label %for.inc.1.15.for.inc.2_crit_edge, label %if.end.2

for.inc.1.15.for.inc.2_crit_edge:                 ; preds = %for.inc.1.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1.15
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %base, i32 noundef 0) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.15.for.inc.2_crit_edge
  %153 = ptrtoint ptr %arrayidx.118 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.2.1 = icmp eq i32 %154, 0
  br i1 %tobool.not.2.1, label %for.inc.2.for.inc.2.1_crit_edge, label %if.end.2.1

for.inc.2.for.inc.2.1_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.1

if.end.2.1:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %base, i32 noundef 1) #7
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %if.end.2.1, %for.inc.2.for.inc.2.1_crit_edge
  %155 = ptrtoint ptr %arrayidx.223 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx.223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.2.2 = icmp eq i32 %156, 0
  br i1 %tobool.not.2.2, label %for.inc.2.1.for.inc.2.2_crit_edge, label %if.end.2.2

for.inc.2.1.for.inc.2.2_crit_edge:                ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.2

if.end.2.2:                                       ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %base, i32 noundef 2) #7
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %if.end.2.2, %for.inc.2.1.for.inc.2.2_crit_edge
  %157 = ptrtoint ptr %arrayidx.328 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.328, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.2.3 = icmp eq i32 %158, 0
  br i1 %tobool.not.2.3, label %for.inc.2.2.for.inc.2.3_crit_edge, label %if.end.2.3

for.inc.2.2.for.inc.2.3_crit_edge:                ; preds = %for.inc.2.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.3

if.end.2.3:                                       ; preds = %for.inc.2.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %base, i32 noundef 3) #7
  br label %for.inc.2.3

for.inc.2.3:                                      ; preds = %if.end.2.3, %for.inc.2.2.for.inc.2.3_crit_edge
  %159 = ptrtoint ptr %arrayidx.433 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.2.4 = icmp eq i32 %160, 0
  br i1 %tobool.not.2.4, label %for.inc.2.3.for.inc.2.4_crit_edge, label %if.end.2.4

for.inc.2.3.for.inc.2.4_crit_edge:                ; preds = %for.inc.2.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.4

if.end.2.4:                                       ; preds = %for.inc.2.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %base, i32 noundef 4) #7
  br label %for.inc.2.4

for.inc.2.4:                                      ; preds = %if.end.2.4, %for.inc.2.3.for.inc.2.4_crit_edge
  %161 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.2.5 = icmp eq i32 %162, 0
  br i1 %tobool.not.2.5, label %for.inc.2.4.for.inc.2.5_crit_edge, label %if.end.2.5

for.inc.2.4.for.inc.2.5_crit_edge:                ; preds = %for.inc.2.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.5

if.end.2.5:                                       ; preds = %for.inc.2.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %base, i32 noundef 5) #7
  br label %for.inc.2.5

for.inc.2.5:                                      ; preds = %if.end.2.5, %for.inc.2.4.for.inc.2.5_crit_edge
  %163 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.2.6 = icmp eq i32 %164, 0
  br i1 %tobool.not.2.6, label %for.inc.2.5.for.inc.2.6_crit_edge, label %if.end.2.6

for.inc.2.5.for.inc.2.6_crit_edge:                ; preds = %for.inc.2.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.6

if.end.2.6:                                       ; preds = %for.inc.2.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %base, i32 noundef 6) #7
  br label %for.inc.2.6

for.inc.2.6:                                      ; preds = %if.end.2.6, %for.inc.2.5.for.inc.2.6_crit_edge
  %165 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.not.2.7 = icmp eq i32 %166, 0
  br i1 %tobool.not.2.7, label %for.inc.2.6.for.inc.2.7_crit_edge, label %if.end.2.7

for.inc.2.6.for.inc.2.7_crit_edge:                ; preds = %for.inc.2.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.7

if.end.2.7:                                       ; preds = %for.inc.2.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_2(ptr noundef %base, i32 noundef 7) #7
  br label %for.inc.2.7

for.inc.2.7:                                      ; preds = %if.end.2.7, %for.inc.2.6.for.inc.2.7_crit_edge
  %167 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.3 = icmp eq i32 %168, 0
  br i1 %tobool.not.3, label %for.inc.2.7.for.inc.3_crit_edge, label %if.end.3

for.inc.2.7.for.inc.3_crit_edge:                  ; preds = %for.inc.2.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2.7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 0) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.7.for.inc.3_crit_edge
  %169 = ptrtoint ptr %arrayidx.118 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.3.1 = icmp eq i32 %170, 0
  br i1 %tobool.not.3.1, label %for.inc.3.for.inc.3.1_crit_edge, label %if.end.3.1

for.inc.3.for.inc.3.1_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.1

if.end.3.1:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 1) #7
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %if.end.3.1, %for.inc.3.for.inc.3.1_crit_edge
  %171 = ptrtoint ptr %arrayidx.223 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.3.2 = icmp eq i32 %172, 0
  br i1 %tobool.not.3.2, label %for.inc.3.1.for.inc.3.2_crit_edge, label %if.end.3.2

for.inc.3.1.for.inc.3.2_crit_edge:                ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.2

if.end.3.2:                                       ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 2) #7
  br label %for.inc.3.2

for.inc.3.2:                                      ; preds = %if.end.3.2, %for.inc.3.1.for.inc.3.2_crit_edge
  %173 = ptrtoint ptr %arrayidx.328 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx.328, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.3.3 = icmp eq i32 %174, 0
  br i1 %tobool.not.3.3, label %for.inc.3.2.for.inc.3.3_crit_edge, label %if.end.3.3

for.inc.3.2.for.inc.3.3_crit_edge:                ; preds = %for.inc.3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.3

if.end.3.3:                                       ; preds = %for.inc.3.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 3) #7
  br label %for.inc.3.3

for.inc.3.3:                                      ; preds = %if.end.3.3, %for.inc.3.2.for.inc.3.3_crit_edge
  %175 = ptrtoint ptr %arrayidx.433 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx.433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.3.4 = icmp eq i32 %176, 0
  br i1 %tobool.not.3.4, label %for.inc.3.3.for.inc.3.4_crit_edge, label %if.end.3.4

for.inc.3.3.for.inc.3.4_crit_edge:                ; preds = %for.inc.3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.4

if.end.3.4:                                       ; preds = %for.inc.3.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 4) #7
  br label %for.inc.3.4

for.inc.3.4:                                      ; preds = %if.end.3.4, %for.inc.3.3.for.inc.3.4_crit_edge
  %177 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.3.5 = icmp eq i32 %178, 0
  br i1 %tobool.not.3.5, label %for.inc.3.4.for.inc.3.5_crit_edge, label %if.end.3.5

for.inc.3.4.for.inc.3.5_crit_edge:                ; preds = %for.inc.3.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.5

if.end.3.5:                                       ; preds = %for.inc.3.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 5) #7
  br label %for.inc.3.5

for.inc.3.5:                                      ; preds = %if.end.3.5, %for.inc.3.4.for.inc.3.5_crit_edge
  %179 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.3.6 = icmp eq i32 %180, 0
  br i1 %tobool.not.3.6, label %for.inc.3.5.for.inc.3.6_crit_edge, label %if.end.3.6

for.inc.3.5.for.inc.3.6_crit_edge:                ; preds = %for.inc.3.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.6

if.end.3.6:                                       ; preds = %for.inc.3.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 6) #7
  br label %for.inc.3.6

for.inc.3.6:                                      ; preds = %if.end.3.6, %for.inc.3.5.for.inc.3.6_crit_edge
  %181 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.3.7 = icmp eq i32 %182, 0
  br i1 %tobool.not.3.7, label %for.inc.3.6.for.inc.3.7_crit_edge, label %if.end.3.7

for.inc.3.6.for.inc.3.7_crit_edge:                ; preds = %for.inc.3.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.7

if.end.3.7:                                       ; preds = %for.inc.3.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 7) #7
  br label %for.inc.3.7

for.inc.3.7:                                      ; preds = %if.end.3.7, %for.inc.3.6.for.inc.3.7_crit_edge
  %183 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.3.8 = icmp eq i32 %184, 0
  br i1 %tobool.not.3.8, label %for.inc.3.7.for.inc.3.8_crit_edge, label %if.end.3.8

for.inc.3.7.for.inc.3.8_crit_edge:                ; preds = %for.inc.3.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.8

if.end.3.8:                                       ; preds = %for.inc.3.7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 8) #7
  br label %for.inc.3.8

for.inc.3.8:                                      ; preds = %if.end.3.8, %for.inc.3.7.for.inc.3.8_crit_edge
  %185 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.3.9 = icmp eq i32 %186, 0
  br i1 %tobool.not.3.9, label %for.inc.3.8.for.inc.3.9_crit_edge, label %if.end.3.9

for.inc.3.8.for.inc.3.9_crit_edge:                ; preds = %for.inc.3.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.9

if.end.3.9:                                       ; preds = %for.inc.3.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 9) #7
  br label %for.inc.3.9

for.inc.3.9:                                      ; preds = %if.end.3.9, %for.inc.3.8.for.inc.3.9_crit_edge
  %187 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.3.10 = icmp eq i32 %188, 0
  br i1 %tobool.not.3.10, label %for.inc.3.9.for.inc.3.10_crit_edge, label %if.end.3.10

for.inc.3.9.for.inc.3.10_crit_edge:               ; preds = %for.inc.3.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.10

if.end.3.10:                                      ; preds = %for.inc.3.9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 10) #7
  br label %for.inc.3.10

for.inc.3.10:                                     ; preds = %if.end.3.10, %for.inc.3.9.for.inc.3.10_crit_edge
  %189 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.3.11 = icmp eq i32 %190, 0
  br i1 %tobool.not.3.11, label %for.inc.3.10.for.inc.3.11_crit_edge, label %if.end.3.11

for.inc.3.10.for.inc.3.11_crit_edge:              ; preds = %for.inc.3.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.11

if.end.3.11:                                      ; preds = %for.inc.3.10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 11) #7
  br label %for.inc.3.11

for.inc.3.11:                                     ; preds = %if.end.3.11, %for.inc.3.10.for.inc.3.11_crit_edge
  %191 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.3.12 = icmp eq i32 %192, 0
  br i1 %tobool.not.3.12, label %for.inc.3.11.for.inc.3.12_crit_edge, label %if.end.3.12

for.inc.3.11.for.inc.3.12_crit_edge:              ; preds = %for.inc.3.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.12

if.end.3.12:                                      ; preds = %for.inc.3.11
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 12) #7
  br label %for.inc.3.12

for.inc.3.12:                                     ; preds = %if.end.3.12, %for.inc.3.11.for.inc.3.12_crit_edge
  %193 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool.not.3.13 = icmp eq i32 %194, 0
  br i1 %tobool.not.3.13, label %for.inc.3.12.for.inc.3.13_crit_edge, label %if.end.3.13

for.inc.3.12.for.inc.3.13_crit_edge:              ; preds = %for.inc.3.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.13

if.end.3.13:                                      ; preds = %for.inc.3.12
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 13) #7
  br label %for.inc.3.13

for.inc.3.13:                                     ; preds = %if.end.3.13, %for.inc.3.12.for.inc.3.13_crit_edge
  %195 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.3.14 = icmp eq i32 %196, 0
  br i1 %tobool.not.3.14, label %for.inc.3.13.for.inc.3.14_crit_edge, label %if.end.3.14

for.inc.3.13.for.inc.3.14_crit_edge:              ; preds = %for.inc.3.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.14

if.end.3.14:                                      ; preds = %for.inc.3.13
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 14) #7
  br label %for.inc.3.14

for.inc.3.14:                                     ; preds = %if.end.3.14, %for.inc.3.13.for.inc.3.14_crit_edge
  %197 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.3.15 = icmp eq i32 %198, 0
  br i1 %tobool.not.3.15, label %for.inc.3.14.for.inc.3.15_crit_edge, label %if.end.3.15

for.inc.3.14.for.inc.3.15_crit_edge:              ; preds = %for.inc.3.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.15

if.end.3.15:                                      ; preds = %for.inc.3.14
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gf100_clk_prog_3(ptr noundef %base, i32 noundef 15) #7
  br label %for.inc.3.15

for.inc.3.15:                                     ; preds = %if.end.3.15, %for.inc.3.14.for.inc.3.15_crit_edge
  %199 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.4 = icmp eq i32 %200, 0
  br i1 %tobool.not.4, label %for.inc.3.15.for.inc.4_crit_edge, label %if.end.4

for.inc.3.15.for.inc.4_crit_edge:                 ; preds = %for.inc.3.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3.15
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i133 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %201 = ptrtoint ptr %device1.i133 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %device1.i133, align 4
  %pri.i134 = getelementptr inbounds %struct.nvkm_device, ptr %202, i32 0, i32 11
  %203 = ptrtoint ptr %pri.i134 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pri.i134, align 4
  %add.ptr.i135 = getelementptr i8, ptr %204, i32 1274448
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i136 = and i32 %205, -16192
  %mdiv.i = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 0, i32 2
  %206 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %mdiv.i, align 4
  %or.i137 = or i32 %207, %and.i136
  %208 = ptrtoint ptr %pri.i134 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pri.i134, align 4
  %add.ptr3.i138 = getelementptr i8, ptr %209, i32 1274448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i138, i32 %or.i137) #7, !srcloc !36
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.15.for.inc.4_crit_edge
  %210 = ptrtoint ptr %arrayidx.118 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool.not.4.1 = icmp eq i32 %211, 0
  br i1 %tobool.not.4.1, label %for.inc.4.for.inc.4.1_crit_edge, label %if.end.4.1

for.inc.4.for.inc.4.1_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.1

if.end.4.1:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i139 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %212 = ptrtoint ptr %device1.i139 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %device1.i139, align 4
  %pri.i140 = getelementptr inbounds %struct.nvkm_device, ptr %213, i32 0, i32 11
  %214 = ptrtoint ptr %pri.i140 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pri.i140, align 4
  %add.ptr.i141 = getelementptr i8, ptr %215, i32 1274452
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i142 = and i32 %216, -16192
  %mdiv.i143 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 1, i32 2
  %217 = ptrtoint ptr %mdiv.i143 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %mdiv.i143, align 4
  %or.i144 = or i32 %218, %and.i142
  %219 = ptrtoint ptr %pri.i140 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pri.i140, align 4
  %add.ptr3.i145 = getelementptr i8, ptr %220, i32 1274452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i145, i32 %or.i144) #7, !srcloc !36
  br label %for.inc.4.1

for.inc.4.1:                                      ; preds = %if.end.4.1, %for.inc.4.for.inc.4.1_crit_edge
  %221 = ptrtoint ptr %arrayidx.223 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx.223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool.not.4.2 = icmp eq i32 %222, 0
  br i1 %tobool.not.4.2, label %for.inc.4.1.for.inc.4.2_crit_edge, label %if.end.4.2

for.inc.4.1.for.inc.4.2_crit_edge:                ; preds = %for.inc.4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.2

if.end.4.2:                                       ; preds = %for.inc.4.1
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i146 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %223 = ptrtoint ptr %device1.i146 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %device1.i146, align 4
  %pri.i147 = getelementptr inbounds %struct.nvkm_device, ptr %224, i32 0, i32 11
  %225 = ptrtoint ptr %pri.i147 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pri.i147, align 4
  %add.ptr.i148 = getelementptr i8, ptr %226, i32 1274456
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i149 = and i32 %227, -16192
  %mdiv.i150 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 2, i32 2
  %228 = ptrtoint ptr %mdiv.i150 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %mdiv.i150, align 4
  %or.i151 = or i32 %229, %and.i149
  %230 = ptrtoint ptr %pri.i147 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pri.i147, align 4
  %add.ptr3.i152 = getelementptr i8, ptr %231, i32 1274456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i152, i32 %or.i151) #7, !srcloc !36
  br label %for.inc.4.2

for.inc.4.2:                                      ; preds = %if.end.4.2, %for.inc.4.1.for.inc.4.2_crit_edge
  %232 = ptrtoint ptr %arrayidx.328 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx.328, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool.not.4.3 = icmp eq i32 %233, 0
  br i1 %tobool.not.4.3, label %for.inc.4.2.for.inc.4.3_crit_edge, label %if.end.4.3

for.inc.4.2.for.inc.4.3_crit_edge:                ; preds = %for.inc.4.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.3

if.end.4.3:                                       ; preds = %for.inc.4.2
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i153 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %234 = ptrtoint ptr %device1.i153 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %device1.i153, align 4
  %pri.i154 = getelementptr inbounds %struct.nvkm_device, ptr %235, i32 0, i32 11
  %236 = ptrtoint ptr %pri.i154 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pri.i154, align 4
  %add.ptr.i155 = getelementptr i8, ptr %237, i32 1274460
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i156 = and i32 %238, -16192
  %mdiv.i157 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 3, i32 2
  %239 = ptrtoint ptr %mdiv.i157 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %mdiv.i157, align 4
  %or.i158 = or i32 %240, %and.i156
  %241 = ptrtoint ptr %pri.i154 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %pri.i154, align 4
  %add.ptr3.i159 = getelementptr i8, ptr %242, i32 1274460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i159, i32 %or.i158) #7, !srcloc !36
  br label %for.inc.4.3

for.inc.4.3:                                      ; preds = %if.end.4.3, %for.inc.4.2.for.inc.4.3_crit_edge
  %243 = ptrtoint ptr %arrayidx.433 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx.433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool.not.4.4 = icmp eq i32 %244, 0
  br i1 %tobool.not.4.4, label %for.inc.4.3.for.inc.4.4_crit_edge, label %if.end.4.4

for.inc.4.3.for.inc.4.4_crit_edge:                ; preds = %for.inc.4.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.4

if.end.4.4:                                       ; preds = %for.inc.4.3
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i160 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %245 = ptrtoint ptr %device1.i160 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %device1.i160, align 4
  %pri.i161 = getelementptr inbounds %struct.nvkm_device, ptr %246, i32 0, i32 11
  %247 = ptrtoint ptr %pri.i161 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pri.i161, align 4
  %add.ptr.i162 = getelementptr i8, ptr %248, i32 1274464
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i163 = and i32 %249, -16192
  %mdiv.i164 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 4, i32 2
  %250 = ptrtoint ptr %mdiv.i164 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %mdiv.i164, align 4
  %or.i165 = or i32 %251, %and.i163
  %252 = ptrtoint ptr %pri.i161 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pri.i161, align 4
  %add.ptr3.i166 = getelementptr i8, ptr %253, i32 1274464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i166, i32 %or.i165) #7, !srcloc !36
  br label %for.inc.4.4

for.inc.4.4:                                      ; preds = %if.end.4.4, %for.inc.4.3.for.inc.4.4_crit_edge
  %254 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool.not.4.5 = icmp eq i32 %255, 0
  br i1 %tobool.not.4.5, label %for.inc.4.4.for.inc.4.5_crit_edge, label %if.end.4.5

for.inc.4.4.for.inc.4.5_crit_edge:                ; preds = %for.inc.4.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.5

if.end.4.5:                                       ; preds = %for.inc.4.4
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i167 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %256 = ptrtoint ptr %device1.i167 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %device1.i167, align 4
  %pri.i168 = getelementptr inbounds %struct.nvkm_device, ptr %257, i32 0, i32 11
  %258 = ptrtoint ptr %pri.i168 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pri.i168, align 4
  %add.ptr.i169 = getelementptr i8, ptr %259, i32 1274468
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i170 = and i32 %260, -16192
  %mdiv.i171 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %261 = ptrtoint ptr %mdiv.i171 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %mdiv.i171, align 4
  %or.i172 = or i32 %262, %and.i170
  %263 = ptrtoint ptr %pri.i168 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %pri.i168, align 4
  %add.ptr3.i173 = getelementptr i8, ptr %264, i32 1274468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i173, i32 %or.i172) #7, !srcloc !36
  br label %for.inc.4.5

for.inc.4.5:                                      ; preds = %if.end.4.5, %for.inc.4.4.for.inc.4.5_crit_edge
  %265 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool.not.4.6 = icmp eq i32 %266, 0
  br i1 %tobool.not.4.6, label %for.inc.4.5.for.inc.4.6_crit_edge, label %if.end.4.6

for.inc.4.5.for.inc.4.6_crit_edge:                ; preds = %for.inc.4.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.6

if.end.4.6:                                       ; preds = %for.inc.4.5
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i174 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %267 = ptrtoint ptr %device1.i174 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %device1.i174, align 4
  %pri.i175 = getelementptr inbounds %struct.nvkm_device, ptr %268, i32 0, i32 11
  %269 = ptrtoint ptr %pri.i175 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %pri.i175, align 4
  %add.ptr.i176 = getelementptr i8, ptr %270, i32 1274472
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i177 = and i32 %271, -16192
  %mdiv.i178 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 6, i32 2
  %272 = ptrtoint ptr %mdiv.i178 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %mdiv.i178, align 4
  %or.i179 = or i32 %273, %and.i177
  %274 = ptrtoint ptr %pri.i175 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pri.i175, align 4
  %add.ptr3.i180 = getelementptr i8, ptr %275, i32 1274472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i180, i32 %or.i179) #7, !srcloc !36
  br label %for.inc.4.6

for.inc.4.6:                                      ; preds = %if.end.4.6, %for.inc.4.5.for.inc.4.6_crit_edge
  %276 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.not.4.7 = icmp eq i32 %277, 0
  br i1 %tobool.not.4.7, label %for.inc.4.6.for.inc.4.7_crit_edge, label %if.end.4.7

for.inc.4.6.for.inc.4.7_crit_edge:                ; preds = %for.inc.4.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.7

if.end.4.7:                                       ; preds = %for.inc.4.6
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i181 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %278 = ptrtoint ptr %device1.i181 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %device1.i181, align 4
  %pri.i182 = getelementptr inbounds %struct.nvkm_device, ptr %279, i32 0, i32 11
  %280 = ptrtoint ptr %pri.i182 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %pri.i182, align 4
  %add.ptr.i183 = getelementptr i8, ptr %281, i32 1274476
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i184 = and i32 %282, -16192
  %mdiv.i185 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 7, i32 2
  %283 = ptrtoint ptr %mdiv.i185 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %mdiv.i185, align 4
  %or.i186 = or i32 %284, %and.i184
  %285 = ptrtoint ptr %pri.i182 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pri.i182, align 4
  %add.ptr3.i187 = getelementptr i8, ptr %286, i32 1274476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i187, i32 %or.i186) #7, !srcloc !36
  br label %for.inc.4.7

for.inc.4.7:                                      ; preds = %if.end.4.7, %for.inc.4.6.for.inc.4.7_crit_edge
  %287 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool.not.4.8 = icmp eq i32 %288, 0
  br i1 %tobool.not.4.8, label %for.inc.4.7.for.inc.4.8_crit_edge, label %if.end.4.8

for.inc.4.7.for.inc.4.8_crit_edge:                ; preds = %for.inc.4.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.8

if.end.4.8:                                       ; preds = %for.inc.4.7
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i188 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %289 = ptrtoint ptr %device1.i188 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %device1.i188, align 4
  %pri.i189 = getelementptr inbounds %struct.nvkm_device, ptr %290, i32 0, i32 11
  %291 = ptrtoint ptr %pri.i189 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %pri.i189, align 4
  %add.ptr.i190 = getelementptr i8, ptr %292, i32 1274480
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i191 = and i32 %293, -16192
  %mdiv.i192 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 8, i32 2
  %294 = ptrtoint ptr %mdiv.i192 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %mdiv.i192, align 4
  %or.i193 = or i32 %295, %and.i191
  %296 = ptrtoint ptr %pri.i189 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %pri.i189, align 4
  %add.ptr3.i194 = getelementptr i8, ptr %297, i32 1274480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i194, i32 %or.i193) #7, !srcloc !36
  br label %for.inc.4.8

for.inc.4.8:                                      ; preds = %if.end.4.8, %for.inc.4.7.for.inc.4.8_crit_edge
  %298 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool.not.4.9 = icmp eq i32 %299, 0
  br i1 %tobool.not.4.9, label %for.inc.4.8.for.inc.4.9_crit_edge, label %if.end.4.9

for.inc.4.8.for.inc.4.9_crit_edge:                ; preds = %for.inc.4.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.9

if.end.4.9:                                       ; preds = %for.inc.4.8
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i195 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %300 = ptrtoint ptr %device1.i195 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %device1.i195, align 4
  %pri.i196 = getelementptr inbounds %struct.nvkm_device, ptr %301, i32 0, i32 11
  %302 = ptrtoint ptr %pri.i196 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %pri.i196, align 4
  %add.ptr.i197 = getelementptr i8, ptr %303, i32 1274484
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i198 = and i32 %304, -16192
  %mdiv.i199 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 9, i32 2
  %305 = ptrtoint ptr %mdiv.i199 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %mdiv.i199, align 4
  %or.i200 = or i32 %306, %and.i198
  %307 = ptrtoint ptr %pri.i196 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %pri.i196, align 4
  %add.ptr3.i201 = getelementptr i8, ptr %308, i32 1274484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i201, i32 %or.i200) #7, !srcloc !36
  br label %for.inc.4.9

for.inc.4.9:                                      ; preds = %if.end.4.9, %for.inc.4.8.for.inc.4.9_crit_edge
  %309 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool.not.4.10 = icmp eq i32 %310, 0
  br i1 %tobool.not.4.10, label %for.inc.4.9.for.inc.4.10_crit_edge, label %if.end.4.10

for.inc.4.9.for.inc.4.10_crit_edge:               ; preds = %for.inc.4.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.10

if.end.4.10:                                      ; preds = %for.inc.4.9
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i202 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %311 = ptrtoint ptr %device1.i202 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %device1.i202, align 4
  %pri.i203 = getelementptr inbounds %struct.nvkm_device, ptr %312, i32 0, i32 11
  %313 = ptrtoint ptr %pri.i203 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %pri.i203, align 4
  %add.ptr.i204 = getelementptr i8, ptr %314, i32 1274488
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i205 = and i32 %315, -16192
  %mdiv.i206 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 10, i32 2
  %316 = ptrtoint ptr %mdiv.i206 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %mdiv.i206, align 4
  %or.i207 = or i32 %317, %and.i205
  %318 = ptrtoint ptr %pri.i203 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %pri.i203, align 4
  %add.ptr3.i208 = getelementptr i8, ptr %319, i32 1274488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i208, i32 %or.i207) #7, !srcloc !36
  br label %for.inc.4.10

for.inc.4.10:                                     ; preds = %if.end.4.10, %for.inc.4.9.for.inc.4.10_crit_edge
  %320 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool.not.4.11 = icmp eq i32 %321, 0
  br i1 %tobool.not.4.11, label %for.inc.4.10.for.inc.4.11_crit_edge, label %if.end.4.11

for.inc.4.10.for.inc.4.11_crit_edge:              ; preds = %for.inc.4.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.11

if.end.4.11:                                      ; preds = %for.inc.4.10
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i209 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %322 = ptrtoint ptr %device1.i209 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %device1.i209, align 4
  %pri.i210 = getelementptr inbounds %struct.nvkm_device, ptr %323, i32 0, i32 11
  %324 = ptrtoint ptr %pri.i210 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %pri.i210, align 4
  %add.ptr.i211 = getelementptr i8, ptr %325, i32 1274492
  %326 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i212 = and i32 %326, -16192
  %mdiv.i213 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 11, i32 2
  %327 = ptrtoint ptr %mdiv.i213 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %mdiv.i213, align 4
  %or.i214 = or i32 %328, %and.i212
  %329 = ptrtoint ptr %pri.i210 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %pri.i210, align 4
  %add.ptr3.i215 = getelementptr i8, ptr %330, i32 1274492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i215, i32 %or.i214) #7, !srcloc !36
  br label %for.inc.4.11

for.inc.4.11:                                     ; preds = %if.end.4.11, %for.inc.4.10.for.inc.4.11_crit_edge
  %331 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %tobool.not.4.12 = icmp eq i32 %332, 0
  br i1 %tobool.not.4.12, label %for.inc.4.11.for.inc.4.12_crit_edge, label %if.end.4.12

for.inc.4.11.for.inc.4.12_crit_edge:              ; preds = %for.inc.4.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.12

if.end.4.12:                                      ; preds = %for.inc.4.11
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i216 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %333 = ptrtoint ptr %device1.i216 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %device1.i216, align 4
  %pri.i217 = getelementptr inbounds %struct.nvkm_device, ptr %334, i32 0, i32 11
  %335 = ptrtoint ptr %pri.i217 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %pri.i217, align 4
  %add.ptr.i218 = getelementptr i8, ptr %336, i32 1274496
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i218) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i219 = and i32 %337, -16192
  %mdiv.i220 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 12, i32 2
  %338 = ptrtoint ptr %mdiv.i220 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %mdiv.i220, align 4
  %or.i221 = or i32 %339, %and.i219
  %340 = ptrtoint ptr %pri.i217 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %pri.i217, align 4
  %add.ptr3.i222 = getelementptr i8, ptr %341, i32 1274496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i222, i32 %or.i221) #7, !srcloc !36
  br label %for.inc.4.12

for.inc.4.12:                                     ; preds = %if.end.4.12, %for.inc.4.11.for.inc.4.12_crit_edge
  %342 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool.not.4.13 = icmp eq i32 %343, 0
  br i1 %tobool.not.4.13, label %for.inc.4.12.for.inc.4.13_crit_edge, label %if.end.4.13

for.inc.4.12.for.inc.4.13_crit_edge:              ; preds = %for.inc.4.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.13

if.end.4.13:                                      ; preds = %for.inc.4.12
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i223 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %344 = ptrtoint ptr %device1.i223 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %device1.i223, align 4
  %pri.i224 = getelementptr inbounds %struct.nvkm_device, ptr %345, i32 0, i32 11
  %346 = ptrtoint ptr %pri.i224 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %pri.i224, align 4
  %add.ptr.i225 = getelementptr i8, ptr %347, i32 1274500
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i226 = and i32 %348, -16192
  %mdiv.i227 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 13, i32 2
  %349 = ptrtoint ptr %mdiv.i227 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %mdiv.i227, align 4
  %or.i228 = or i32 %350, %and.i226
  %351 = ptrtoint ptr %pri.i224 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %pri.i224, align 4
  %add.ptr3.i229 = getelementptr i8, ptr %352, i32 1274500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i229, i32 %or.i228) #7, !srcloc !36
  br label %for.inc.4.13

for.inc.4.13:                                     ; preds = %if.end.4.13, %for.inc.4.12.for.inc.4.13_crit_edge
  %353 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %tobool.not.4.14 = icmp eq i32 %354, 0
  br i1 %tobool.not.4.14, label %for.inc.4.13.for.inc.4.14_crit_edge, label %if.end.4.14

for.inc.4.13.for.inc.4.14_crit_edge:              ; preds = %for.inc.4.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.14

if.end.4.14:                                      ; preds = %for.inc.4.13
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i230 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %355 = ptrtoint ptr %device1.i230 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %device1.i230, align 4
  %pri.i231 = getelementptr inbounds %struct.nvkm_device, ptr %356, i32 0, i32 11
  %357 = ptrtoint ptr %pri.i231 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %pri.i231, align 4
  %add.ptr.i232 = getelementptr i8, ptr %358, i32 1274504
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i233 = and i32 %359, -16192
  %mdiv.i234 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 14, i32 2
  %360 = ptrtoint ptr %mdiv.i234 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %mdiv.i234, align 4
  %or.i235 = or i32 %361, %and.i233
  %362 = ptrtoint ptr %pri.i231 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %pri.i231, align 4
  %add.ptr3.i236 = getelementptr i8, ptr %363, i32 1274504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i236, i32 %or.i235) #7, !srcloc !36
  br label %for.inc.4.14

for.inc.4.14:                                     ; preds = %if.end.4.14, %for.inc.4.13.for.inc.4.14_crit_edge
  %364 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %tobool.not.4.15 = icmp eq i32 %365, 0
  br i1 %tobool.not.4.15, label %for.inc.4.14.for.inc.4.15_crit_edge, label %if.end.4.15

for.inc.4.14.for.inc.4.15_crit_edge:              ; preds = %for.inc.4.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.15

if.end.4.15:                                      ; preds = %for.inc.4.14
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i237 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %366 = ptrtoint ptr %device1.i237 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %device1.i237, align 4
  %pri.i238 = getelementptr inbounds %struct.nvkm_device, ptr %367, i32 0, i32 11
  %368 = ptrtoint ptr %pri.i238 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %pri.i238, align 4
  %add.ptr.i239 = getelementptr i8, ptr %369, i32 1274508
  %370 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %and.i240 = and i32 %370, -16192
  %mdiv.i241 = getelementptr %struct.gf100_clk, ptr %base, i32 0, i32 1, i32 15, i32 2
  %371 = ptrtoint ptr %mdiv.i241 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %mdiv.i241, align 4
  %or.i242 = or i32 %372, %and.i240
  %373 = ptrtoint ptr %pri.i238 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %pri.i238, align 4
  %add.ptr3.i243 = getelementptr i8, ptr %374, i32 1274508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i243, i32 %or.i242) #7, !srcloc !36
  br label %for.inc.4.15

for.inc.4.15:                                     ; preds = %if.end.4.15, %for.inc.4.14.for.inc.4.15_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @gf100_clk_tidy(ptr nocapture noundef writeonly %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eng = getelementptr inbounds %struct.gf100_clk, ptr %base, i32 0, i32 1
  %0 = call ptr @memset(ptr %eng, i32 0, i32 384)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_pll(ptr noundef %clk, i32 noundef %pll) unnamed_addr #0 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add4 = add i32 %pll, 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 %add4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %pll, label %if.end.cleanup_crit_edge [
    i32 59392, label %if.end.sw.bb_crit_edge
    i32 59424, label %if.end.sw.bb_crit_edge41
    i32 1253376, label %sw.bb13
    i32 1253408, label %sw.bb16
    i32 1273856, label %if.end.sw.bb19_crit_edge
    i32 1273888, label %if.end.sw.bb19_crit_edge42
    i32 1273920, label %if.end.sw.bb19_crit_edge43
    i32 1274080, label %if.end.sw.bb19_crit_edge44
  ]

if.end.sw.bb19_crit_edge44:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

if.end.sw.bb19_crit_edge43:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

if.end.sw.bb19_crit_edge42:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

if.end.sw.bb19_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

if.end.sw.bb_crit_edge41:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge41
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crystal, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef 12) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef 11) #7
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end.sw.bb19_crit_edge, %if.end.sw.bb19_crit_edge42, %if.end.sw.bb19_crit_edge43, %if.end.sw.bb19_crit_edge44
  %and20 = lshr i32 %pll, 5
  %div40 = and i32 %and20, 7
  %call21 = tail call fastcc i32 @read_div(ptr noundef %clk, i32 noundef %div40, i32 noundef 1274144, i32 noundef 1274176)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb
  %P.0 = phi i32 [ %shr, %sw.bb19 ], [ %shr, %sw.bb16 ], [ %shr, %sw.bb13 ], [ 1, %sw.bb ]
  %sclk.0 = phi i32 [ %call21, %sw.bb19 ], [ %call18, %sw.bb16 ], [ %call15, %sw.bb13 ], [ %10, %sw.bb ]
  %mul = mul i32 %sclk.0, %shr9
  %div22 = udiv i32 %mul, %and10
  %div23 = udiv i32 %div22, %P.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div23, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_div(ptr noundef %clk, i32 noundef %doff, i32 noundef %dsrc, i32 noundef %dctl) unnamed_addr #0 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and = and i32 %4, 3
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %entry.cleanup_crit_edge
    i32 3, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %and2 = and i32 %4, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and2)
  %cmp.not = icmp eq i32 %and2, 196608
  br i1 %cmp.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crystal, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %8 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %and.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 9, i32 10
  %call5.i = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef %..i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %doff)
  %cmp8 = icmp slt i32 %doff, 3
  br i1 %cmp8, label %if.then9, label %sw.bb4.if.end26_crit_edge

sw.bb4.if.end26_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then9:                                         ; preds = %sw.bb4
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add13 = add i32 %mul, %dctl
  %add.ptr14 = getelementptr i8, ptr %14, i32 %add13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not = icmp sgt i32 %15, -1
  br i1 %tobool.not, label %if.then9.if.end26_crit_edge, label %if.then18

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then18:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %and19 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %shr = lshr i32 %15, 8
  %spec.select = select i1 %tobool20.not, i32 %15, i32 %shr
  %and23 = and i32 %spec.select, 63
  %add24 = add nuw nsw i32 %and23, 2
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.then9.if.end26_crit_edge, %sw.bb4.if.end26_crit_edge
  %sdiv.0 = phi i32 [ %add24, %if.then18 ], [ 2, %if.then9.if.end26_crit_edge ], [ 2, %sw.bb4.if.end26_crit_edge ]
  %mul27 = shl i32 %call5.i, 1
  %div = udiv i32 %mul27, %sdiv.0
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end26, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ %div, %if.end26 ], [ %7, %if.then ], [ 108000, %sw.bb.cleanup_crit_edge ], [ 100000, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_clk(ptr noundef %clk, i32 noundef %idx) unnamed_addr #0 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 1274112
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  %shl = shl nuw i32 1, %idx
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else14, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %idx)
  %cmp = icmp slt i32 %idx, 7
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mul8 = shl i32 %idx, 5
  %add9 = add i32 %mul8, 1273856
  %call10 = tail call fastcc i32 @read_pll(ptr noundef %clk, i32 noundef %add9)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1274080
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %13 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 1274084
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  %and.i = lshr i32 %15, 16
  %shr.i = and i32 %and.i, 63
  %and8.i = lshr i32 %15, 8
  %shr9.i = and i32 %and8.i, 255
  %and10.i = and i32 %15, 255
  %and12.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %16 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device1, align 4
  %pri.i41 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %pri.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %19, i32 1274172
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %and.i43 = and i32 %20, 3
  %21 = zext i32 %and.i43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and.i43, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 2, label %if.end.i.read_div.exit_crit_edge
    i32 3, label %sw.bb4.i
  ]

if.end.i.read_div.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_div.exit

sw.bb.i:                                          ; preds = %if.end.i
  %and2.i = and i32 %20, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and2.i)
  %cmp.not.i = icmp eq i32 %and2.i, 196608
  br i1 %cmp.not.i, label %sw.bb.i.read_div.exit_crit_edge, label %if.then.i

sw.bb.i.read_div.exit_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_div.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 18
  %22 = ptrtoint ptr %crystal.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crystal.i, align 4
  br label %read_div.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device1, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 1274172
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %and.i.i = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 9, i32 10
  %call5.i.i = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef %..i.i) #7
  %mul27.i = and i32 %call5.i.i, 2147483647
  br label %read_div.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_div.exit

read_div.exit:                                    ; preds = %sw.default.i, %sw.bb4.i, %if.then.i, %sw.bb.i.read_div.exit_crit_edge, %if.end.i.read_div.exit_crit_edge
  %retval.0.i44 = phi i32 [ 0, %sw.default.i ], [ %mul27.i, %sw.bb4.i ], [ %23, %if.then.i ], [ 108000, %sw.bb.i.read_div.exit_crit_edge ], [ 100000, %if.end.i.read_div.exit_crit_edge ]
  %mul.i = mul i32 %retval.0.i44, %shr9.i
  %div22.i = udiv i32 %mul.i, %and10.i
  %div23.i = udiv i32 %div22.i, %shr.i
  br label %if.end

if.end:                                           ; preds = %read_div.exit, %if.else.if.end_crit_edge, %if.then7
  %sclk.0 = phi i32 [ %call10, %if.then7 ], [ %div23.i, %read_div.exit ], [ 0, %if.else.if.end_crit_edge ]
  %and12 = lshr i32 %4, 8
  br label %if.end19

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call fastcc i32 @read_div(ptr noundef %clk, i32 noundef %idx, i32 noundef 1274208, i32 noundef 1274320)
  br label %if.end19

if.end19:                                         ; preds = %if.else14, %if.end
  %sclk.1 = phi i32 [ %sclk.0, %if.end ], [ %call15, %if.else14 ]
  %sdiv.0.in.in = phi i32 [ %and12, %if.end ], [ %4, %if.else14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool21.not = icmp sgt i32 %4, -1
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %sdiv.0.in = and i32 %sdiv.0.in.in, 63
  %sdiv.0 = add nuw nsw i32 %sdiv.0.in, 2
  %mul23 = shl i32 %sclk.1, 1
  %div = udiv i32 %mul23, %sdiv.0
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.then22 ], [ %sclk.1, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calc_clk(ptr noundef %clk, ptr nocapture noundef readonly %cstate, i32 noundef %idx, i32 noundef %dom) unnamed_addr #0 align 64 {
entry:
  %limits.i = alloca %struct.nvbios_pll, align 4
  %N.i = alloca i32, align 4
  %M.i = alloca i32, align 4
  %P.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx
  %arrayidx1 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 %dom
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %and.i.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 9, i32 10
  %call5.i.i = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef %..i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %idx)
  %cmp2.i = icmp slt i32 %idx, 7
  br i1 %cmp2.i, label %if.then3.i, label %sw.default.i.calc_src.exit_crit_edge

sw.default.i.calc_src.exit_crit_edge:             ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_src.exit

if.then3.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = shl i32 %call5.i.i, 1
  %div1.i.i = udiv i32 %mul.i.i, %1
  %8 = tail call i32 @llvm.umin.i32(i32 %div1.i.i, i32 65) #7
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 2) #7
  %sub.i.i = add nsw i32 %9, -2
  %div4.i.i = udiv i32 %mul.i.i, %9
  br label %calc_src.exit

calc_src.exit:                                    ; preds = %if.then3.i, %sw.default.i.calc_src.exit_crit_edge, %sw.bb1.i, %if.then.i, %entry.calc_src.exit_crit_edge
  %src0.0 = phi i32 [ 3, %if.then3.i ], [ 3, %sw.default.i.calc_src.exit_crit_edge ], [ 2, %sw.bb1.i ], [ 196608, %if.then.i ], [ 0, %entry.calc_src.exit_crit_edge ]
  %div0.0 = phi i32 [ %sub.i.i, %if.then3.i ], [ 0, %sw.default.i.calc_src.exit_crit_edge ], [ 0, %sw.bb1.i ], [ 0, %if.then.i ], [ 0, %entry.calc_src.exit_crit_edge ]
  %retval.0.i = phi i32 [ %div4.i.i, %if.then3.i ], [ %call5.i.i, %sw.default.i.calc_src.exit_crit_edge ], [ %1, %sw.bb1.i ], [ %1, %if.then.i ], [ %1, %entry.calc_src.exit_crit_edge ]
  %mul.i1 = shl i32 %retval.0.i, 1
  %div1.i = udiv i32 %mul.i1, %1
  %10 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 65) #7
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 2) #7
  %sub.i = add nsw i32 %11, -2
  %div4.i = udiv i32 %mul.i1, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div4.i)
  %cmp.not = icmp eq i32 %1, %div4.i
  br i1 %cmp.not, label %calc_src.exit.if.end12_crit_edge, label %land.lhs.true

calc_src.exit.if.end12_crit_edge:                 ; preds = %calc_src.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %calc_src.exit
  %shl = shl nuw i32 1, %idx
  %and = and i32 %shl, 17287
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
  %coef = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 5
  %subdev1.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bios2.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %limits.i) #7
  %16 = call ptr @memset(ptr %limits.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N.i) #7
  %17 = ptrtoint ptr %N.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %N.i, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M.i) #7
  %18 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %M.i, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P.i) #7
  %19 = ptrtoint ptr %P.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %P.i, align 4, !annotation !40
  %mul.i2 = shl i32 %idx, 5
  %add.i3 = add i32 %mul.i2, 1273856
  %call.i = call i32 @nvbios_pll_parse(ptr noundef %15, i32 noundef %add.i3, ptr noundef nonnull %limits.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i4, label %if.then6.calc_pll.exit_crit_edge

if.then6.calc_pll.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_pll.exit

if.end.i4:                                        ; preds = %if.then6
  %call3.i = call fastcc i32 @read_div(ptr noundef %clk, i32 noundef %idx, i32 noundef 1274144, i32 noundef 1274176) #7
  %refclk.i = getelementptr inbounds %struct.nvbios_pll, ptr %limits.i, i32 0, i32 2
  %20 = ptrtoint ptr %refclk.i to i32
  call void @__asan_store4_noabort(i32 %20)
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
  %21 = ptrtoint ptr %P.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %P.i, align 4
  %shl.i = shl i32 %22, 16
  %23 = ptrtoint ptr %N.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %N.i, align 4
  %shl11.i = shl i32 %24, 8
  %or.i = or i32 %shl11.i, %shl.i
  %25 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %M.i, align 4
  %or12.i = or i32 %or.i, %26
  %27 = ptrtoint ptr %coef to i32
  call void @__asan_store4_noabort(i32 %27)
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
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %calc_pll.exit
  %clk1.0 = phi i32 [ %retval.0.i5, %calc_pll.exit ], [ %29, %if.else ]
  %mul.i6 = shl i32 %clk1.0, 1
  %div1.i7 = udiv i32 %mul.i6, %1
  %30 = call i32 @llvm.umin.i32(i32 %div1.i7, i32 65) #7
  %31 = call i32 @llvm.umax.i32(i32 %30, i32 2) #7
  %sub.i8 = add nsw i32 %31, -2
  %div4.i9 = udiv i32 %mul.i6, %31
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %land.lhs.true.if.end12_crit_edge, %calc_src.exit.if.end12_crit_edge
  %div1P.0 = phi i32 [ 0, %calc_src.exit.if.end12_crit_edge ], [ 0, %land.lhs.true.if.end12_crit_edge ], [ %sub.i8, %if.end10 ]
  %clk1.1 = phi i32 [ 0, %calc_src.exit.if.end12_crit_edge ], [ 0, %land.lhs.true.if.end12_crit_edge ], [ %div4.i9, %if.end10 ]
  %sub = sub i32 %1, %div4.i
  %32 = call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub16 = sub i32 %1, %clk1.1
  %33 = call i32 @llvm.abs.i32(i32 %sub16, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %33)
  %cmp24.not = icmp sgt i32 %32, %33
  br i1 %cmp24.not, label %if.else42, label %if.then25

if.then25:                                        ; preds = %if.end12
  %dsrc = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 3
  %34 = ptrtoint ptr %dsrc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %src0.0, ptr %dsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div0.0)
  %tobool26.not = icmp eq i32 %div0.0, 0
  br i1 %tobool26.not, label %if.then25.if.end33_crit_edge, label %if.then27

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %ddiv = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 4
  %35 = ptrtoint ptr %ddiv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ddiv, align 4
  %shl28 = shl nuw nsw i32 %div0.0, 8
  %or = or i32 %div0.0, %shl28
  %or30 = or i32 %or, %36
  %or32 = or i32 %or30, -2147483648
  store i32 %or32, ptr %ddiv, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then25.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool34.not = icmp eq i32 %sub.i, 0
  br i1 %tobool34.not, label %if.end33.if.end39_crit_edge, label %if.then35

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %mdiv = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 2
  %37 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mdiv, align 4
  %or36 = or i32 %sub.i, %38
  %or38 = or i32 %or36, -2147483648
  store i32 %or38, ptr %mdiv, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end33.if.end39_crit_edge
  %coef40 = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 5
  %39 = ptrtoint ptr %coef40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %coef40, align 4
  br label %if.end54

if.else42:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div1P.0)
  %tobool43.not = icmp eq i32 %div1P.0, 0
  br i1 %tobool43.not, label %if.else42.if.end50_crit_edge, label %if.then44

if.else42.if.end50_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then44:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  %mdiv45 = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 2
  %40 = ptrtoint ptr %mdiv45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mdiv45, align 4
  %shl47 = shl nuw nsw i32 %div1P.0, 8
  %or46 = or i32 %shl47, %41
  %or49 = or i32 %or46, -2147483648
  store i32 %or49, ptr %mdiv45, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.else42.if.end50_crit_edge
  %shl51 = shl nuw i32 1, %idx
  br label %if.end54

if.end54:                                         ; preds = %if.end50, %if.end39
  %shl51.sink = phi i32 [ %shl51, %if.end50 ], [ 0, %if.end39 ]
  %storemerge = phi i32 [ %clk1.1, %if.end50 ], [ %div4.i, %if.end39 ]
  %ssel52 = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 1
  %42 = ptrtoint ptr %ssel52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl51.sink, ptr %ssel52, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf100_clk_prog_1(ptr nocapture noundef readonly %clk, i32 noundef %idx) unnamed_addr #0 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %idx
  %neg = xor i32 %shl, -1
  %and = and i32 %4, %neg
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 1274112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #7, !srcloc !36
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
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 362, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call29, ptr noundef %retval.0.i) #7
  br label %if.end48

if.end48:                                         ; preds = %dev_name.exit, %do.body5.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf100_clk_prog_2(ptr nocapture noundef readonly %clk, i32 noundef %idx) unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %idx)
  %cmp = icmp slt i32 %idx, 8
  br i1 %cmp, label %if.then, label %entry.if.end148_crit_edge

entry.if.end148_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then:                                          ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %and = and i32 %4, -5
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %and) #7, !srcloc !36
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %and18 = and i32 %9, -2
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %and18) #7, !srcloc !36
  %coef = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 5
  %12 = ptrtoint ptr %coef to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %coef, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then.if.end148_crit_edge, label %do.body24

if.then.if.end148_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

do.body24:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %coef to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %coef, align 4
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add29 = add i32 %mul, 1273860
  %add.ptr30 = getelementptr i8, ptr %17, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %15) #7, !srcloc !36
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %or44 = or i32 %20, 1
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %or44) #7, !srcloc !36
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr54 = getelementptr i8, ptr %24, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %and60 = and i32 %25, -17
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr63 = getelementptr i8, ptr %27, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %and60) #7, !srcloc !36
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %28 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  br label %do.body65

do.body65:                                        ; preds = %do.cond75.do.body65_crit_edge, %do.body24
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr69 = getelementptr i8, ptr %30, i32 %add
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %and72 = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.cond75, label %do.body65.if.end111_crit_edge

do.body65.if.end111_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

do.cond75:                                        ; preds = %do.body65
  %call76 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp77 = icmp sgt i64 %call76, -1
  br i1 %cmp77, label %do.cond75.do.body65_crit_edge, label %do.end89

do.cond75.do.body65_crit_edge:                    ; preds = %do.cond75
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

do.end89:                                         ; preds = %do.cond75
  %32 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_wait, align 8
  %device91 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %device91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device91, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %call92 = call ptr @dev_driver_string(ptr noundef %37) #7
  %38 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_wait, align 8
  %device95 = getelementptr inbounds %struct.nvkm_timer, ptr %39, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %device95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device95, align 4
  %dev96 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev96, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end89.dev_name.exit_crit_edge

do.end89.dev_name.exit_crit_edge:                 ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end89.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %47, %if.end.i ], [ %45, %do.end89.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call92, ptr noundef %retval.0.i) #7
  br label %if.end111

if.end111:                                        ; preds = %dev_name.exit, %do.body65.if.end111_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  %48 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri, align 4
  %add.ptr119 = getelementptr i8, ptr %49, i32 %add
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @arm_heavy_mb() #7
  %or126 = or i32 %50, 16
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr128 = getelementptr i8, ptr %52, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %or126) #7, !srcloc !36
  %53 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri, align 4
  %add.ptr136 = getelementptr i8, ptr %54, i32 %add
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %or143 = or i32 %55, 4
  %56 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri, align 4
  %add.ptr145 = getelementptr i8, ptr %57, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %or143) #7, !srcloc !36
  br label %if.end148

if.end148:                                        ; preds = %if.end111, %if.then.if.end148_crit_edge, %entry.if.end148_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf100_clk_prog_3(ptr nocapture noundef readonly %clk, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ssel = getelementptr %struct.gf100_clk, ptr %clk, i32 0, i32 1, i32 %idx, i32 1
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #7, !srcloc !36
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
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
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
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 403, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call34, ptr noundef %retval.0.i) #7
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
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c", i32 460, i32 58}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c", i32 462, i32 34}
!4 = !{ptr @gf100_clk, !5, !"gf100_clk", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c", i32 449, i32 1}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c", i32 204, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gf100_clk_read._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @gf100_clk_read._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gf100.c", i32 359, i32 2}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 5396804}
!26 = !{i64 2156241971}
!27 = !{i64 2156242362}
!28 = !{i64 2156242774}
!29 = !{i64 2156241580}
!30 = !{i64 2156243186}
!31 = !{i64 2156245612}
!32 = !{i64 2156243607}
!33 = !{i64 2156243992}
!34 = !{i64 2156261990}
!35 = !{i64 2156262392}
!36 = !{i64 5396386}
!37 = !{i64 2156262867}
!38 = !{i64 2156282579}
!39 = !{i64 2156282981}
!40 = !{!"auto-init"}
!41 = !{i64 2156263708}
!42 = !{i64 2156264110}
!43 = !{i64 2156266025}
!44 = !{i64 2156267691}
!45 = !{i64 2156268093}
!46 = !{i64 2156268969}
!47 = !{i64 2156269371}
!48 = !{i64 2156269822}
!49 = !{i64 2156270666}
!50 = !{i64 2156271068}
!51 = !{i64 2156271944}
!52 = !{i64 2156272346}
!53 = !{i64 2156274275}
!54 = !{i64 2156275942}
!55 = !{i64 2156276344}
!56 = !{i64 2156277220}
!57 = !{i64 2156277622}
!58 = !{i64 2156278495}
!59 = !{i64 2156278897}
!60 = !{i64 2156280875}
