; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-mtk-sysirq.c_pt.bc'
source_filename = "../drivers/irqchip/irq-mtk-sysirq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mtk_sysirq_chip_data = type { %struct.raw_spinlock, i32, ptr, ptr, ptr, ptr }
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

@__of_table_mtk_sysirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6577-sysirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_sysirq_of_init }, section "__irqchip_of_table", align 4
@mtk_sysirq_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013mtk_sysirq: interrupt-parent not found\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_sysirq_of_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-mtk-sysirq.c\00", [63 x i8] zeroinitializer }, align 32
@mtk_sysirq_of_init._entry_ptr = internal global ptr @mtk_sysirq_of_init._entry, section ".printk_index", align 4
@mtk_sysirq_of_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013mtk_sysirq: base address not specified\0A\00", [54 x i8] zeroinitializer }, align 32
@mtk_sysirq_of_init._entry_ptr.5 = internal global ptr @mtk_sysirq_of_init._entry.3, section ".printk_index", align 4
@mtk_sysirq_of_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%pOF: couldn't map region %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_sysirq_of_init._entry_ptr.8 = internal global ptr @mtk_sysirq_of_init._entry.6, section ".printk_index", align 4
@sysirq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_sysirq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @mtk_sysirq_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@mtk_sysirq_of_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip_data->lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtk_sysirq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @mtk_sysirq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MT_SYSIRQ\00", [22 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 132, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 144, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 174, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"sysirq_domain_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 117, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 216, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"mtk_sysirq_chip\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 60, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [36 x i8] c"../drivers/irqchip/irq-mtk-sysirq.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 61, i32 12 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__of_table_mtk_sysirq, ptr @mtk_sysirq_of_init._entry, ptr @mtk_sysirq_of_init._entry.3, ptr @mtk_sysirq_of_init._entry.6, ptr @mtk_sysirq_of_init._entry_ptr, ptr @mtk_sysirq_of_init._entry_ptr.5, ptr @mtk_sysirq_of_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @sysirq_domain_ops, ptr @mtk_sysirq_of_init.__key, ptr @.str.9, ptr @mtk_sysirq_chip, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_sysirq_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_sysirq_of_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_sysirq_of_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysirq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_sysirq_of_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_sysirq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_sysirq_of_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i.i = icmp eq ptr %parent, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #9
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

irq_find_host.exit:                               ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #9
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #9
  %tobool.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool.not, label %do.end, label %irq_find_host.exit.if.end_crit_edge

irq_find_host.exit.if.end_crit_edge:              ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup102

if.end:                                           ; preds = %irq_find_host.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %d.0.i274 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end_crit_edge ], [ %call.i.i.i, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 64) #13
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup102_crit_edge, label %while.cond.preheader

if.end.cleanup102_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup102

while.cond.preheader:                             ; preds = %if.end
  %call.i305 = call ptr @__of_get_address(ptr noundef %node, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %tobool7.not306 = icmp eq ptr %call.i305, null
  br i1 %tobool7.not306, label %while.cond.preheader.do.end12_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.do.end12_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.0308 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %inc = add i32 %i.0308, 1
  %call.i = call ptr @__of_get_address(ptr noundef %node, i32 noundef %inc, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp = icmp eq i32 %inc, 0
  br i1 %cmp, label %while.end.do.end12_crit_edge, label %if.end15

while.end.do.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end12:                                         ; preds = %while.end.do.end12_crit_edge, %while.cond.preheader.do.end12_crit_edge
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %out_free_chip

if.end15:                                         ; preds = %while.end
  %7 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc, i32 4) #9
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  br i1 %8, label %kcalloc.exit.thread, label %kcalloc.exit.thread342, !prof !34

kcalloc.exit.thread:                              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %intpol_words276 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %intpol_words276 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %intpol_words276, align 4
  br label %out_free_chip

kcalloc.exit.thread342:                           ; preds = %if.end15
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #14
  %intpol_words344 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %intpol_words344 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %intpol_words344, align 4
  %tobool18.not345 = icmp eq ptr %call8.i.i, null
  br i1 %tobool18.not345, label %kcalloc.exit.thread342.out_free_chip_crit_edge, label %if.end7.i.i203

kcalloc.exit.thread342.out_free_chip_crit_edge:   ; preds = %kcalloc.exit.thread342
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_chip

if.end7.i.i203:                                   ; preds = %kcalloc.exit.thread342
  %call8.i.i202 = call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #14
  %intpol_bases = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %intpol_bases to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i202, ptr %intpol_bases, align 8
  %tobool23.not = icmp eq ptr %call8.i.i202, null
  br i1 %tobool23.not, label %if.end7.i.i203.out_free_intpol_words_crit_edge, label %for.body.lr.ph

if.end7.i.i203.out_free_intpol_words_crit_edge:   ; preds = %if.end7.i.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_intpol_words

for.body.lr.ph:                                   ; preds = %if.end7.i.i203
  %13 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.1311 = phi i32 [ 0, %for.body.lr.ph ], [ %inc44, %for.inc.for.body_crit_edge ]
  %intpol_num.0310 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %14 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call27 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef %i.1311, ptr noundef nonnull %res) #9
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %13, align 4
  %17 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %res, align 4
  %sub.i = add i32 %16, 1
  %add.i = sub i32 %sub.i, %18
  %mul = shl i32 %add.i, 3
  %add = add i32 %mul, %intpol_num.0310
  %div = sdiv i32 %add.i, 4
  %19 = ptrtoint ptr %intpol_words344 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intpol_words344, align 4
  %arrayidx = getelementptr i32, ptr %20, i32 %i.1311
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %arrayidx, align 4
  %call30 = call ptr @of_iomap(ptr noundef %node, i32 noundef %i.1311) #9
  %22 = ptrtoint ptr %intpol_bases to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intpol_bases, align 8
  %arrayidx32 = getelementptr ptr, ptr %23, i32 %i.1311
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call30, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool33.not = icmp eq i32 %call27, 0
  br i1 %tobool33.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %25 = ptrtoint ptr %intpol_bases to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intpol_bases, align 8
  %arrayidx35 = getelementptr ptr, ptr %26, i32 %i.1311
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %28, null
  br i1 %tobool36.not, label %lor.lhs.false.cleanup_crit_edge, label %for.inc

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %node, i32 noundef %i.1311) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  br label %for.body89.preheader

for.inc:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  %inc44 = add nuw nsw i32 %i.1311, 1
  %exitcond.not = icmp eq i32 %i.1311, %i.0308
  br i1 %exitcond.not, label %if.end7.i.i236, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end7.i.i236:                                   ; preds = %for.inc
  %call8.i.i235 = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #14
  %intpol_idx = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %intpol_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i.i235, ptr %intpol_idx, align 8
  %tobool47.not = icmp eq ptr %call8.i.i235, null
  br i1 %tobool47.not, label %if.end7.i.i236.for.body89.preheader_crit_edge, label %if.end49

if.end7.i.i236.for.body89.preheader_crit_edge:    ; preds = %if.end7.i.i236
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body89.preheader

if.end49:                                         ; preds = %if.end7.i.i236
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 2) #9
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %kcalloc.exit271.thread, label %if.end7.i.i269, !prof !34

kcalloc.exit271.thread:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %which_word298 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %which_word298 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %which_word298, align 4
  br label %out_free_intpol_idx

if.end7.i.i269:                                   ; preds = %if.end49
  %33 = extractvalue { i32, i1 } %30, 0
  %call8.i.i268 = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #14
  %which_word = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %call7.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %which_word to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i268, ptr %which_word, align 4
  %tobool52.not = icmp eq ptr %call8.i.i268, null
  br i1 %tobool52.not, label %if.end7.i.i269.out_free_intpol_idx_crit_edge, label %for.cond55.preheader

if.end7.i.i269.out_free_intpol_idx_crit_edge:     ; preds = %if.end7.i.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_intpol_idx

for.cond55.preheader:                             ; preds = %if.end7.i.i269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp56319.not = icmp eq i32 %add, 0
  br i1 %cmp56319.not, label %for.cond55.preheader.for.end76_crit_edge, label %for.cond55.preheader.for.body57_crit_edge

for.cond55.preheader.for.body57_crit_edge:        ; preds = %for.cond55.preheader
  br label %for.body57

for.cond55.preheader.for.end76_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76

for.body57:                                       ; preds = %for.end68.for.body57_crit_edge, %for.cond55.preheader.for.body57_crit_edge
  %i.2320 = phi i32 [ %inc75, %for.end68.for.body57_crit_edge ], [ 0, %for.cond55.preheader.for.body57_crit_edge ]
  %div58.udiv327 = lshr i32 %i.2320, 5
  %35 = ptrtoint ptr %intpol_words344 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intpol_words344, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div58.udiv327, i32 %38)
  %cmp62.not314 = icmp ult i32 %div58.udiv327, %38
  br i1 %cmp62.not314, label %for.body57.for.end68_crit_edge, label %for.body57.for.body63_crit_edge

for.body57.for.body63_crit_edge:                  ; preds = %for.body57
  br label %for.body63

for.body57.for.end68_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end68

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body57.for.body63_crit_edge
  %39 = phi i32 [ %41, %for.body63.for.body63_crit_edge ], [ %38, %for.body57.for.body63_crit_edge ]
  %j.0316 = phi i32 [ %inc67, %for.body63.for.body63_crit_edge ], [ 0, %for.body57.for.body63_crit_edge ]
  %word.0315 = phi i32 [ %sub, %for.body63.for.body63_crit_edge ], [ %div58.udiv327, %for.body57.for.body63_crit_edge ]
  %sub = sub i32 %word.0315, %39
  %inc67 = add i32 %j.0316, 1
  %arrayidx61 = getelementptr i32, ptr %36, i32 %inc67
  %40 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx61, align 4
  %cmp62.not = icmp ult i32 %sub, %41
  br i1 %cmp62.not, label %for.body63.for.end68_crit_edge, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body63

for.body63.for.end68_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end68

for.end68:                                        ; preds = %for.body63.for.end68_crit_edge, %for.body57.for.end68_crit_edge
  %word.0.lcssa = phi i32 [ %div58.udiv327, %for.body57.for.end68_crit_edge ], [ %sub, %for.body63.for.end68_crit_edge ]
  %j.0.lcssa = phi i32 [ 0, %for.body57.for.end68_crit_edge ], [ %inc67, %for.body63.for.end68_crit_edge ]
  %conv = trunc i32 %j.0.lcssa to i8
  %42 = ptrtoint ptr %intpol_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %intpol_idx, align 8
  %arrayidx70 = getelementptr i8, ptr %43, i32 %i.2320
  %44 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv, ptr %arrayidx70, align 1
  %conv71 = trunc i32 %word.0.lcssa to i16
  %45 = ptrtoint ptr %which_word to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %which_word, align 4
  %arrayidx73 = getelementptr i16, ptr %46, i32 %i.2320
  %47 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv71, ptr %arrayidx73, align 2
  %inc75 = add nuw nsw i32 %i.2320, 1
  %exitcond325.not = icmp eq i32 %inc75, %add
  br i1 %exitcond325.not, label %for.end68.for.end76_crit_edge, label %for.end68.for.body57_crit_edge

for.end68.for.body57_crit_edge:                   ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57

for.end68.for.end76_crit_edge:                    ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76

for.end76:                                        ; preds = %for.end68.for.end76_crit_edge, %for.cond55.preheader.for.end76_crit_edge
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef %d.0.i274, i32 noundef 0, i32 noundef %add, ptr noundef %spec.select.i.i, ptr noundef nonnull @sysirq_domain_ops, ptr noundef nonnull %call7.i.i) #9
  %tobool78.not = icmp eq ptr %call1.i, null
  br i1 %tobool78.not, label %if.then79, label %do.body81

if.then79:                                        ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %which_word to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %which_word, align 4
  call void @kfree(ptr noundef %49) #9
  br label %out_free_intpol_idx

do.body81:                                        ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #11
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @mtk_sysirq_of_init.__key, i16 noundef signext 2) #9
  br label %cleanup102

out_free_intpol_idx:                              ; preds = %if.then79, %if.end7.i.i269.out_free_intpol_idx_crit_edge, %kcalloc.exit271.thread
  %50 = ptrtoint ptr %intpol_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %intpol_idx, align 8
  call void @kfree(ptr noundef %51) #9
  br label %for.body89.preheader

for.body89.preheader:                             ; preds = %out_free_intpol_idx, %if.end7.i.i236.for.body89.preheader_crit_edge, %cleanup
  %ret.2 = phi i32 [ -19, %cleanup ], [ -12, %out_free_intpol_idx ], [ -12, %if.end7.i.i236.for.body89.preheader_crit_edge ]
  br label %for.body89

for.body89:                                       ; preds = %for.inc97.for.body89_crit_edge, %for.body89.preheader
  %i.3322 = phi i32 [ %inc98, %for.inc97.for.body89_crit_edge ], [ 0, %for.body89.preheader ]
  %52 = ptrtoint ptr %intpol_bases to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %intpol_bases, align 8
  %arrayidx91 = getelementptr ptr, ptr %53, i32 %i.3322
  %54 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx91, align 4
  %tobool92.not = icmp eq ptr %55, null
  br i1 %tobool92.not, label %for.body89.for.inc97_crit_edge, label %if.then93

for.body89.for.inc97_crit_edge:                   ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc97

if.then93:                                        ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #11
  call void @iounmap(ptr noundef nonnull %55) #9
  br label %for.inc97

for.inc97:                                        ; preds = %if.then93, %for.body89.for.inc97_crit_edge
  %inc98 = add nuw nsw i32 %i.3322, 1
  %exitcond326.not = icmp eq i32 %i.3322, %i.0308
  br i1 %exitcond326.not, label %for.end99, label %for.inc97.for.body89_crit_edge

for.inc97.for.body89_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body89

for.end99:                                        ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %intpol_bases to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intpol_bases, align 8
  call void @kfree(ptr noundef %57) #9
  br label %out_free_intpol_words

out_free_intpol_words:                            ; preds = %for.end99, %if.end7.i.i203.out_free_intpol_words_crit_edge
  %ret.3 = phi i32 [ %ret.2, %for.end99 ], [ -12, %if.end7.i.i203.out_free_intpol_words_crit_edge ]
  %58 = ptrtoint ptr %intpol_words344 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %intpol_words344, align 4
  call void @kfree(ptr noundef %59) #9
  br label %out_free_chip

out_free_chip:                                    ; preds = %out_free_intpol_words, %kcalloc.exit.thread342.out_free_chip_crit_edge, %kcalloc.exit.thread, %do.end12
  %ret.4 = phi i32 [ -22, %do.end12 ], [ %ret.3, %out_free_intpol_words ], [ -12, %kcalloc.exit.thread ], [ -12, %kcalloc.exit.thread342.out_free_chip_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup102

cleanup102:                                       ; preds = %out_free_chip, %do.body81, %if.end.cleanup102_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.4, %out_free_chip ], [ 0, %do.body81 ], [ -22, %do.end ], [ -12, %if.end.cleanup102_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_sysirq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %arg) #7 align 64 {
entry:
  %gic_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %gic_fwspec) #9
  %0 = call ptr @memcpy(ptr %gic_fwspec, ptr %arg, i32 72)
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 1
  %1 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not = icmp eq i32 %2, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 2
  %3 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx4 = getelementptr %struct.irq_fwspec, ptr %arg, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp523.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp523.not, label %if.end2.for.end_crit_edge, label %for.body.lr.ph

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end2
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %i.024, %virq
  %add6 = add i32 %i.024, %6
  %7 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add, i32 noundef %add6, ptr noundef nonnull @mtk_sysirq_chip, ptr noundef %8) #9
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end2.for.end_crit_edge
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwnode, align 4
  %13 = ptrtoint ptr %gic_fwspec to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %gic_fwspec, align 4
  %call8 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %gic_fwspec) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %gic_fwspec) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_sysirq_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %is_of_node.exit
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %4 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.then
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx6 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %hwirq, align 4
  %arrayidx8 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %and = and i32 %12, 15
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %if.then.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

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
define internal i32 @mtk_sysirq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq1, align 4
  %chip_data2 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data2, align 4
  %intpol_idx3 = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %intpol_idx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intpol_idx3, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %intpol_bases = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %intpol_bases to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intpol_bases, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx4 = getelementptr ptr, ptr %9, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %which_word = getelementptr inbounds %struct.mtk_sysirq_chip_data, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %which_word to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %which_word, align 4
  %arrayidx5 = getelementptr i16, ptr %13, i32 %1
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx5, align 2
  %conv = zext i16 %15 to i32
  %and = and i32 %1, 31
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %mul = shl nuw nsw i32 %conv, 2
  %add.ptr = getelementptr i8, ptr %11, i32 %mul
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !35
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.else16 [
    i32 8, label %entry.if.then_crit_edge
    i32 2, label %entry.if.then_crit_edge50
  ]

entry.if.then_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge50
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cmp9 = icmp eq i32 %type, 8
  %. = select i1 %cmp9, i32 4, i32 1
  %shl = shl nuw i32 1, %and
  %or = or i32 %17, %shl
  br label %if.end19

if.else16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl17 = shl nuw i32 1, %and
  %neg = xor i32 %shl17, -1
  %and18 = and i32 %17, %neg
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then
  %value.0 = phi i32 [ %or, %if.then ], [ %and18, %if.else16 ]
  %type.addr.1 = phi i32 [ %., %if.then ], [ %type, %if.else16 ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #9, !srcloc !36
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 6
  %20 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent_data, align 4
  %chip = getelementptr inbounds %struct.irq_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_set_type, align 4
  %call22 = tail call i32 %25(ptr noundef %21, i32 noundef %type.addr.1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call) #9
  ret i32 %call22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__of_table_mtk_sysirq, !1, !"__of_table_mtk_sysirq", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-mtk-sysirq.c", i32 235, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-mtk-sysirq.c", i32 132, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_sysirq_of_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_sysirq_of_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-mtk-sysirq.c", i32 144, i32 3}
!10 = !{ptr @mtk_sysirq_of_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_sysirq_of_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-mtk-sysirq.c", i32 174, i32 4}
!14 = !{ptr @mtk_sysirq_of_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_sysirq_of_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mtk_sysirq_of_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-mtk-sysirq.c", i32 216, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sysirq_domain_ops, !20, !"sysirq_domain_ops", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-mtk-sysirq.c", i32 117, i32 36}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-mtk-sysirq.c", i32 61, i32 12}
!23 = !{ptr @mtk_sysirq_chip, !24, !"mtk_sysirq_chip", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-mtk-sysirq.c", i32 60, i32 24}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 3633599}
!36 = !{i64 3633181}
