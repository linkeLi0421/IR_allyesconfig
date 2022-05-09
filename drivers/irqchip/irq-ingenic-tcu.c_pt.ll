; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-ingenic-tcu.c_pt.bc'
source_filename = "../drivers/irqchip/irq-ingenic-tcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ingenic_tcu = type { ptr, ptr, ptr, i32, [3 x i32] }
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
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__of_table_jz4740_tcu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_jz4725b_tcu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_jz4760_tcu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_jz4770_tcu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_x1000_tcu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_irq_init }, section "__irqchip_of_table", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interrupts\00", [21 x i8] zeroinitializer }, align 32
@ingenic_tcu_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012%s: Invalid 'interrupts' property\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ingenic_tcu_irq_init\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/irqchip/irq-ingenic-tcu.c\00", [62 x i8] zeroinitializer }, align 32
@ingenic_tcu_irq_init._entry_ptr = internal global ptr @ingenic_tcu_irq_init._entry, section ".printk_index", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCU\00", [28 x i8] zeroinitializer }, align 32
@ingenic_tcu_irq_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ingenic_tcu_irq_init._entry_ptr.6 = internal global ptr @ingenic_tcu_irq_init._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 108, i32 45 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 110, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 124, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private constant [37 x i8] c"../drivers/irqchip/irq-ingenic-tcu.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 128, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__of_table_jz4725b_tcu_irq, ptr @__of_table_jz4740_tcu_irq, ptr @__of_table_jz4760_tcu_irq, ptr @__of_table_jz4770_tcu_irq, ptr @__of_table_x1000_tcu_irq, ptr @ingenic_tcu_irq_init._entry, ptr @ingenic_tcu_irq_init._entry.5, ptr @ingenic_tcu_irq_init._entry_ptr, ptr @ingenic_tcu_irq_init._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_irq_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_irq_init(ptr noundef %np, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @device_node_to_regmap(ptr noundef %np) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %call7.i.i, align 8
  %call7 = tail call i32 @of_property_count_elems_of_size(ptr noundef %np, ptr noundef nonnull @.str, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call7)
  %cmp8 = icmp ugt i32 %call7, 3
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  br label %err_free_tcu

if.end11:                                         ; preds = %if.end5
  %nb_parent_irqs = getelementptr inbounds %struct.ingenic_tcu, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %nb_parent_irqs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call7, ptr %nb_parent_irqs, align 4
  %tobool.not.i.i = icmp eq ptr %np, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #6
  %domain = getelementptr inbounds %struct.ingenic_tcu, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %domain, align 8
  %tobool14.not = icmp eq ptr %call1.i, null
  br i1 %tobool14.not, label %if.end11.err_free_tcu_crit_edge, label %do.end22

if.end11.err_free_tcu_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_tcu

do.end22:                                         ; preds = %if.end11
  %call25 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @handle_level_irq, i32 noundef 0, i32 noundef 1280, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  br label %out_domain_remove

if.end33:                                         ; preds = %do.end22
  %5 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %domain, align 8
  %call35 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %6, i32 noundef 0) #6
  %wake_enabled = getelementptr inbounds %struct.irq_chip_generic, ptr %call35, i32 0, i32 11
  %7 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %wake_enabled, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %call35, i32 0, i32 14
  %10 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %private, align 4
  %regs = getelementptr inbounds %struct.irq_chip_generic, ptr %call35, i32 2, i32 0, i32 4
  %disable = getelementptr inbounds %struct.irq_chip_generic, ptr %call35, i32 2, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 52, ptr %disable, align 4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 56, ptr %regs, align 4
  %ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call35, i32 2, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 40, ptr %ack, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call35, i32 1, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ingenic_tcu_gc_unmask_enable_reg, ptr %irq_unmask, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call35, i32 1, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ingenic_tcu_gc_mask_disable_reg, ptr %irq_mask, align 4
  %irq_mask_ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call35, i32 1, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %irq_mask_ack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ingenic_tcu_gc_mask_disable_reg_and_ack, ptr %irq_mask_ack, align 4
  %flags = getelementptr inbounds %struct.irq_chip_generic, ptr %call35, i32 2, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 20, ptr %flags, align 4
  %18 = load ptr, ptr %call7.i.i, align 8
  %call43 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 52, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp44109.not = icmp eq i32 %call7, 0
  br i1 %cmp44109.not, label %if.end33.cleanup_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %if.end33.for.body_crit_edge
  %i.0110 = phi i32 [ %inc, %if.end50.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %call45 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef %i.0110) #6
  %arrayidx = getelementptr %struct.ingenic_tcu, ptr %call7.i.i, i32 0, i32 4, i32 %i.0110
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call45, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool48.not = icmp eq i32 %call45, 0
  br i1 %tobool48.not, label %for.cond54.preheader, label %if.end50

for.cond54.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0110)
  %cmp55.not111 = icmp eq i32 %i.0110, 0
  br i1 %cmp55.not111, label %for.cond54.preheader.out_domain_remove_crit_edge, label %for.cond54.preheader.for.body56_crit_edge

for.cond54.preheader.for.body56_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body56

for.cond54.preheader.out_domain_remove_crit_edge: ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_domain_remove

if.end50:                                         ; preds = %for.body
  %20 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain, align 8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call45, ptr noundef nonnull @ingenic_tcu_intc_cascade, ptr noundef %21) #6
  %inc = add nuw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, %call7
  br i1 %exitcond.not, label %if.end50.cleanup_crit_edge, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.cond54.preheader.for.body56_crit_edge
  %i.1112 = phi i32 [ %sub, %for.body56.for.body56_crit_edge ], [ %i.0110, %for.cond54.preheader.for.body56_crit_edge ]
  %sub = add i32 %i.1112, -1
  %arrayidx58 = getelementptr %struct.ingenic_tcu, ptr %call7.i.i, i32 0, i32 4, i32 %sub
  %22 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx58, align 4
  tail call void @irq_dispose_mapping(i32 noundef %23) #6
  %cmp55.not = icmp eq i32 %sub, 0
  br i1 %cmp55.not, label %for.body56.out_domain_remove_crit_edge, label %for.body56.for.body56_crit_edge

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body56

for.body56.out_domain_remove_crit_edge:           ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_domain_remove

out_domain_remove:                                ; preds = %for.body56.out_domain_remove_crit_edge, %for.cond54.preheader.out_domain_remove_crit_edge, %do.end30
  %ret.0 = phi i32 [ %call25, %do.end30 ], [ -22, %for.cond54.preheader.out_domain_remove_crit_edge ], [ -22, %for.body56.out_domain_remove_crit_edge ]
  %24 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %domain, align 8
  tail call void @irq_domain_remove(ptr noundef %25) #6
  br label %err_free_tcu

err_free_tcu:                                     ; preds = %out_domain_remove, %if.end11.err_free_tcu_crit_edge, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ %ret.0, %out_domain_remove ], [ -12, %if.end11.err_free_tcu_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_tcu, %if.end50.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.1, %err_free_tcu ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_tcu_gc_unmask_enable_reg(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %regs = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1
  %ack = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ack, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %9, i32 noundef %7) #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regs, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %11, i32 noundef %7) #6
  %mask_cache = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mask_cache, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %or = or i32 %15, %7
  store i32 %or, ptr %13, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_tcu_gc_mask_disable_reg(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %disable = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disable, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %9, i32 noundef %7) #6
  %neg = xor i32 %7, -1
  %mask_cache = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mask_cache, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and = and i32 %13, %neg
  store i32 %and, ptr %11, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_tcu_gc_mask_disable_reg_and_ack(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %ack = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ack, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %9, i32 noundef %7) #6
  %disable = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %disable, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %11, i32 noundef %7) #6
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_tcu_intc_cascade(ptr noundef %desc) #4 align 64 {
entry:
  %irq_reg = alloca i32, align 4
  %irq_mask = alloca i32, align 4
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %call2 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %3, i32 noundef 0) #6
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %call2, i32 0, i32 14
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_reg) #6
  %6 = ptrtoint ptr %irq_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq_reg, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_mask) #6
  %7 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq_mask, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #6
  %call3 = call i32 @regmap_read(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %irq_reg) #6
  %call4 = call i32 @regmap_read(ptr noundef %5, i32 noundef 48, ptr noundef nonnull %irq_mask) #6
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.chained_irq_enter.exit.sink.split_crit_edge

if.end.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit.sink.split

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_mask.i, align 4
  call void %13(ptr noundef %irq_data) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.else.i.chained_irq_enter.exit.sink.split_crit_edge

if.else.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit.sink.split

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit.sink.split:                ; preds = %if.else.i.chained_irq_enter.exit.sink.split_crit_edge, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge ], [ %15, %if.else.i.chained_irq_enter.exit.sink.split_crit_edge ]
  call void %.sink(ptr noundef %irq_data) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %chained_irq_enter.exit.sink.split, %if.else.i.chained_irq_enter.exit_crit_edge, %entry.chained_irq_enter.exit_crit_edge
  %16 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_mask, align 4
  %neg = xor i32 %17, -1
  %18 = ptrtoint ptr %irq_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_reg, align 4
  %and = and i32 %19, %neg
  store i32 %and, ptr %irq_reg, align 4
  %20 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %bits, align 4
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %bits, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp20 = icmp ult i32 %call5, 32
  br i1 %cmp20, label %chained_irq_enter.exit.for.body_crit_edge, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

chained_irq_enter.exit.for.body_crit_edge:        ; preds = %chained_irq_enter.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %chained_irq_enter.exit.for.body_crit_edge
  %i.021 = phi i32 [ %call7, %for.body.for.body_crit_edge ], [ %call5, %chained_irq_enter.exit.for.body_crit_edge ]
  %call6 = call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef %i.021) #6
  %add = add nuw nsw i32 %i.021, 1
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %bits, i32 noundef 32, i32 noundef %add) #6
  %cmp = icmp ult i32 %call7, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %21 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i17 = icmp eq ptr %22, null
  br i1 %tobool.not.i17, label %if.else.i18, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i18:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i18, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %24, %if.else.i18 ], [ %22, %for.end.chained_irq_exit.exit_crit_edge ]
  call void %.sink.i(ptr noundef %irq_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__of_table_jz4740_tcu_irq, !1, !"__of_table_jz4740_tcu_irq", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-ingenic-tcu.c", i32 182, i32 1}
!2 = !{ptr @__of_table_jz4725b_tcu_irq, !3, !"__of_table_jz4725b_tcu_irq", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-ingenic-tcu.c", i32 183, i32 1}
!4 = !{ptr @__of_table_jz4760_tcu_irq, !5, !"__of_table_jz4760_tcu_irq", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-ingenic-tcu.c", i32 184, i32 1}
!6 = !{ptr @__of_table_jz4770_tcu_irq, !7, !"__of_table_jz4770_tcu_irq", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-ingenic-tcu.c", i32 185, i32 1}
!8 = !{ptr @__of_table_x1000_tcu_irq, !9, !"__of_table_x1000_tcu_irq", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-ingenic-tcu.c", i32 186, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-ingenic-tcu.c", i32 108, i32 45}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-ingenic-tcu.c", i32 110, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ingenic_tcu_irq_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @ingenic_tcu_irq_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-ingenic-tcu.c", i32 124, i32 8}
!20 = !{ptr @ingenic_tcu_irq_init._entry.5, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-ingenic-tcu.c", i32 128, i32 3}
!22 = !{ptr @ingenic_tcu_irq_init._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
