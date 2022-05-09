; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mvebu/coherency.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/coherency.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@coherency_base = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@set_cpu_coherent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014mvebu-coherency: Can't make current CPU cache coherent.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set_cpu_coherent\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/mach-mvebu/coherency.c\00", [32 x i8] zeroinitializer }, align 32
@set_cpu_coherent._entry_ptr = internal global ptr @set_cpu_coherent._entry, section ".printk_index", align 4
@set_cpu_coherent._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014mvebu-coherency: Coherency fabric is not initialized\0A\00", [40 x i8] zeroinitializer }, align 32
@set_cpu_coherent._entry_ptr.5 = internal global ptr @set_cpu_coherent._entry.3, section ".printk_index", align 4
@of_coherency_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,coherency-fabric\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-coherency-fabric\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-coherency-fabric\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@__initcall__kmod_coherency__236_293_coherency_late_init2 = internal global ptr @coherency_late_init, section ".initcall2.init", align 4
@__initcall__kmod_coherency__237_304_coherency_pci_init3 = internal global ptr @coherency_pci_init, section ".initcall3.init", align 4
@coherency_phys_base = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@cpu_config_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@coherency_cpu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"marvell,armada-xp-cpu-config\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arm/mvebu/coherency:starting\00", [35 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@arch_ioremap_caller = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,pl310-cache\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,io-coherent\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@mvebu_hwcc_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mvebu_hwcc_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@arm_coherent_dma_ops = external dso_local constant %struct.dma_map_ops, align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@mvebu_hwcc_pci_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mvebu_hwcc_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"coherency_base\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 41, i32 15 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 249, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 250, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"of_coherency_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 55, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"coherency_phys_base\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 40, i32 15 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"cpu_config_base\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 43, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"coherency_cpu_base\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 42, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 138, i32 7 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 151, i32 7 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 193, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 197, i32 21 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"mvebu_hwcc_nb\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 106, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"mvebu_hwcc_pci_nb\00", align 1
@___asan_gen_.59 = private constant [35 x i8] c"../arch/arm/mach-mvebu/coherency.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 110, i32 30 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_coherency__236_293_coherency_late_init2, ptr @__initcall__kmod_coherency__237_304_coherency_pci_init3, ptr @set_cpu_coherent._entry, ptr @set_cpu_coherent._entry.3, ptr @set_cpu_coherent._entry_ptr, ptr @set_cpu_coherent._entry_ptr.5, ptr @coherency_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @of_coherency_table, ptr @coherency_phys_base, ptr @cpu_config_base, ptr @coherency_cpu_base, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mvebu_hwcc_nb, ptr @mvebu_hwcc_pci_nb], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coherency_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cpu_coherent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cpu_coherent._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_coherency_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coherency_phys_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_config_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coherency_cpu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_hwcc_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_hwcc_pci_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_cpu_coherent() local_unnamed_addr #0 align 64 {
entry:
  %match.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i) #7
  %0 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %1 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %entry.coherency_type.exit.thread_crit_edge, label %if.end.i

entry.coherency_type.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %coherency_type.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef nonnull %match.i) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.coherency_type.exit.thread_crit_edge, label %coherency_type.exit

if.end.i.coherency_type.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %coherency_type.exit.thread

coherency_type.exit.thread:                       ; preds = %if.end.i.coherency_type.exit.thread_crit_edge, %entry.coherency_type.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #7
  br label %cleanup

coherency_type.exit:                              ; preds = %if.end.i
  %2 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match.i, align 4
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  call void @of_node_put(ptr noundef nonnull %call1.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #7
  %cmp = icmp eq ptr %5, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %coherency_type.exit.cleanup_crit_edge

coherency_type.exit.cleanup_crit_edge:            ; preds = %coherency_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %coherency_type.exit
  %6 = load ptr, ptr @coherency_base, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr @cpu_config_base, align 4
  %tobool.not.i10 = icmp eq ptr %7, null
  br i1 %tobool.not.i10, label %if.end.armada_xp_clear_shared_l2.exit_crit_edge, label %if.end.i11

if.end.armada_xp_clear_shared_l2.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %armada_xp_clear_shared_l2.exit

if.end.i11:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #7, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %9 = and i32 %8, -257
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  call void @arm_heavy_mb() #7
  %10 = load ptr, ptr @cpu_config_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #7, !srcloc !49
  br label %armada_xp_clear_shared_l2.exit

armada_xp_clear_shared_l2.exit:                   ; preds = %if.end.i11, %if.end.armada_xp_clear_shared_l2.exit_crit_edge
  call void @ll_add_cpu_to_smp_group() #7
  %call8 = call i32 @ll_enable_coherency() #7
  br label %cleanup

cleanup:                                          ; preds = %armada_xp_clear_shared_l2.exit, %do.end, %coherency_type.exit.cleanup_crit_edge, %coherency_type.exit.thread
  %retval.0 = phi i32 [ %call8, %armada_xp_clear_shared_l2.exit ], [ 1, %do.end ], [ 0, %coherency_type.exit.cleanup_crit_edge ], [ 0, %coherency_type.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_add_cpu_to_smp_group() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ll_enable_coherency() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coherency_available() local_unnamed_addr #0 align 64 {
entry:
  %match.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i) #7
  %0 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %1 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %entry.coherency_type.exit_crit_edge, label %if.end.i

entry.coherency_type.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %coherency_type.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef nonnull %match.i) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.coherency_type.exit_crit_edge, label %if.end3.i

if.end.i.coherency_type.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %coherency_type.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match.i, align 4
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  call void @of_node_put(ptr noundef nonnull %call1.i) #7
  %phi.cmp = icmp ne ptr %5, null
  %phi.cast = zext i1 %phi.cmp to i32
  br label %coherency_type.exit

coherency_type.exit:                              ; preds = %if.end3.i, %if.end.i.coherency_type.exit_crit_edge, %entry.coherency_type.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end3.i ], [ 0, %entry.coherency_type.exit_crit_edge ], [ 0, %if.end.i.coherency_type.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coherency_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  %match.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i) #7
  %0 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %1 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %entry.coherency_type.exit.thread_crit_edge, label %if.end.i

entry.coherency_type.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %coherency_type.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef nonnull %match.i) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.coherency_type.exit.thread_crit_edge, label %coherency_type.exit

if.end.i.coherency_type.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %coherency_type.exit.thread

coherency_type.exit.thread:                       ; preds = %if.end.i.coherency_type.exit.thread_crit_edge, %entry.coherency_type.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #7
  %call.i11 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef null) #7
  br label %if.end5

coherency_type.exit:                              ; preds = %if.end.i
  %2 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match.i, align 4
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @of_node_put(ptr noundef nonnull %call1.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #7
  %call.i = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_coherency_table, ptr noundef null) #7
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %coherency_type.exit.if.end5_crit_edge [
    i32 1, label %if.then
    i32 2, label %coherency_type.exit.if.then4_crit_edge
    i32 3, label %coherency_type.exit.if.then4_crit_edge13
  ]

coherency_type.exit.if.then4_crit_edge13:         ; preds = %coherency_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

coherency_type.exit.if.then4_crit_edge:           ; preds = %coherency_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

coherency_type.exit.if.end5_crit_edge:            ; preds = %coherency_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %coherency_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @armada_370_coherency_init(ptr noundef %call.i) #11
  br label %if.end5

if.then4:                                         ; preds = %coherency_type.exit.if.then4_crit_edge, %coherency_type.exit.if.then4_crit_edge13
  call fastcc void @armada_375_380_coherency_init(ptr noundef %call.i) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then, %coherency_type.exit.if.end5_crit_edge, %coherency_type.exit.thread
  %call.i12 = phi ptr [ %call.i11, %coherency_type.exit.thread ], [ %call.i, %coherency_type.exit.if.end5_crit_edge ], [ %call.i, %if.then4 ], [ %call.i, %if.then ]
  call void @of_node_put(ptr noundef %call.i12) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada_370_coherency_init(ptr noundef %np) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #7
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res, align 4
  store i32 %2, ptr @coherency_phys_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %3(ptr noundef nonnull @coherency_phys_base, i32 noundef 4) #7
  %call.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @coherency_phys_base to i32)) #7
  %call1.i = call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @coherency_phys_base, i32 1) to i32)) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %entry.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

entry.__sync_cache_range_w.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void %4(i32 noundef %call.i, i32 noundef %call1.i) #7
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %entry.__sync_cache_range_w.exit_crit_edge
  %call1 = call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  store ptr %call1, ptr @coherency_base, align 4
  %call2 = call ptr @of_iomap(ptr noundef %np, i32 noundef 1) #7
  store ptr %call2, ptr @coherency_cpu_base, align 4
  %call3 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %__sync_cache_range_w.exit.exit_crit_edge, label %if.end

__sync_cache_range_w.exit.exit_crit_edge:         ; preds = %__sync_cache_range_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %__sync_cache_range_w.exit
  %call4 = call ptr @of_iomap(ptr noundef nonnull %call3, i32 noundef 0) #7
  store ptr %call4, ptr @cpu_config_base, align 4
  %tobool5.not = icmp eq ptr %call4, null
  call void @of_node_put(ptr noundef nonnull %call3) #7
  br i1 %tobool5.not, label %if.end.exit_crit_edge, label %if.end7

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i15 = call i32 @__cpuhp_setup_state(i32 noundef 105, ptr noundef nonnull @.str.7, i1 noundef zeroext false, ptr noundef nonnull @armada_xp_clear_l2_starting, ptr noundef null, i1 noundef zeroext false) #7
  br label %exit

exit:                                             ; preds = %if.end7, %if.end.exit_crit_edge, %__sync_cache_range_w.exit.exit_crit_edge
  %call9 = call i32 @set_cpu_coherent()
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada_375_380_coherency_init(ptr noundef %np) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  store ptr %call, ptr @coherency_cpu_base, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arch_ioremap_caller to i32))
  store ptr @armada_wa_ioremap_caller, ptr @arch_ioremap_caller, align 4
  tail call void @pci_ioremap_set_mem_type(i32 noundef 4) #7
  %call1 = tail call i32 @coherency_available()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #7
  %tobool3.not11 = icmp eq ptr %call2, null
  br i1 %tobool3.not11, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %cache_dn.012 = phi ptr [ %call7, %for.body.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #12
  %call5 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.9, i32 noundef 3264) #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5, ptr %call7.i.i, align 8
  %call6 = tail call i32 @of_add_property(ptr noundef nonnull %cache_dn.012, ptr noundef %call7.i.i) #7
  %call7 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %cache_dn.012, ptr noundef null, ptr noundef nonnull @.str.8) #7
  %tobool3.not = icmp eq ptr %call7, null
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @coherency_late_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @coherency_available()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @bus_register_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @mvebu_hwcc_nb) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @coherency_pci_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @coherency_available()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @bus_register_notifier(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @mvebu_hwcc_pci_nb) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_xp_clear_l2_starting(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpu_config_base, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.armada_xp_clear_shared_l2.exit_crit_edge, label %if.end.i

entry.armada_xp_clear_shared_l2.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %armada_xp_clear_shared_l2.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %2 = and i32 %1, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @cpu_config_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %2) #7, !srcloc !49
  br label %armada_xp_clear_shared_l2.exit

armada_xp_clear_shared_l2.exit:                   ; preds = %if.end.i, %entry.armada_xp_clear_shared_l2.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @armada_wa_ioremap_caller(i32 noundef %phys_addr, i32 noundef %size, i32 noundef %mtype, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__arm_ioremap_caller(i32 noundef %phys_addr, i32 noundef %size, i32 noundef 4, ptr noundef %caller) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ioremap_set_mem_type(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_add_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_caller(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mvebu_hwcc_notifier(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef writeonly %__dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp.not = icmp eq i32 %event, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_ops1.i = getelementptr inbounds %struct.device, ptr %__dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @arm_coherent_dma_ops, ptr %dma_ops1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 249, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @set_cpu_coherent._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @set_cpu_coherent._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 250, i32 4}
!8 = !{ptr @set_cpu_coherent._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @set_cpu_coherent._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_coherency__236_293_coherency_late_init2, !11, !"__initcall__kmod_coherency__236_293_coherency_late_init2", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 293, i32 1}
!12 = !{ptr @__initcall__kmod_coherency__237_304_coherency_pci_init3, !13, !"__initcall__kmod_coherency__237_304_coherency_pci_init3", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 304, i32 1}
!14 = !{ptr @coherency_phys_base, !15, !"coherency_phys_base", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 40, i32 15}
!16 = !{ptr @coherency_base, !17, !"coherency_base", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 41, i32 15}
!18 = !{ptr @cpu_config_base, !19, !"cpu_config_base", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 43, i32 22}
!20 = !{ptr @of_coherency_table, !21, !"of_coherency_table", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 55, i32 34}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 138, i32 7}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 151, i32 7}
!26 = !{ptr @coherency_cpu_base, !27, !"coherency_cpu_base", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 42, i32 22}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 193, i32 2}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 197, i32 21}
!32 = !{ptr @mvebu_hwcc_nb, !33, !"mvebu_hwcc_nb", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 106, i32 30}
!34 = !{ptr @mvebu_hwcc_pci_nb, !35, !"mvebu_hwcc_pci_nb", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-mvebu/coherency.c", i32 110, i32 30}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 3996866}
!47 = !{i64 2154642457}
!48 = !{i64 2154642753}
!49 = !{i64 3996448}
