; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.133, %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
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
%struct.gt215_clk_info = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.gt215_clk = type { %struct.nvkm_clk, [29 x %struct.gt215_clk_info] }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shader\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@gt215_clk = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [9 x %struct.nvkm_domain] }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [9 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @gt215_clk_read, ptr @gt215_clk_calc, ptr @gt215_clk_prog, ptr @gt215_clk_tidy, ptr null, i32 0, [9 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 15, i8 0, i8 0, ptr @.str.2, i32 1000 }, %struct.nvkm_domain { i32 17, i8 1, i8 0, ptr @.str.3, i32 1000 }, %struct.nvkm_domain { i32 18, i8 2, i8 0, ptr @.str.4, i32 1000 }, %struct.nvkm_domain { i32 27, i8 3, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 26, i8 4, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 8, i8 5, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 16, i8 6, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@gt215_clk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 175, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unknown HOST clock source %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gt215_clk_read\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gt215_clk_read._entry_ptr = internal global ptr @gt215_clk_read._entry, section ".printk_index", align 4
@gt215_clk_read._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str, i32 179, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid clock source %d\0A\00", [35 x i8] zeroinitializer }, align 32
@gt215_clk_read._entry_ptr.12 = internal global ptr @gt215_clk_read._entry.10, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 27000, i64 100000, i64 108000]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 27000, i64 100000, i64 108000]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 27000, i64 100000, i64 108000]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 48]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.17 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 8, i64 15, i64 16, i64 17, i64 18, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 27000, i64 100000, i64 108000]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 27000, i64 100000, i64 108000]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 27000, i64 100000, i64 108000]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 316, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 528, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 529, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 530, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"gt215_clk\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 521, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 175, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 179, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @gt215_clk_read._entry, ptr @gt215_clk_read._entry.10, ptr @gt215_clk_read._entry_ptr, ptr @gt215_clk_read._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gt215_clk, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_clk to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_clk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_clk_read._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_pll_info(ptr noundef %base, i32 noundef %idx, i32 noundef %pll, i32 noundef %khz, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %limits = alloca %struct.nvbios_pll, align 4
  %P = alloca i32, align 4
  %N = alloca i32, align 4
  %M = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev2 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %limits) #7
  %0 = call ptr @memset(ptr %limits, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #7
  %1 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %P, align 4, !annotation !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #7
  %2 = ptrtoint ptr %N to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %N, align 4, !annotation !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M) #7
  %3 = ptrtoint ptr %M to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %M, align 4, !annotation !31
  %pll3 = getelementptr inbounds %struct.gt215_clk_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %pll3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pll3, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %info, align 4
  %6 = zext i32 %khz to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %khz, label %sw.default.i [
    i32 27000, label %entry.cleanup.sink.split.i_crit_edge
    i32 100000, label %sw.bb3.i
    i32 108000, label %sw.bb5.i
  ]

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.default.i:                                     ; preds = %entry
  %call.i = tail call fastcc i32 @read_vco(ptr noundef %base, i32 noundef %idx) #7
  %mul.i = shl i32 %call.i, 1
  %div.i = udiv i32 %mul.i, %khz
  %7 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 65) #7
  %div9.i = udiv i32 %mul.i, %7
  %add.i = add i32 %khz, 3000
  %sub.i = sub i32 %add.i, %div9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp10.i = icmp slt i32 %sub.i, 0
  br i1 %cmp10.i, label %if.then.i, label %sw.default.i.if.end.i_crit_edge

sw.default.i.if.end.i_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add nuw nsw i32 %7, 1
  %div12.i = udiv i32 %mul.i, %inc.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.default.i.if.end.i_crit_edge
  %oclk.0.i = phi i32 [ %div12.i, %if.then.i ], [ %div9.i, %sw.default.i.if.end.i_crit_edge ]
  %sdiv.0.i = phi i32 [ %inc.i, %if.then.i ], [ %7, %sw.default.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sdiv.0.i)
  %cmp13.i = icmp ugt i32 %sdiv.0.i, 4
  br i1 %cmp13.i, label %if.then14.i, label %if.end.i.gt215_clk_info.exit_crit_edge

if.end.i.gt215_clk_info.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_clk_info.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i = shl nuw nsw i32 %sdiv.0.i, 16
  %or.i = add nsw i32 %sub15.i, -118528
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then14.i, %sw.bb5.i, %sw.bb3.i, %entry.cleanup.sink.split.i_crit_edge
  %or.sink.i = phi i32 [ %or.i, %if.then14.i ], [ 8512, %sw.bb5.i ], [ 8448, %sw.bb3.i ], [ 256, %entry.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %oclk.0.i, %if.then14.i ], [ %khz, %sw.bb5.i ], [ %khz, %sw.bb3.i ], [ %khz, %entry.cleanup.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.sink.i, ptr %info, align 4
  br label %gt215_clk_info.exit

gt215_clk_info.exit:                              ; preds = %cleanup.sink.split.i, %if.end.i.gt215_clk_info.exit_crit_edge
  %retval.0.i = phi i32 [ -34, %if.end.i.gt215_clk_info.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pll)
  %tobool.not = icmp eq i32 %pll, 0
  br i1 %tobool.not, label %gt215_clk_info.exit.out_crit_edge, label %lor.lhs.false

gt215_clk_info.exit.out_crit_edge:                ; preds = %gt215_clk_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %gt215_clk_info.exit
  %sub = add i32 %khz, 2000
  %9 = sub i32 %sub, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %9)
  %10 = icmp ult i32 %9, 5000
  br i1 %10, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %device = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %bios = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bios, align 8
  %call6 = call i32 @nvbios_pll_parse(ptr noundef %14, i32 noundef %pll, ptr noundef nonnull %limits) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %refclk = getelementptr inbounds %struct.nvbios_pll, ptr %limits, i32 0, i32 2
  %15 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refclk, align 4
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %info, align 4
  %18 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %16, label %sw.default.i68 [
    i32 27000, label %if.end9.cleanup.sink.split.i81_crit_edge
    i32 100000, label %sw.bb3.i59
    i32 108000, label %sw.bb5.i60
  ]

if.end9.cleanup.sink.split.i81_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i81

sw.bb3.i59:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i81

sw.bb5.i60:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i81

sw.default.i68:                                   ; preds = %if.end9
  %sub11 = add i32 %idx, -16
  %call.i61 = call fastcc i32 @read_vco(ptr noundef %base, i32 noundef %sub11) #7
  %mul.i62 = shl i32 %call.i61, 1
  %div.i63 = udiv i32 %mul.i62, %16
  %19 = call i32 @llvm.umin.i32(i32 %div.i63, i32 65) #7
  %div9.i64 = udiv i32 %mul.i62, %19
  %add.i65 = add i32 %16, 3000
  %sub.i66 = sub i32 %add.i65, %div9.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i66)
  %cmp10.i67 = icmp slt i32 %sub.i66, 0
  br i1 %cmp10.i67, label %if.then.i71, label %sw.default.i68.if.end.i75_crit_edge

sw.default.i68.if.end.i75_crit_edge:              ; preds = %sw.default.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i75

if.then.i71:                                      ; preds = %sw.default.i68
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i69 = add nuw nsw i32 %19, 1
  %div12.i70 = udiv i32 %mul.i62, %inc.i69
  br label %if.end.i75

if.end.i75:                                       ; preds = %if.then.i71, %sw.default.i68.if.end.i75_crit_edge
  %oclk.0.i72 = phi i32 [ %div12.i70, %if.then.i71 ], [ %div9.i64, %sw.default.i68.if.end.i75_crit_edge ]
  %sdiv.0.i73 = phi i32 [ %inc.i69, %if.then.i71 ], [ %19, %sw.default.i68.if.end.i75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sdiv.0.i73)
  %cmp13.i74 = icmp ugt i32 %sdiv.0.i73, 4
  br i1 %cmp13.i74, label %if.then14.i78, label %if.end.i75.gt215_clk_info.exit83_crit_edge

if.end.i75.gt215_clk_info.exit83_crit_edge:       ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_clk_info.exit83

if.then14.i78:                                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i76 = shl nuw nsw i32 %sdiv.0.i73, 16
  %or.i77 = add nsw i32 %sub15.i76, -118528
  br label %cleanup.sink.split.i81

cleanup.sink.split.i81:                           ; preds = %if.then14.i78, %sw.bb5.i60, %sw.bb3.i59, %if.end9.cleanup.sink.split.i81_crit_edge
  %or.sink.i79 = phi i32 [ %or.i77, %if.then14.i78 ], [ 8512, %sw.bb5.i60 ], [ 8448, %sw.bb3.i59 ], [ 256, %if.end9.cleanup.sink.split.i81_crit_edge ]
  %retval.0.ph.i80 = phi i32 [ %oclk.0.i72, %if.then14.i78 ], [ %16, %sw.bb5.i60 ], [ %16, %sw.bb3.i59 ], [ %16, %if.end9.cleanup.sink.split.i81_crit_edge ]
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.sink.i79, ptr %info, align 4
  br label %gt215_clk_info.exit83

gt215_clk_info.exit83:                            ; preds = %cleanup.sink.split.i81, %if.end.i75.gt215_clk_info.exit83_crit_edge
  %retval.0.i82 = phi i32 [ -34, %if.end.i75.gt215_clk_info.exit83_crit_edge ], [ %retval.0.ph.i80, %cleanup.sink.split.i81 ]
  %21 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %refclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i82, i32 %22)
  %cmp14.not = icmp eq i32 %retval.0.i82, %22
  br i1 %cmp14.not, label %if.end16, label %gt215_clk_info.exit83.cleanup_crit_edge

gt215_clk_info.exit83.cleanup_crit_edge:          ; preds = %gt215_clk_info.exit83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %gt215_clk_info.exit83
  %call17 = call i32 @gt215_pll_calc(ptr noundef %subdev2, ptr noundef nonnull %limits, i32 noundef %khz, ptr noundef nonnull %N, ptr noundef null, ptr noundef nonnull %M, ptr noundef nonnull %P) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp18 = icmp sgt i32 %call17, -1
  br i1 %cmp18, label %if.then19, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %P, align 4
  %shl = shl i32 %24, 16
  %25 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %N, align 4
  %shl20 = shl i32 %26, 8
  %or = or i32 %shl20, %shl
  %27 = ptrtoint ptr %M to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %M, align 4
  %or21 = or i32 %or, %28
  %29 = ptrtoint ptr %pll3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or21, ptr %pll3, align 4
  br label %out

out:                                              ; preds = %if.then19, %if.end16.out_crit_edge, %lor.lhs.false.out_crit_edge, %gt215_clk_info.exit.out_crit_edge
  %ret.0 = phi i32 [ %call17, %if.then19 ], [ %call17, %if.end16.out_crit_edge ], [ %retval.0.i, %gt215_clk_info.exit.out_crit_edge ], [ %retval.0.i, %lor.lhs.false.out_crit_edge ]
  %add = add i32 %khz, 7566
  call void @__sanitizer_cov_trace_const_cmp4(i32 287526, i32 %add)
  %cmp25 = icmp ugt i32 %add, 287526
  %div = udiv i32 %add, 15133
  %cond = select i1 %cmp25, i32 %div, i32 18
  %fb_delay = getelementptr inbounds %struct.gt215_clk_info, ptr %info, i32 0, i32 3
  %30 = ptrtoint ptr %fb_delay to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %fb_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool26.not = icmp eq i32 %ret.0, 0
  %cond30 = select i1 %tobool26.not, i32 -34, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %out, %gt215_clk_info.exit83.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond30, %out ], [ %call6, %if.end.cleanup_crit_edge ], [ -22, %gt215_clk_info.exit83.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %limits) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gt215_clk_info(ptr nocapture noundef readonly %base, i32 noundef %idx, i32 noundef %khz, ptr nocapture noundef writeonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %info, align 4
  %1 = zext i32 %khz to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %khz, label %sw.default [
    i32 27000, label %entry.cleanup.sink.split_crit_edge
    i32 100000, label %sw.bb3
    i32 108000, label %sw.bb5
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.default:                                       ; preds = %entry
  %call = tail call fastcc i32 @read_vco(ptr noundef %base, i32 noundef %idx)
  %mul = shl i32 %call, 1
  %div = udiv i32 %mul, %khz
  %2 = tail call i32 @llvm.umin.i32(i32 %div, i32 65)
  %div9 = udiv i32 %mul, %2
  %add = add i32 %khz, 3000
  %sub = sub i32 %add, %div9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %if.then, label %sw.default.if.end_crit_edge

sw.default.if.end_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw nsw i32 %2, 1
  %div12 = udiv i32 %mul, %inc
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default.if.end_crit_edge
  %oclk.0 = phi i32 [ %div12, %if.then ], [ %div9, %sw.default.if.end_crit_edge ]
  %sdiv.0 = phi i32 [ %inc, %if.then ], [ %2, %sw.default.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sdiv.0)
  %cmp13 = icmp ugt i32 %sdiv.0, 4
  br i1 %cmp13, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub15 = shl nuw nsw i32 %sdiv.0, 16
  %or = add nsw i32 %sub15, -118528
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14, %sw.bb5, %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %or.sink = phi i32 [ %or, %if.then14 ], [ 8512, %sw.bb5 ], [ 8448, %sw.bb3 ], [ 256, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %oclk.0, %if.then14 ], [ %khz, %sw.bb5 ], [ %khz, %sw.bb3 ], [ %khz, %entry.cleanup.sink.split_crit_edge ]
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.sink, ptr %info, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_clk_pre(ptr nocapture noundef readonly %clk, ptr noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait71 = alloca %struct.nvkm_timer_wait, align 8
  %_wait133 = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %fifo2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %fifo2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo2, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 131168
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %and = and i32 %6, -458753
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 131168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %and) #7, !srcloc !35
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 9476
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %or18 = or i32 %11, 1
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 9476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %or18) #7, !srcloc !35
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %14 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  br label %do.body22

do.body22:                                        ; preds = %do.cond28.do.body22_crit_edge, %entry
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 256
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end67, label %do.cond28

do.cond28:                                        ; preds = %do.body22
  %call29 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp = icmp sgt i64 %call29, -1
  br i1 %cmp, label %do.cond28.do.body22_crit_edge, label %do.end41

do.cond28.do.body22_crit_edge:                    ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.end41:                                         ; preds = %do.cond28
  %18 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_wait, align 8
  %device43 = getelementptr inbounds %struct.nvkm_timer, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device43, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %call44 = call ptr @dev_driver_string(ptr noundef %23) #7
  %24 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_wait, align 8
  %device47 = getelementptr inbounds %struct.nvkm_timer, ptr %25, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %device47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device47, align 4
  %dev48 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev48, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end41.if.end63_crit_edge

do.end41.if.end63_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end.i:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end.i, %do.end41.if.end63_crit_edge
  %retval.0.i = phi ptr [ %33, %if.end.i ], [ %31, %do.end41.if.end63_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 319, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call44, ptr noundef %retval.0.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  br label %cleanup196

if.end67:                                         ; preds = %do.body22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  %tobool68.not = icmp eq ptr %3, null
  br i1 %tobool68.not, label %if.end67.if.end70_crit_edge, label %if.then69

if.end67.if.end70_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void @nvkm_fifo_pause(ptr noundef nonnull %3, ptr noundef %flags) #7
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67.if.end70_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait71) #7
  %34 = call ptr @memset(ptr %_wait71, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait71) #7
  br label %do.body74

do.body74:                                        ; preds = %do.cond84.do.body74_crit_edge, %if.end70
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr77 = getelementptr i8, ptr %36, i32 9476
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %and80 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.cond84, label %if.end132

do.cond84:                                        ; preds = %do.body74
  %call85 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait71) #7
  %cmp86 = icmp sgt i64 %call85, -1
  br i1 %cmp86, label %do.cond84.do.body74_crit_edge, label %do.end104

do.cond84.do.body74_crit_edge:                    ; preds = %do.cond84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body74

do.end104:                                        ; preds = %do.cond84
  %38 = ptrtoint ptr %_wait71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_wait71, align 8
  %device107 = getelementptr inbounds %struct.nvkm_timer, ptr %39, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %device107 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device107, align 4
  %dev108 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev108, align 8
  %call109 = call ptr @dev_driver_string(ptr noundef %43) #7
  %44 = ptrtoint ptr %_wait71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_wait71, align 8
  %device112 = getelementptr inbounds %struct.nvkm_timer, ptr %45, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %device112 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device112, align 4
  %dev113 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev113, align 8
  %init_name.i220 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %init_name.i220 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i220, align 8
  %tobool.not.i221 = icmp eq ptr %51, null
  br i1 %tobool.not.i221, label %if.end.i222, label %do.end104.if.end128_crit_edge

do.end104.if.end128_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.end.i222:                                      ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end.i222, %do.end104.if.end128_crit_edge
  %retval.0.i223 = phi ptr [ %53, %if.end.i222 ], [ %51, %do.end104.if.end128_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 328, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call109, ptr noundef %retval.0.i223) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait71) #7
  br label %cleanup196

if.end132:                                        ; preds = %do.body74
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait71) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait133) #7
  %54 = call ptr @memset(ptr %_wait133, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait133) #7
  br label %do.body136

do.body136:                                       ; preds = %do.cond147.do.body136_crit_edge, %if.end132
  %55 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri, align 4
  %add.ptr140 = getelementptr i8, ptr %56, i32 9500
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %and143 = and i32 %57, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and143)
  %cmp144 = icmp eq i32 %and143, 63
  br i1 %cmp144, label %if.end191.thread, label %do.cond147

if.end191.thread:                                 ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait133) #7
  br label %cleanup196

do.cond147:                                       ; preds = %do.body136
  %call148 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait133) #7
  %cmp149 = icmp sgt i64 %call148, -1
  br i1 %cmp149, label %do.cond147.do.body136_crit_edge, label %do.end167

do.cond147.do.body136_crit_edge:                  ; preds = %do.cond147
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body136

do.end167:                                        ; preds = %do.cond147
  %58 = ptrtoint ptr %_wait133 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_wait133, align 8
  %device170 = getelementptr inbounds %struct.nvkm_timer, ptr %59, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %device170 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device170, align 4
  %dev171 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev171 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev171, align 8
  %call172 = call ptr @dev_driver_string(ptr noundef %63) #7
  %64 = ptrtoint ptr %_wait133 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %_wait133, align 8
  %device175 = getelementptr inbounds %struct.nvkm_timer, ptr %65, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %device175 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device175, align 4
  %dev176 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev176, align 8
  %init_name.i225 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %init_name.i225 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i225, align 8
  %tobool.not.i226 = icmp eq ptr %71, null
  br i1 %tobool.not.i226, label %if.end.i227, label %do.end167._crit_edge

do.end167._crit_edge:                             ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %74

if.end.i227:                                      ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %69, align 4
  br label %74

74:                                               ; preds = %if.end.i227, %do.end167._crit_edge
  %retval.0.i228 = phi ptr [ %73, %if.end.i227 ], [ %71, %do.end167._crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call172, ptr noundef %retval.0.i228) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait133) #7
  br label %cleanup196

cleanup196:                                       ; preds = %74, %if.end191.thread, %if.end128, %if.end63
  %retval.0 = phi i32 [ -16, %if.end63 ], [ -5, %if.end128 ], [ -5, %74 ], [ 0, %if.end191.thread ]
  ret i32 %retval.0
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_pause(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gt215_clk_post(ptr nocapture noundef readonly %clk, ptr noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %fifo2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %fifo2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo2, align 8
  %tobool.not = icmp eq ptr %3, null
  %tobool3.not = icmp eq ptr %flags, null
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_fifo_start(ptr noundef nonnull %3, ptr noundef nonnull %flags) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 9476
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %and = and i32 %6, -2
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 9476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %and) #7, !srcloc !35
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 131168
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %and18 = and i32 %11, -458753
  %or19 = or i32 %and18, 262144
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 131168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %or19) #7, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_clk_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 924) #10
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
  %call2 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @gt215_clk, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_vco(ptr nocapture noundef readonly %clk, i32 noundef %idx) unnamed_addr #0 align 64 {
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
  %add = add i32 %mul, 16672
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %and = and i32 %4, 48
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 32, label %sw.bb2
    i32 48, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crystal, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %8 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 59424
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb2
  %and2.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end26.i_crit_edge, label %if.then4.i

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then4.i:                                       ; preds = %if.then.i
  %13 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %14, i32 59428
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %and11.i = and i32 %15, 255
  %and12.i = lshr i32 %15, 8
  %shr13.i = and i32 %and12.i, 255
  %16 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device1, align 4
  %chipset.i46 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %chipset.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chipset.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %19)
  %cmp2.i47 = icmp eq i32 %19, 175
  br i1 %cmp2.i47, label %if.then3.i52, label %if.end.i54

if.then3.i52:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %pri.i49 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 11
  %20 = ptrtoint ptr %pri.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %21, i32 18204
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %mul.i51 = mul i32 %22, 1000
  br label %if.end23.i

if.end.i54:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i53 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 18
  %23 = ptrtoint ptr %crystal.i53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %crystal.i53, align 4
  br label %if.end23.i

if.else.i:                                        ; preds = %sw.bb2
  %25 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device1, align 4
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %28)
  %cmp2.i = icmp eq i32 %28, 175
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %pri.i42 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 11
  %29 = ptrtoint ptr %pri.i42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %30, i32 18204
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %mul.i = mul i32 %31, 1000
  br label %if.end26.i

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 18
  %32 = ptrtoint ptr %crystal.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crystal.i, align 4
  br label %if.end26.i

if.end23.i:                                       ; preds = %if.end.i54, %if.then3.i52
  %sclk.0.i = phi i32 [ %mul.i51, %if.then3.i52 ], [ %24, %if.end.i54 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool24.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool24.not.i, label %if.end23.i.cleanup_crit_edge, label %if.end23.i.if.end26.i_crit_edge

if.end23.i.if.end26.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i:                                       ; preds = %if.end23.i.if.end26.i_crit_edge, %if.end.i, %if.then3.i, %if.then.i.if.end26.i_crit_edge
  %M.0.i87 = phi i32 [ %and11.i, %if.end23.i.if.end26.i_crit_edge ], [ 1, %if.then.i.if.end26.i_crit_edge ], [ 1, %if.then3.i ], [ 1, %if.end.i ]
  %N.0.i86 = phi i32 [ %shr13.i, %if.end23.i.if.end26.i_crit_edge ], [ 1, %if.then.i.if.end26.i_crit_edge ], [ 1, %if.then3.i ], [ 1, %if.end.i ]
  %sclk.0.i85 = phi i32 [ %sclk.0.i, %if.end23.i.if.end26.i_crit_edge ], [ 0, %if.then.i.if.end26.i_crit_edge ], [ %mul.i, %if.then3.i ], [ %33, %if.end.i ]
  %mul27.i = mul i32 %sclk.0.i85, %N.0.i86
  %div.i = udiv i32 %mul27.i, %M.0.i87
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %34 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device1, align 4
  %pri.i11 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %pri.i11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %37, i32 59552
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %and.i14 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool.not.i15 = icmp eq i32 %and.i14, 0
  br i1 %tobool.not.i15, label %if.then.i18, label %if.else.i29

if.then.i18:                                      ; preds = %sw.bb4
  %and2.i16 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i16)
  %tobool3.not.i17 = icmp eq i32 %and2.i16, 0
  br i1 %tobool3.not.i17, label %if.then.i18.if.end26.i37_crit_edge, label %if.then4.i27

if.then.i18.if.end26.i37_crit_edge:               ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i37

if.then4.i27:                                     ; preds = %if.then.i18
  %39 = ptrtoint ptr %pri.i11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri.i11, align 4
  %add.ptr8.i19 = getelementptr i8, ptr %40, i32 59556
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i19) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %and11.i21 = and i32 %41, 255
  %and12.i22 = lshr i32 %41, 8
  %shr13.i23 = and i32 %and12.i22, 255
  %42 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device1, align 4
  %chipset.i70 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %chipset.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chipset.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %45)
  %cmp2.i71 = icmp eq i32 %45, 175
  br i1 %cmp2.i71, label %if.then3.i76, label %if.end.i78

if.then3.i76:                                     ; preds = %if.then4.i27
  call void @__sanitizer_cov_trace_pc() #9
  %pri.i73 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 11
  %46 = ptrtoint ptr %pri.i73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri.i73, align 4
  %add.ptr.i74 = getelementptr i8, ptr %47, i32 18204
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %mul.i75 = mul i32 %48, 1000
  br label %if.end23.i34

if.end.i78:                                       ; preds = %if.then4.i27
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i77 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 18
  %49 = ptrtoint ptr %crystal.i77 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crystal.i77, align 4
  br label %if.end23.i34

if.else.i29:                                      ; preds = %sw.bb4
  %51 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device1, align 4
  %chipset.i58 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 16
  %53 = ptrtoint ptr %chipset.i58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chipset.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %54)
  %cmp2.i59 = icmp eq i32 %54, 175
  br i1 %cmp2.i59, label %if.then3.i64, label %if.end.i66

if.then3.i64:                                     ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #9
  %pri.i61 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 11
  %55 = ptrtoint ptr %pri.i61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %56, i32 18204
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %mul.i63 = mul i32 %57, 1000
  br label %if.end26.i37

if.end.i66:                                       ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #9
  %crystal.i65 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 18
  %58 = ptrtoint ptr %crystal.i65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crystal.i65, align 4
  br label %if.end26.i37

if.end23.i34:                                     ; preds = %if.end.i78, %if.then3.i76
  %sclk.0.i30 = phi i32 [ %mul.i75, %if.then3.i76 ], [ %50, %if.end.i78 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i21)
  %tobool24.not.i33 = icmp eq i32 %and11.i21, 0
  br i1 %tobool24.not.i33, label %if.end23.i34.cleanup_crit_edge, label %if.end23.i34.if.end26.i37_crit_edge

if.end23.i34.if.end26.i37_crit_edge:              ; preds = %if.end23.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i37

if.end23.i34.cleanup_crit_edge:                   ; preds = %if.end23.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i37:                                     ; preds = %if.end23.i34.if.end26.i37_crit_edge, %if.end.i66, %if.then3.i64, %if.then.i18.if.end26.i37_crit_edge
  %M.0.i3294 = phi i32 [ %and11.i21, %if.end23.i34.if.end26.i37_crit_edge ], [ 1, %if.then.i18.if.end26.i37_crit_edge ], [ 1, %if.then3.i64 ], [ 1, %if.end.i66 ]
  %N.0.i3193 = phi i32 [ %shr13.i23, %if.end23.i34.if.end26.i37_crit_edge ], [ 1, %if.then.i18.if.end26.i37_crit_edge ], [ 1, %if.then3.i64 ], [ 1, %if.end.i66 ]
  %sclk.0.i3092 = phi i32 [ %sclk.0.i30, %if.end23.i34.if.end26.i37_crit_edge ], [ 0, %if.then.i18.if.end26.i37_crit_edge ], [ %mul.i63, %if.then3.i64 ], [ %59, %if.end.i66 ]
  %mul27.i35 = mul i32 %sclk.0.i3092, %N.0.i3193
  %div.i36 = udiv i32 %mul27.i35, %M.0.i3294
  br label %cleanup

cleanup:                                          ; preds = %if.end26.i37, %if.end23.i34.cleanup_crit_edge, %if.end26.i, %if.end23.i.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ %div.i, %if.end26.i ], [ 0, %if.end23.i.cleanup_crit_edge ], [ %div.i36, %if.end26.i37 ], [ 0, %if.end23.i34.cleanup_crit_edge ]
  ret i32 %retval.0
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %idx)
  %cmp = icmp sgt i32 %idx, 63
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %3)
  %cmp2 = icmp eq i32 %3, 175
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 18204
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %mul = mul i32 %6, 1000
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crystal, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %pri6 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %pri6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri6, align 4
  %mul7 = shl i32 %idx, 2
  %add = add i32 %mul7, 16672
  %add.ptr8 = getelementptr i8, ptr %10, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end4.cleanup_crit_edge, label %if.end13

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %and14 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %and18 = and i32 %11, 12288
  %12 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and18, label %if.end17.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 8192, label %sw.bb24
    i32 12288, label %sw.bb29
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end17
  %and19 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %crystal22 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %crystal22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crystal22, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %and25 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %. = select i1 %tobool26.not, i32 100000, i32 108000
  br label %cleanup

sw.bb29:                                          ; preds = %if.end17
  %and30 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %sw.bb29.cleanup_crit_edge, label %if.end33

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call fastcc i32 @read_vco(ptr noundef %clk, i32 noundef %idx)
  %and35 = lshr i32 %11, 16
  %shr = and i32 %and35, 63
  %add36 = add nuw nsw i32 %shr, 2
  %mul37 = shl i32 %call34, 1
  %div = udiv i32 %mul37, %add36
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %sw.bb29.cleanup_crit_edge, %sw.bb24, %if.then21, %sw.bb.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end, %if.then3
  %retval.0 = phi i32 [ %mul, %if.then3 ], [ %8, %if.end ], [ %div, %if.end33 ], [ %14, %if.then21 ], [ 0, %if.end4.cleanup_crit_edge ], [ 108000, %if.end13.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ %., %sw.bb24 ], [ 0, %sw.bb29.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt215_clk_read(ptr noundef %base, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %2 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %src, label %do.body27 [
    i32 0, label %sw.bb
    i32 15, label %entry.sw.bb4_crit_edge
    i32 16, label %entry.sw.bb4_crit_edge222
    i32 17, label %sw.bb5
    i32 18, label %sw.bb7
    i32 26, label %sw.bb9
    i32 27, label %sw.bb11
    i32 25, label %sw.bb13
    i32 8, label %sw.bb15
  ]

entry.sw.bb4_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %crystal, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge222
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16896
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb4.if.end23.i_crit_edge

sw.bb4.if.end23.i_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then.i:                                        ; preds = %sw.bb4
  %and2.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end26.i_crit_edge, label %if.then4.i

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 16900
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %and11.i = and i32 %10, 255
  %and12.i = lshr i32 %10, 8
  %shr13.i = and i32 %and12.i, 255
  %and14.i = lshr i32 %10, 16
  %shr15.i = and i32 %and14.i, 63
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then4.i, %sw.bb4.if.end23.i_crit_edge
  %idx.sink.i = phi i32 [ 0, %if.then4.i ], [ 16, %sw.bb4.if.end23.i_crit_edge ]
  %P.0.ph.i = phi i32 [ %shr15.i, %if.then4.i ], [ 1, %sw.bb4.if.end23.i_crit_edge ]
  %N.0.ph.i = phi i32 [ %shr13.i, %if.then4.i ], [ 1, %sw.bb4.if.end23.i_crit_edge ]
  %M.0.ph.i = phi i32 [ %and11.i, %if.then4.i ], [ 1, %sw.bb4.if.end23.i_crit_edge ]
  %call19.i = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef %idx.sink.i) #7
  %11 = mul nuw nsw i32 %M.0.ph.i, %P.0.ph.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool24.not.i = icmp eq i32 %11, 0
  br i1 %tobool24.not.i, label %if.end23.i.cleanup_crit_edge, label %if.end23.i.if.end26.i_crit_edge

if.end23.i.if.end26.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i:                                       ; preds = %if.end23.i.if.end26.i_crit_edge, %if.then.i.if.end26.i_crit_edge
  %mul50.i = phi i32 [ %11, %if.end23.i.if.end26.i_crit_edge ], [ 1, %if.then.i.if.end26.i_crit_edge ]
  %N.049.i = phi i32 [ %N.0.ph.i, %if.end23.i.if.end26.i_crit_edge ], [ 1, %if.then.i.if.end26.i_crit_edge ]
  %sclk.048.i = phi i32 [ %call19.i, %if.end23.i.if.end26.i_crit_edge ], [ 0, %if.then.i.if.end26.i_crit_edge ]
  %mul27.i = mul i32 %sclk.048.i, %N.049.i
  %div.i = udiv i32 %mul27.i, %mul50.i
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %pri.i62 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %pri.i62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %13, i32 16928
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %and.i64 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %tobool.not.i65, label %if.then.i68, label %sw.bb5.if.end23.i83_crit_edge

sw.bb5.if.end23.i83_crit_edge:                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i83

if.then.i68:                                      ; preds = %sw.bb5
  %and2.i66 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i66)
  %tobool3.not.i67 = icmp eq i32 %and2.i66, 0
  br i1 %tobool3.not.i67, label %if.then.i68.if.end26.i89_crit_edge, label %if.then4.i75

if.then.i68.if.end26.i89_crit_edge:               ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i89

if.then4.i75:                                     ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pri.i62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i62, align 4
  %add.ptr8.i69 = getelementptr i8, ptr %16, i32 16932
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i69) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %and11.i70 = and i32 %17, 255
  %and12.i71 = lshr i32 %17, 8
  %shr13.i72 = and i32 %and12.i71, 255
  %and14.i73 = lshr i32 %17, 16
  %shr15.i74 = and i32 %and14.i73, 63
  br label %if.end23.i83

if.end23.i83:                                     ; preds = %if.then4.i75, %sw.bb5.if.end23.i83_crit_edge
  %idx.sink.i77 = phi i32 [ 1, %if.then4.i75 ], [ 17, %sw.bb5.if.end23.i83_crit_edge ]
  %P.0.ph.i78 = phi i32 [ %shr15.i74, %if.then4.i75 ], [ 1, %sw.bb5.if.end23.i83_crit_edge ]
  %N.0.ph.i79 = phi i32 [ %shr13.i72, %if.then4.i75 ], [ 1, %sw.bb5.if.end23.i83_crit_edge ]
  %M.0.ph.i80 = phi i32 [ %and11.i70, %if.then4.i75 ], [ 1, %sw.bb5.if.end23.i83_crit_edge ]
  %call19.i81 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef %idx.sink.i77) #7
  %18 = mul nuw nsw i32 %M.0.ph.i80, %P.0.ph.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not.i82 = icmp eq i32 %18, 0
  br i1 %tobool24.not.i82, label %if.end23.i83.cleanup_crit_edge, label %if.end23.i83.if.end26.i89_crit_edge

if.end23.i83.if.end26.i89_crit_edge:              ; preds = %if.end23.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i89

if.end23.i83.cleanup_crit_edge:                   ; preds = %if.end23.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i89:                                     ; preds = %if.end23.i83.if.end26.i89_crit_edge, %if.then.i68.if.end26.i89_crit_edge
  %mul50.i84 = phi i32 [ %18, %if.end23.i83.if.end26.i89_crit_edge ], [ 1, %if.then.i68.if.end26.i89_crit_edge ]
  %N.049.i85 = phi i32 [ %N.0.ph.i79, %if.end23.i83.if.end26.i89_crit_edge ], [ 1, %if.then.i68.if.end26.i89_crit_edge ]
  %sclk.048.i86 = phi i32 [ %call19.i81, %if.end23.i83.if.end26.i89_crit_edge ], [ 0, %if.then.i68.if.end26.i89_crit_edge ]
  %mul27.i87 = mul i32 %sclk.048.i86, %N.049.i85
  %div.i88 = udiv i32 %mul27.i87, %mul50.i84
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %pri.i93 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %pri.i93 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri.i93, align 4
  %add.ptr.i94 = getelementptr i8, ptr %20, i32 16384
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %and.i95 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i96 = icmp eq i32 %and.i95, 0
  br i1 %tobool.not.i96, label %if.then.i99, label %sw.bb7.if.end23.i114_crit_edge

sw.bb7.if.end23.i114_crit_edge:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i114

if.then.i99:                                      ; preds = %sw.bb7
  %and2.i97 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i97)
  %tobool3.not.i98 = icmp eq i32 %and2.i97, 0
  br i1 %tobool3.not.i98, label %if.then.i99.if.end26.i120_crit_edge, label %if.then4.i106

if.then.i99.if.end26.i120_crit_edge:              ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i120

if.then4.i106:                                    ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %pri.i93 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i93, align 4
  %add.ptr8.i100 = getelementptr i8, ptr %23, i32 16388
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i100) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %and11.i101 = and i32 %24, 255
  %and12.i102 = lshr i32 %24, 8
  %shr13.i103 = and i32 %and12.i102, 255
  %and14.i104 = lshr i32 %24, 16
  %shr15.i105 = and i32 %and14.i104, 63
  br label %if.end23.i114

if.end23.i114:                                    ; preds = %if.then4.i106, %sw.bb7.if.end23.i114_crit_edge
  %idx.sink.i108 = phi i32 [ 2, %if.then4.i106 ], [ 18, %sw.bb7.if.end23.i114_crit_edge ]
  %P.0.ph.i109 = phi i32 [ %shr15.i105, %if.then4.i106 ], [ 1, %sw.bb7.if.end23.i114_crit_edge ]
  %N.0.ph.i110 = phi i32 [ %shr13.i103, %if.then4.i106 ], [ 1, %sw.bb7.if.end23.i114_crit_edge ]
  %M.0.ph.i111 = phi i32 [ %and11.i101, %if.then4.i106 ], [ 1, %sw.bb7.if.end23.i114_crit_edge ]
  %call19.i112 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef %idx.sink.i108) #7
  %25 = mul nuw nsw i32 %M.0.ph.i111, %P.0.ph.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not.i113 = icmp eq i32 %25, 0
  br i1 %tobool24.not.i113, label %if.end23.i114.cleanup_crit_edge, label %if.end23.i114.if.end26.i120_crit_edge

if.end23.i114.if.end26.i120_crit_edge:            ; preds = %if.end23.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i120

if.end23.i114.cleanup_crit_edge:                  ; preds = %if.end23.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i120:                                    ; preds = %if.end23.i114.if.end26.i120_crit_edge, %if.then.i99.if.end26.i120_crit_edge
  %mul50.i115 = phi i32 [ %25, %if.end23.i114.if.end26.i120_crit_edge ], [ 1, %if.then.i99.if.end26.i120_crit_edge ]
  %N.049.i116 = phi i32 [ %N.0.ph.i110, %if.end23.i114.if.end26.i120_crit_edge ], [ 1, %if.then.i99.if.end26.i120_crit_edge ]
  %sclk.048.i117 = phi i32 [ %call19.i112, %if.end23.i114.if.end26.i120_crit_edge ], [ 0, %if.then.i99.if.end26.i120_crit_edge ]
  %mul27.i118 = mul i32 %sclk.048.i117, %N.049.i116
  %div.i119 = udiv i32 %mul27.i118, %mul50.i115
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %pri6.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %pri6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri6.i, align 4
  %add.ptr8.i124 = getelementptr i8, ptr %27, i32 16800
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i124) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %and.i125 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool11.not.i = icmp eq i32 %and.i125, 0
  br i1 %tobool11.not.i, label %sw.bb9.cleanup_crit_edge, label %if.end13.i

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i:                                       ; preds = %sw.bb9
  %and14.i126 = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i126)
  %tobool15.not.i = icmp eq i32 %and14.i126, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i:                                       ; preds = %if.end13.i
  %and18.i = and i32 %28, 12288
  %29 = zext i32 %and18.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and18.i, label %if.end17.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 8192, label %sw.bb24.i
    i32 12288, label %sw.bb29.i
  ]

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end17.i
  %and19.i = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %crystal22.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %30 = ptrtoint ptr %crystal22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crystal22.i, align 4
  br label %cleanup

sw.bb24.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %and25.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %..i = select i1 %tobool26.not.i, i32 100000, i32 108000
  br label %cleanup

sw.bb29.i:                                        ; preds = %if.end17.i
  %and30.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %sw.bb29.i.cleanup_crit_edge, label %if.end33.i

sw.bb29.i.cleanup_crit_edge:                      ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33.i:                                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #9
  %call34.i = tail call fastcc i32 @read_vco(ptr noundef %base, i32 noundef 32) #7
  %and35.i = lshr i32 %28, 16
  %shr.i = and i32 %and35.i, 63
  %add36.i = add nuw nsw i32 %shr.i, 2
  %mul37.i = shl i32 %call34.i, 1
  %div.i127 = udiv i32 %mul37.i, %add36.i
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %pri6.i130 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %pri6.i130 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri6.i130, align 4
  %add.ptr8.i131 = getelementptr i8, ptr %33, i32 16804
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i131) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %and.i132 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i132)
  %tobool11.not.i133 = icmp eq i32 %and.i132, 0
  br i1 %tobool11.not.i133, label %sw.bb11.cleanup_crit_edge, label %if.end13.i136

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i136:                                    ; preds = %sw.bb11
  %and14.i134 = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i134)
  %tobool15.not.i135 = icmp eq i32 %and14.i134, 0
  br i1 %tobool15.not.i135, label %if.end17.i138, label %if.end13.i136.cleanup_crit_edge

if.end13.i136.cleanup_crit_edge:                  ; preds = %if.end13.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i138:                                    ; preds = %if.end13.i136
  %and18.i137 = and i32 %34, 12288
  %35 = zext i32 %and18.i137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and18.i137, label %if.end17.i138.cleanup_crit_edge [
    i32 0, label %sw.bb.i141
    i32 8192, label %sw.bb24.i147
    i32 12288, label %sw.bb29.i150
  ]

if.end17.i138.cleanup_crit_edge:                  ; preds = %if.end17.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i141:                                       ; preds = %if.end17.i138
  %and19.i139 = and i32 %34, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i139)
  %tobool20.not.i140 = icmp eq i32 %and19.i139, 0
  br i1 %tobool20.not.i140, label %if.then21.i143, label %sw.bb.i141.cleanup_crit_edge

sw.bb.i141.cleanup_crit_edge:                     ; preds = %sw.bb.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21.i143:                                   ; preds = %sw.bb.i141
  call void @__sanitizer_cov_trace_pc() #9
  %crystal22.i142 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %36 = ptrtoint ptr %crystal22.i142 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crystal22.i142, align 4
  br label %cleanup

sw.bb24.i147:                                     ; preds = %if.end17.i138
  call void @__sanitizer_cov_trace_pc() #9
  %and25.i144 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i144)
  %tobool26.not.i145 = icmp eq i32 %and25.i144, 0
  %..i146 = select i1 %tobool26.not.i145, i32 100000, i32 108000
  br label %cleanup

sw.bb29.i150:                                     ; preds = %if.end17.i138
  %and30.i148 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i148)
  %tobool31.not.i149 = icmp eq i32 %and30.i148, 0
  br i1 %tobool31.not.i149, label %sw.bb29.i150.cleanup_crit_edge, label %if.end33.i157

sw.bb29.i150.cleanup_crit_edge:                   ; preds = %sw.bb29.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33.i157:                                    ; preds = %sw.bb29.i150
  call void @__sanitizer_cov_trace_pc() #9
  %call34.i151 = tail call fastcc i32 @read_vco(ptr noundef %base, i32 noundef 33) #7
  %and35.i152 = lshr i32 %34, 16
  %shr.i153 = and i32 %and35.i152, 63
  %add36.i154 = add nuw nsw i32 %shr.i153, 2
  %mul37.i155 = shl i32 %call34.i151, 1
  %div.i156 = udiv i32 %mul37.i155, %add36.i154
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %pri6.i161 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %pri6.i161 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri6.i161, align 4
  %add.ptr8.i162 = getelementptr i8, ptr %39, i32 16820
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i162) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %and.i163 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool11.not.i164 = icmp eq i32 %and.i163, 0
  br i1 %tobool11.not.i164, label %sw.bb13.cleanup_crit_edge, label %if.end13.i167

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i167:                                    ; preds = %sw.bb13
  %and14.i165 = and i32 %40, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i165)
  %tobool15.not.i166 = icmp eq i32 %and14.i165, 0
  br i1 %tobool15.not.i166, label %if.end17.i169, label %if.end13.i167.cleanup_crit_edge

if.end13.i167.cleanup_crit_edge:                  ; preds = %if.end13.i167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i169:                                    ; preds = %if.end13.i167
  %and18.i168 = and i32 %40, 12288
  %41 = zext i32 %and18.i168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and18.i168, label %if.end17.i169.cleanup_crit_edge [
    i32 0, label %sw.bb.i172
    i32 8192, label %sw.bb24.i178
    i32 12288, label %sw.bb29.i181
  ]

if.end17.i169.cleanup_crit_edge:                  ; preds = %if.end17.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i172:                                       ; preds = %if.end17.i169
  %and19.i170 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i170)
  %tobool20.not.i171 = icmp eq i32 %and19.i170, 0
  br i1 %tobool20.not.i171, label %if.then21.i174, label %sw.bb.i172.cleanup_crit_edge

sw.bb.i172.cleanup_crit_edge:                     ; preds = %sw.bb.i172
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21.i174:                                   ; preds = %sw.bb.i172
  call void @__sanitizer_cov_trace_pc() #9
  %crystal22.i173 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %42 = ptrtoint ptr %crystal22.i173 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crystal22.i173, align 4
  br label %cleanup

sw.bb24.i178:                                     ; preds = %if.end17.i169
  call void @__sanitizer_cov_trace_pc() #9
  %and25.i175 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i175)
  %tobool26.not.i176 = icmp eq i32 %and25.i175, 0
  %..i177 = select i1 %tobool26.not.i176, i32 100000, i32 108000
  br label %cleanup

sw.bb29.i181:                                     ; preds = %if.end17.i169
  %and30.i179 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i179)
  %tobool31.not.i180 = icmp eq i32 %and30.i179, 0
  br i1 %tobool31.not.i180, label %sw.bb29.i181.cleanup_crit_edge, label %if.end33.i188

sw.bb29.i181.cleanup_crit_edge:                   ; preds = %sw.bb29.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33.i188:                                    ; preds = %sw.bb29.i181
  call void @__sanitizer_cov_trace_pc() #9
  %call34.i182 = tail call fastcc i32 @read_vco(ptr noundef %base, i32 noundef 37) #7
  %and35.i183 = lshr i32 %40, 16
  %shr.i184 = and i32 %and35.i183, 63
  %add36.i185 = add nuw nsw i32 %shr.i184, 2
  %mul37.i186 = shl i32 %call34.i182, 1
  %div.i187 = udiv i32 %mul37.i186, %add36.i185
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr16 = getelementptr i8, ptr %45, i32 49216
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %and = lshr i32 %46, 28
  %shr = and i32 %and, 3
  %47 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %shr, label %do.body [
    i32 0, label %sw.bb19
    i32 2, label %sw.bb15.cleanup_crit_edge
    i32 3, label %sw.bb15.cleanup_crit_edge223
  ]

sw.bb15.cleanup_crit_edge223:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb15
  %48 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device3, align 4
  %pri6.i192 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %pri6.i192 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri6.i192, align 4
  %add.ptr8.i193 = getelementptr i8, ptr %51, i32 16788
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i193) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %and.i194 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool11.not.i195 = icmp eq i32 %and.i194, 0
  br i1 %tobool11.not.i195, label %sw.bb19.cleanup_crit_edge, label %if.end13.i198

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i198:                                    ; preds = %sw.bb19
  %and14.i196 = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i196)
  %tobool15.not.i197 = icmp eq i32 %and14.i196, 0
  br i1 %tobool15.not.i197, label %if.end17.i200, label %if.end13.i198.cleanup_crit_edge

if.end13.i198.cleanup_crit_edge:                  ; preds = %if.end13.i198
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i200:                                    ; preds = %if.end13.i198
  %and18.i199 = and i32 %52, 12288
  %53 = zext i32 %and18.i199 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and18.i199, label %if.end17.i200.cleanup_crit_edge [
    i32 0, label %sw.bb.i203
    i32 8192, label %sw.bb24.i209
    i32 12288, label %sw.bb29.i212
  ]

if.end17.i200.cleanup_crit_edge:                  ; preds = %if.end17.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i203:                                       ; preds = %if.end17.i200
  %and19.i201 = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i201)
  %tobool20.not.i202 = icmp eq i32 %and19.i201, 0
  br i1 %tobool20.not.i202, label %if.then21.i205, label %sw.bb.i203.cleanup_crit_edge

sw.bb.i203.cleanup_crit_edge:                     ; preds = %sw.bb.i203
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21.i205:                                   ; preds = %sw.bb.i203
  call void @__sanitizer_cov_trace_pc() #9
  %crystal22.i204 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 18
  %54 = ptrtoint ptr %crystal22.i204 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crystal22.i204, align 4
  br label %cleanup

sw.bb24.i209:                                     ; preds = %if.end17.i200
  call void @__sanitizer_cov_trace_pc() #9
  %and25.i206 = and i32 %52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i206)
  %tobool26.not.i207 = icmp eq i32 %and25.i206, 0
  %..i208 = select i1 %tobool26.not.i207, i32 100000, i32 108000
  br label %cleanup

sw.bb29.i212:                                     ; preds = %if.end17.i200
  %and30.i210 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i210)
  %tobool31.not.i211 = icmp eq i32 %and30.i210, 0
  br i1 %tobool31.not.i211, label %sw.bb29.i212.cleanup_crit_edge, label %if.end33.i219

sw.bb29.i212.cleanup_crit_edge:                   ; preds = %sw.bb29.i212
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33.i219:                                    ; preds = %sw.bb29.i212
  call void @__sanitizer_cov_trace_pc() #9
  %call34.i213 = tail call fastcc i32 @read_vco(ptr noundef %base, i32 noundef 29) #7
  %and35.i214 = lshr i32 %52, 16
  %shr.i215 = and i32 %and35.i214, 63
  %add36.i216 = add nuw nsw i32 %shr.i215, 2
  %mul37.i217 = shl i32 %call34.i213, 1
  %div.i218 = udiv i32 %mul37.i217, %add36.i216
  br label %cleanup

do.body:                                          ; preds = %sw.bb15
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not = icmp eq i32 %57, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %shr) #11
  br label %cleanup

do.body27:                                        ; preds = %entry
  %debug29 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %62 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp30.not = icmp eq i32 %63, 0
  br i1 %cmp30.not, label %do.body27.cleanup_crit_edge, label %do.end34

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end34:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev36, align 8
  %name37 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.11, ptr noundef %name37, i32 noundef %src) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.body27.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end33.i219, %sw.bb29.i212.cleanup_crit_edge, %sw.bb24.i209, %if.then21.i205, %sw.bb.i203.cleanup_crit_edge, %if.end17.i200.cleanup_crit_edge, %if.end13.i198.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge223, %if.end33.i188, %sw.bb29.i181.cleanup_crit_edge, %sw.bb24.i178, %if.then21.i174, %sw.bb.i172.cleanup_crit_edge, %if.end17.i169.cleanup_crit_edge, %if.end13.i167.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.end33.i157, %sw.bb29.i150.cleanup_crit_edge, %sw.bb24.i147, %if.then21.i143, %sw.bb.i141.cleanup_crit_edge, %if.end17.i138.cleanup_crit_edge, %if.end13.i136.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %if.end33.i, %sw.bb29.i.cleanup_crit_edge, %sw.bb24.i, %if.then21.i, %sw.bb.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %if.end26.i120, %if.end23.i114.cleanup_crit_edge, %if.end26.i89, %if.end23.i83.cleanup_crit_edge, %if.end26.i, %if.end23.i.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ %4, %sw.bb ], [ 277000, %sw.bb15.cleanup_crit_edge ], [ 277000, %sw.bb15.cleanup_crit_edge223 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end34 ], [ -22, %do.body27.cleanup_crit_edge ], [ %div.i, %if.end26.i ], [ 0, %if.end23.i.cleanup_crit_edge ], [ %div.i88, %if.end26.i89 ], [ 0, %if.end23.i83.cleanup_crit_edge ], [ %div.i119, %if.end26.i120 ], [ 0, %if.end23.i114.cleanup_crit_edge ], [ %div.i127, %if.end33.i ], [ %31, %if.then21.i ], [ 0, %sw.bb9.cleanup_crit_edge ], [ 108000, %if.end13.i.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ %..i, %sw.bb24.i ], [ 0, %sw.bb29.i.cleanup_crit_edge ], [ 0, %if.end17.i.cleanup_crit_edge ], [ %div.i156, %if.end33.i157 ], [ %37, %if.then21.i143 ], [ 0, %sw.bb11.cleanup_crit_edge ], [ 108000, %if.end13.i136.cleanup_crit_edge ], [ 0, %sw.bb.i141.cleanup_crit_edge ], [ %..i146, %sw.bb24.i147 ], [ 0, %sw.bb29.i150.cleanup_crit_edge ], [ 0, %if.end17.i138.cleanup_crit_edge ], [ %div.i187, %if.end33.i188 ], [ %43, %if.then21.i174 ], [ 0, %sw.bb13.cleanup_crit_edge ], [ 108000, %if.end13.i167.cleanup_crit_edge ], [ 0, %sw.bb.i172.cleanup_crit_edge ], [ %..i177, %sw.bb24.i178 ], [ 0, %sw.bb29.i181.cleanup_crit_edge ], [ 0, %if.end17.i169.cleanup_crit_edge ], [ %div.i218, %if.end33.i219 ], [ %55, %if.then21.i205 ], [ 0, %sw.bb19.cleanup_crit_edge ], [ 108000, %if.end13.i198.cleanup_crit_edge ], [ 0, %sw.bb.i203.cleanup_crit_edge ], [ %..i208, %sw.bb24.i209 ], [ 0, %sw.bb29.i212.cleanup_crit_edge ], [ 0, %if.end17.i200.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt215_clk_calc(ptr noundef %base, ptr nocapture noundef readonly %cstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 15
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 15
  %call.i = tail call i32 @gt215_pll_info(ptr noundef %base, i32 noundef 16, i32 noundef 16896, i32 noundef %1, ptr noundef %arrayidx1.i) #7
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx.i38 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 17
  %3 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i38, align 4
  %arrayidx1.i39 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 17
  %call.i40 = tail call i32 @gt215_pll_info(ptr noundef %base, i32 noundef 17, i32 noundef 16928, i32 noundef %4, ptr noundef %arrayidx1.i39) #7
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i40, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i40)
  %tobool2.not = icmp sgt i32 %call.i40, -1
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx.i41 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 26
  %6 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i41, align 4
  %arrayidx1.i42 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 26
  %pll3.i = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 26, i32 1
  %8 = ptrtoint ptr %pll3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pll3.i, align 4
  %9 = ptrtoint ptr %arrayidx1.i42 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx1.i42, align 4
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %7, label %sw.default.i.i58 [
    i32 27000, label %lor.lhs.false3.gt215_pll_info.exit_crit_edge
    i32 100000, label %sw.bb3.i.i49
    i32 108000, label %sw.bb5.i.i50
  ]

lor.lhs.false3.gt215_pll_info.exit_crit_edge:     ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_pll_info.exit

sw.bb3.i.i49:                                     ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_pll_info.exit

sw.bb5.i.i50:                                     ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_pll_info.exit

sw.default.i.i58:                                 ; preds = %lor.lhs.false3
  %call.i.i51 = tail call fastcc i32 @read_vco(ptr noundef %base, i32 noundef 32) #7
  %mul.i.i52 = shl i32 %call.i.i51, 1
  %div.i.i53 = udiv i32 %mul.i.i52, %7
  %11 = tail call i32 @llvm.umin.i32(i32 %div.i.i53, i32 65) #7
  %div9.i.i54 = udiv i32 %mul.i.i52, %11
  %add.i.i55 = add i32 %7, 3000
  %sub.i.i56 = sub i32 %add.i.i55, %div9.i.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i56)
  %cmp10.i.i57 = icmp slt i32 %sub.i.i56, 0
  br i1 %cmp10.i.i57, label %if.then.i.i61, label %sw.default.i.i58.if.end.i.i65_crit_edge

sw.default.i.i58.if.end.i.i65_crit_edge:          ; preds = %sw.default.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i65

if.then.i.i61:                                    ; preds = %sw.default.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i59 = add nuw nsw i32 %11, 1
  %div12.i.i60 = udiv i32 %mul.i.i52, %inc.i.i59
  br label %if.end.i.i65

if.end.i.i65:                                     ; preds = %if.then.i.i61, %sw.default.i.i58.if.end.i.i65_crit_edge
  %oclk.0.i.i62 = phi i32 [ %div12.i.i60, %if.then.i.i61 ], [ %div9.i.i54, %sw.default.i.i58.if.end.i.i65_crit_edge ]
  %sdiv.0.i.i63 = phi i32 [ %inc.i.i59, %if.then.i.i61 ], [ %11, %sw.default.i.i58.if.end.i.i65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sdiv.0.i.i63)
  %cmp13.i.i64 = icmp ugt i32 %sdiv.0.i.i63, 4
  br i1 %cmp13.i.i64, label %if.then14.i.i, label %gt215_pll_info.exit.thread

gt215_pll_info.exit.thread:                       ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  %add.i111 = add i32 %7, 7566
  call void @__sanitizer_cov_trace_const_cmp4(i32 287526, i32 %add.i111)
  %cmp25.i112 = icmp ugt i32 %add.i111, 287526
  %div.i113 = udiv i32 %add.i111, 15133
  %cond.i114 = select i1 %cmp25.i112, i32 %div.i113, i32 18
  %fb_delay.i115 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 26, i32 3
  %12 = ptrtoint ptr %fb_delay.i115 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i114, ptr %fb_delay.i115, align 4
  br label %cleanup

if.then14.i.i:                                    ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i.i66 = shl nuw nsw i32 %sdiv.0.i.i63, 16
  %or.i.i67 = add nsw i32 %sub15.i.i66, -118528
  br label %gt215_pll_info.exit

gt215_pll_info.exit:                              ; preds = %if.then14.i.i, %sw.bb5.i.i50, %sw.bb3.i.i49, %lor.lhs.false3.gt215_pll_info.exit_crit_edge
  %or.sink.i.i = phi i32 [ %or.i.i67, %if.then14.i.i ], [ 8512, %sw.bb5.i.i50 ], [ 8448, %sw.bb3.i.i49 ], [ 256, %lor.lhs.false3.gt215_pll_info.exit_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %oclk.0.i.i62, %if.then14.i.i ], [ %7, %sw.bb5.i.i50 ], [ %7, %sw.bb3.i.i49 ], [ %7, %lor.lhs.false3.gt215_pll_info.exit_crit_edge ]
  %13 = ptrtoint ptr %arrayidx1.i42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.sink.i.i, ptr %arrayidx1.i42, align 4
  %add.i = add i32 %7, 7566
  call void @__sanitizer_cov_trace_const_cmp4(i32 287526, i32 %add.i)
  %cmp25.i = icmp ugt i32 %add.i, 287526
  %div.i = udiv i32 %add.i, 15133
  %cond.i = select i1 %cmp25.i, i32 %div.i, i32 18
  %fb_delay.i = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 26, i32 3
  %14 = ptrtoint ptr %fb_delay.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i, ptr %fb_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i.i)
  %tobool26.not.i = icmp eq i32 %retval.0.ph.i.i, 0
  br i1 %tobool26.not.i, label %gt215_pll_info.exit.cleanup_crit_edge, label %15

gt215_pll_info.exit.cleanup_crit_edge:            ; preds = %gt215_pll_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

15:                                               ; preds = %gt215_pll_info.exit
  %16 = tail call i32 @llvm.smin.i32(i32 %retval.0.ph.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.ph.i.i)
  %tobool5.not = icmp sgt i32 %retval.0.ph.i.i, -1
  br i1 %tobool5.not, label %lor.lhs.false6, label %.cleanup_crit_edge

.cleanup_crit_edge:                               ; preds = %15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false6:                                   ; preds = %15
  %arrayidx.i44 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 27
  %17 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i44, align 4
  %arrayidx1.i45 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 27
  %pll3.i75 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 27, i32 1
  %19 = ptrtoint ptr %pll3.i75 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pll3.i75, align 4
  %20 = ptrtoint ptr %arrayidx1.i45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx1.i45, align 4
  %21 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %18, label %sw.default.i.i85 [
    i32 27000, label %lor.lhs.false6.gt215_pll_info.exit109_crit_edge
    i32 100000, label %sw.bb3.i.i76
    i32 108000, label %sw.bb5.i.i77
  ]

lor.lhs.false6.gt215_pll_info.exit109_crit_edge:  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_pll_info.exit109

sw.bb3.i.i76:                                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_pll_info.exit109

sw.bb5.i.i77:                                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_pll_info.exit109

sw.default.i.i85:                                 ; preds = %lor.lhs.false6
  %call.i.i78 = tail call fastcc i32 @read_vco(ptr noundef %base, i32 noundef 33) #7
  %mul.i.i79 = shl i32 %call.i.i78, 1
  %div.i.i80 = udiv i32 %mul.i.i79, %18
  %22 = tail call i32 @llvm.umin.i32(i32 %div.i.i80, i32 65) #7
  %div9.i.i81 = udiv i32 %mul.i.i79, %22
  %add.i.i82 = add i32 %18, 3000
  %sub.i.i83 = sub i32 %add.i.i82, %div9.i.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i83)
  %cmp10.i.i84 = icmp slt i32 %sub.i.i83, 0
  br i1 %cmp10.i.i84, label %if.then.i.i88, label %sw.default.i.i85.if.end.i.i92_crit_edge

sw.default.i.i85.if.end.i.i92_crit_edge:          ; preds = %sw.default.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i92

if.then.i.i88:                                    ; preds = %sw.default.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i86 = add nuw nsw i32 %22, 1
  %div12.i.i87 = udiv i32 %mul.i.i79, %inc.i.i86
  br label %if.end.i.i92

if.end.i.i92:                                     ; preds = %if.then.i.i88, %sw.default.i.i85.if.end.i.i92_crit_edge
  %oclk.0.i.i89 = phi i32 [ %div12.i.i87, %if.then.i.i88 ], [ %div9.i.i81, %sw.default.i.i85.if.end.i.i92_crit_edge ]
  %sdiv.0.i.i90 = phi i32 [ %inc.i.i86, %if.then.i.i88 ], [ %22, %sw.default.i.i85.if.end.i.i92_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sdiv.0.i.i90)
  %cmp13.i.i91 = icmp ugt i32 %sdiv.0.i.i90, 4
  br i1 %cmp13.i.i91, label %if.then14.i.i95, label %gt215_pll_info.exit109.thread

gt215_pll_info.exit109.thread:                    ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #9
  %add.i101118 = add i32 %18, 7566
  call void @__sanitizer_cov_trace_const_cmp4(i32 287526, i32 %add.i101118)
  %cmp25.i102119 = icmp ugt i32 %add.i101118, 287526
  %div.i103120 = udiv i32 %add.i101118, 15133
  %cond.i104121 = select i1 %cmp25.i102119, i32 %div.i103120, i32 18
  %fb_delay.i105122 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 27, i32 3
  %23 = ptrtoint ptr %fb_delay.i105122 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond.i104121, ptr %fb_delay.i105122, align 4
  br label %cleanup

if.then14.i.i95:                                  ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i.i93 = shl nuw nsw i32 %sdiv.0.i.i90, 16
  %or.i.i94 = add nsw i32 %sub15.i.i93, -118528
  br label %gt215_pll_info.exit109

gt215_pll_info.exit109:                           ; preds = %if.then14.i.i95, %sw.bb5.i.i77, %sw.bb3.i.i76, %lor.lhs.false6.gt215_pll_info.exit109_crit_edge
  %or.sink.i.i96 = phi i32 [ %or.i.i94, %if.then14.i.i95 ], [ 8512, %sw.bb5.i.i77 ], [ 8448, %sw.bb3.i.i76 ], [ 256, %lor.lhs.false6.gt215_pll_info.exit109_crit_edge ]
  %retval.0.ph.i.i97 = phi i32 [ %oclk.0.i.i89, %if.then14.i.i95 ], [ %18, %sw.bb5.i.i77 ], [ %18, %sw.bb3.i.i76 ], [ %18, %lor.lhs.false6.gt215_pll_info.exit109_crit_edge ]
  %24 = ptrtoint ptr %arrayidx1.i45 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.sink.i.i96, ptr %arrayidx1.i45, align 4
  %add.i101 = add i32 %18, 7566
  call void @__sanitizer_cov_trace_const_cmp4(i32 287526, i32 %add.i101)
  %cmp25.i102 = icmp ugt i32 %add.i101, 287526
  %div.i103 = udiv i32 %add.i101, 15133
  %cond.i104 = select i1 %cmp25.i102, i32 %div.i103, i32 18
  %fb_delay.i105 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 27, i32 3
  %25 = ptrtoint ptr %fb_delay.i105 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.i104, ptr %fb_delay.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i.i97)
  %tobool26.not.i106 = icmp eq i32 %retval.0.ph.i.i97, 0
  br i1 %tobool26.not.i106, label %gt215_pll_info.exit109.cleanup_crit_edge, label %26

gt215_pll_info.exit109.cleanup_crit_edge:         ; preds = %gt215_pll_info.exit109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

26:                                               ; preds = %gt215_pll_info.exit109
  %27 = tail call i32 @llvm.smin.i32(i32 %retval.0.ph.i.i97, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.ph.i.i97)
  %tobool8.not = icmp sgt i32 %retval.0.ph.i.i97, -1
  br i1 %tobool8.not, label %lor.lhs.false9, label %.cleanup_crit_edge131

.cleanup_crit_edge131:                            ; preds = %26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false9:                                   ; preds = %26
  %arrayidx.i47 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 8
  %28 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i47, align 4
  %arrayidx1.i48 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 277000, i32 %29)
  %cmp.i = icmp eq i32 %29, 277000
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %arrayidx1.i48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx1.i48, align 4
  %host_out.i = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 8, i32 2
  %31 = ptrtoint ptr %host_out.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %host_out.i, align 4
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false9
  %host_out3.i = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 8, i32 2
  %32 = ptrtoint ptr %host_out3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %host_out3.i, align 4
  %33 = ptrtoint ptr %arrayidx1.i48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx1.i48, align 4
  %34 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %29, label %sw.default.i.i [
    i32 27000, label %if.end.i.gt215_clk_info.exit.thread17.i_crit_edge
    i32 100000, label %sw.bb3.i.i
    i32 108000, label %sw.bb5.i.i
  ]

if.end.i.gt215_clk_info.exit.thread17.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_clk_info.exit.thread17.i

sw.bb3.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_clk_info.exit.thread17.i

sw.bb5.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_clk_info.exit.thread17.i

sw.default.i.i:                                   ; preds = %if.end.i
  %call.i.i = tail call fastcc i32 @read_vco(ptr noundef %base, i32 noundef 29) #7
  %mul.i.i = shl i32 %call.i.i, 1
  %div.i.i = udiv i32 %mul.i.i, %29
  %35 = tail call i32 @llvm.umin.i32(i32 %div.i.i, i32 65) #7
  %div9.i.i = udiv i32 %mul.i.i, %35
  %add.i.i = add i32 %29, 3000
  %sub.i.i = sub i32 %add.i.i, %div9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp10.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp10.i.i, label %if.then.i.i, label %sw.default.i.i.if.end.i.i_crit_edge

sw.default.i.i.if.end.i.i_crit_edge:              ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i = add nuw nsw i32 %35, 1
  %div12.i.i = udiv i32 %mul.i.i, %inc.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.default.i.i.if.end.i.i_crit_edge
  %oclk.0.i.i = phi i32 [ %div12.i.i, %if.then.i.i ], [ %div9.i.i, %sw.default.i.i.if.end.i.i_crit_edge ]
  %sdiv.0.i.i = phi i32 [ %inc.i.i, %if.then.i.i ], [ %35, %sw.default.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sdiv.0.i.i)
  %cmp13.i.i = icmp ugt i32 %sdiv.0.i.i, 4
  br i1 %cmp13.i.i, label %gt215_clk_info.exit.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

gt215_clk_info.exit.thread17.i:                   ; preds = %sw.bb5.i.i, %sw.bb3.i.i, %if.end.i.gt215_clk_info.exit.thread17.i_crit_edge
  %or.sink.i.ph.i = phi i32 [ 256, %if.end.i.gt215_clk_info.exit.thread17.i_crit_edge ], [ 8448, %sw.bb3.i.i ], [ 8512, %sw.bb5.i.i ]
  %36 = ptrtoint ptr %arrayidx1.i48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.sink.i.ph.i, ptr %arrayidx1.i48, align 4
  br label %if.end

gt215_clk_info.exit.i:                            ; preds = %if.end.i.i
  %sub15.i.i = shl nuw nsw i32 %sdiv.0.i.i, 16
  %or.i.i = add nsw i32 %sub15.i.i, -118528
  %37 = ptrtoint ptr %arrayidx1.i48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i, ptr %arrayidx1.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %oclk.0.i.i)
  %cmp4.i = icmp sgt i32 %oclk.0.i.i, -1
  br i1 %cmp4.i, label %gt215_clk_info.exit.i.if.end_crit_edge, label %gt215_clk_info.exit.i.cleanup_crit_edge

gt215_clk_info.exit.i.cleanup_crit_edge:          ; preds = %gt215_clk_info.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

gt215_clk_info.exit.i.if.end_crit_edge:           ; preds = %gt215_clk_info.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %gt215_clk_info.exit.i.if.end_crit_edge, %gt215_clk_info.exit.thread17.i, %if.then.i
  %pll = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 15, i32 1
  %38 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool12.not = icmp eq i32 %39, 0
  br i1 %tobool12.not, label %if.end.if.end21_crit_edge, label %if.then13

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then13:                                        ; preds = %if.end
  %arrayidx15 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 16
  %40 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx15, align 4
  %arrayidx17 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 16
  %call18 = tail call fastcc i32 @gt215_clk_info(ptr noundef %base, i32 noundef 16, i32 noundef %41, ptr noundef %arrayidx17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.then13.cleanup_crit_edge, label %if.then13.if.end21_crit_edge

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.then13.if.end21_crit_edge, %if.end.if.end21_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then13.cleanup_crit_edge, %gt215_clk_info.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %.cleanup_crit_edge131, %gt215_pll_info.exit109.cleanup_crit_edge, %gt215_pll_info.exit109.thread, %.cleanup_crit_edge, %gt215_pll_info.exit.cleanup_crit_edge, %gt215_pll_info.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ %2, %entry.cleanup_crit_edge ], [ %5, %lor.lhs.false.cleanup_crit_edge ], [ %16, %.cleanup_crit_edge ], [ %27, %.cleanup_crit_edge131 ], [ %call18, %if.then13.cleanup_crit_edge ], [ %oclk.0.i.i, %gt215_clk_info.exit.i.cleanup_crit_edge ], [ -34, %if.end.i.i.cleanup_crit_edge ], [ -34, %gt215_pll_info.exit.thread ], [ -34, %gt215_pll_info.exit.cleanup_crit_edge ], [ -34, %gt215_pll_info.exit109.thread ], [ -34, %gt215_pll_info.exit109.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt215_clk_prog(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !31
  %call = call i32 @gt215_clk_pre(ptr noundef %base, ptr noundef nonnull %flags)
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call, label %entry.if.end6_crit_edge [
    i32 0, label %if.end
    i32 -16, label %if.end6.thread
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end:                                           ; preds = %entry
  %pll = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 15, i32 1
  %2 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %device1.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1048620
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %fb_delay2.i = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 16, i32 3
  %9 = ptrtoint ptr %fb_delay2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fb_delay2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i = icmp ult i32 %8, %10
  br i1 %cmp.i, label %do.body.i, label %if.then3.if.end.i_crit_edge

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %fb_delay2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fb_delay2.i, align 4
  %13 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 1048620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %12) #7, !srcloc !35
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.then3.if.end.i_crit_edge
  call fastcc void @prog_pll(ptr noundef %base, i32 noundef 0, i32 noundef 16896, i32 noundef 16) #7
  %15 = ptrtoint ptr %fb_delay2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fb_delay2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %16)
  %cmp7.i = icmp ugt i32 %8, %16
  br i1 %cmp7.i, label %do.body9.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.body9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %fb_delay2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fb_delay2.i, align 4
  %19 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %20, i32 1048620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %18) #7, !srcloc !35
  br label %if.end4

if.end4:                                          ; preds = %do.body9.i, %if.end.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %device1.i19 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %device1.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device1.i19, align 4
  %pri.i20 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %pri.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i20, align 4
  %add.ptr.i21 = getelementptr i8, ptr %24, i32 1048620
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %fb_delay2.i22 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 15, i32 3
  %26 = ptrtoint ptr %fb_delay2.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fb_delay2.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i23 = icmp ult i32 %25, %27
  br i1 %cmp.i23, label %do.body.i25, label %if.end4.if.end.i27_crit_edge

if.end4.if.end.i27_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i27

do.body.i25:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %fb_delay2.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fb_delay2.i22, align 4
  %30 = ptrtoint ptr %pri.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i20, align 4
  %add.ptr5.i24 = getelementptr i8, ptr %31, i32 1048620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i24, i32 %29) #7, !srcloc !35
  br label %if.end.i27

if.end.i27:                                       ; preds = %do.body.i25, %if.end4.if.end.i27_crit_edge
  call fastcc void @prog_pll(ptr noundef %base, i32 noundef 0, i32 noundef 16896, i32 noundef 15) #7
  %32 = ptrtoint ptr %fb_delay2.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fb_delay2.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %33)
  %cmp7.i26 = icmp ugt i32 %25, %33
  br i1 %cmp7.i26, label %do.body9.i29, label %if.end.i27.prog_core.exit30_crit_edge

if.end.i27.prog_core.exit30_crit_edge:            ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %prog_core.exit30

do.body9.i29:                                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %fb_delay2.i22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fb_delay2.i22, align 4
  %36 = ptrtoint ptr %pri.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri.i20, align 4
  %add.ptr14.i28 = getelementptr i8, ptr %37, i32 1048620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i28, i32 %35) #7, !srcloc !35
  br label %prog_core.exit30

prog_core.exit30:                                 ; preds = %do.body9.i29, %if.end.i27.prog_core.exit30_crit_edge
  call fastcc void @prog_pll(ptr noundef %base, i32 noundef 1, i32 noundef 16928, i32 noundef 17)
  %arrayidx.i = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 26
  %38 = ptrtoint ptr %device1.i19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device1.i19, align 4
  %pri.i32 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %pri.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %41, i32 16800
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @arm_heavy_mb() #7
  %and.i = and i32 %42, -4141378
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %and.i, %44
  %or3.i = or i32 %or.i, 257
  %45 = ptrtoint ptr %pri.i32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri.i32, align 4
  %add.ptr5.i34 = getelementptr i8, ptr %46, i32 16800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i34, i32 %or3.i) #7, !srcloc !35
  %arrayidx.i35 = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 27
  %47 = ptrtoint ptr %device1.i19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device1.i19, align 4
  %pri.i37 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %pri.i37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %50, i32 16804
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @arm_heavy_mb() #7
  %and.i39 = and i32 %51, -4141378
  %52 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i35, align 4
  %or.i40 = or i32 %and.i39, %53
  %or3.i41 = or i32 %or.i40, 257
  %54 = ptrtoint ptr %pri.i37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri.i37, align 4
  %add.ptr5.i42 = getelementptr i8, ptr %55, i32 16804
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i42, i32 %or3.i41) #7, !srcloc !35
  %56 = ptrtoint ptr %device1.i19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device1.i19, align 4
  %pri.i44 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %pri.i44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %59, i32 49216
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %host_out.i = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 8, i32 2
  %61 = ptrtoint ptr %host_out.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %host_out.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %62, label %prog_core.exit30.prog_host.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

prog_core.exit30.prog_host.exit_crit_edge:        ; preds = %prog_core.exit30
  call void @__sanitizer_cov_trace_pc() #9
  br label %prog_host.exit

sw.bb.i:                                          ; preds = %prog_core.exit30
  %and.i46 = and i32 %60, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %cmp.i47 = icmp eq i32 %and.i46, 0
  br i1 %cmp.i47, label %do.body.i49, label %sw.bb.i.prog_host.exit_crit_edge

sw.bb.i.prog_host.exit_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %prog_host.exit

do.body.i49:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %or.i48 = or i32 %60, 536870912
  %64 = ptrtoint ptr %pri.i44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri.i44, align 4
  %add.ptr3.i = getelementptr i8, ptr %65, i32 49216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %or.i48) #7, !srcloc !35
  %66 = ptrtoint ptr %device1.i19 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device1.i19, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 16788
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @arm_heavy_mb() #7
  %and.i.i = and i32 %70, -257
  %71 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %72, i32 16788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %and.i.i) #7, !srcloc !35
  %73 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %74, i32 16788
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @arm_heavy_mb() #7
  %and16.i.i = and i32 %75, -2
  %76 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri.i.i, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %77, i32 16788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i, i32 %and16.i.i) #7, !srcloc !35
  br label %prog_host.exit

sw.bb4.i:                                         ; preds = %prog_core.exit30
  %arrayidx.i.i = getelementptr %struct.gt215_clk, ptr %base, i32 0, i32 1, i32 8
  %78 = ptrtoint ptr %device1.i19 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device1.i19, align 4
  %pri.i30.i = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %pri.i30.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pri.i30.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %81, i32 16788
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @arm_heavy_mb() #7
  %and.i32.i = and i32 %82, -4141378
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %and.i32.i, %84
  %or3.i.i = or i32 %or.i.i, 257
  %85 = ptrtoint ptr %pri.i30.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri.i30.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %86, i32 16788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %or3.i.i) #7, !srcloc !35
  %and5.i = and i32 %60, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.not.i = icmp eq i32 %and5.i, 0
  br i1 %cmp6.not.i, label %sw.bb4.i.prog_host.exit_crit_edge, label %do.body8.i

sw.bb4.i.prog_host.exit_crit_edge:                ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %prog_host.exit

do.body8.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  call void @arm_heavy_mb() #7
  %and11.i = and i32 %60, -805306369
  %87 = ptrtoint ptr %pri.i44 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri.i44, align 4
  %add.ptr13.i = getelementptr i8, ptr %88, i32 49216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %and11.i) #7, !srcloc !35
  br label %prog_host.exit

prog_host.exit:                                   ; preds = %do.body8.i, %sw.bb4.i.prog_host.exit_crit_edge, %do.body.i49, %sw.bb.i.prog_host.exit_crit_edge, %prog_core.exit30.prog_host.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @arm_heavy_mb() #7
  %89 = ptrtoint ptr %pri.i44 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri.i44, align 4
  %add.ptr19.i = getelementptr i8, ptr %90, i32 49220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 62) #7, !srcloc !35
  br label %if.end6

if.end6.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device1.i5057 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %device1.i5057 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device1.i5057, align 4
  br label %gt215_clk_post.exit

if.end6:                                          ; preds = %prog_host.exit, %entry.if.end6_crit_edge
  %device1.i50 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %device1.i50 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device1.i50, align 4
  %fifo2.i = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 52
  %95 = ptrtoint ptr %fifo2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fifo2.i, align 8
  %tobool.not.i = icmp eq ptr %96, null
  br i1 %tobool.not.i, label %if.end6.gt215_clk_post.exit_crit_edge, label %if.then.i

if.end6.gt215_clk_post.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %gt215_clk_post.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @nvkm_fifo_start(ptr noundef nonnull %96, ptr noundef nonnull %flags) #7
  br label %gt215_clk_post.exit

gt215_clk_post.exit:                              ; preds = %if.then.i, %if.end6.gt215_clk_post.exit_crit_edge, %if.end6.thread
  %97 = phi ptr [ %92, %if.end6.thread ], [ %94, %if.end6.gt215_clk_post.exit_crit_edge ], [ %94, %if.then.i ]
  %pri.i51 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %pri.i51 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %99, i32 9476
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @arm_heavy_mb() #7
  %and.i53 = and i32 %100, -2
  %101 = ptrtoint ptr %pri.i51 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri.i51, align 4
  %add.ptr5.i54 = getelementptr i8, ptr %102, i32 9476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i54, i32 %and.i53) #7, !srcloc !35
  %103 = ptrtoint ptr %pri.i51 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri.i51, align 4
  %add.ptr12.i = getelementptr i8, ptr %104, i32 131168
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @arm_heavy_mb() #7
  %and18.i = and i32 %105, -458753
  %or19.i = or i32 %and18.i, 262144
  %106 = ptrtoint ptr %pri.i51 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri.i51, align 4
  %add.ptr21.i = getelementptr i8, ptr %107, i32 131168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %or19.i) #7, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gt215_clk_tidy(ptr nocapture noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prog_pll(ptr nocapture noundef readonly %clk, i32 noundef %idx, i32 noundef %pll, i32 noundef %dom) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gt215_clk, ptr %clk, i32 0, i32 1, i32 %dom
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %mul = shl i32 %idx, 2
  %add = add i32 %mul, 16672
  %add3 = add i32 %mul, 16736
  %add5 = add i32 %pll, 4
  %pll6 = getelementptr %struct.gt215_clk, ptr %clk, i32 0, i32 1, i32 %dom, i32 1
  %2 = ptrtoint ptr %pll6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pll6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %pri208 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri208, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %5, i32 %pll
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri208, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 %add3
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %or = or i32 %9, 257
  %10 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri208, align 4
  %add.ptr16 = getelementptr i8, ptr %11, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %or) #7, !srcloc !35
  %12 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri208, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 %pll
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %or30 = or i32 %14, 8
  %15 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri208, align 4
  %add.ptr32 = getelementptr i8, ptr %16, i32 %pll
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %or30) #7, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 4294960) #7
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %18 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri208, align 4
  %add.ptr39 = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %and45 = and i32 %20, -4141378
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %or47 = or i32 %and45, %22
  %or48 = or i32 %or47, 257
  %23 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri208, align 4
  %add.ptr50 = getelementptr i8, ptr %24, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %or48) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %pll6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pll6, align 4
  %27 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri208, align 4
  %add.ptr57 = getelementptr i8, ptr %28, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %26) #7, !srcloc !35
  %29 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri208, align 4
  %add.ptr63 = getelementptr i8, ptr %30, i32 %pll
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %or70 = or i32 %31, 21
  %32 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri208, align 4
  %add.ptr72 = getelementptr i8, ptr %33, i32 %pll
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %or70) #7, !srcloc !35
  %34 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri208, align 4
  %add.ptr79 = getelementptr i8, ptr %35, i32 %pll
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %and85 = and i32 %36, -17
  %37 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri208, align 4
  %add.ptr88 = getelementptr i8, ptr %38, i32 %pll
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %and85) #7, !srcloc !35
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %39 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  br label %do.body90

do.body90:                                        ; preds = %do.cond100.do.body90_crit_edge, %if.end
  %40 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri208, align 4
  %add.ptr93 = getelementptr i8, ptr %41, i32 %pll
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %and96 = and i32 %42, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.cond100, label %if.end171

do.cond100:                                       ; preds = %do.body90
  %call101 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp = icmp sgt i64 %call101, -1
  br i1 %cmp, label %do.cond100.do.body90_crit_edge, label %do.end113

do.cond100.do.body90_crit_edge:                   ; preds = %do.cond100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body90

do.end113:                                        ; preds = %do.cond100
  %43 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_wait, align 8
  %device115 = getelementptr inbounds %struct.nvkm_timer, ptr %44, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %device115 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device115, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %call116 = call ptr @dev_driver_string(ptr noundef %48) #7
  %49 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_wait, align 8
  %device119 = getelementptr inbounds %struct.nvkm_timer, ptr %50, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %device119 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device119, align 4
  %dev120 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev120, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end113.if.then138_crit_edge

do.end113.if.then138_crit_edge:                   ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then138

if.end.i:                                         ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %if.then138

if.then138:                                       ; preds = %if.end.i, %do.end113.if.then138_crit_edge
  %retval.0.i = phi ptr [ %58, %if.end.i ], [ %56, %do.end113.if.then138_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 389, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call116, ptr noundef %retval.0.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  %59 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri208, align 4
  %add.ptr144 = getelementptr i8, ptr %60, i32 %pll
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @arm_heavy_mb() #7
  %or151 = or i32 %61, 16
  %62 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri208, align 4
  %add.ptr153 = getelementptr i8, ptr %63, i32 %pll
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %or151) #7, !srcloc !35
  %64 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri208, align 4
  %add.ptr160 = getelementptr i8, ptr %65, i32 %add
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %and166 = and i32 %66, -258
  %67 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri208, align 4
  %add.ptr169 = getelementptr i8, ptr %68, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169, i32 %and166) #7, !srcloc !35
  br label %cleanup

if.end171:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  %69 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri208, align 4
  %add.ptr177 = getelementptr i8, ptr %70, i32 %pll
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  call void @arm_heavy_mb() #7
  %or184 = or i32 %71, 16
  %72 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri208, align 4
  %add.ptr186 = getelementptr i8, ptr %73, i32 %pll
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 %or184) #7, !srcloc !35
  %74 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri208, align 4
  %add.ptr193 = getelementptr i8, ptr %75, i32 %pll
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr193) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  call void @arm_heavy_mb() #7
  %and199 = and i32 %76, -9
  %77 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri208, align 4
  %add.ptr202 = getelementptr i8, ptr %78, i32 %pll
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %and199) #7, !srcloc !35
  %79 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 %add3
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @arm_heavy_mb() #7
  %and.i = and i32 %83, -257
  %84 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %85, i32 %add3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %and.i) #7, !srcloc !35
  %86 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %87, i32 %add3
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @arm_heavy_mb() #7
  %and16.i = and i32 %88, -2
  %89 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %90, i32 %add3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %and16.i) #7, !srcloc !35
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr209 = getelementptr i8, ptr %5, i32 %add3
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %and215 = and i32 %91, -4141378
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx, align 4
  %or217 = or i32 %and215, %93
  %or218 = or i32 %or217, 257
  %94 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pri208, align 4
  %add.ptr220 = getelementptr i8, ptr %95, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220, i32 %or218) #7, !srcloc !35
  %96 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri208, align 4
  %add.ptr227 = getelementptr i8, ptr %97, i32 %pll
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or234 = or i32 %98, 24
  %99 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri208, align 4
  %add.ptr236 = getelementptr i8, ptr %100, i32 %pll
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 %or234) #7, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 4294960) #7
  %102 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pri208, align 4
  %add.ptr243 = getelementptr i8, ptr %103, i32 %pll
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr243) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %and249 = and i32 %104, -2
  %105 = ptrtoint ptr %pri208 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pri208, align 4
  %add.ptr252 = getelementptr i8, ptr %106, i32 %pll
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252, i32 %and249) #7, !srcloc !35
  %107 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device1, align 4
  %pri.i336 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %pri.i336 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pri.i336, align 4
  %add.ptr.i337 = getelementptr i8, ptr %110, i32 %add
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i337) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %and.i338 = and i32 %111, -257
  %112 = ptrtoint ptr %pri.i336 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pri.i336, align 4
  %add.ptr3.i339 = getelementptr i8, ptr %113, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i339, i32 %and.i338) #7, !srcloc !35
  %114 = ptrtoint ptr %pri.i336 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pri.i336, align 4
  %add.ptr10.i340 = getelementptr i8, ptr %115, i32 %add
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i340) #7, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %and16.i341 = and i32 %116, -2
  %117 = ptrtoint ptr %pri.i336 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pri.i336, align 4
  %add.ptr19.i342 = getelementptr i8, ptr %118, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i342, i32 %and16.i341) #7, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end171, %if.then138
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c", i32 316, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c", i32 528, i32 36}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c", i32 529, i32 36}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c", i32 530, i32 36}
!9 = !{ptr @gt215_clk, !10, !"gt215_clk", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c", i32 521, i32 1}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c", i32 175, i32 4}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @gt215_clk_read._entry, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @gt215_clk_read._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gt215.c", i32 179, i32 3}
!20 = !{ptr @gt215_clk_read._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @gt215_clk_read._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{i64 5398793}
!33 = !{i64 2156266045}
!34 = !{i64 2156266447}
!35 = !{i64 5398375}
!36 = !{i64 2156267320}
!37 = !{i64 2156267722}
!38 = !{i64 2156269606}
!39 = !{i64 2156272293}
!40 = !{i64 2156275058}
!41 = !{i64 2156276747}
!42 = !{i64 2156277149}
!43 = !{i64 2156278022}
!44 = !{i64 2156278424}
!45 = !{i64 2156251954}
!46 = !{i64 2156253136}
!47 = !{i64 2156253518}
!48 = !{i64 2156252339}
!49 = !{i64 2156252754}
!50 = !{i64 2156255132}
!51 = !{i64 2156304302}
!52 = !{i64 2156304652}
!53 = !{i64 2156305077}
!54 = !{i64 2156301743}
!55 = !{i64 2156302169}
!56 = !{i64 2156302663}
!57 = !{i64 2156303015}
!58 = !{i64 2156279292}
!59 = !{i64 2156279694}
!60 = !{i64 2156280562}
!61 = !{i64 2156280964}
!62 = !{i64 2156303447}
!63 = !{i64 2156303852}
!64 = !{i64 2156281440}
!65 = !{i64 2156282206}
!66 = !{i64 2156282608}
!67 = !{i64 2156283477}
!68 = !{i64 2156283879}
!69 = !{i64 2156285302}
!70 = !{i64 2156285728}
!71 = !{i64 2156286175}
!72 = !{i64 2156287011}
!73 = !{i64 2156287413}
!74 = !{i64 2156288282}
!75 = !{i64 2156288684}
!76 = !{i64 2156290569}
!77 = !{i64 2156292228}
!78 = !{i64 2156292630}
!79 = !{i64 2156293499}
!80 = !{i64 2156293901}
!81 = !{i64 2156294770}
!82 = !{i64 2156295172}
!83 = !{i64 2156296041}
!84 = !{i64 2156296443}
!85 = !{i64 2156297324}
!86 = !{i64 2156297750}
!87 = !{i64 2156298631}
!88 = !{i64 2156299033}
!89 = !{i64 2156300444}
!90 = !{i64 2156300846}
