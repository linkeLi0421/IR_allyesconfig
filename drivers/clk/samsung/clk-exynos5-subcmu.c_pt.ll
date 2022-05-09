; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-exynos5-subcmu.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos5-subcmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos5_subcmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.exynos5_subcmu_reg_dump = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@ctx = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cmu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nr_cmus = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_clk_exynos5_subcmu__171_195_exynos5_clk_drv_init1 = internal global ptr @exynos5_clk_drv_init, section ".initcall1.init", align 4
@exynos5_clk_driver = internal global %struct.platform_driver { ptr @exynos5_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @exynos5_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@exynos5_subcmu_driver = internal global %struct.platform_driver { ptr @exynos5_subcmu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_subcmu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exynos5-clock\00", [18 x i8] zeroinitializer }, align 32
@exynos5_clk_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5800-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,exynos4210-pd\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos5-subcmu\00", [17 x i8] zeroinitializer }, align 32
@exynos5_subcmu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_subcmu_suspend, ptr @exynos5_subcmu_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 16, i32 37 }
@___asan_gen_.7 = private unnamed_addr constant [4 x i8] c"cmu\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 17, i32 43 }
@___asan_gen_.10 = private unnamed_addr constant [8 x i8] c"nr_cmus\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 18, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 182, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"exynos5_clk_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 173, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 162, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 163, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 142, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"exynos5_subcmu_pm_ops\00", align 1
@___asan_gen_.29 = private constant [44 x i8] c"../drivers/clk/samsung/clk-exynos5-subcmu.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 118, i32 32 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_clk_exynos5_subcmu__171_195_exynos5_clk_drv_init1, ptr @ctx, ptr @cmu, ptr @nr_cmus, ptr @.str, ptr @exynos5_clk_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @exynos5_subcmu_pm_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_cmus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_clk_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_subcmu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos5_subcmus_init(ptr noundef %_ctx, i32 noundef %_nr_cmus, ptr noundef %_cmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %_ctx, ptr @ctx, align 4
  store ptr %_cmu, ptr @cmu, align 4
  store i32 %_nr_cmus, ptr @nr_cmus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_nr_cmus)
  %tobool.not9 = icmp eq i32 %_nr_cmus, 0
  br i1 %tobool.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %exynos5_subcmu_clk_save.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %_cmu.addr.011 = phi ptr [ %incdec.ptr, %exynos5_subcmu_clk_save.exit.for.body_crit_edge ], [ %_cmu, %entry.for.body_crit_edge ]
  %_nr_cmus.addr.010 = phi i32 [ %dec, %exynos5_subcmu_clk_save.exit.for.body_crit_edge ], [ %_nr_cmus, %entry.for.body_crit_edge ]
  %dec = add i32 %_nr_cmus.addr.010, -1
  %0 = load ptr, ptr @ctx, align 4
  %1 = ptrtoint ptr %_cmu.addr.011 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_cmu.addr.011, align 4
  %nr_gate_clks = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %nr_gate_clks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_gate_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not1.i = icmp eq i32 %4, 0
  br i1 %tobool.not1.i, label %for.body.exynos5_subcmu_defer_gate.exit_crit_edge, label %while.body.i.preheader

for.body.exynos5_subcmu_defer_gate.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos5_subcmu_defer_gate.exit

while.body.i.preheader:                           ; preds = %for.body
  %gate_clks = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %gate_clks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gate_clks, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %nr_clk.addr.03.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %4, %while.body.i.preheader ]
  %list.addr.02.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %6, %while.body.i.preheader ]
  %dec.i = add i32 %nr_clk.addr.03.i, -1
  %incdec.ptr.i = getelementptr %struct.samsung_gate_clock, ptr %list.addr.02.i, i32 1
  %7 = ptrtoint ptr %list.addr.02.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %list.addr.02.i, align 4
  tail call void @samsung_clk_add_lookup(ptr noundef %0, ptr noundef nonnull inttoptr (i32 -517 to ptr), i32 noundef %8) #6
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.exynos5_subcmu_defer_gate.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.exynos5_subcmu_defer_gate.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos5_subcmu_defer_gate.exit

exynos5_subcmu_defer_gate.exit:                   ; preds = %while.body.i.exynos5_subcmu_defer_gate.exit_crit_edge, %for.body.exynos5_subcmu_defer_gate.exit_crit_edge
  %9 = load ptr, ptr @ctx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %_cmu.addr.011 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_cmu.addr.011, align 4
  %nr_suspend_regs = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %nr_suspend_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_suspend_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not18.i = icmp eq i32 %15, 0
  br i1 %cmp.not18.i, label %exynos5_subcmu_defer_gate.exit.exynos5_subcmu_clk_save.exit_crit_edge, label %for.body.i.preheader

exynos5_subcmu_defer_gate.exit.exynos5_subcmu_clk_save.exit_crit_edge: ; preds = %exynos5_subcmu_defer_gate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos5_subcmu_clk_save.exit

for.body.i.preheader:                             ; preds = %exynos5_subcmu_defer_gate.exit
  %suspend_regs = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %suspend_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %suspend_regs, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %rd.addr.020.i = phi ptr [ %incdec.ptr.i8, %for.body.i.for.body.i_crit_edge ], [ %17, %for.body.i.preheader ]
  %num_regs.addr.019.i = phi i32 [ %dec.i7, %for.body.i.for.body.i_crit_edge ], [ %15, %for.body.i.preheader ]
  %18 = ptrtoint ptr %rd.addr.020.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rd.addr.020.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !33
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %save.i = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.020.i, i32 0, i32 3
  %22 = ptrtoint ptr %save.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %save.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %save.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %save.i, align 4
  %mask.i = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.020.i, i32 0, i32 2
  %25 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %26, -1
  %and.i = and i32 %24, %neg.i
  %value.i = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.020.i, i32 0, i32 1
  %27 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value.i, align 4
  %or.i = or i32 %and.i, %28
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %30 = ptrtoint ptr %rd.addr.020.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rd.addr.020.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %29) #6, !srcloc !36
  %32 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask.i, align 4
  %34 = ptrtoint ptr %save.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %save.i, align 4
  %and7.i = and i32 %35, %33
  store i32 %and7.i, ptr %save.i, align 4
  %dec.i7 = add i32 %num_regs.addr.019.i, -1
  %incdec.ptr.i8 = getelementptr %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.020.i, i32 1
  %cmp.not.i = icmp eq i32 %dec.i7, 0
  br i1 %cmp.not.i, label %for.body.i.exynos5_subcmu_clk_save.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.exynos5_subcmu_clk_save.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos5_subcmu_clk_save.exit

exynos5_subcmu_clk_save.exit:                     ; preds = %for.body.i.exynos5_subcmu_clk_save.exit_crit_edge, %exynos5_subcmu_defer_gate.exit.exynos5_subcmu_clk_save.exit_crit_edge
  %incdec.ptr = getelementptr ptr, ptr %_cmu.addr.011, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %exynos5_subcmu_clk_save.exit.for.end_crit_edge, label %exynos5_subcmu_clk_save.exit.for.body_crit_edge

exynos5_subcmu_clk_save.exit.for.body_crit_edge:  ; preds = %exynos5_subcmu_clk_save.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

exynos5_subcmu_clk_save.exit.for.end_crit_edge:   ; preds = %exynos5_subcmu_clk_save.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %exynos5_subcmu_clk_save.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_clk_drv_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_clk_driver, ptr noundef null) #6
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_subcmu_driver, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_add_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_clk_probe(ptr noundef %pdev) #1 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #6
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !37
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #6
  %tobool.not22 = icmp eq ptr %call, null
  br i1 %tobool.not22, label %entry.for.end13_crit_edge, label %for.body.lr.ph

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc11.for.body_crit_edge, %for.body.lr.ph
  %np.023 = phi ptr [ %call, %for.body.lr.ph ], [ %call12, %for.inc11.for.body_crit_edge ]
  %call1 = call i32 @of_property_read_string(ptr noundef nonnull %np.023, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %for.body.for.inc11_crit_edge, label %for.cond2.preheader

for.body.for.inc11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc11

for.cond2.preheader:                              ; preds = %for.body
  %1 = load i32, ptr @nr_cmus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp320 = icmp sgt i32 %1, 0
  br i1 %cmp320, label %for.cond2.preheader.for.body4_crit_edge, label %for.cond2.preheader.for.inc11_crit_edge

for.cond2.preheader.for.inc11_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc11

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %i.021 = phi i32 [ %inc, %for.inc.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %2 = load ptr, ptr @cmu, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 %i.021
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %pd_name = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %pd_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pd_name, align 4
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call5 = call i32 @strcmp(ptr noundef %6, ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %for.body4.for.inc_crit_edge

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then7:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @exynos5_clk_register_subcmu(ptr noundef %dev, ptr noundef %4, ptr noundef nonnull %np.023) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body4.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %9 = load i32, ptr @nr_cmus, align 4
  %cmp3 = icmp slt i32 %inc, %9
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.inc.for.inc11_crit_edge

for.inc.for.inc11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc11

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.inc11:                                        ; preds = %for.inc.for.inc11_crit_edge, %for.cond2.preheader.for.inc11_crit_edge, %for.body.for.inc11_crit_edge
  %call12 = call ptr @of_find_compatible_node(ptr noundef nonnull %np.023, ptr noundef null, ptr noundef nonnull @.str.1) #6
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %for.inc11.for.end13_crit_edge, label %for.inc11.for.body_crit_edge

for.inc11.for.body_crit_edge:                     ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc11.for.end13_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end13

for.end13:                                        ; preds = %for.inc11.for.end13_crit_edge, %entry.for.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos5_clk_register_subcmu(ptr noundef %parent, ptr noundef %info, ptr noundef %pd_node) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %genpdspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %genpdspec) #6
  %0 = getelementptr inbounds i8, ptr %genpdspec, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %genpdspec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pd_node, ptr %genpdspec, align 4
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.3, i32 noundef -2) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %parent1 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %parent, ptr %parent1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %info, ptr %driver_data.i.i, align 4
  %call3 = call i32 @of_genpd_add_device(ptr noundef nonnull %genpdspec, ptr noundef %dev) #6
  %call4 = call i32 @platform_device_add(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @platform_device_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %genpdspec) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_subcmu_probe(ptr noundef %pdev) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i15 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 5) #6
  %2 = load ptr, ptr @ctx, align 4
  %dev4 = getelementptr inbounds %struct.samsung_clk_provider, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev4, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %nr_div_clks = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nr_div_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_div_clks, align 4
  tail call void @samsung_clk_register_div(ptr noundef %2, ptr noundef %5, i32 noundef %7) #6
  %8 = load ptr, ptr @ctx, align 4
  %gate_clks = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %gate_clks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gate_clks, align 4
  %nr_gate_clks = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %nr_gate_clks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_gate_clks, align 4
  tail call void @samsung_clk_register_gate(ptr noundef %8, ptr noundef %10, i32 noundef %12) #6
  %13 = load ptr, ptr @ctx, align 4
  %dev5 = getelementptr inbounds %struct.samsung_clk_provider, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dev5, align 4
  %call.i16 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_div(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_gate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_subcmu_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = load ptr, ptr @ctx, align 4
  %lock = getelementptr inbounds %struct.samsung_clk_provider, ptr %2, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %3 = load ptr, ptr @ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %nr_suspend_regs = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %nr_suspend_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_suspend_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not18.i = icmp eq i32 %7, 0
  br i1 %cmp.not18.i, label %entry.exynos5_subcmu_clk_save.exit_crit_edge, label %for.body.i.preheader

entry.exynos5_subcmu_clk_save.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos5_subcmu_clk_save.exit

for.body.i.preheader:                             ; preds = %entry
  %suspend_regs = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %suspend_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend_regs, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %rd.addr.020.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %9, %for.body.i.preheader ]
  %num_regs.addr.019.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %7, %for.body.i.preheader ]
  %10 = ptrtoint ptr %rd.addr.020.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rd.addr.020.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !33
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %save.i = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.020.i, i32 0, i32 3
  %14 = ptrtoint ptr %save.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %save.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %save.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %save.i, align 4
  %mask.i = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.020.i, i32 0, i32 2
  %17 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %18, -1
  %and.i = and i32 %16, %neg.i
  %value.i = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.020.i, i32 0, i32 1
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i, align 4
  %or.i = or i32 %and.i, %20
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %22 = ptrtoint ptr %rd.addr.020.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rd.addr.020.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %21) #6, !srcloc !36
  %24 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask.i, align 4
  %26 = ptrtoint ptr %save.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %save.i, align 4
  %and7.i = and i32 %27, %25
  store i32 %and7.i, ptr %save.i, align 4
  %dec.i = add i32 %num_regs.addr.019.i, -1
  %incdec.ptr.i = getelementptr %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.020.i, i32 1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.body.i.exynos5_subcmu_clk_save.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.exynos5_subcmu_clk_save.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos5_subcmu_clk_save.exit

exynos5_subcmu_clk_save.exit:                     ; preds = %for.body.i.exynos5_subcmu_clk_save.exit_crit_edge, %entry.exynos5_subcmu_clk_save.exit_crit_edge
  %28 = load ptr, ptr @ctx, align 4
  %lock6 = getelementptr inbounds %struct.samsung_clk_provider, ptr %28, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock6, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_subcmu_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = load ptr, ptr @ctx, align 4
  %lock = getelementptr inbounds %struct.samsung_clk_provider, ptr %2, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %3 = load ptr, ptr @ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %nr_suspend_regs = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %nr_suspend_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_suspend_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not10.i = icmp eq i32 %7, 0
  br i1 %cmp.not10.i, label %entry.exynos5_subcmu_clk_restore.exit_crit_edge, label %do.body.i.preheader

entry.exynos5_subcmu_clk_restore.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos5_subcmu_clk_restore.exit

do.body.i.preheader:                              ; preds = %entry
  %suspend_regs = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %suspend_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend_regs, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %rd.addr.012.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %9, %do.body.i.preheader ]
  %num_regs.addr.011.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %7, %do.body.i.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %rd.addr.012.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rd.addr.012.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !33
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  %mask.i = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.012.i, i32 0, i32 2
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %15, -1
  %and.i = and i32 %13, %neg.i
  %save.i = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.012.i, i32 0, i32 3
  %16 = ptrtoint ptr %save.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %save.i, align 4
  %or.i = or i32 %and.i, %17
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %19 = ptrtoint ptr %rd.addr.012.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rd.addr.012.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %18) #6, !srcloc !36
  %dec.i = add i32 %num_regs.addr.011.i, -1
  %incdec.ptr.i = getelementptr %struct.exynos5_subcmu_reg_dump, ptr %rd.addr.012.i, i32 1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.body.i.exynos5_subcmu_clk_restore.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i.exynos5_subcmu_clk_restore.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos5_subcmu_clk_restore.exit

exynos5_subcmu_clk_restore.exit:                  ; preds = %do.body.i.exynos5_subcmu_clk_restore.exit_crit_edge, %entry.exynos5_subcmu_clk_restore.exit_crit_edge
  %21 = load ptr, ptr @ctx, align 4
  %lock6 = getelementptr inbounds %struct.samsung_clk_provider, ptr %21, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock6, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_clk_exynos5_subcmu__171_195_exynos5_clk_drv_init1, !1, !"__initcall__kmod_clk_exynos5_subcmu__171_195_exynos5_clk_drv_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 195, i32 1}
!2 = !{ptr @ctx, !3, !"ctx", i1 false, i1 false}
!3 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 16, i32 37}
!4 = !{ptr @cmu, !5, !"cmu", i1 false, i1 false}
!5 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 17, i32 43}
!6 = !{ptr @nr_cmus, !7, !"nr_cmus", i1 false, i1 false}
!7 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 18, i32 12}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 182, i32 11}
!10 = !{ptr @exynos5_clk_driver, !11, !"exynos5_clk_driver", i1 false, i1 false}
!11 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 180, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 162, i32 2}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 163, i32 35}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 142, i32 31}
!18 = !{ptr @exynos5_clk_of_match, !19, !"exynos5_clk_of_match", i1 false, i1 false}
!19 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 173, i32 34}
!20 = !{ptr @exynos5_subcmu_driver, !21, !"exynos5_subcmu_driver", i1 false, i1 false}
!21 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 125, i32 31}
!22 = !{ptr @exynos5_subcmu_pm_ops, !23, !"exynos5_subcmu_pm_ops", i1 false, i1 false}
!23 = !{!"../drivers/clk/samsung/clk-exynos5-subcmu.c", i32 118, i32 32}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 689087}
!34 = !{i64 2152620337}
!35 = !{i64 2152620582}
!36 = !{i64 688669}
!37 = !{!"auto-init"}
!38 = !{i64 2152621820}
!39 = !{i64 2152622769}
