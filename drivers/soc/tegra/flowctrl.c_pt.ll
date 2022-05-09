; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/flowctrl.c_pt.bc'
source_filename = "../drivers/soc/tegra/flowctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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

@flowctrl_offset_cpu_csr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\08\18 (", [28 x i8] zeroinitializer }, align 32
@flowctrl_read_cpu_csr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_flowctrl_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/soc/tegra/flowctrl.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Tegra flowctrl not initialised!\0A\00", [63 x i8] zeroinitializer }, align 32
@flowctrl_offset_halt_cpu = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\14\1C$", [28 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__initcall__kmod_flowctrl__170_188_tegra_flowctrl_driver_init6 = internal global ptr @tegra_flowctrl_driver_init, section ".initcall6.init", align 4
@__initcall__kmod_flowctrl__171_228_tegra_flowctrl_initearly = internal global ptr @tegra_flowctrl_init, section ".initcallearly.init", align 4
@flowctrl_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@tegra_flowctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_flowctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_flowctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra-flowctrl\00", [17 x i8] zeroinitializer }, align 32
@tegra_flowctrl_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@tegra_flowctrl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013failed to get flowctrl register\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_flowctrl_init\00", [44 x i8] zeroinitializer }, align 32
@tegra_flowctrl_init._entry_ptr = internal global ptr @tegra_flowctrl_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 48, i64 53, i64 64]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 48, i64 53, i64 64]
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"flowctrl_offset_cpu_csr\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 29, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"tegra_flowctrl_base\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 36, i32 22 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 55, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"flowctrl_offset_halt_cpu\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 22, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"tegra_flowctrl_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 180, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 182, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"tegra_flowctrl_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 171, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [32 x i8] c"../drivers/soc/tegra/flowctrl.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 201, i32 4 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_flowctrl__170_188_tegra_flowctrl_driver_init6, ptr @__initcall__kmod_flowctrl__171_228_tegra_flowctrl_initearly, ptr @tegra_flowctrl_init._entry, ptr @tegra_flowctrl_init._entry_ptr, ptr @flowctrl_offset_cpu_csr, ptr @tegra_flowctrl_base, ptr @.str, ptr @.str.1, ptr @flowctrl_offset_halt_cpu, ptr @tegra_flowctrl_driver, ptr @.str.2, ptr @tegra_flowctrl_match, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flowctrl_offset_cpu_csr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_flowctrl_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flowctrl_offset_halt_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_flowctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_flowctrl_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_flowctrl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flowctrl_read_cpu_csr(i32 noundef %cpuid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tegra_flowctrl_base, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  br i1 %.b43, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !36

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %cpuid
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %add.ptr = getelementptr i8, ptr %0, i32 %conv
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !37
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end37 ], [ 0, %if.then ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flowctrl_write_cpu_csr(i32 noundef %cpuid, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tegra_flowctrl_base, align 4
  %tobool.not.i.i = icmp eq ptr %0, null
  %cmp.i.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %land.rhs.i, label %do.body38.critedge.i

land.rhs.i:                                       ; preds = %entry
  %.b51.i = load i1, ptr @flowctrl_update.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.flowctrl_update.exit_crit_edge, label %if.then.i, !prof !36

land.rhs.i.flowctrl_update.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flowctrl_update.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %flowctrl_update.exit

do.body38.critedge.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %cpuid
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %value) #6
  %4 = load ptr, ptr @tegra_flowctrl_base, align 4
  %conv.i = zext i8 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %5 = load ptr, ptr @tegra_flowctrl_base, align 4
  %add.ptr45.i = getelementptr i8, ptr %5, i32 %conv.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #6, !srcloc !37
  br label %flowctrl_update.exit

flowctrl_update.exit:                             ; preds = %do.body38.critedge.i, %if.then.i, %land.rhs.i.flowctrl_update.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flowctrl_write_cpu_halt(i32 noundef %cpuid, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tegra_flowctrl_base, align 4
  %tobool.not.i.i = icmp eq ptr %0, null
  %cmp.i.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %land.rhs.i, label %do.body38.critedge.i

land.rhs.i:                                       ; preds = %entry
  %.b51.i = load i1, ptr @flowctrl_update.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.flowctrl_update.exit_crit_edge, label %if.then.i, !prof !36

land.rhs.i.flowctrl_update.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flowctrl_update.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %flowctrl_update.exit

do.body38.critedge.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [4 x i8], ptr @flowctrl_offset_halt_cpu, i32 0, i32 %cpuid
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %value) #6
  %4 = load ptr, ptr @tegra_flowctrl_base, align 4
  %conv.i = zext i8 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %5 = load ptr, ptr @tegra_flowctrl_base, align 4
  %add.ptr45.i = getelementptr i8, ptr %5, i32 %conv.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #6, !srcloc !37
  br label %flowctrl_update.exit

flowctrl_update.exit:                             ; preds = %do.body38.critedge.i, %if.then.i, %land.rhs.i.flowctrl_update.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flowctrl_cpu_suspend_enter(i32 noundef %cpuid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tegra_flowctrl_base, align 4
  %tobool.not.i.i = icmp eq ptr %0, null
  %cmp.i.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %land.rhs.i, label %if.end37.i

land.rhs.i:                                       ; preds = %entry
  %.b43.i = load i1, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.flowctrl_read_cpu_csr.exit_crit_edge, label %if.then.i, !prof !36

land.rhs.i.flowctrl_read_cpu_csr.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flowctrl_read_cpu_csr.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %flowctrl_read_cpu_csr.exit

if.end37.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %cpuid
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %0, i32 %conv.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !37
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  br label %flowctrl_read_cpu_csr.exit

flowctrl_read_cpu_csr.exit:                       ; preds = %if.end37.i, %if.then.i, %land.rhs.i.flowctrl_read_cpu_csr.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.end37.i ], [ 0, %if.then.i ], [ 0, %land.rhs.i.flowctrl_read_cpu_csr.exit_crit_edge ]
  %call1 = tail call zeroext i8 @tegra_get_chip_id() #6
  %5 = zext i8 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call1, label %flowctrl_read_cpu_csr.exit.sw.epilog_crit_edge [
    i8 32, label %sw.bb
    i8 48, label %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge
    i8 53, label %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge74
    i8 64, label %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge75
  ]

flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge75:    ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge74:    ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge:      ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

flowctrl_read_cpu_csr.exit.sw.epilog_crit_edge:   ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %retval.0.i, -49
  %shl = shl i32 16, %cpuid
  %or = or i32 %and, %shl
  br label %sw.epilog

sw.bb3:                                           ; preds = %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge, %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge74, %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge75
  %and5 = and i32 %retval.0.i, -4081
  %call6 = tail call zeroext i8 @tegra_get_chip_id() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %call6)
  %cmp = icmp eq i8 %call6, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %shl9 = shl i32 16, %cpuid
  %or10 = or i32 %and5, %shl9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %shl11 = shl i32 256, %cpuid
  %or12 = or i32 %and5, %shl11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %sw.bb, %flowctrl_read_cpu_csr.exit.sw.epilog_crit_edge
  %reg.0 = phi i32 [ %retval.0.i, %flowctrl_read_cpu_csr.exit.sw.epilog_crit_edge ], [ %or10, %if.then ], [ %or12, %if.else ], [ %or, %sw.bb ]
  %6 = load ptr, ptr @tegra_flowctrl_base, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  %cmp.i.i.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %land.rhs.i.i, label %do.body38.critedge.i.i

land.rhs.i.i:                                     ; preds = %sw.epilog
  %.b51.i.i = load i1, ptr @flowctrl_update.__already_done, align 1
  br i1 %.b51.i.i, label %land.rhs.i.i.if.end.i.i.preheader_crit_edge, label %if.then.i.i, !prof !36

land.rhs.i.i.if.end.i.i.preheader_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.preheader

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %if.end.i.i.preheader

do.body38.critedge.i.i:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or15 = or i32 %reg.0, 49153
  %arrayidx.i48 = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %cpuid
  %7 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i48, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or15) #6
  %10 = load ptr, ptr @tegra_flowctrl_base, align 4
  %conv.i.i = zext i8 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %11 = load ptr, ptr @tegra_flowctrl_base, align 4
  %add.ptr45.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i.i) #6, !srcloc !37
  br label %if.end.i.i.preheader

if.end.i.i.preheader:                             ; preds = %do.body38.critedge.i.i, %if.then.i.i, %land.rhs.i.i.if.end.i.i.preheader_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.inc, %if.end.i.i.preheader
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %if.end.i.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %call4.i.i)
  %cmp17 = icmp ult i32 %i.0, %call4.i.i
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %cpuid)
  %cmp19 = icmp eq i32 %i.0, %cpuid
  br i1 %cmp19, label %for.body.for.inc_crit_edge, label %if.end22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %14 = load ptr, ptr @tegra_flowctrl_base, align 4
  %tobool.not.i.i50 = icmp eq ptr %14, null
  %cmp.i.i51 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i52 = or i1 %tobool.not.i.i50, %cmp.i.i51
  br i1 %spec.select.i.i52, label %land.rhs.i54, label %if.end37.i59

land.rhs.i54:                                     ; preds = %if.end22
  %.b43.i53 = load i1, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  br i1 %.b43.i53, label %land.rhs.i54.flowctrl_read_cpu_csr.exit61_crit_edge, label %if.then.i55, !prof !36

land.rhs.i54.flowctrl_read_cpu_csr.exit61_crit_edge: ; preds = %land.rhs.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %flowctrl_read_cpu_csr.exit61

if.then.i55:                                      ; preds = %land.rhs.i54
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %flowctrl_read_cpu_csr.exit61

if.end37.i59:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i56 = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %i.0
  %15 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i56, align 1
  %conv.i57 = zext i8 %16 to i32
  %add.ptr.i58 = getelementptr i8, ptr %14, i32 %conv.i57
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #6, !srcloc !37
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  br label %flowctrl_read_cpu_csr.exit61

flowctrl_read_cpu_csr.exit61:                     ; preds = %if.end37.i59, %if.then.i55, %land.rhs.i54.flowctrl_read_cpu_csr.exit61_crit_edge
  %retval.0.i60 = phi i32 [ %18, %if.end37.i59 ], [ 0, %if.then.i55 ], [ 0, %land.rhs.i54.flowctrl_read_cpu_csr.exit61_crit_edge ]
  %19 = load ptr, ptr @tegra_flowctrl_base, align 4
  %tobool.not.i.i.i62 = icmp eq ptr %19, null
  %cmp.i.i.i63 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i64 = or i1 %tobool.not.i.i.i62, %cmp.i.i.i63
  br i1 %spec.select.i.i.i64, label %land.rhs.i.i66, label %do.body38.critedge.i.i72

land.rhs.i.i66:                                   ; preds = %flowctrl_read_cpu_csr.exit61
  %.b51.i.i65 = load i1, ptr @flowctrl_update.__already_done, align 1
  br i1 %.b51.i.i65, label %land.rhs.i.i66.for.inc_crit_edge, label %if.then.i.i67, !prof !36

land.rhs.i.i66.for.inc_crit_edge:                 ; preds = %land.rhs.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.i.i67:                                    ; preds = %land.rhs.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %for.inc

do.body38.critedge.i.i72:                         ; preds = %flowctrl_read_cpu_csr.exit61
  call void @__sanitizer_cov_trace_pc() #8
  %or25 = or i32 %retval.0.i60, 49152
  %arrayidx.i68 = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %i.0
  %20 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i68, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or25) #6
  %23 = load ptr, ptr @tegra_flowctrl_base, align 4
  %conv.i.i69 = zext i8 %21 to i32
  %add.ptr.i.i70 = getelementptr i8, ptr %23, i32 %conv.i.i69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 %22) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %24 = load ptr, ptr @tegra_flowctrl_base, align 4
  %add.ptr45.i.i71 = getelementptr i8, ptr %24, i32 %conv.i.i69
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i.i71) #6, !srcloc !37
  br label %for.inc

for.inc:                                          ; preds = %do.body38.critedge.i.i72, %if.then.i.i67, %land.rhs.i.i66.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0, 1
  br label %if.end.i.i

for.end:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flowctrl_cpu_suspend_exit(i32 noundef %cpuid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tegra_flowctrl_base, align 4
  %tobool.not.i.i = icmp eq ptr %0, null
  %cmp.i.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %land.rhs.i, label %if.end37.i

land.rhs.i:                                       ; preds = %entry
  %.b43.i = load i1, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.flowctrl_read_cpu_csr.exit_crit_edge, label %if.then.i, !prof !36

land.rhs.i.flowctrl_read_cpu_csr.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flowctrl_read_cpu_csr.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %flowctrl_read_cpu_csr.exit

if.end37.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %cpuid
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %0, i32 %conv.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !37
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  br label %flowctrl_read_cpu_csr.exit

flowctrl_read_cpu_csr.exit:                       ; preds = %if.end37.i, %if.then.i, %land.rhs.i.flowctrl_read_cpu_csr.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.end37.i ], [ 0, %if.then.i ], [ 0, %land.rhs.i.flowctrl_read_cpu_csr.exit_crit_edge ]
  %call1 = tail call zeroext i8 @tegra_get_chip_id() #6
  %5 = zext i8 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %call1, label %flowctrl_read_cpu_csr.exit.sw.epilog_crit_edge [
    i8 32, label %sw.bb
    i8 48, label %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge
    i8 53, label %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge17
    i8 64, label %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge18
  ]

flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge18:    ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge17:    ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge:      ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

flowctrl_read_cpu_csr.exit.sw.epilog_crit_edge:   ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %flowctrl_read_cpu_csr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %retval.0.i, -49
  br label %sw.epilog

sw.bb3:                                           ; preds = %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge, %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge17, %flowctrl_read_cpu_csr.exit.sw.bb3_crit_edge18
  %and5 = and i32 %retval.0.i, -4081
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %flowctrl_read_cpu_csr.exit.sw.epilog_crit_edge
  %reg.0 = phi i32 [ %retval.0.i, %flowctrl_read_cpu_csr.exit.sw.epilog_crit_edge ], [ %and5, %sw.bb3 ], [ %and, %sw.bb ]
  %6 = load ptr, ptr @tegra_flowctrl_base, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  %cmp.i.i.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %land.rhs.i.i, label %do.body38.critedge.i.i

land.rhs.i.i:                                     ; preds = %sw.epilog
  %.b51.i.i = load i1, ptr @flowctrl_update.__already_done, align 1
  br i1 %.b51.i.i, label %land.rhs.i.i.flowctrl_write_cpu_csr.exit_crit_edge, label %if.then.i.i, !prof !36

land.rhs.i.i.flowctrl_write_cpu_csr.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flowctrl_write_cpu_csr.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %flowctrl_write_cpu_csr.exit

do.body38.critedge.i.i:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %and6 = and i32 %reg.0, -49154
  %or7 = or i32 %and6, 49152
  %arrayidx.i16 = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %cpuid
  %7 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i16, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or7) #6
  %10 = load ptr, ptr @tegra_flowctrl_base, align 4
  %conv.i.i = zext i8 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %11 = load ptr, ptr @tegra_flowctrl_base, align 4
  %add.ptr45.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i.i) #6, !srcloc !37
  br label %flowctrl_write_cpu_csr.exit

flowctrl_write_cpu_csr.exit:                      ; preds = %do.body38.critedge.i.i, %if.then.i.i, %land.rhs.i.i.flowctrl_write_cpu_csr.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_flowctrl_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_flowctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_flowctrl_init() #4 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = tail call zeroext i1 @soc_is_tegra() #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_flowctrl_match, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @of_address_to_resource(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1610641408, ptr %res, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1610645503, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %1, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end6
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call10 = call ptr @ioremap(i32 noundef %7, i32 noundef %add.i) #6
  store ptr %call10, ptr @tegra_flowctrl_base, align 4
  %tobool11.not = icmp eq ptr %call10, null
  %. = select i1 %tobool11.not, i32 -6, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %., %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_flowctrl_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tegra_flowctrl_base, align 4
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #6
  store ptr %call1, ptr @tegra_flowctrl_base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef %0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc_is_tegra() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/flowctrl.c", i32 55, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_flowctrl__170_188_tegra_flowctrl_driver_init6, !5, !"__initcall__kmod_flowctrl__170_188_tegra_flowctrl_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/soc/tegra/flowctrl.c", i32 188, i32 1}
!6 = !{ptr @__initcall__kmod_flowctrl__171_228_tegra_flowctrl_initearly, !7, !"__initcall__kmod_flowctrl__171_228_tegra_flowctrl_initearly", i1 false, i1 false}
!7 = !{!"../drivers/soc/tegra/flowctrl.c", i32 228, i32 1}
!8 = !{ptr @tegra_flowctrl_base, !9, !"tegra_flowctrl_base", i1 false, i1 false}
!9 = !{!"../drivers/soc/tegra/flowctrl.c", i32 36, i32 22}
!10 = !{ptr @flowctrl_offset_cpu_csr, !11, !"flowctrl_offset_cpu_csr", i1 false, i1 false}
!11 = !{!"../drivers/soc/tegra/flowctrl.c", i32 29, i32 11}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/soc/tegra/flowctrl.c", i32 40, i32 6}
!14 = !{ptr @flowctrl_offset_halt_cpu, !15, !"flowctrl_offset_halt_cpu", i1 false, i1 false}
!15 = !{!"../drivers/soc/tegra/flowctrl.c", i32 22, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/tegra/flowctrl.c", i32 182, i32 11}
!18 = !{ptr @tegra_flowctrl_driver, !19, !"tegra_flowctrl_driver", i1 false, i1 false}
!19 = !{!"../drivers/soc/tegra/flowctrl.c", i32 180, i32 31}
!20 = !{ptr @tegra_flowctrl_match, !21, !"tegra_flowctrl_match", i1 false, i1 false}
!21 = !{!"../drivers/soc/tegra/flowctrl.c", i32 171, i32 34}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/tegra/flowctrl.c", i32 201, i32 4}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tegra_flowctrl_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @tegra_flowctrl_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 1352416}
!38 = !{i64 2152466720}
!39 = !{i64 2152464338}
!40 = !{i64 1351998}
!41 = !{i64 2152464678}
