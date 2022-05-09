; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-mst-intc.c_pt.bc'
source_filename = "../drivers/irqchip/irq-mst-intc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mst_intc_chip_data = type { %struct.raw_spinlock, i32, i32, ptr, i8, %struct.list_head, [4 x i16] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_irq_mst_intc__187_173_mst_irq_pm_init7 = internal global ptr @mst_irq_pm_init, section ".initcall7.init", align 4
@__of_table_mst_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mstar,mst-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mst_intc_of_init }, section "__irqchip_of_table", align 4
@mst_irq_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mst_irq_suspend, ptr @mst_irq_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@mst_intc_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mst_intc_list, ptr @mst_intc_list }, [24 x i8] zeroinitializer }, align 32
@mst_intc_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013mst-intc: interrupt-parent not found\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mst_intc_of_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/irqchip/irq-mst-intc.c\00", [33 x i8] zeroinitializer }, align 32
@mst_intc_of_init._entry_ptr = internal global ptr @mst_intc_of_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mstar,irqs-map-range\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mstar,intc-no-eoi\00", [46 x i8] zeroinitializer }, align 32
@mst_intc_of_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cd->lock\00", [22 x i8] zeroinitializer }, align 32
@mst_intc_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mst_intc_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @mst_intc_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mst_intc_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mst_intc_mask_irq, ptr null, ptr @mst_intc_unmask_irq, ptr @mst_intc_eoi_irq, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @mst_irq_chip_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_get_parent_state, ptr @irq_chip_set_parent_state, ptr @irq_chip_set_vcpu_affinity_parent, ptr null, ptr null, ptr null, ptr null, i32 21 }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mst-intc\00", [23 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"mst_irq_syscore_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 163, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"mst_intc_list\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 25, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 254, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 258, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 272, i32 41 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 273, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"mst_intc_domain_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 239, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"mst_intc_chip\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 111, i32 24 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [34 x i8] c"../drivers/irqchip/irq-mst-intc.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 112, i32 12 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_irq_mst_intc__187_173_mst_irq_pm_init7, ptr @__of_table_mst_intc, ptr @mst_intc_of_init._entry, ptr @mst_intc_of_init._entry_ptr, ptr @mst_irq_syscore_ops, ptr @mst_intc_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mst_intc_of_init.__key, ptr @.str.5, ptr @mst_intc_domain_ops, ptr @mst_intc_chip, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mst_irq_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mst_intc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mst_intc_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mst_intc_of_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mst_intc_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mst_intc_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mst_irq_pm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_syscore_ops(ptr noundef nonnull @mst_irq_syscore_ops) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mst_intc_of_init(ptr noundef %dn, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %irq_start = alloca i32, align 4
  %irq_end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_start) #8
  %0 = ptrtoint ptr %irq_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irq_start, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_end) #8
  %1 = ptrtoint ptr %irq_end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %irq_end, align 4, !annotation !36
  %tobool.not.i.i.i = icmp eq ptr %parent, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %2 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 68)
  %4 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

irq_find_host.exit:                               ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #8
  %5 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 68)
  %7 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #8
  %tobool.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool.not, label %do.end, label %irq_find_host.exit.if.end_crit_edge

irq_find_host.exit.if.end_crit_edge:              ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %irq_find_host.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %d.0.i54 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end_crit_edge ], [ %call.i.i.i, %entry.if.end_crit_edge ]
  %call2 = call i32 @of_property_read_u32_index(ptr noundef %dn, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull %irq_start) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call4 = call i32 @of_property_read_u32_index(ptr noundef %dn, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull %irq_end) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 76) #12
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call ptr @of_iomap(ptr noundef %dn, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.mst_intc_chip_data, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %base, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call.i = call ptr @of_find_property(ptr noundef %dn, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i, null
  %no_eoi = getelementptr inbounds %struct.mst_intc_chip_data, ptr %call7.i.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %10 = ptrtoint ptr %no_eoi to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %no_eoi, align 8
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @mst_intc_of_init.__key, i16 noundef signext 2) #8
  %11 = ptrtoint ptr %irq_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_start, align 4
  %irq_start21 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %irq_start21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq_start21, align 4
  %14 = ptrtoint ptr %irq_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_end, align 4
  %sub = sub i32 %15, %12
  %add = add i32 %sub, 1
  %nr_irqs = getelementptr inbounds %struct.mst_intc_chip_data, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %nr_irqs, align 8
  %tobool.not.i.i = icmp eq ptr %dn, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %dn, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i54, i32 noundef 0, i32 noundef %add, ptr noundef %spec.select.i.i, ptr noundef nonnull @mst_intc_domain_ops, ptr noundef nonnull %call7.i.i) #8
  %tobool24.not = icmp eq ptr %call1.i, null
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  call void @iounmap(ptr noundef %18) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %entry28 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.mst_intc_chip_data, ptr %call7.i.i, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry28, ptr %prev.i, align 8
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mst_intc_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry28, ptr noundef %21, ptr noundef nonnull @mst_intc_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %entry28, ptr getelementptr inbounds (%struct.list_head, ptr @mst_intc_list, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mst_intc_list, ptr %entry28, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev.i, align 8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry28, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end27.cleanup_crit_edge, %if.then25, %if.then15, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %if.then25 ], [ -12, %if.then15 ], [ -22, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_end) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_start) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mst_irq_suspend() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn8 = load ptr, ptr @mst_intc_list, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @mst_intc_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %mst_intc_polarity_save.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %mst_intc_polarity_save.exit.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %cd.0 = getelementptr i8, ptr %.pn10, i32 -60
  %base.i = getelementptr i8, ptr %.pn10, i32 -8
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %nr_irqs.i = getelementptr i8, ptr %.pn10, i32 -12
  %2 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_irqs.i, align 4
  %sub8.i = add i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub8.i)
  %cmp10.not.i = icmp ult i32 %sub8.i, 16
  br i1 %cmp10.not.i, label %for.body.mst_intc_polarity_save.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.mst_intc_polarity_save.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mst_intc_polarity_save.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.011.i, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #8, !srcloc !37
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #8
  %arrayidx.i = getelementptr %struct.mst_intc_chip_data, ptr %cd.0, i32 0, i32 6, i32 %i.011.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %7 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_irqs.i, align 4
  %sub.i = add i32 %8, 15
  %div7.i = lshr i32 %sub.i, 4
  %cmp.i = icmp ult i32 %inc.i, %div7.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mst_intc_polarity_save.exit_crit_edge

for.body.i.mst_intc_polarity_save.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mst_intc_polarity_save.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mst_intc_polarity_save.exit:                      ; preds = %for.body.i.mst_intc_polarity_save.exit_crit_edge, %for.body.mst_intc_polarity_save.exit_crit_edge
  %9 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @mst_intc_list
  br i1 %cmp.not, label %mst_intc_polarity_save.exit.for.end_crit_edge, label %mst_intc_polarity_save.exit.for.body_crit_edge

mst_intc_polarity_save.exit.for.body_crit_edge:   ; preds = %mst_intc_polarity_save.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

mst_intc_polarity_save.exit.for.end_crit_edge:    ; preds = %mst_intc_polarity_save.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %mst_intc_polarity_save.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mst_irq_resume() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn8 = load ptr, ptr @mst_intc_list, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @mst_intc_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %mst_intc_polarity_restore.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %mst_intc_polarity_restore.exit.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %cd.0 = getelementptr i8, ptr %.pn10, i32 -60
  %base.i = getelementptr i8, ptr %.pn10, i32 -8
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %nr_irqs.i = getelementptr i8, ptr %.pn10, i32 -12
  %2 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_irqs.i, align 4
  %sub8.i = add i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub8.i)
  %cmp10.not.i = icmp ult i32 %sub8.i, 16
  br i1 %cmp10.not.i, label %for.body.mst_intc_polarity_restore.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.mst_intc_polarity_restore.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mst_intc_polarity_restore.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mst_intc_chip_data, ptr %cd.0, i32 0, i32 6, i32 %i.011.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #8
  %mul.i = shl i32 %i.011.i, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 %6) #8, !srcloc !38
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %7 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_irqs.i, align 4
  %sub.i = add i32 %8, 15
  %div7.i = lshr i32 %sub.i, 4
  %cmp.i = icmp ult i32 %inc.i, %div7.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mst_intc_polarity_restore.exit_crit_edge

for.body.i.mst_intc_polarity_restore.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mst_intc_polarity_restore.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mst_intc_polarity_restore.exit:                   ; preds = %for.body.i.mst_intc_polarity_restore.exit_crit_edge, %for.body.mst_intc_polarity_restore.exit_crit_edge
  %9 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @mst_intc_list
  br i1 %cmp.not, label %mst_intc_polarity_restore.exit.for.end_crit_edge, label %mst_intc_polarity_restore.exit.for.body_crit_edge

mst_intc_polarity_restore.exit.for.body_crit_edge: ; preds = %mst_intc_polarity_restore.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

mst_intc_polarity_restore.exit.for.end_crit_edge: ; preds = %mst_intc_polarity_restore.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %mst_intc_polarity_restore.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mst_intc_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #8
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx4 = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp532.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp532.not, label %if.end2.for.end_crit_edge, label %if.end2.for.body_crit_edge

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end2.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end2.for.body_crit_edge ]
  %add = add i32 %i.033, %virq
  %add6 = add i32 %i.033, %7
  %8 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add, i32 noundef %add6, ptr noundef nonnull @mst_intc_chip, ptr noundef %9) #8
  %inc = add nuw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end2.for.end_crit_edge
  %10 = call ptr @memcpy(ptr %parent_fwspec, ptr %data, i32 72)
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fwnode, align 4
  %15 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %parent_fwspec, align 4
  %irq_start = getelementptr inbounds %struct.mst_intc_chip_data, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %irq_start to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_start, align 4
  %add9 = add i32 %17, %7
  %arrayidx11 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add9, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %arrayidx13, align 4
  %call14 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %parent_fwspec) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mst_intc_domain_translate(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %2 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.cleanup_crit_edge, label %is_of_node.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %5, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.cleanup_crit_edge

is_of_node.exit.cleanup_crit_edge:                ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %is_of_node.exit
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %6 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not = icmp eq i32 %9, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx6 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %nr_irqs = getelementptr inbounds %struct.mst_intc_chip_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp7.not = icmp ult i32 %11, %13
  br i1 %cmp7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %hwirq, align 4
  %arrayidx13 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13, align 4
  %and = and i32 %16, 15
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %is_of_node.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %is_of_node.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mst_intc_mask_irq(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i, align 4
  %rem.i = and i32 %1, 15
  %shl.i = shl nuw nsw i32 1, %rem.i
  %4 = lshr i32 %1, 2
  %mul.i = and i32 %4, 1073741820
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %base.i = getelementptr inbounds %struct.mst_intc_chip_data, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %mul.i
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !37
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  %9 = trunc i32 %shl.i to i16
  %conv8.i = or i16 %8, %9
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %12, i32 %mul.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 %10) #8, !srcloc !38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3.i) #8
  tail call void @irq_chip_mask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mst_intc_unmask_irq(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i, align 4
  %rem.i = and i32 %1, 15
  %shl.i = shl nuw nsw i32 1, %rem.i
  %4 = lshr i32 %1, 2
  %mul.i = and i32 %4, 1073741820
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %base.i = getelementptr inbounds %struct.mst_intc_chip_data, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %mul.i
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !37
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  %9 = trunc i32 %shl.i to i16
  %10 = xor i16 %9, -1
  %conv8.i = and i16 %8, %10
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %13, i32 %mul.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 %11) #8, !srcloc !38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3.i) #8
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mst_intc_eoi_irq(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %no_eoi = getelementptr inbounds %struct.mst_intc_chip_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %no_eoi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_eoi, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i.i, align 4
  %rem.i = and i32 %5, 15
  %shl.i = shl nuw nsw i32 1, %rem.i
  %6 = lshr i32 %5, 2
  %mul.i = and i32 %6, 1073741820
  %add.i = add nuw nsw i32 %mul.i, 32
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %base.i = getelementptr inbounds %struct.mst_intc_chip_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add.i
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !37
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %11 = trunc i32 %shl.i to i16
  %conv8.i = or i16 %10, %11
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %14, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 %12) #8, !srcloc !38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @irq_chip_eoi_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mst_irq_chip_set_type(ptr noundef %data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 8, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge15
    i32 4, label %entry.sw.bb1_crit_edge
    i32 1, label %entry.sw.bb1_crit_edge16
  ]

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %3 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i.i, align 4
  %rem.i = and i32 %2, 15
  %shl.i = shl nuw nsw i32 1, %rem.i
  %5 = lshr i32 %2, 2
  %mul.i = and i32 %5, 1073741820
  %add.i = add nuw nsw i32 %mul.i, 16
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %base.i = getelementptr inbounds %struct.mst_intc_chip_data, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !37
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  %10 = trunc i32 %shl.i to i16
  %conv8.i = or i16 %9, %10
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %13, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 %11) #8, !srcloc !38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call3.i) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge16
  %hwirq.i.i4 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %hwirq.i.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwirq.i.i4, align 4
  %chip_data.i.i5 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %16 = ptrtoint ptr %chip_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_data.i.i5, align 4
  %rem.i6 = and i32 %15, 15
  %shl.i7 = shl nuw nsw i32 1, %rem.i6
  %18 = lshr i32 %15, 2
  %mul.i8 = and i32 %18, 1073741820
  %add.i9 = add nuw nsw i32 %mul.i8, 16
  %call3.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #8
  %base.i11 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %17, i32 0, i32 3
  %19 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %20, i32 %add.i9
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i12) #8, !srcloc !37
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #8
  %23 = trunc i32 %shl.i7 to i16
  %24 = xor i16 %23, -1
  %conv8.i13 = and i16 %22, %24
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv8.i13) #8
  %26 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i11, align 4
  %add.ptr10.i14 = getelementptr i8, ptr %27, i32 %add.i9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i14, i16 %25) #8, !srcloc !38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call3.i10) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %call = tail call i32 @irq_chip_set_type_parent(ptr noundef %data, i32 noundef 4) #8
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_get_parent_state(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_parent_state(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_vcpu_affinity_parent(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_irq_mst_intc__187_173_mst_irq_pm_init7, !1, !"__initcall__kmod_irq_mst_intc__187_173_mst_irq_pm_init7", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 173, i32 1}
!2 = !{ptr @__of_table_mst_intc, !3, !"__of_table_mst_intc", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 291, i32 1}
!4 = !{ptr @mst_irq_syscore_ops, !5, !"mst_irq_syscore_ops", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 163, i32 27}
!6 = !{ptr @mst_intc_list, !7, !"mst_intc_list", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 25, i32 8}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 254, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mst_intc_of_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mst_intc_of_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 258, i32 37}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 272, i32 41}
!18 = !{ptr @mst_intc_of_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 273, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mst_intc_domain_ops, !22, !"mst_intc_domain_ops", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 239, i32 36}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 112, i32 12}
!25 = !{ptr @mst_intc_chip, !26, !"mst_intc_chip", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-mst-intc.c", i32 111, i32 24}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i64 4202928}
!38 = !{i64 4202728}
!39 = !{i8 0, i8 2}
