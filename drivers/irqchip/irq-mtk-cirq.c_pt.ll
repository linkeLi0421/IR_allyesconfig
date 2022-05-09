; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-mtk-cirq.c_pt.bc'
source_filename = "../drivers/irqchip/irq-mtk-cirq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.mtk_cirq_chip_data = type { ptr, i32, i32, ptr }
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

@__of_table_mtk_cirq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtk-cirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_cirq_of_init }, section "__irqchip_of_table", align 4
@mtk_cirq_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013mtk_cirq: interrupt-parent not found\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_cirq_of_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/irqchip/irq-mtk-cirq.c\00", [33 x i8] zeroinitializer }, align 32
@mtk_cirq_of_init._entry_ptr = internal global ptr @mtk_cirq_of_init._entry, section ".printk_index", align 4
@cirq_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtk_cirq_of_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013mtk_cirq: unable to map cirq register\0A\00", [55 x i8] zeroinitializer }, align 32
@mtk_cirq_of_init._entry_ptr.5 = internal global ptr @mtk_cirq_of_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,ext-irq-range\00", [41 x i8] zeroinitializer }, align 32
@cirq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_cirq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @mtk_cirq_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtk_cirq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_cirq_mask, ptr null, ptr @mtk_cirq_unmask, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @mtk_cirq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT_CIRQ\00", [24 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@mtk_cirq_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mtk_cirq_suspend, ptr @mtk_cirq_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 252, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"cirq_data\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 38, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 262, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 267, i32 41 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"cirq_domain_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 154, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"mtk_cirq_chip\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 91, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 92, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"mtk_cirq_syscore_ops\00", align 1
@___asan_gen_.42 = private constant [34 x i8] c"../drivers/irqchip/irq-mtk-cirq.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 230, i32 27 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__of_table_mtk_cirq, ptr @mtk_cirq_of_init._entry, ptr @mtk_cirq_of_init._entry.3, ptr @mtk_cirq_of_init._entry_ptr, ptr @mtk_cirq_of_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cirq_data, ptr @.str.4, ptr @.str.6, ptr @cirq_domain_ops, ptr @mtk_cirq_chip, ptr @.str.7, ptr @mtk_cirq_syscore_ops], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cirq_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirq_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cirq_of_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cirq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cirq_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cirq_of_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i.i = icmp eq ptr %parent, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
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
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %5)
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
  %d.0.i44 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end_crit_edge ], [ %call.i.i.i, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #12
  store ptr %call7.i.i, ptr @cirq_data, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  %7 = load ptr, ptr @cirq_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %7, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %out_free

if.end15:                                         ; preds = %if.end5
  %ext_irq_start = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %7, i32 0, i32 1
  %call16 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %ext_irq_start) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_unmap_crit_edge

if.end15.out_unmap_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unmap

if.end19:                                         ; preds = %if.end15
  %9 = load ptr, ptr @cirq_data, align 4
  %ext_irq_end = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %9, i32 0, i32 2
  %call20 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef %ext_irq_end) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_unmap_crit_edge

if.end19.out_unmap_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unmap

if.end23:                                         ; preds = %if.end19
  %10 = load ptr, ptr @cirq_data, align 4
  %ext_irq_end24 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ext_irq_end24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ext_irq_end24, align 4
  %ext_irq_start25 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %ext_irq_start25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ext_irq_start25, align 4
  %sub = add i32 %12, 1
  %add = sub i32 %sub, %14
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i44, i32 noundef 0, i32 noundef %add, ptr noundef %spec.select.i.i, ptr noundef nonnull @cirq_domain_ops, ptr noundef %10) #8
  %tobool27.not = icmp eq ptr %call1.i, null
  br i1 %tobool27.not, label %if.end23.out_unmap_crit_edge, label %if.end29

if.end23.out_unmap_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unmap

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load ptr, ptr @cirq_data, align 4
  %domain30 = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %domain30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i, ptr %domain30, align 4
  call void @register_syscore_ops(ptr noundef nonnull @mtk_cirq_syscore_ops) #8
  br label %cleanup

out_unmap:                                        ; preds = %if.end23.out_unmap_crit_edge, %if.end19.out_unmap_crit_edge, %if.end15.out_unmap_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end15.out_unmap_crit_edge ], [ %call20, %if.end19.out_unmap_crit_edge ], [ -12, %if.end23.out_unmap_crit_edge ]
  %17 = load ptr, ptr @cirq_data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  call void @iounmap(ptr noundef %19) #8
  br label %out_free

out_free:                                         ; preds = %out_unmap, %do.end12
  %ret.1 = phi i32 [ %ret.0, %out_unmap ], [ -6, %do.end12 ]
  %20 = load ptr, ptr @cirq_data, align 4
  call void @kfree(ptr noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end29, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ 0, %if.end29 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cirq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %arg) #5 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #8
  %0 = call ptr @memcpy(ptr %parent_fwspec, ptr %arg, i32 72)
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arg, align 4
  %tobool.not.i.i.i = icmp eq ptr %2, null
  %cmp.i.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.cleanup_crit_edge, label %is_of_node.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_of_node.exit.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %4, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.then.i, label %is_of_node.exit.i.cleanup_crit_edge

is_of_node.exit.i.cleanup_crit_edge:              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %is_of_node.exit.i
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 1
  %5 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 2
  %7 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.not.i = icmp eq i32 %8, 0
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx6.i = getelementptr %struct.irq_fwspec, ptr %arg, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6.i, align 4
  %11 = load ptr, ptr @cirq_data, align 4
  %ext_irq_start.i = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ext_irq_start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ext_irq_start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp7.i = icmp ult i32 %10, %13
  br i1 %cmp7.i, label %if.end4.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %ext_irq_end.i = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %ext_irq_end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ext_irq_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %15)
  %cmp10.i = icmp ugt i32 %10, %15
  br i1 %cmp10.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !33

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 142, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %10, %13
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %16 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_data, align 4
  %call25 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %sub.i, ptr noundef nonnull @mtk_cirq_chip, ptr noundef %17) #8
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fwnode, align 4
  %22 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %parent_fwspec, align 4
  %call27 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef 1, ptr noundef nonnull %parent_fwspec) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %lor.lhs.false.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %is_of_node.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call27, %if.end24 ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ], [ -22, %is_of_node.exit.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_cirq_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  %arrayidx6 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %10 = load ptr, ptr @cirq_data, align 4
  %ext_irq_start = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ext_irq_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ext_irq_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp7 = icmp ult i32 %9, %12
  br i1 %cmp7, label %if.end4.return_crit_edge, label %lor.lhs.false

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %if.end4
  %ext_irq_end = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %ext_irq_end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ext_irq_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %14)
  %cmp10 = icmp ugt i32 %9, %14
  br i1 %cmp10, label %lor.lhs.false.return_crit_edge, label %if.end12

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %9, %12
  %15 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %hwirq, align 4
  %arrayidx17 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %and = and i32 %17, 15
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end12, %lor.lhs.false.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end4.return_crit_edge ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cirq_mask(ptr noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data1.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data1.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 192
  %7 = lshr i32 %3, 3
  %mul.i = and i32 %7, 536870908
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !34
  tail call void @irq_chip_mask_parent(ptr noundef %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cirq_unmask(ptr noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data1.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data1.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 256
  %7 = lshr i32 %3, 3
  %mul.i = and i32 %7, 536870908
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !34
  tail call void @irq_chip_unmask_parent(ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cirq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 15
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 8, label %sw.bb2
    i32 4, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_data1.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %1 = ptrtoint ptr %chip_data1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_data1.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq.i, align 4
  %rem.i = and i32 %4, 31
  %shl.i = shl nuw i32 1, %rem.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 640
  %8 = lshr i32 %4, 3
  %mul.i = and i32 %8, 536870908
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #8, !srcloc !34
  %9 = ptrtoint ptr %chip_data1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip_data1.i, align 4
  %11 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq.i, align 4
  %rem.i17 = and i32 %12, 31
  %shl.i18 = shl nuw i32 1, %rem.i17
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl.i18) #8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %add.ptr.i19 = getelementptr i8, ptr %15, i32 448
  %16 = lshr i32 %12, 3
  %mul.i20 = and i32 %16, 536870908
  %add.ptr2.i21 = getelementptr i8, ptr %add.ptr.i19, i32 %mul.i20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i21, i32 %13) #8, !srcloc !34
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_data1.i22 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %17 = ptrtoint ptr %chip_data1.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_data1.i22, align 4
  %hwirq.i23 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %hwirq.i23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwirq.i23, align 4
  %rem.i24 = and i32 %20, 31
  %shl.i25 = shl nuw i32 1, %rem.i24
  %21 = tail call i32 @llvm.bswap.i32(i32 %shl.i25) #8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %add.ptr.i26 = getelementptr i8, ptr %23, i32 576
  %24 = lshr i32 %20, 3
  %mul.i27 = and i32 %24, 536870908
  %add.ptr2.i28 = getelementptr i8, ptr %add.ptr.i26, i32 %mul.i27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i28, i32 %21) #8, !srcloc !34
  %25 = ptrtoint ptr %chip_data1.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip_data1.i22, align 4
  %27 = ptrtoint ptr %hwirq.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwirq.i23, align 4
  %rem.i31 = and i32 %28, 31
  %shl.i32 = shl nuw i32 1, %rem.i31
  %29 = tail call i32 @llvm.bswap.i32(i32 %shl.i32) #8
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %26, align 4
  %add.ptr.i33 = getelementptr i8, ptr %31, i32 448
  %32 = lshr i32 %28, 3
  %mul.i34 = and i32 %32, 536870908
  %add.ptr2.i35 = getelementptr i8, ptr %add.ptr.i33, i32 %mul.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i35, i32 %29) #8, !srcloc !34
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_data1.i36 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %33 = ptrtoint ptr %chip_data1.i36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip_data1.i36, align 4
  %hwirq.i37 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %35 = ptrtoint ptr %hwirq.i37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hwirq.i37, align 4
  %rem.i38 = and i32 %36, 31
  %shl.i39 = shl nuw i32 1, %rem.i38
  %37 = tail call i32 @llvm.bswap.i32(i32 %shl.i39) #8
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 4
  %add.ptr.i40 = getelementptr i8, ptr %39, i32 640
  %40 = lshr i32 %36, 3
  %mul.i41 = and i32 %40, 536870908
  %add.ptr2.i42 = getelementptr i8, ptr %add.ptr.i40, i32 %mul.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i42, i32 %37) #8, !srcloc !34
  %41 = ptrtoint ptr %chip_data1.i36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip_data1.i36, align 4
  %43 = ptrtoint ptr %hwirq.i37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hwirq.i37, align 4
  %rem.i45 = and i32 %44, 31
  %shl.i46 = shl nuw i32 1, %rem.i45
  %45 = tail call i32 @llvm.bswap.i32(i32 %shl.i46) #8
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %42, align 4
  %add.ptr.i47 = getelementptr i8, ptr %47, i32 384
  %48 = lshr i32 %44, 3
  %mul.i48 = and i32 %48, 536870908
  %add.ptr2.i49 = getelementptr i8, ptr %add.ptr.i47, i32 %mul.i48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i49, i32 %45) #8, !srcloc !34
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_data1.i50 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %49 = ptrtoint ptr %chip_data1.i50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip_data1.i50, align 4
  %hwirq.i51 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %51 = ptrtoint ptr %hwirq.i51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hwirq.i51, align 4
  %rem.i52 = and i32 %52, 31
  %shl.i53 = shl nuw i32 1, %rem.i52
  %53 = tail call i32 @llvm.bswap.i32(i32 %shl.i53) #8
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %50, align 4
  %add.ptr.i54 = getelementptr i8, ptr %55, i32 576
  %56 = lshr i32 %52, 3
  %mul.i55 = and i32 %56, 536870908
  %add.ptr2.i56 = getelementptr i8, ptr %add.ptr.i54, i32 %mul.i55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i56, i32 %53) #8, !srcloc !34
  %57 = ptrtoint ptr %chip_data1.i50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip_data1.i50, align 4
  %59 = ptrtoint ptr %hwirq.i51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hwirq.i51, align 4
  %rem.i59 = and i32 %60, 31
  %shl.i60 = shl nuw i32 1, %rem.i59
  %61 = tail call i32 @llvm.bswap.i32(i32 %shl.i60) #8
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %58, align 4
  %add.ptr.i61 = getelementptr i8, ptr %63, i32 384
  %64 = lshr i32 %60, 3
  %mul.i62 = and i32 %64, 536870908
  %add.ptr2.i63 = getelementptr i8, ptr %add.ptr.i61, i32 %mul.i62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i63, i32 %61) #8, !srcloc !34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 6
  %65 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parent_data, align 4
  %chip = getelementptr inbounds %struct.irq_data, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chip, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq_set_type, align 4
  %call = tail call i32 %70(ptr noundef %66, i32 noundef %type) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cirq_suspend() #5 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %pending = alloca i8, align 1
  %masked = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pending) #8
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pending, align 1, !annotation !35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %masked) #8
  %1 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %masked, align 1, !annotation !35
  %2 = load ptr, ptr @cirq_data, align 4
  %ext_irq_end = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %ext_irq_end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ext_irq_end, align 4
  %ext_irq_start = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %ext_irq_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ext_irq_start, align 4
  %sub = add i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %6)
  %cmp27.not = icmp eq i32 %sub, %6
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %add = sub i32 %sub, %6
  %umax = call i32 @llvm.umax.i32(i32 %add, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %7 = load ptr, ptr @cirq_data, align 4
  %domain = getelementptr inbounds %struct.mtk_cirq_chip_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %irq.i, align 4, !annotation !35
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %9, i32 noundef %i.028, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  br label %if.end10

irq_find_mapping.exit:                            ; preds = %for.body
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %irq_find_mapping.exit.if.end10_crit_edge, label %if.then

irq_find_mapping.exit.if.end10_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %irq_find_mapping.exit
  %call1 = call i32 @irq_get_irqchip_state(i32 noundef %12, i32 noundef 0, ptr noundef nonnull %pending) #8
  %call2 = call i32 @irq_get_irqchip_state(i32 noundef %12, i32 noundef 2, ptr noundef nonnull %masked) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3 = icmp eq i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp eq i32 %call2, 0
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %land.lhs.true5, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true5:                                   ; preds = %if.then
  %13 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pending, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %land.lhs.true5.if.end10_crit_edge, label %land.lhs.true7

land.lhs.true5.if.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %15 = ptrtoint ptr %masked to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %masked, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  br i1 %tobool8.not, label %land.lhs.true7.for.inc_crit_edge, label %land.lhs.true7.if.end10_crit_edge

land.lhs.true7.if.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end10:                                         ; preds = %land.lhs.true7.if.end10_crit_edge, %land.lhs.true5.if.end10_crit_edge, %if.then.if.end10_crit_edge, %irq_find_mapping.exit.if.end10_crit_edge, %irq_find_mapping.exit.thread
  %rem24 = and i32 %i.028, 31
  %shl = shl nuw i32 1, %rem24
  %17 = call i32 @llvm.bswap.i32(i32 %shl)
  %18 = load ptr, ptr @cirq_data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 64
  %div = sdiv i32 %i.028, 32
  %mul = shl nsw i32 %div, 2
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %mul
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %17) #8, !srcloc !34
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %land.lhs.true7.for.inc_crit_edge
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %21 = load ptr, ptr @cirq_data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %add.ptr13 = getelementptr i8, ptr %23, i32 768
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !37
  %25 = or i32 %24, 50331648
  %26 = load ptr, ptr @cirq_data, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %add.ptr16 = getelementptr i8, ptr %28, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %25) #8, !srcloc !34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %masked) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pending) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cirq_resume() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cirq_data, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 768
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !37
  %4 = or i32 %3, 67108864
  %5 = load ptr, ptr @cirq_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #8, !srcloc !34
  %8 = load ptr, ptr @cirq_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 768
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !37
  %12 = and i32 %11, -50331649
  %13 = load ptr, ptr @cirq_data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr9 = getelementptr i8, ptr %15, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #8, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_irqchip_state(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__of_table_mtk_cirq, !1, !"__of_table_mtk_cirq", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-mtk-cirq.c", i32 298, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-mtk-cirq.c", i32 252, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_cirq_of_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_cirq_of_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-mtk-cirq.c", i32 262, i32 3}
!10 = !{ptr @mtk_cirq_of_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_cirq_of_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-mtk-cirq.c", i32 267, i32 41}
!14 = !{ptr @cirq_data, !15, !"cirq_data", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-mtk-cirq.c", i32 38, i32 35}
!16 = !{ptr @cirq_domain_ops, !17, !"cirq_domain_ops", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-mtk-cirq.c", i32 154, i32 36}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-mtk-cirq.c", i32 92, i32 12}
!20 = !{ptr @mtk_cirq_chip, !21, !"mtk_cirq_chip", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-mtk-cirq.c", i32 91, i32 24}
!22 = !{ptr @mtk_cirq_syscore_ops, !23, !"mtk_cirq_syscore_ops", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-mtk-cirq.c", i32 230, i32 27}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 4203704}
!35 = !{!"auto-init"}
!36 = !{i8 0, i8 2}
!37 = !{i64 4204122}
