; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-gic-v3-its-pci-msi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v3-its-pci-msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.77] }
%union.anon.77 = type { i32 }

@__initcall__kmod_irq_gic_v3_its_pci_msi__246_202_its_pci_msi_initearly = internal global ptr @its_pci_msi_init, section ".initcallearly.init", align 4
@its_device_id = internal global { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3-its\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msi-controller\00", [17 x i8] zeroinitializer }, align 32
@its_pci_of_msi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016PCI/MSI: %pOF domain created\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"its_pci_of_msi_init\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/irqchip/irq-gic-v3-its-pci-msi.c\00", [55 x i8] zeroinitializer }, align 32
@its_pci_of_msi_init._entry_ptr = internal global ptr @its_pci_of_msi_init._entry, section ".printk_index", align 4
@its_pci_msi_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Unable to locate ITS domain\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"its_pci_msi_init_one\00", [43 x i8] zeroinitializer }, align 32
@its_pci_msi_init_one._entry_ptr = internal global ptr @its_pci_msi_init_one._entry, section ".printk_index", align 4
@its_pci_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 15, ptr @its_pci_msi_ops, ptr @its_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@its_pci_msi_init_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Unable to create PCI domain\0A\00", [61 x i8] zeroinitializer }, align 32
@its_pci_msi_init_one._entry_ptr.8 = internal global ptr @its_pci_msi_init_one._entry.6, section ".printk_index", align 4
@its_pci_msi_ops = internal global { %struct.msi_domain_ops, [32 x i8] } { %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @its_pci_msi_prepare, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@its_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @its_mask_msi_irq, ptr null, ptr @its_unmask_msi_irq, ptr @irq_chip_eoi_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ITS-MSI\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"its_device_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 108, i32 28 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 141, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 147, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 120, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"its_pci_msi_domain_info\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 101, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 126, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"its_pci_msi_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 97, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"its_msi_irq_chip\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 26, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [44 x i8] c"../drivers/irqchip/irq-gic-v3-its-pci-msi.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 27, i32 12 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_irq_gic_v3_its_pci_msi__246_202_its_pci_msi_initearly, ptr @its_pci_msi_init_one._entry, ptr @its_pci_msi_init_one._entry.6, ptr @its_pci_msi_init_one._entry_ptr, ptr @its_pci_msi_init_one._entry_ptr.8, ptr @its_pci_of_msi_init._entry, ptr @its_pci_of_msi_init._entry_ptr, ptr @its_device_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @its_pci_msi_domain_info, ptr @.str.7, ptr @its_pci_msi_ops, ptr @its_msi_irq_chip, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_pci_of_msi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_pci_msi_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_pci_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_pci_msi_init_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_pci_msi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @its_pci_msi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @its_pci_of_msi_init() #10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @its_pci_of_msi_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @its_device_id, ptr noundef null) #7
  %tobool.not3 = icmp eq ptr %call.i, null
  br i1 %tobool.not3, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.04 = phi ptr [ %call.i2, %for.inc.for.body_crit_edge ], [ %call.i, %entry.for.body_crit_edge ]
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %np.04) #7
  br i1 %call1, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i1 = tail call ptr @of_find_property(ptr noundef nonnull %np.04, ptr noundef nonnull @.str, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i1, null
  br i1 %tobool.i.not, label %if.end.for.inc_crit_edge, label %if.end4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %np.04, i32 0, i32 3
  %full_name = getelementptr inbounds %struct.device_node, ptr %np.04, i32 0, i32 2
  %0 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name, align 4
  %call6 = tail call fastcc i32 @its_pci_msi_init_one(ptr noundef %fwnode.i, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %np.04) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end4.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call.i2 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.04, ptr noundef nonnull @its_device_id, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i2, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @its_pci_msi_init_one(ptr noundef %handle, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %fwspec.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i) #7
  %0 = getelementptr inbounds i8, ptr %fwspec.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %handle, ptr %fwspec.i, align 4
  %call.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i, i32 noundef 5) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %call1 = call ptr @msi_get_domain_info(ptr noundef nonnull %call.i) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call ptr @pci_msi_create_irq_domain(ptr noundef %handle, ptr noundef nonnull @its_pci_msi_domain_info, ptr noundef nonnull %call.i) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.4, %entry.cleanup.sink.split_crit_edge ], [ @.str.4, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ @.str.7, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -6, %entry.cleanup.sink.split_crit_edge ], [ -6, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_get_domain_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @its_pci_msi_prepare(ptr noundef %domain, ptr noundef %dev, i32 noundef %nvec, ptr noundef %info) #4 align 64 {
entry:
  %alias_dev = alloca ptr, align 4
  %alias_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alias_dev) #7
  %0 = ptrtoint ptr %alias_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %alias_dev, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alias_count) #7
  %1 = ptrtoint ptr %alias_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %alias_count, align 4
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %3, @pci_bus_type
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call = tail call ptr @msi_get_domain_info(ptr noundef %5) #7
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call1 = call i32 @pci_for_each_dma_alias(ptr noundef %add.ptr, ptr noundef nonnull @its_get_pci_alias, ptr noundef nonnull %alias_dev) #7
  %6 = ptrtoint ptr %alias_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alias_dev, align 4
  %cmp2.not = icmp eq ptr %7, %add.ptr
  br i1 %cmp2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then3.if.end6_crit_edge, label %if.then4

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void @pci_walk_bus(ptr noundef nonnull %9, ptr noundef nonnull @its_pci_msi_vec_count, ptr noundef nonnull %alias_count) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then3.if.end6_crit_edge
  %flags = getelementptr inbounds %struct.msi_alloc_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  %call8 = call i32 @pci_msi_domain_get_msi_rid(ptr noundef %domain, ptr noundef %add.ptr) #7
  %scratchpad = getelementptr inbounds %struct.msi_alloc_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %scratchpad to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call8, ptr %scratchpad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool13.not = icmp eq i32 %call8, 0
  %minnvec.0 = select i1 %tobool13.not, i32 32, i32 1
  %13 = ptrtoint ptr %alias_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alias_count, align 4
  %15 = call i32 @llvm.smax.i32(i32 %14, i32 %nvec)
  %sub.i76 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i76)
  %tobool.not.i.i.i = icmp eq i32 %sub.i76, 0
  %16 = call i32 @llvm.ctlz.i32(i32 %sub.i76, i1 true) #7, !range !39
  %sub.i.i.i = sub nuw nsw i32 32, %16
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %17 = call i32 @llvm.smax.i32(i32 %minnvec.0, i32 %shl.i)
  %ops = getelementptr inbounds %struct.msi_domain_info, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %msi_prepare = getelementptr inbounds %struct.msi_domain_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %msi_prepare to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msi_prepare, align 4
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 4
  %call48 = call i32 %21(ptr noundef %23, ptr noundef %dev, i32 noundef %17, ptr noundef %info) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alias_count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alias_dev) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_for_each_dma_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @its_get_pci_alias(ptr noundef %pdev, i16 noundef zeroext %alias, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @its_pci_msi_vec_count(ptr noundef %pdev, ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_msi_vec_count(ptr noundef %pdev) #7
  %0 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  %call1 = tail call i32 @pci_msix_vec_count(ptr noundef %pdev) #7
  %1 = tail call i32 @llvm.smax.i32(i32 %call1, i32 0)
  %2 = tail call i32 @llvm.umax.i32(i32 %0, i32 %1)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %add = add i32 %2, %4
  store i32 %add, ptr %data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_domain_get_msi_rid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_vec_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msix_vec_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @its_mask_msi_irq(ptr noundef %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_mask_irq(ptr noundef %d) #7
  tail call void @irq_chip_mask_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @its_unmask_msi_irq(ptr noundef %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_unmask_irq(ptr noundef %d) #7
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_irq_gic_v3_its_pci_msi__246_202_its_pci_msi_initearly, !1, !"__initcall__kmod_irq_gic_v3_its_pci_msi__246_202_its_pci_msi_initearly", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 202, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 141, i32 34}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 147, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @its_pci_of_msi_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @its_pci_of_msi_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @its_device_id, !11, !"its_device_id", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 108, i32 28}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 120, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @its_pci_msi_init_one._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @its_pci_msi_init_one._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 126, i32 3}
!19 = !{ptr @its_pci_msi_init_one._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @its_pci_msi_init_one._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @its_pci_msi_domain_info, !22, !"its_pci_msi_domain_info", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 101, i32 31}
!23 = !{ptr @its_pci_msi_ops, !24, !"its_pci_msi_ops", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 97, i32 30}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 27, i32 12}
!27 = !{ptr @its_msi_irq_chip, !28, !"its_msi_irq_chip", i1 false, i1 false}
!28 = !{!"../drivers/irqchip/irq-gic-v3-its-pci-msi.c", i32 26, i32 24}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i32 0, i32 33}
