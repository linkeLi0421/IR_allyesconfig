; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-ls-extirq.c_pt.bc'
source_filename = "../drivers/irqchip/irq-ls-extirq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ls_extirq_data = type { ptr, i32, i8, i32, [12 x %struct.irq_fwspec] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_ls1021a_extirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-extirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls_extirq_of_init }, section "__irqchip_of_table", align 4
@__of_table_ls1043a_extirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-extirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls_extirq_of_init }, section "__irqchip_of_table", align 4
@__of_table_ls1088a_extirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1088a-extirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls_extirq_of_init }, section "__irqchip_of_table", align 4
@ls_extirq_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013irq-ls-extirq: Cannot find parent domain\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ls_extirq_of_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/irqchip/irq-ls-extirq.c\00", [32 x i8] zeroinitializer }, align 32
@ls_extirq_of_init._entry_ptr = internal global ptr @ls_extirq_of_init._entry, section ".printk_index", align 4
@ls_extirq_of_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013irq-ls-extirq: Failed to lookup parent regmap\0A\00", [47 x i8] zeroinitializer }, align 32
@ls_extirq_of_init._entry_ptr.5 = internal global ptr @ls_extirq_of_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ls_extirq_of_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013irq-ls-extirq: Missing INTPCR offset value\0A\00", [50 x i8] zeroinitializer }, align 32
@ls_extirq_of_init._entry_ptr.9 = internal global ptr @ls_extirq_of_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,ls1021a-extirq\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,ls1043a-extirq\00", [45 x i8] zeroinitializer }, align 32
@extirq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @irq_domain_xlate_twocell, ptr @ls_extirq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"interrupt-map\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#interrupt-cells\00", [47 x i8] zeroinitializer }, align 32
@ls_extirq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @ls_extirq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 17 }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ls-extirq\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 153, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 164, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 167, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 169, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 177, i32 62 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 178, i32 41 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"extirq_domain_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 91, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 104, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 128, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"ls_extirq_chip\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 59, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [35 x i8] c"../drivers/irqchip/irq-ls-extirq.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 60, i32 12 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__of_table_ls1021a_extirq, ptr @__of_table_ls1043a_extirq, ptr @__of_table_ls1088a_extirq, ptr @ls_extirq_of_init._entry, ptr @ls_extirq_of_init._entry.3, ptr @ls_extirq_of_init._entry.7, ptr @ls_extirq_of_init._entry_ptr, ptr @ls_extirq_of_init._entry_ptr.5, ptr @ls_extirq_of_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @extirq_domain_ops, ptr @.str.12, ptr @.str.13, ptr @ls_extirq_chip, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_extirq_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_extirq_of_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_extirq_of_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extirq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_extirq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_extirq_of_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  %mapsize.i = alloca i32, align 4
  %intsize.i = alloca i32, align 4
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i.i = icmp eq ptr %parent, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

irq_find_host.exit:                               ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %tobool.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool.not, label %do.end, label %irq_find_host.exit.if.end_crit_edge

irq_find_host.exit.if.end_crit_edge:              ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %irq_find_host.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %d.0.i69 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end_crit_edge ], [ %call.i.i.i, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 880) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %parent6 = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 6
  %7 = ptrtoint ptr %parent6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent6, align 4
  %call7 = call ptr @syscon_node_to_regmap(ptr noundef %8) #7
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out, label %if.end18

if.end18:                                         ; preds = %if.end5
  %intpcr = getelementptr inbounds %struct.ls_extirq_data, ptr %call7.i.i, i32 0, i32 1
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef %intpcr, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool20.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %if.then41

if.end27:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapsize.i) #7
  %10 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %mapsize.i, align 4, !annotation !45
  %call.i = call ptr @of_get_property(ptr noundef %node, ptr noundef nonnull @.str.12, ptr noundef nonnull %mapsize.i) #7
  %tobool.not.i64 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i64, label %if.end27.ls_extirq_parse_map.exit.thread_crit_edge, label %if.end.i

if.end27.ls_extirq_parse_map.exit.thread_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %ls_extirq_parse_map.exit.thread

if.end.i:                                         ; preds = %if.end27
  %11 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mapsize.i, align 4
  %rem.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.ls_extirq_parse_map.exit.thread_crit_edge

if.end.i.ls_extirq_parse_map.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ls_extirq_parse_map.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %div64.i = lshr i32 %12, 2
  %13 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div64.i, ptr %mapsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %tobool4.not79.i = icmp ult i32 %12, 4
  br i1 %tobool4.not79.i, label %if.end3.i.if.end31_crit_edge, label %while.body.lr.ph.i

if.end3.i.if.end31_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

while.body.lr.ph.i:                               ; preds = %if.end3.i
  %nirq.i = getelementptr inbounds %struct.ls_extirq_data, ptr %call7.i.i, i32 0, i32 3
  br label %while.body.i

while.condthread-pre-split.i:                     ; preds = %for.body.i.while.condthread-pre-split.i_crit_edge, %if.end27.i.while.condthread-pre-split.i_crit_edge
  %map.1.lcssa.i = phi ptr [ %add.ptr15.i, %if.end27.i.while.condthread-pre-split.i_crit_edge ], [ %incdec.ptr.i, %for.body.i.while.condthread-pre-split.i_crit_edge ]
  %sub35.i = sub i32 %31, %29
  %14 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub35.i, ptr %mapsize.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intsize.i) #7
  %tobool4.not.i = icmp eq i32 %sub35.i, 0
  br i1 %tobool4.not.i, label %while.condthread-pre-split.i.if.end31_crit_edge, label %while.condthread-pre-split.i.while.body.i_crit_edge

while.condthread-pre-split.i.while.body.i_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.condthread-pre-split.i.if.end31_crit_edge:  ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

while.body.i:                                     ; preds = %while.condthread-pre-split.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %map.080.i = phi ptr [ %call.i, %while.body.lr.ph.i ], [ %map.1.lcssa.i, %while.condthread-pre-split.i.while.body.i_crit_edge ]
  %15 = phi i32 [ %div64.i, %while.body.lr.ph.i ], [ %sub35.i, %while.condthread-pre-split.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intsize.i) #7
  %16 = ptrtoint ptr %intsize.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %intsize.i, align 4, !annotation !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i65 = icmp ult i32 %15, 3
  br i1 %cmp.i65, label %while.body.i.cleanup.thread.i_crit_edge, label %if.end6.i

while.body.i.cleanup.thread.i_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end6.i:                                        ; preds = %while.body.i
  %17 = ptrtoint ptr %map.080.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %map.080.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %18)
  %cmp8.i = icmp ugt i32 %18, 11
  br i1 %cmp8.i, label %if.end6.i.cleanup.thread.i_crit_edge, label %if.end10.i

if.end6.i.cleanup.thread.i_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end10.i:                                       ; preds = %if.end6.i
  %19 = ptrtoint ptr %nirq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nirq.i, align 4
  %add.i = add nuw nsw i32 %18, 1
  %21 = call i32 @llvm.umax.i32(i32 %20, i32 %add.i) #7
  %22 = ptrtoint ptr %nirq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nirq.i, align 4
  %add.ptr.i = getelementptr i32, ptr %map.080.i, i32 2
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %call14.i = call ptr @of_find_node_by_phandle(i32 noundef %24) #7
  %add.ptr15.i = getelementptr i32, ptr %map.080.i, i32 3
  %25 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mapsize.i, align 4
  %sub.i = add i32 %26, -3
  store i32 %sub.i, ptr %mapsize.i, align 4
  %tobool16.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool16.not.i, label %if.end10.i.cleanup.thread.i_crit_edge, label %if.end18.i

if.end10.i.cleanup.thread.i_crit_edge:            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end18.i:                                       ; preds = %if.end10.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call14.i, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.ls_extirq_data, ptr %call7.i.i, i32 0, i32 4, i32 %18
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fwnode.i, ptr %arrayidx.i, align 8
  %call.i.i.i66 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call14.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %intsize.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i66)
  %tobool22.not.i = icmp sgt i32 %call.i.i.i66, -1
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end18.i.cleanup.thread.i_crit_edge

if.end18.i.cleanup.thread.i_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end24.i:                                       ; preds = %if.end18.i
  %28 = ptrtoint ptr %intsize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %intsize.i, align 4
  %30 = ptrtoint ptr %mapsize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mapsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp25.i = icmp ult i32 %31, %29
  br i1 %cmp25.i, label %if.end24.i.cleanup.thread.i_crit_edge, label %if.end27.i

if.end24.i.cleanup.thread.i_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end27.i:                                       ; preds = %if.end24.i
  %param_count.i = getelementptr %struct.ls_extirq_data, ptr %call7.i.i, i32 0, i32 4, i32 %18, i32 1
  %32 = ptrtoint ptr %param_count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3068.not.i = icmp eq i32 %29, 0
  br i1 %cmp3068.not.i, label %if.end27.i.while.condthread-pre-split.i_crit_edge, label %if.end27.i.for.body.i_crit_edge

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  br label %for.body.i

if.end27.i.while.condthread-pre-split.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.condthread-pre-split.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end27.i.for.body.i_crit_edge
  %j.070.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end27.i.for.body.i_crit_edge ]
  %map.169.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr15.i, %if.end27.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %map.169.i, i32 1
  %33 = ptrtoint ptr %map.169.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %map.169.i, align 4
  %arrayidx34.i = getelementptr %struct.ls_extirq_data, ptr %call7.i.i, i32 0, i32 4, i32 %18, i32 2, i32 %j.070.i
  %35 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx34.i, align 4
  %inc.i = add nuw i32 %j.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.body.i.while.condthread-pre-split.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.while.condthread-pre-split.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.condthread-pre-split.i

cleanup.thread.i:                                 ; preds = %if.end24.i.cleanup.thread.i_crit_edge, %if.end18.i.cleanup.thread.i_crit_edge, %if.end10.i.cleanup.thread.i_crit_edge, %if.end6.i.cleanup.thread.i_crit_edge, %while.body.i.cleanup.thread.i_crit_edge
  %retval.1.ph.i = phi i32 [ %call.i.i.i66, %if.end18.i.cleanup.thread.i_crit_edge ], [ -22, %while.body.i.cleanup.thread.i_crit_edge ], [ -22, %if.end6.i.cleanup.thread.i_crit_edge ], [ -22, %if.end10.i.cleanup.thread.i_crit_edge ], [ -22, %if.end24.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intsize.i) #7
  br label %ls_extirq_parse_map.exit.thread

ls_extirq_parse_map.exit.thread:                  ; preds = %cleanup.thread.i, %if.end.i.ls_extirq_parse_map.exit.thread_crit_edge, %if.end27.ls_extirq_parse_map.exit.thread_crit_edge
  %retval.2.i.ph = phi i32 [ %retval.1.ph.i, %cleanup.thread.i ], [ -22, %if.end.i.ls_extirq_parse_map.exit.thread_crit_edge ], [ -2, %if.end27.ls_extirq_parse_map.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapsize.i) #7
  br label %if.then41

if.end31:                                         ; preds = %while.condthread-pre-split.i.if.end31_crit_edge, %if.end3.i.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapsize.i) #7
  %call32 = call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.rhs, label %if.end31.lor.end_crit_edge

if.end31.lor.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35 = icmp ne i32 %call34, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end31.lor.end_crit_edge
  %36 = phi i1 [ true, %if.end31.lor.end_crit_edge ], [ %tobool35, %lor.rhs ]
  %is_ls1021a_or_ls1043a = getelementptr inbounds %struct.ls_extirq_data, ptr %call7.i.i, i32 0, i32 2
  %frombool = zext i1 %36 to i8
  %37 = ptrtoint ptr %is_ls1021a_or_ls1043a to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool, ptr %is_ls1021a_or_ls1043a, align 8
  %nirq = getelementptr inbounds %struct.ls_extirq_data, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %nirq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nirq, align 4
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef %d.0.i69, i32 noundef 0, i32 noundef %39, ptr noundef %spec.select.i.i, ptr noundef nonnull @extirq_domain_ops, ptr noundef nonnull %call7.i.i) #7
  %tobool37.not = icmp eq ptr %call1.i, null
  br i1 %tobool37.not, label %lor.end.if.then41_crit_edge, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.end.if.then41_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

out:                                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call7 to i32
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %if.then41

if.then41:                                        ; preds = %out, %lor.end.if.then41_crit_edge, %ls_extirq_parse_map.exit.thread, %do.end24
  %ret.074 = phi i32 [ %40, %out ], [ %retval.2.i.ph, %ls_extirq_parse_map.exit.thread ], [ %call.i.i, %do.end24 ], [ -12, %lor.end.if.then41_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %lor.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.074, %if.then41 ], [ 0, %lor.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_extirq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  %nirq = getelementptr inbounds %struct.ls_extirq_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %nirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nirq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not = icmp ult i32 %5, %7
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %5, ptr noundef nonnull @ls_extirq_chip, ptr noundef %1) #7
  %arrayidx4 = getelementptr %struct.ls_extirq_data, ptr %1, i32 0, i32 4, i32 %5
  %call5 = tail call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef 1, ptr noundef %arrayidx4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_extirq_set_type(ptr noundef %data, i32 noundef %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq1, align 4
  %is_ls1021a_or_ls1043a = getelementptr inbounds %struct.ls_extirq_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %is_ls1021a_or_ls1043a to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_ls1021a_or_ls1043a, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %sub = sub i32 31, %3
  %sub.pn = select i1 %tobool.not, i32 %3, i32 %sub
  %mask.0 = shl nuw i32 1, %sub.pn
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb3
    i32 4, label %entry.sw.bb4_crit_edge
    i32 1, label %entry.sw.bb4_crit_edge17
  ]

entry.sw.bb4_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %type.addr.0 = phi i32 [ %type, %sw.bb4 ], [ 1, %sw.bb3 ], [ 4, %entry.sw.epilog_crit_edge ]
  %value.0 = phi i32 [ 0, %sw.bb4 ], [ %mask.0, %sw.bb3 ], [ %mask.0, %entry.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %intpcr = getelementptr inbounds %struct.ls_extirq_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %intpcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %intpcr, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef %mask.0, i32 noundef %value.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call5 = tail call i32 @irq_chip_set_type_parent(ptr noundef %data, i32 noundef %type.addr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__of_table_ls1021a_extirq, !1, !"__of_table_ls1021a_extirq", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 191, i32 1}
!2 = !{ptr @__of_table_ls1043a_extirq, !3, !"__of_table_ls1043a_extirq", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 192, i32 1}
!4 = !{ptr @__of_table_ls1088a_extirq, !5, !"__of_table_ls1088a_extirq", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 193, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 153, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ls_extirq_of_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ls_extirq_of_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 164, i32 3}
!14 = !{ptr @ls_extirq_of_init._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ls_extirq_of_init._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 167, i32 35}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 169, i32 3}
!20 = !{ptr @ls_extirq_of_init._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ls_extirq_of_init._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 177, i32 62}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 178, i32 41}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 104, i32 30}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 128, i32 36}
!30 = !{ptr @extirq_domain_ops, !31, !"extirq_domain_ops", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 91, i32 36}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 60, i32 12}
!34 = !{ptr @ls_extirq_chip, !35, !"ls_extirq_chip", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-ls-extirq.c", i32 59, i32 24}
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
!46 = !{i8 0, i8 2}
