; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-hip04.c_pt.bc'
source_filename = "../drivers/irqchip/irq-hip04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hip04_irq_data = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__of_table_hip04_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip04-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hip04_of_init }, section "__irqchip_of_table", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/irqchip/irq-hip04.c\00", [36 x i8] zeroinitializer }, align 32
@hip04_data = internal global %struct.hip04_irq_data zeroinitializer, section ".data..read_mostly", align 4
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fail to map hip04 intc dist registers\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to map hip04 intc cpu registers\0A\00", [56 x i8] zeroinitializer }, align 32
@hip04_cpu_map = internal unnamed_addr global [16 x i16] zeroinitializer, section ".data..read_mostly", align 2
@hip04_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to allocate IRQ numbers\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hip04_of_init\00", [18 x i8] zeroinitializer }, align 32
@hip04_of_init._entry_ptr = internal global ptr @hip04_of_init._entry, section ".printk_index", align 4
@hip04_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @hip04_irq_domain_map, ptr null, ptr @hip04_irq_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"irqchip/hip04:starting\00", [41 x i8] zeroinitializer }, align 32
@hip04_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hip04_mask_irq, ptr null, ptr @hip04_unmask_irq, ptr @hip04_eoi_irq, ptr @hip04_irq_set_affinity, ptr null, ptr @hip04_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hip04_ipi_send_mask, ptr null, ptr null, i32 21 }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HIP04 INTC\00", [21 x i8] zeroinitializer }, align 32
@irq_controller_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq_controller_lock\00", [44 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@hip04_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014GIC: PPI%d is secure or misconfigured\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hip04_irq_set_type\00", [45 x i8] zeroinitializer }, align 32
@hip04_irq_set_type._entry_ptr = internal global ptr @hip04_irq_set_type._entry, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@hip04_get_cpumask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\012GIC CPU mask not found - kernel will fail to boot.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hip04_get_cpumask\00", [46 x i8] zeroinitializer }, align 32
@hip04_get_cpumask._entry_ptr = internal global ptr @hip04_get_cpumask._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 357, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 361, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 364, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 385, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"hip04_irq_domain_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 347, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 402, i32 49 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"hip04_irq_chip\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 213, i32 24 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 214, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"irq_controller_lock\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 59, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 136, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [31 x i8] c"../drivers/irqchip/irq-hip04.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 241, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__of_table_hip04_intc, ptr @hip04_get_cpumask._entry, ptr @hip04_get_cpumask._entry_ptr, ptr @hip04_irq_set_type._entry, ptr @hip04_irq_set_type._entry_ptr, ptr @hip04_of_init._entry, ptr @hip04_of_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @hip04_irq_domain_ops, ptr @.str.5, ptr @hip04_irq_chip, ptr @.str.6, ptr @irq_controller_lock, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_controller_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_get_cpumask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !48

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call = tail call ptr @of_iomap(ptr noundef nonnull %node, i32 noundef 0) #8
  store ptr %call, ptr @hip04_data, align 4
  %tobool25.not = icmp eq ptr %call, null
  br i1 %tobool25.not, label %do.end43, label %if.end23.if.end49_crit_edge, !prof !48

if.end23.if.end49_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end23.if.end49_crit_edge
  %call57 = tail call ptr @of_iomap(ptr noundef nonnull %node, i32 noundef 1) #8
  store ptr %call57, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 1), align 4
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %do.end77, label %if.end49.if.end83_crit_edge, !prof !48

if.end49.if.end83_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.end77:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 9, ptr noundef nonnull @.str.2) #8
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %if.end49.if.end83_crit_edge
  %0 = call ptr @memset(ptr @hip04_cpu_map, i32 255, i32 32)
  %1 = load ptr, ptr @hip04_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !49
  %3 = lshr i32 %2, 19
  %add = and i32 %3, 992
  %4 = tail call i32 @llvm.umin.i32(i32 %add, i32 478)
  %5 = add nuw nsw i32 %4, 32
  store i32 %5, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 3), align 4
  %call97 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef %5, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end102, label %if.end105

do.end102:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end105:                                        ; preds = %if.end83
  %call106 = tail call ptr @irq_domain_add_legacy(ptr noundef nonnull %node, i32 noundef %5, i32 noundef %call97, i32 noundef 0, ptr noundef nonnull @hip04_irq_domain_ops, ptr noundef nonnull @hip04_data) #8
  store ptr %call106, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 2), align 4
  %tobool108.not = icmp eq ptr %call106, null
  br i1 %tobool108.not, label %do.end126, label %if.end142, !prof !48

do.end126:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 393, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end142:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_smp_ipi_range(i32 noundef %call97, i32 noundef 16) #8
  %call143 = tail call i32 @set_handle_irq(ptr noundef nonnull @hip04_handle_irq) #11
  tail call fastcc void @hip04_irq_dist_init() #12
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 98, ptr noundef nonnull @.str.5, i1 noundef zeroext true, ptr noundef nonnull @hip04_irq_starting_cpu, ptr noundef null, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %do.end126, %do.end102, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end102 ], [ -22, %do.end126 ], [ 0, %if.end142 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_handle_irq(ptr nocapture noundef readnone %regs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %0, i32 12
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !49
  %2 = and i32 %1, -16580608
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %cmp = icmp ult i32 %3, 511
  br i1 %cmp, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load ptr, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 2), align 4
  %call1 = tail call i32 @generic_handle_domain_irq(ptr noundef %4, i32 noundef %3) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hip04_irq_dist_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 3), align 4
  %1 = load ptr, ptr @hip04_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !50
  %call = tail call fastcc zeroext i16 @hip04_get_cpumask()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %cmp1 = icmp ugt i32 %0, 32
  br i1 %cmp1, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %call to i32
  %or = mul nuw i32 %conv, 65537
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr3 = getelementptr i8, ptr %1, i32 2048
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.02 = phi i32 [ 32, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.02, 1
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %2) #8, !srcloc !50
  %add = add i32 %i.02, 2
  %cmp = icmp ult i32 %add, %0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @gic_dist_config(ptr noundef %1, i32 noundef %0, ptr noundef null) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #8, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_irq_starting_cpu(i32 noundef %cpu) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hip04_data, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 1), align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu2.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp.i = icmp ugt i32 %5, 15
  br i1 %cmp.i, label %do.body4.i, label %do.end9.i, !prof !48

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-hip04.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #8, !srcloc !51
  unreachable

do.end9.i:                                        ; preds = %entry
  %call10.i = tail call fastcc zeroext i16 @hip04_get_cpumask() #8
  %arrayidx.i = getelementptr [16 x i16], ptr @hip04_cpu_map, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call10.i, ptr %arrayidx.i, align 2
  %neg.i = xor i16 %call10.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14.not.i = icmp eq i32 %5, 0
  br i1 %cmp14.not.i, label %for.inc.1.thread8.i, label %for.inc.i

for.inc.1.thread8.i:                              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 1), align 2
  %and.19.i = and i16 %7, %neg.i
  store i16 %and.19.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 1), align 2
  br label %for.inc.2.thread12.i

for.inc.i:                                        ; preds = %do.end9.i
  %8 = load i16, ptr @hip04_cpu_map, align 2
  %and.i = and i16 %8, %neg.i
  store i16 %and.i, ptr @hip04_cpu_map, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp14.not.1.i = icmp eq i32 %5, 1
  br i1 %cmp14.not.1.i, label %for.inc.i.for.inc.2.thread12.i_crit_edge, label %for.inc.1.i

for.inc.i.for.inc.2.thread12.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.thread12.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %9 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 1), align 2
  %and.1.i = and i16 %9, %neg.i
  store i16 %and.1.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp14.not.2.i = icmp eq i32 %5, 2
  br i1 %cmp14.not.2.i, label %for.inc.1.i.for.inc.3.thread16.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.inc.3.thread16.i_crit_edge:       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.thread16.i

for.inc.2.thread12.i:                             ; preds = %for.inc.i.for.inc.2.thread12.i_crit_edge, %for.inc.1.thread8.i
  %10 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 2), align 2
  %and.213.i = and i16 %10, %neg.i
  store i16 %and.213.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 2), align 2
  br label %for.inc.3.thread16.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %11 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 2), align 2
  %and.2.i = and i16 %11, %neg.i
  store i16 %and.2.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp14.not.3.i = icmp eq i32 %5, 3
  br i1 %cmp14.not.3.i, label %for.inc.2.i.for.inc.4.thread20.i_crit_edge, label %for.inc.3.i

for.inc.2.i.for.inc.4.thread20.i_crit_edge:       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.thread20.i

for.inc.3.thread16.i:                             ; preds = %for.inc.2.thread12.i, %for.inc.1.i.for.inc.3.thread16.i_crit_edge
  %12 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 3), align 2
  %and.317.i = and i16 %12, %neg.i
  store i16 %and.317.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 3), align 2
  br label %for.inc.4.thread20.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %13 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 3), align 2
  %and.3.i = and i16 %13, %neg.i
  store i16 %and.3.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 3), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp14.not.4.i = icmp eq i32 %5, 4
  br i1 %cmp14.not.4.i, label %for.inc.3.i.for.inc.5.thread24.i_crit_edge, label %for.inc.4.i

for.inc.3.i.for.inc.5.thread24.i_crit_edge:       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.thread24.i

for.inc.4.thread20.i:                             ; preds = %for.inc.3.thread16.i, %for.inc.2.i.for.inc.4.thread20.i_crit_edge
  %14 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 4), align 2
  %and.421.i = and i16 %14, %neg.i
  store i16 %and.421.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 4), align 2
  br label %for.inc.5.thread24.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %15 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 4), align 2
  %and.4.i = and i16 %15, %neg.i
  store i16 %and.4.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 4), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp14.not.5.i = icmp eq i32 %5, 5
  br i1 %cmp14.not.5.i, label %for.inc.4.i.for.inc.6.thread28.i_crit_edge, label %for.inc.5.i

for.inc.4.i.for.inc.6.thread28.i_crit_edge:       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.thread28.i

for.inc.5.thread24.i:                             ; preds = %for.inc.4.thread20.i, %for.inc.3.i.for.inc.5.thread24.i_crit_edge
  %16 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 5), align 2
  %and.525.i = and i16 %16, %neg.i
  store i16 %and.525.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 5), align 2
  br label %for.inc.6.thread28.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %17 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 5), align 2
  %and.5.i = and i16 %17, %neg.i
  store i16 %and.5.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 5), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp14.not.6.i = icmp eq i32 %5, 6
  br i1 %cmp14.not.6.i, label %for.inc.5.i.for.inc.7.thread32.i_crit_edge, label %for.inc.6.i

for.inc.5.i.for.inc.7.thread32.i_crit_edge:       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7.thread32.i

for.inc.6.thread28.i:                             ; preds = %for.inc.5.thread24.i, %for.inc.4.i.for.inc.6.thread28.i_crit_edge
  %18 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 6), align 2
  %and.629.i = and i16 %18, %neg.i
  store i16 %and.629.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 6), align 2
  br label %for.inc.7.thread32.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %19 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 6), align 2
  %and.6.i = and i16 %19, %neg.i
  store i16 %and.6.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 6), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp14.not.7.i = icmp eq i32 %5, 7
  br i1 %cmp14.not.7.i, label %for.inc.6.i.for.inc.8.thread36.i_crit_edge, label %for.inc.7.i

for.inc.6.i.for.inc.8.thread36.i_crit_edge:       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.8.thread36.i

for.inc.7.thread32.i:                             ; preds = %for.inc.6.thread28.i, %for.inc.5.i.for.inc.7.thread32.i_crit_edge
  %20 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 7), align 2
  %and.733.i = and i16 %20, %neg.i
  store i16 %and.733.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 7), align 2
  br label %for.inc.8.thread36.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %21 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 7), align 2
  %and.7.i = and i16 %21, %neg.i
  store i16 %and.7.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 7), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp14.not.8.i = icmp eq i32 %5, 8
  br i1 %cmp14.not.8.i, label %for.inc.7.i.for.inc.9.thread40.i_crit_edge, label %for.inc.8.i

for.inc.7.i.for.inc.9.thread40.i_crit_edge:       ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.9.thread40.i

for.inc.8.thread36.i:                             ; preds = %for.inc.7.thread32.i, %for.inc.6.i.for.inc.8.thread36.i_crit_edge
  %22 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 8), align 2
  %and.837.i = and i16 %22, %neg.i
  store i16 %and.837.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 8), align 2
  br label %for.inc.9.thread40.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %23 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 8), align 2
  %and.8.i = and i16 %23, %neg.i
  store i16 %and.8.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 8), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp14.not.9.i = icmp eq i32 %5, 9
  br i1 %cmp14.not.9.i, label %for.inc.8.i.for.inc.10.thread44.i_crit_edge, label %for.inc.9.i

for.inc.8.i.for.inc.10.thread44.i_crit_edge:      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.10.thread44.i

for.inc.9.thread40.i:                             ; preds = %for.inc.8.thread36.i, %for.inc.7.i.for.inc.9.thread40.i_crit_edge
  %24 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 9), align 2
  %and.941.i = and i16 %24, %neg.i
  store i16 %and.941.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 9), align 2
  br label %for.inc.10.thread44.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %25 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 9), align 2
  %and.9.i = and i16 %25, %neg.i
  store i16 %and.9.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 9), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp14.not.10.i = icmp eq i32 %5, 10
  br i1 %cmp14.not.10.i, label %for.inc.9.i.for.inc.11.thread48.i_crit_edge, label %for.inc.10.i

for.inc.9.i.for.inc.11.thread48.i_crit_edge:      ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.11.thread48.i

for.inc.10.thread44.i:                            ; preds = %for.inc.9.thread40.i, %for.inc.8.i.for.inc.10.thread44.i_crit_edge
  %26 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 10), align 2
  %and.1045.i = and i16 %26, %neg.i
  store i16 %and.1045.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 10), align 2
  br label %for.inc.11.thread48.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %27 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 10), align 2
  %and.10.i = and i16 %27, %neg.i
  store i16 %and.10.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 10), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp14.not.11.i = icmp eq i32 %5, 11
  br i1 %cmp14.not.11.i, label %for.inc.10.i.for.inc.12.thread52.i_crit_edge, label %for.inc.11.i

for.inc.10.i.for.inc.12.thread52.i_crit_edge:     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.12.thread52.i

for.inc.11.thread48.i:                            ; preds = %for.inc.10.thread44.i, %for.inc.9.i.for.inc.11.thread48.i_crit_edge
  %28 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 11), align 2
  %and.1149.i = and i16 %28, %neg.i
  store i16 %and.1149.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 11), align 2
  br label %for.inc.12.thread52.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %29 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 11), align 2
  %and.11.i = and i16 %29, %neg.i
  store i16 %and.11.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 11), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp14.not.12.i = icmp eq i32 %5, 12
  br i1 %cmp14.not.12.i, label %for.inc.11.i.for.inc.13.thread56.i_crit_edge, label %for.inc.12.i

for.inc.11.i.for.inc.13.thread56.i_crit_edge:     ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.13.thread56.i

for.inc.12.thread52.i:                            ; preds = %for.inc.11.thread48.i, %for.inc.10.i.for.inc.12.thread52.i_crit_edge
  %30 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 12), align 2
  %and.1253.i = and i16 %30, %neg.i
  store i16 %and.1253.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 12), align 2
  br label %for.inc.13.thread56.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %31 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 12), align 2
  %and.12.i = and i16 %31, %neg.i
  store i16 %and.12.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 12), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %5)
  %cmp14.not.13.i = icmp eq i32 %5, 13
  br i1 %cmp14.not.13.i, label %for.inc.12.i.for.inc.14.thread60.i_crit_edge, label %for.inc.13.i

for.inc.12.i.for.inc.14.thread60.i_crit_edge:     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.14.thread60.i

for.inc.13.thread56.i:                            ; preds = %for.inc.12.thread52.i, %for.inc.11.i.for.inc.13.thread56.i_crit_edge
  %32 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 13), align 2
  %and.1357.i = and i16 %32, %neg.i
  store i16 %and.1357.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 13), align 2
  br label %for.inc.14.thread60.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %33 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 13), align 2
  %and.13.i = and i16 %33, %neg.i
  store i16 %and.13.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 13), align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp14.not.14.i = icmp eq i32 %5, 14
  br i1 %cmp14.not.14.i, label %for.inc.13.i.if.then16.15.i_crit_edge, label %for.inc.13.i.hip04_irq_cpu_init.exit_crit_edge

for.inc.13.i.hip04_irq_cpu_init.exit_crit_edge:   ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hip04_irq_cpu_init.exit

for.inc.13.i.if.then16.15.i_crit_edge:            ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.15.i

for.inc.14.thread60.i:                            ; preds = %for.inc.13.thread56.i, %for.inc.12.i.for.inc.14.thread60.i_crit_edge
  %34 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 14), align 2
  %and.1461.i = and i16 %34, %neg.i
  store i16 %and.1461.i, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 14), align 2
  br label %if.then16.15.i

if.then16.15.i:                                   ; preds = %for.inc.14.thread60.i, %for.inc.13.i.if.then16.15.i_crit_edge
  br label %hip04_irq_cpu_init.exit

hip04_irq_cpu_init.exit:                          ; preds = %if.then16.15.i, %for.inc.13.i.hip04_irq_cpu_init.exit_crit_edge
  %.sink64.i = phi ptr [ getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 15), %if.then16.15.i ], [ getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 14), %for.inc.13.i.hip04_irq_cpu_init.exit_crit_edge ]
  %35 = ptrtoint ptr %.sink64.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %.sink64.i, align 2
  %and.14.i = and i16 %36, %neg.i
  store i16 %and.14.i, ptr %.sink64.i, align 2
  tail call void @gic_cpu_config(ptr noundef %0, i32 noundef 32, ptr noundef null) #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -268435456) #8, !srcloc !50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #8, !srcloc !50
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %hw)
  %cmp = icmp ult i32 %hw, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @irq_set_percpu_devid(i32 noundef %irq) #8
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @hip04_irq_chip, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @hip04_irq_chip, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef null) #8
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 1024, i32 noundef 0) #8
  %call1 = tail call ptr @irq_to_desc(i32 noundef %irq) #8
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call1, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %or.i = or i32 %3, 16777216
  store i32 %or.i, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  %call3 = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hip04_irq_domain_xlate(ptr nocapture noundef readonly %d, ptr noundef readnone %controller, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef writeonly %out_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fwnode.i = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwnode.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  %cmp.i.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.irq_domain_get_of_node.exit_crit_edge, label %is_of_node.exit.i

entry.irq_domain_get_of_node.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_domain_get_of_node.exit

is_of_node.exit.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @of_fwnode_ops
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %spec.select.i = select i1 %cmp.i.i, ptr %add.ptr.i, ptr null
  br label %irq_domain_get_of_node.exit

irq_domain_get_of_node.exit:                      ; preds = %is_of_node.exit.i, %entry.irq_domain_get_of_node.exit_crit_edge
  %4 = phi ptr [ null, %entry.irq_domain_get_of_node.exit_crit_edge ], [ %spec.select.i, %is_of_node.exit.i ]
  %cmp.not = icmp eq ptr %4, %controller
  br i1 %cmp.not, label %if.end, label %irq_domain_get_of_node.exit.return_crit_edge

irq_domain_get_of_node.exit.return_crit_edge:     ; preds = %irq_domain_get_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %irq_domain_get_of_node.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %intsize)
  %cmp1 = icmp eq i32 %intsize, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %intspec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2 = icmp ult i32 %6, 16
  br i1 %cmp2, label %if.then3, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %out_hwirq, align 4
  br label %return.sink.split

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %intsize)
  %cmp6 = icmp ult i32 %intsize, 3
  br i1 %cmp6, label %if.end5.return_crit_edge, label %if.end8

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end8:                                          ; preds = %if.end5
  %arrayidx9 = getelementptr i32, ptr %intspec, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %add = add i32 %9, 16
  %10 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %out_hwirq, align 4
  %11 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intspec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then11, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %add12 = add i32 %9, 32
  %13 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add12, ptr %out_hwirq, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %arrayidx14 = getelementptr i32, ptr %intspec, i32 2
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  %and = and i32 %15, 15
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end13, %if.then3
  %and.sink = phi i32 [ %and, %if.end13 ], [ 1, %if.then3 ]
  %16 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.sink, ptr %out_type, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end5.return_crit_edge, %land.lhs.true.return_crit_edge, %irq_domain_get_of_node.exit.return_crit_edge
  %retval.0 = phi i32 [ -22, %irq_domain_get_of_node.exit.return_crit_edge ], [ -22, %if.end5.return_crit_edge ], [ -22, %land.lhs.true.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_mask_irq(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %rem = and i32 %1, 31
  %shl = shl nuw i32 1, %rem
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %3 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 384
  %7 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq.i, align 4
  %9 = lshr i32 %8, 3
  %mul = and i32 %9, 536870908
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #8, !srcloc !50
  tail call void @_raw_spin_unlock(ptr noundef nonnull @irq_controller_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_unmask_irq(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %rem = and i32 %1, 31
  %shl = shl nuw i32 1, %rem
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %3 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 256
  %7 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq.i, align 4
  %9 = lshr i32 %8, 3
  %mul = and i32 %9, 536870908
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #8, !srcloc !50
  tail call void @_raw_spin_unlock(ptr noundef nonnull @irq_controller_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_eoi_irq(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %3 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i.i, align 4
  %cpu_base.i = getelementptr inbounds %struct.hip04_irq_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %cpu_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpu_base.i, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_irq_set_affinity(ptr nocapture noundef readonly %d, ptr noundef %mask_val, i1 noundef zeroext %force) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %rem = shl i32 %1, 4
  %mul = and i32 %rem, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %force, label %if.else, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef %mask_val, ptr noundef nonnull @__cpu_online_mask, i32 noundef %2) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %mask_val, i32 noundef %2) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i
  %cpu.0 = phi i32 [ %call.i, %if.else ], [ %call6.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %cpu.0)
  %cmp = icmp ugt i32 %cpu.0, 15
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu.0, i32 %3)
  %cmp3.not = icmp ult i32 %cpu.0, %3
  br i1 %cmp3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #8
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %4 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 2048
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  %mul8 = shl i32 %9, 1
  %and = and i32 %mul8, -4
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %and
  %shl = shl nuw i32 65535, %mul
  %arrayidx = getelementptr [16 x i16], ptr @hip04_cpu_map, i32 0, i32 %cpu.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %shl10 = shl nuw i32 %conv, %mul
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !49
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %neg = xor i32 %shl, -1
  %and12 = and i32 %13, %neg
  %or = or i32 %and12, %shl10
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %14) #8, !srcloc !50
  tail call void @_raw_spin_unlock(ptr noundef nonnull @irq_controller_lock) #8
  %add.i = add nuw nsw i32 %cpu.0, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %15 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common.i, align 4
  %effective_affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %effective_affinity.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %effective_affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %19, 31
  %20 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %20, 536870908
  %21 = call ptr @memcpy(ptr %18, ptr %arrayidx.i, i32 %mul.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ult i32 %5, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %.fr = freeze i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.fr)
  %cmp2 = icmp ult i32 %.fr, 32
  br i1 %cmp2, label %if.end.if.end7_crit_edge, label %switch.early.test

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

switch.early.test:                                ; preds = %if.end
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %switch.early.test.cleanup_crit_edge [
    i32 4, label %switch.early.test.if.end7_crit_edge
    i32 1, label %switch.early.test.if.end7_crit_edge25
  ]

switch.early.test.if.end7_crit_edge25:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

switch.early.test.if.end7_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %switch.early.test.if.end7_crit_edge, %switch.early.test.if.end7_crit_edge25, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #8
  %add.ptr = getelementptr i8, ptr %3, i32 3072
  %call8 = tail call i32 @gic_configure_irq(i32 noundef %.fr, i32 noundef %type, ptr noundef %add.ptr, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp ne i32 %call8, 0
  %7 = and i1 %cmp2, %tobool.not
  br i1 %7, label %do.end, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %.fr, -16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %sub) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end7.if.end13_crit_edge
  %ret.0 = phi i32 [ 0, %do.end ], [ %call8, %if.end7.if.end13_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @irq_controller_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %switch.early.test.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.early.test.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_ipi_send_mask(ptr nocapture noundef readonly %d, ptr noundef readonly %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @irq_controller_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call117 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %mask) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call117, i32 %0)
  %cmp218 = icmp ult i32 %call117, %0
  br i1 %cmp218, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call120 = phi i32 [ %call1, %for.body.for.body_crit_edge ], [ %call117, %entry.for.body_crit_edge ]
  %map.019 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i16], ptr @hip04_cpu_map, i32 0, i32 %call120
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv4 = zext i16 %2 to i32
  %or = or i32 %map.019, %conv4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call120, ptr noundef %mask) #13
  %cmp2 = icmp ult i32 %call1, %0
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = shl i32 %or, 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %map.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %or5 = or i32 %4, %map.0.lcssa
  %5 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %6 = load ptr, ptr @hip04_data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @irq_controller_lock, i32 noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_configure_irq(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @hip04_get_cpumask() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hip04_data, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 2048
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !49
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr i32 %2, 16
  %or = or i32 %shr, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %for.cond, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond:                                         ; preds = %entry
  %add.ptr1.1 = getelementptr i8, ptr %0, i32 2052
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #8, !srcloc !49
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr.1 = lshr i32 %4, 16
  %or.1 = or i32 %shr.1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.1)
  %tobool.not.1 = icmp eq i32 %or.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.if.end6_crit_edge

for.cond.if.end6_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.1:                                       ; preds = %for.cond
  %add.ptr1.2 = getelementptr i8, ptr %0, i32 2056
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.2) #8, !srcloc !49
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shr.2 = lshr i32 %6, 16
  %or.2 = or i32 %shr.2, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.2)
  %tobool.not.2 = icmp eq i32 %or.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.if.end6_crit_edge

for.cond.1.if.end6_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.2:                                       ; preds = %for.cond.1
  %add.ptr1.3 = getelementptr i8, ptr %0, i32 2060
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.3) #8, !srcloc !49
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shr.3 = lshr i32 %8, 16
  %or.3 = or i32 %shr.3, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.3)
  %tobool.not.3 = icmp eq i32 %or.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.if.end6_crit_edge

for.cond.2.if.end6_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.3:                                       ; preds = %for.cond.2
  %add.ptr1.4 = getelementptr i8, ptr %0, i32 2064
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.4) #8, !srcloc !49
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %shr.4 = lshr i32 %10, 16
  %or.4 = or i32 %shr.4, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.4)
  %tobool.not.4 = icmp eq i32 %or.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.if.end6_crit_edge

for.cond.3.if.end6_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.4:                                       ; preds = %for.cond.3
  %add.ptr1.5 = getelementptr i8, ptr %0, i32 2068
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.5) #8, !srcloc !49
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %shr.5 = lshr i32 %12, 16
  %or.5 = or i32 %shr.5, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.5)
  %tobool.not.5 = icmp eq i32 %or.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.if.end6_crit_edge

for.cond.4.if.end6_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.5:                                       ; preds = %for.cond.4
  %add.ptr1.6 = getelementptr i8, ptr %0, i32 2072
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.6) #8, !srcloc !49
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %shr.6 = lshr i32 %14, 16
  %or.6 = or i32 %shr.6, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.6)
  %tobool.not.6 = icmp eq i32 %or.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.if.end6_crit_edge

for.cond.5.if.end6_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.6:                                       ; preds = %for.cond.5
  %add.ptr1.7 = getelementptr i8, ptr %0, i32 2076
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.7) #8, !srcloc !49
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shr.7 = lshr i32 %16, 16
  %or.7 = or i32 %shr.7, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.7)
  %tobool.not.7 = icmp eq i32 %or.7, 0
  br i1 %tobool.not.7, label %for.cond.7, label %for.cond.6.if.end6_crit_edge

for.cond.6.if.end6_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.7:                                       ; preds = %for.cond.6
  %add.ptr1.8 = getelementptr i8, ptr %0, i32 2080
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.8) #8, !srcloc !49
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shr.8 = lshr i32 %18, 16
  %or.8 = or i32 %shr.8, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.8)
  %tobool.not.8 = icmp eq i32 %or.8, 0
  br i1 %tobool.not.8, label %for.cond.8, label %for.cond.7.if.end6_crit_edge

for.cond.7.if.end6_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.8:                                       ; preds = %for.cond.7
  %add.ptr1.9 = getelementptr i8, ptr %0, i32 2084
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.9) #8, !srcloc !49
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %shr.9 = lshr i32 %20, 16
  %or.9 = or i32 %shr.9, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.9)
  %tobool.not.9 = icmp eq i32 %or.9, 0
  br i1 %tobool.not.9, label %for.cond.9, label %for.cond.8.if.end6_crit_edge

for.cond.8.if.end6_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.9:                                       ; preds = %for.cond.8
  %add.ptr1.10 = getelementptr i8, ptr %0, i32 2088
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.10) #8, !srcloc !49
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %shr.10 = lshr i32 %22, 16
  %or.10 = or i32 %shr.10, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.10)
  %tobool.not.10 = icmp eq i32 %or.10, 0
  br i1 %tobool.not.10, label %for.cond.10, label %for.cond.9.if.end6_crit_edge

for.cond.9.if.end6_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.10:                                      ; preds = %for.cond.9
  %add.ptr1.11 = getelementptr i8, ptr %0, i32 2092
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.11) #8, !srcloc !49
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %shr.11 = lshr i32 %24, 16
  %or.11 = or i32 %shr.11, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.11)
  %tobool.not.11 = icmp eq i32 %or.11, 0
  br i1 %tobool.not.11, label %for.cond.11, label %for.cond.10.if.end6_crit_edge

for.cond.10.if.end6_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.11:                                      ; preds = %for.cond.10
  %add.ptr1.12 = getelementptr i8, ptr %0, i32 2096
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.12) #8, !srcloc !49
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %shr.12 = lshr i32 %26, 16
  %or.12 = or i32 %shr.12, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.12)
  %tobool.not.12 = icmp eq i32 %or.12, 0
  br i1 %tobool.not.12, label %for.cond.12, label %for.cond.11.if.end6_crit_edge

for.cond.11.if.end6_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.12:                                      ; preds = %for.cond.11
  %add.ptr1.13 = getelementptr i8, ptr %0, i32 2100
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.13) #8, !srcloc !49
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %shr.13 = lshr i32 %28, 16
  %or.13 = or i32 %shr.13, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.13)
  %tobool.not.13 = icmp eq i32 %or.13, 0
  br i1 %tobool.not.13, label %for.cond.13, label %for.cond.12.if.end6_crit_edge

for.cond.12.if.end6_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.13:                                      ; preds = %for.cond.12
  %add.ptr1.14 = getelementptr i8, ptr %0, i32 2104
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.14) #8, !srcloc !49
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %shr.14 = lshr i32 %30, 16
  %or.14 = or i32 %shr.14, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.14)
  %tobool.not.14 = icmp eq i32 %or.14, 0
  br i1 %tobool.not.14, label %for.cond.14, label %for.cond.13.if.end6_crit_edge

for.cond.13.if.end6_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.14:                                      ; preds = %for.cond.13
  %add.ptr1.15 = getelementptr i8, ptr %0, i32 2108
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.15) #8, !srcloc !49
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %shr.15 = lshr i32 %32, 16
  %or.15 = or i32 %shr.15, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.15)
  %tobool.not.15 = icmp eq i32 %or.15, 0
  br i1 %tobool.not.15, label %for.cond.15, label %for.cond.14.if.end6_crit_edge

for.cond.14.if.end6_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.15:                                      ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %if.end6

if.end6:                                          ; preds = %for.cond.15, %for.cond.14.if.end6_crit_edge, %for.cond.13.if.end6_crit_edge, %for.cond.12.if.end6_crit_edge, %for.cond.11.if.end6_crit_edge, %for.cond.10.if.end6_crit_edge, %for.cond.9.if.end6_crit_edge, %for.cond.8.if.end6_crit_edge, %for.cond.7.if.end6_crit_edge, %for.cond.6.if.end6_crit_edge, %for.cond.5.if.end6_crit_edge, %for.cond.4.if.end6_crit_edge, %for.cond.3.if.end6_crit_edge, %for.cond.2.if.end6_crit_edge, %for.cond.1.if.end6_crit_edge, %for.cond.if.end6_crit_edge, %entry.if.end6_crit_edge
  %mask.13 = phi i32 [ 0, %for.cond.15 ], [ %or, %entry.if.end6_crit_edge ], [ %or.1, %for.cond.if.end6_crit_edge ], [ %or.2, %for.cond.1.if.end6_crit_edge ], [ %or.3, %for.cond.2.if.end6_crit_edge ], [ %or.4, %for.cond.3.if.end6_crit_edge ], [ %or.5, %for.cond.4.if.end6_crit_edge ], [ %or.6, %for.cond.5.if.end6_crit_edge ], [ %or.7, %for.cond.6.if.end6_crit_edge ], [ %or.8, %for.cond.7.if.end6_crit_edge ], [ %or.9, %for.cond.8.if.end6_crit_edge ], [ %or.10, %for.cond.9.if.end6_crit_edge ], [ %or.11, %for.cond.10.if.end6_crit_edge ], [ %or.12, %for.cond.11.if.end6_crit_edge ], [ %or.13, %for.cond.12.if.end6_crit_edge ], [ %or.14, %for.cond.13.if.end6_crit_edge ], [ %or.15, %for.cond.14.if.end6_crit_edge ]
  %conv = trunc i32 %mask.13 to i16
  ret i16 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_cpu_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__of_table_hip04_intc, !1, !"__of_table_hip04_intc", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-hip04.c", i32 406, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-hip04.c", i32 357, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-hip04.c", i32 361, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-hip04.c", i32 364, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-hip04.c", i32 385, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hip04_of_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hip04_of_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-hip04.c", i32 402, i32 49}
!15 = !{ptr @hip04_data, !16, !"hip04_data", i1 false, i1 false}
!16 = !{!"../drivers/irqchip/irq-hip04.c", i32 69, i32 30}
!17 = !{ptr @hip04_cpu_map, !18, !"hip04_cpu_map", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/irq-hip04.c", i32 67, i32 12}
!19 = !{ptr @hip04_irq_domain_ops, !20, !"hip04_irq_domain_ops", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-hip04.c", i32 347, i32 36}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-hip04.c", i32 214, i32 12}
!23 = !{ptr @hip04_irq_chip, !24, !"hip04_irq_chip", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-hip04.c", i32 213, i32 24}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-hip04.c", i32 59, i32 8}
!27 = !{ptr @irq_controller_lock, !26, !"irq_controller_lock", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-hip04.c", i32 136, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hip04_irq_set_type._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @hip04_irq_set_type._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-hip04.c", i32 241, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hip04_get_cpumask._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @hip04_get_cpumask._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 4817649}
!50 = !{i64 4817231}
!51 = !{i64 2153673426, i64 2153673918, i64 2153673463, i64 2153673519, i64 2153673553, i64 2153673577, i64 2153673618, i64 2153673639, i64 2153673667, i64 2153673701}
!52 = !{i64 2153669355}
