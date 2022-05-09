; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c"
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
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.49] }
%union.anon.49 = type { i32 }

@__initcall__kmod_irq_gic_v3_its_fsl_mc_msi__189_170_its_fsl_mc_msi_initearly = internal global ptr @its_fsl_mc_msi_init, section ".initcallearly.init", align 4
@its_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3-its\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msi-controller\00", [17 x i8] zeroinitializer }, align 32
@its_fsl_mc_msi_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: unable to locate ITS domain\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"its_fsl_mc_msi_init_one\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c\00", [52 x i8] zeroinitializer }, align 32
@its_fsl_mc_msi_init_one._entry_ptr = internal global ptr @its_fsl_mc_msi_init_one._entry, section ".printk_index", align 4
@its_fsl_mc_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 3, ptr @its_fsl_mc_msi_ops, ptr @its_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@its_fsl_mc_msi_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: unable to create fsl-mc domain\0A\00", [58 x i8] zeroinitializer }, align 32
@its_fsl_mc_msi_init_one._entry_ptr.6 = internal global ptr @its_fsl_mc_msi_init_one._entry.4, section ".printk_index", align 4
@its_fsl_mc_msi_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016fsl-mc MSI: %s domain created\0A\00", [63 x i8] zeroinitializer }, align 32
@its_fsl_mc_msi_init_one._entry_ptr.9 = internal global ptr @its_fsl_mc_msi_init_one._entry.7, section ".printk_index", align 4
@its_fsl_mc_msi_ops = internal global %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @its_fsl_mc_msi_prepare, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@its_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @msi_domain_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@fsl_mc_bus_type = external dso_local global %struct.bus_type, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ITS-fMSI\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"its_device_id\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 80, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 154, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 93, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"its_fsl_mc_msi_domain_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 74, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 101, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 105, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"its_msi_irq_chip\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 20, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [47 x i8] c"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 21, i32 10 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__initcall__kmod_irq_gic_v3_its_fsl_mc_msi__189_170_its_fsl_mc_msi_initearly, ptr @its_fsl_mc_msi_init_one._entry, ptr @its_fsl_mc_msi_init_one._entry.4, ptr @its_fsl_mc_msi_init_one._entry.7, ptr @its_fsl_mc_msi_init_one._entry_ptr, ptr @its_fsl_mc_msi_init_one._entry_ptr.6, ptr @its_fsl_mc_msi_init_one._entry_ptr.9, ptr @its_device_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @its_fsl_mc_msi_domain_info, ptr @.str.5, ptr @.str.8, ptr @its_msi_irq_chip, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_fsl_mc_msi_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_fsl_mc_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_fsl_mc_msi_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_fsl_mc_msi_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @its_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @its_fsl_mc_msi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @its_fsl_mc_of_msi_init() #9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @its_fsl_mc_of_msi_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @its_device_id, ptr noundef null) #6
  %tobool.not14 = icmp eq ptr %call.i, null
  br i1 %tobool.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.015 = phi ptr [ %call.i13, %for.inc.for.body_crit_edge ], [ %call.i, %entry.for.body_crit_edge ]
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %np.015) #6
  br i1 %call1, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i12 = tail call ptr @of_find_property(ptr noundef nonnull %np.015, ptr noundef nonnull @.str, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i12, null
  br i1 %tobool.i.not, label %if.end.for.inc_crit_edge, label %if.end4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %np.015, i32 0, i32 3
  %full_name = getelementptr inbounds %struct.device_node, ptr %np.015, i32 0, i32 2
  %0 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name, align 4
  tail call fastcc void @its_fsl_mc_msi_init_one(ptr noundef %fwnode.i, ptr noundef %1) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call.i13 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.015, ptr noundef nonnull @its_device_id, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call.i13, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @its_fsl_mc_msi_init_one(ptr noundef %handle, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %fwspec.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i) #6
  %0 = getelementptr inbounds i8, ptr %fwspec.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %handle, ptr %fwspec.i, align 4
  %call.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call ptr @msi_get_domain_info(ptr noundef nonnull %call.i) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = call ptr @fsl_mc_msi_create_irq_domain(ptr noundef %handle, ptr noundef nonnull @its_fsl_mc_msi_domain_info, ptr noundef nonnull %call.i) #6
  %tobool5.not = icmp eq ptr %call4, null
  %.str.5..str.8 = select i1 %tobool5.not, ptr @.str.5, ptr @.str.8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.str.8.sink = phi ptr [ @.str.1, %entry.cleanup_crit_edge ], [ @.str.1, %lor.lhs.false.cleanup_crit_edge ], [ %.str.5..str.8, %if.end ]
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink, ptr noundef %name) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_get_domain_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_mc_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @its_fsl_mc_msi_prepare(ptr nocapture noundef readonly %msi_domain, ptr noundef %dev, i32 noundef %nvec, ptr noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %1, @fsl_mc_bus_type
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fsl_mc_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 8
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %fwnode.i.i = getelementptr inbounds %struct.irq_domain, ptr %msi_domain, i32 0, i32 6
  %5 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwnode.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %6, null
  %cmp.i.i.i.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end2.cond.false.i_crit_edge, label %is_of_node.exit.i.i

if.end2.cond.false.i_crit_edge:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

is_of_node.exit.i.i:                              ; preds = %if.end2
  %ops.i.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i.i, align 4
  %cmp.i.i.i = icmp ne ptr %8, @of_fwnode_ops
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -12
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %is_of_node.exit.i.i.cond.false.i_crit_edge, label %cond.true.i

is_of_node.exit.i.i.cond.false.i_crit_edge:       ; preds = %is_of_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

cond.true.i:                                      ; preds = %is_of_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %icid.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %icid.i, align 4
  %call1.i = tail call i32 @of_msi_map_id(ptr noundef %dev, ptr noundef nonnull %add.ptr.i.i, i32 noundef %10) #6
  br label %fsl_mc_msi_domain_get_msi_id.exit

cond.false.i:                                     ; preds = %is_of_node.exit.i.i.cond.false.i_crit_edge, %if.end2.cond.false.i_crit_edge
  %icid3.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %icid3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %icid3.i, align 4
  br label %fsl_mc_msi_domain_get_msi_id.exit

fsl_mc_msi_domain_get_msi_id.exit:                ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call1.i, %cond.true.i ], [ %12, %cond.false.i ]
  %scratchpad = getelementptr inbounds %struct.msi_alloc_info, ptr %info, i32 0, i32 3
  %13 = ptrtoint ptr %scratchpad to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %scratchpad, align 4
  %parent = getelementptr inbounds %struct.irq_domain, ptr %msi_domain, i32 0, i32 9
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 4
  %call3 = tail call ptr @msi_get_domain_info(ptr noundef %15) #6
  %sub.i52 = add i32 %nvec, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i52)
  %tobool.not.i.i.i = icmp eq i32 %sub.i52, 0
  br i1 %tobool.not.i.i.i, label %fsl_mc_msi_domain_get_msi_id.exit.cond.end25.thread_crit_edge, label %cond.end25

fsl_mc_msi_domain_get_msi_id.exit.cond.end25.thread_crit_edge: ; preds = %fsl_mc_msi_domain_get_msi_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end25.thread

cond.end25:                                       ; preds = %fsl_mc_msi_domain_get_msi_id.exit
  %16 = tail call i32 @llvm.ctlz.i32(i32 %sub.i52, i1 true) #6, !range !37
  %sub.i.i.i = sub nuw nsw i32 32, %16
  %cond26 = shl nuw i32 1, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond26)
  %cmp28 = icmp slt i32 %cond26, 32
  br i1 %cmp28, label %cond.end25.cond.end25.thread_crit_edge, label %cond.end25._crit_edge

cond.end25._crit_edge:                            ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %17

cond.end25.cond.end25.thread_crit_edge:           ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end25.thread

cond.end25.thread:                                ; preds = %cond.end25.cond.end25.thread_crit_edge, %fsl_mc_msi_domain_get_msi_id.exit.cond.end25.thread_crit_edge
  br label %17

17:                                               ; preds = %cond.end25.thread, %cond.end25._crit_edge
  %18 = phi i32 [ 32, %cond.end25.thread ], [ %cond26, %cond.end25._crit_edge ]
  %ops = getelementptr inbounds %struct.msi_domain_info, ptr %call3, i32 0, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %msi_prepare = getelementptr inbounds %struct.msi_domain_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %msi_prepare to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msi_prepare, align 4
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 4
  %call35 = tail call i32 %22(ptr noundef %24, ptr noundef %dev, i32 noundef %18, ptr noundef %info) #6
  br label %cleanup

cleanup:                                          ; preds = %17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %17 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_msi_map_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_set_affinity(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_irq_gic_v3_its_fsl_mc_msi__189_170_its_fsl_mc_msi_initearly, !1, !"__initcall__kmod_irq_gic_v3_its_fsl_mc_msi__189_170_its_fsl_mc_msi_initearly", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 170, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 154, i32 34}
!4 = !{ptr @its_device_id, !5, !"its_device_id", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 80, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 93, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @its_fsl_mc_msi_init_one._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @its_fsl_mc_msi_init_one._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 101, i32 3}
!14 = !{ptr @its_fsl_mc_msi_init_one._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @its_fsl_mc_msi_init_one._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 105, i32 2}
!18 = !{ptr @its_fsl_mc_msi_init_one._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @its_fsl_mc_msi_init_one._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @its_fsl_mc_msi_domain_info, !21, !"its_fsl_mc_msi_domain_info", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 74, i32 31}
!22 = !{ptr @its_fsl_mc_msi_ops, !23, !"its_fsl_mc_msi_ops", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 70, i32 30}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 21, i32 10}
!26 = !{ptr @its_msi_irq_chip, !27, !"its_msi_irq_chip", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c", i32 20, i32 24}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i32 0, i32 33}
