; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-loongson-pch-pic.c_pt.bc'
source_filename = "../drivers/irqchip/irq-loongson-pch-pic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.pch_pic = type { ptr, ptr, i32, %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@__of_table_pch_pic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"loongson,pch-pic-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pch_pic_of_init }, section "__irqchip_of_table", align 4
@pch_pic_of_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->pic_lock\00", [16 x i8] zeroinitializer }, align 32
@pch_pic_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pch-pic: Failed to find the parent domain\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_pic_of_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/irqchip/irq-loongson-pch-pic.c\00", [57 x i8] zeroinitializer }, align 32
@pch_pic_of_init._entry_ptr = internal global ptr @pch_pic_of_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"loongson,pic-base-vec\00", [42 x i8] zeroinitializer }, align 32
@pch_pic_of_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pch-pic: Failed to determine pic-base-vec\0A\00", [51 x i8] zeroinitializer }, align 32
@pch_pic_of_init._entry_ptr.7 = internal global ptr @pch_pic_of_init._entry.5, section ".printk_index", align 4
@pch_pic_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_pic_alloc, ptr @irq_domain_free_irqs_parent, ptr null, ptr null, ptr @irq_domain_translate_twocell, ptr null }, [52 x i8] zeroinitializer }, align 32
@pch_pic_of_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013pch-pic: Failed to create IRQ domain\0A\00", [56 x i8] zeroinitializer }, align 32
@pch_pic_of_init._entry_ptr.10 = internal global ptr @pch_pic_of_init._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pch_pic_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr @pch_pic_ack_irq, ptr @pch_pic_mask_irq, ptr null, ptr @pch_pic_unmask_irq, ptr null, ptr @irq_chip_set_affinity_parent, ptr null, ptr @pch_pic_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCH PIC\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 212, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 221, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 226, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 228, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"pch_pic_domain_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 172, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 239, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"pch_pic_irq_chip\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 133, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [42 x i8] c"../drivers/irqchip/irq-loongson-pch-pic.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 134, i32 12 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__of_table_pch_pic, ptr @pch_pic_of_init._entry, ptr @pch_pic_of_init._entry.5, ptr @pch_pic_of_init._entry.8, ptr @pch_pic_of_init._entry_ptr, ptr @pch_pic_of_init._entry_ptr.10, ptr @pch_pic_of_init._entry_ptr.7, ptr @pch_pic_of_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @pch_pic_domain_ops, ptr @.str.9, ptr @pch_pic_irq_chip, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_pic_of_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_pic_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_pic_of_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_pic_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_pic_of_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_pic_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_pic_of_init(ptr noundef %node, ptr noundef %parent) #0 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %pic_lock = getelementptr inbounds %struct.pch_pic, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %pic_lock, ptr noundef nonnull @.str, ptr noundef nonnull @pch_pic_of_init.__key, i16 noundef signext 2) #6
  %call1 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.body.free_priv_crit_edge, label %if.end5

do.body.free_priv_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_priv

if.end5:                                          ; preds = %do.body
  %tobool.not.i.i.i = icmp eq ptr %parent, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #6
  %2 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 68)
  %4 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

irq_find_host.exit:                               ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #6
  %5 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 68)
  %7 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #6
  %tobool7.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool7.not, label %irq_find_host.exit.iounmap_base_crit_edge, label %irq_find_host.exit.if.end13_crit_edge

irq_find_host.exit.if.end13_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

irq_find_host.exit.iounmap_base_crit_edge:        ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iounmap_base

if.end13:                                         ; preds = %irq_find_host.exit.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %d.0.i53 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end13_crit_edge ], [ %call.i.i.i, %if.end5.if.end13_crit_edge ]
  %ht_vec_base = getelementptr inbounds %struct.pch_pic, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef %ht_vec_base, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.end22, label %if.end13.iounmap_base_crit_edge

if.end13.iounmap_base_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %iounmap_base

if.end22:                                         ; preds = %if.end13
  %tobool.not.i50 = icmp eq ptr %node, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i50, ptr null, ptr %fwnode.i
  %call24 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i53, i32 noundef 0, i32 noundef 64, ptr noundef %spec.select.i, ptr noundef nonnull @pch_pic_domain_ops, ptr noundef nonnull %call7.i.i) #6
  %pic_domain = getelementptr inbounds %struct.pch_pic, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %pic_domain to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %pic_domain, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end22.iounmap_base_crit_edge, label %if.end22.do.body.i_crit_edge

if.end22.do.body.i_crit_edge:                     ; preds = %if.end22
  br label %do.body.i

if.end22.iounmap_base_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %iounmap_base

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end22.do.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end22.do.body.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %ht_vec_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ht_vec_base, align 8
  %add.i = add i32 %10, %i.052.i
  %conv.i = trunc i32 %add.i to i8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %add1.i = add nuw nsw i32 %i.052.i, 512
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add1.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #6, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %add6.i = add nuw nsw i32 %i.052.i, 256
  %add.ptr7.i = getelementptr i8, ptr %14, i32 %add6.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 1) #6, !srcloc !37
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %pch_pic_reset.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

pch_pic_reset.exit:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %16, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 -1) #6, !srcloc !39
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %18, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 -1) #6, !srcloc !39
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %20, i32 192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #6, !srcloc !39
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %22, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #6, !srcloc !39
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  %add.ptr28.i = getelementptr i8, ptr %24, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 -1) #6, !srcloc !39
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %add.ptr14.1.i = getelementptr i8, ptr %26, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.1.i, i32 -1) #6, !srcloc !39
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %add.ptr18.1.i = getelementptr i8, ptr %28, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.1.i, i32 -1) #6, !srcloc !39
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %add.ptr22.1.i = getelementptr i8, ptr %30, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.1.i, i32 0) #6, !srcloc !39
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %add.ptr26.1.i = getelementptr i8, ptr %32, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.1.i, i32 0) #6, !srcloc !39
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  %add.ptr30.1.i = getelementptr i8, ptr %34, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.1.i, i32 -1) #6, !srcloc !39
  br label %cleanup

iounmap_base:                                     ; preds = %if.end22.iounmap_base_crit_edge, %if.end13.iounmap_base_crit_edge, %irq_find_host.exit.iounmap_base_crit_edge
  %.str.9.sink = phi ptr [ @.str.1, %irq_find_host.exit.iounmap_base_crit_edge ], [ @.str.6, %if.end13.iounmap_base_crit_edge ], [ @.str.9, %if.end22.iounmap_base_crit_edge ]
  %err.0 = phi i32 [ -6, %irq_find_host.exit.iounmap_base_crit_edge ], [ -22, %if.end13.iounmap_base_crit_edge ], [ -12, %if.end22.iounmap_base_crit_edge ]
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink) #10
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  call void @iounmap(ptr noundef %36) #6
  br label %free_priv

free_priv:                                        ; preds = %iounmap_base, %do.body.free_priv_crit_edge
  %err.1 = phi i32 [ %err.0, %iounmap_base ], [ -12, %do.body.free_priv_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_priv, %pch_pic_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_priv ], [ 0, %pch_pic_reset.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_pic_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef %arg) #0 align 64 {
entry:
  %type = alloca i32, align 4
  %hwirq = alloca i32, align 4
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwirq) #6
  %1 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hwirq, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #6
  %2 = getelementptr inbounds i8, ptr %parent_fwspec, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 60)
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  %call = call i32 @irq_domain_translate_twocell(ptr noundef %domain, ptr noundef %arg, ptr noundef nonnull %hwirq, ptr noundef nonnull %type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwnode, align 4
  %10 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %parent_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %11 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %param_count, align 4
  %12 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq, align 4
  %ht_vec_base = getelementptr inbounds %struct.pch_pic, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %ht_vec_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ht_vec_base, align 4
  %add = add i32 %15, %13
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %16 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %param, align 4
  %call2 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef 1, ptr noundef nonnull %parent_fwspec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq, align 4
  call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %virq, i32 noundef %18, ptr noundef nonnull @pch_pic_irq_chip, ptr noundef %5, ptr noundef nonnull @handle_level_irq, ptr noundef null, ptr noundef null) #6
  call void @irq_modify_status(i32 noundef %virq, i32 noundef 1024, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwirq) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_translate_twocell(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_pic_ack_irq(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 96
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %6 = lshr i32 %5, 3
  %mul = and i32 %6, 536870908
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !41
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %9 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq, align 4
  %rem = and i32 %10, 31
  %shl = shl nuw i32 1, %rem
  %and = and i32 %shl, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq, align 4
  %rem6 = and i32 %12, 31
  %shl7 = shl nuw i32 1, %rem6
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl7)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr9 = getelementptr i8, ptr %15, i32 128
  %16 = lshr i32 %12, 3
  %mul12 = and i32 %16, 536870908
  %add.ptr13 = getelementptr i8, ptr %add.ptr9, i32 %mul12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %13) #6, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @irq_chip_ack_parent(ptr noundef %d) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_pic_mask_irq(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %div.i = sdiv i32 %3, 32
  %mul.i = shl nsw i32 %div.i, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %pic_lock.i = getelementptr inbounds %struct.pch_pic, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i) #6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %rem9.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem9.i
  %or.i = or i32 %7, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %8) #6, !srcloc !39
  tail call void @_raw_spin_unlock(ptr noundef %pic_lock.i) #6
  tail call void @irq_chip_mask_parent(ptr noundef %d) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_pic_unmask_irq(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 128
  %7 = lshr i32 %3, 3
  %mul = and i32 %7, 536870908
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #6, !srcloc !39
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #6
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 32
  %div.i = sdiv i32 %9, 32
  %mul.i = shl nsw i32 %div.i, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %pic_lock.i = getelementptr inbounds %struct.pch_pic, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i) #6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !41
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %rem9.i = and i32 %9, 31
  %shl.i = shl nuw i32 1, %rem9.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %13, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %14) #6, !srcloc !39
  tail call void @_raw_spin_unlock(ptr noundef %pic_lock.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_pic_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb5
    i32 8, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 96
  %div.i = sdiv i32 %4, 32
  %mul.i = shl nsw i32 %div.i, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %pic_lock.i = getelementptr inbounds %struct.pch_pic, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i) #6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !41
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %rem9.i = and i32 %4, 31
  %shl.i = shl nuw i32 1, %rem9.i
  %or.i = or i32 %8, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %9) #6, !srcloc !39
  tail call void @_raw_spin_unlock(ptr noundef %pic_lock.i) #6
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i30 = getelementptr i8, ptr %13, i32 992
  %div.i31 = sdiv i32 %11, 32
  %mul.i32 = shl nsw i32 %div.i31, 2
  %add.ptr1.i33 = getelementptr i8, ptr %add.ptr.i30, i32 %mul.i32
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i) #6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i33) #6, !srcloc !41
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %rem9.i35 = and i32 %11, 31
  %shl.i36 = shl nuw i32 1, %rem9.i35
  %neg.i = xor i32 %shl.i36, -1
  %and.i = and i32 %15, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i33, i32 %16) #6, !srcloc !39
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq3 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %17 = ptrtoint ptr %hwirq3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq3, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i37 = getelementptr i8, ptr %20, i32 96
  %div.i38 = sdiv i32 %18, 32
  %mul.i39 = shl nsw i32 %div.i38, 2
  %add.ptr1.i40 = getelementptr i8, ptr %add.ptr.i37, i32 %mul.i39
  %pic_lock.i41 = getelementptr inbounds %struct.pch_pic, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i41) #6
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i40) #6, !srcloc !41
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %rem9.i42 = and i32 %18, 31
  %shl.i43 = shl nuw i32 1, %rem9.i42
  %or.i44 = or i32 %22, %shl.i43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i44) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i40, i32 %23) #6, !srcloc !39
  tail call void @_raw_spin_unlock(ptr noundef %pic_lock.i41) #6
  %24 = ptrtoint ptr %hwirq3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwirq3, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i45 = getelementptr i8, ptr %27, i32 992
  %div.i46 = sdiv i32 %25, 32
  %mul.i47 = shl nsw i32 %div.i46, 2
  %add.ptr1.i48 = getelementptr i8, ptr %add.ptr.i45, i32 %mul.i47
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i41) #6
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i48) #6, !srcloc !41
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %rem9.i50 = and i32 %25, 31
  %shl.i51 = shl nuw i32 1, %rem9.i50
  %or.i52 = or i32 %29, %shl.i51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i52) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i48, i32 %30) #6, !srcloc !39
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq6 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %31 = ptrtoint ptr %hwirq6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwirq6, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i55 = getelementptr i8, ptr %34, i32 96
  %div.i56 = sdiv i32 %32, 32
  %mul.i57 = shl nsw i32 %div.i56, 2
  %add.ptr1.i58 = getelementptr i8, ptr %add.ptr.i55, i32 %mul.i57
  %pic_lock.i59 = getelementptr inbounds %struct.pch_pic, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i59) #6
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58) #6, !srcloc !41
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %rem9.i60 = and i32 %32, 31
  %shl.i61 = shl nuw i32 1, %rem9.i60
  %neg.i62 = xor i32 %shl.i61, -1
  %and.i63 = and i32 %36, %neg.i62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %and.i63) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i58, i32 %37) #6, !srcloc !39
  tail call void @_raw_spin_unlock(ptr noundef %pic_lock.i59) #6
  %38 = ptrtoint ptr %hwirq6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hwirq6, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %add.ptr.i64 = getelementptr i8, ptr %41, i32 992
  %div.i65 = sdiv i32 %39, 32
  %mul.i66 = shl nsw i32 %div.i65, 2
  %add.ptr1.i67 = getelementptr i8, ptr %add.ptr.i64, i32 %mul.i66
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i59) #6
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i67) #6, !srcloc !41
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %rem9.i69 = and i32 %39, 31
  %shl.i70 = shl nuw i32 1, %rem9.i69
  %neg.i71 = xor i32 %shl.i70, -1
  %and.i72 = and i32 %43, %neg.i71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %and.i72) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i67, i32 %44) #6, !srcloc !39
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq9 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %45 = ptrtoint ptr %hwirq9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hwirq9, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr.i75 = getelementptr i8, ptr %48, i32 96
  %div.i76 = sdiv i32 %46, 32
  %mul.i77 = shl nsw i32 %div.i76, 2
  %add.ptr1.i78 = getelementptr i8, ptr %add.ptr.i75, i32 %mul.i77
  %pic_lock.i79 = getelementptr inbounds %struct.pch_pic, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i79) #6
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i78) #6, !srcloc !41
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %rem9.i80 = and i32 %46, 31
  %shl.i81 = shl nuw i32 1, %rem9.i80
  %neg.i82 = xor i32 %shl.i81, -1
  %and.i83 = and i32 %50, %neg.i82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %and.i83) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i78, i32 %51) #6, !srcloc !39
  tail call void @_raw_spin_unlock(ptr noundef %pic_lock.i79) #6
  %52 = ptrtoint ptr %hwirq9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hwirq9, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %add.ptr.i84 = getelementptr i8, ptr %55, i32 992
  %div.i85 = sdiv i32 %53, 32
  %mul.i86 = shl nsw i32 %div.i85, 2
  %add.ptr1.i87 = getelementptr i8, ptr %add.ptr.i84, i32 %mul.i86
  tail call void @_raw_spin_lock(ptr noundef %pic_lock.i79) #6
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i87) #6, !srcloc !41
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %rem9.i89 = and i32 %53, 31
  %shl.i90 = shl nuw i32 1, %rem9.i89
  %or.i91 = or i32 %57, %shl.i90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i91) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i87, i32 %58) #6, !srcloc !39
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %pic_lock.i79.sink = phi ptr [ %pic_lock.i79, %sw.bb8 ], [ %pic_lock.i59, %sw.bb5 ], [ %pic_lock.i41, %sw.bb2 ], [ %pic_lock.i, %sw.bb ]
  %handle_level_irq.sink = phi ptr [ @handle_level_irq, %sw.bb8 ], [ @handle_level_irq, %sw.bb5 ], [ @handle_edge_irq, %sw.bb2 ], [ @handle_edge_irq, %sw.bb ]
  tail call void @_raw_spin_unlock(ptr noundef %pic_lock.i79.sink) #6
  %common.i.i92 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %59 = ptrtoint ptr %common.i.i92 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %common.i.i92, align 4
  %handle_irq.i93 = getelementptr inbounds %struct.irq_desc, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %handle_irq.i93 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %handle_level_irq.sink, ptr %handle_irq.i93, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !19, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__of_table_pch_pic, !1, !"__of_table_pch_pic", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-loongson-pch-pic.c", i32 256, i32 1}
!2 = !{ptr @pch_pic_of_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-loongson-pch-pic.c", i32 212, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/irqchip/irq-loongson-pch-pic.c", i32 221, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pch_pic_of_init._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @pch_pic_of_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-loongson-pch-pic.c", i32 226, i32 33}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-loongson-pch-pic.c", i32 228, i32 3}
!15 = !{ptr @pch_pic_of_init._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @pch_pic_of_init._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/irq-loongson-pch-pic.c", i32 239, i32 3}
!19 = !{ptr @pch_pic_of_init._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @pch_pic_of_init._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @pch_pic_domain_ops, !22, !"pch_pic_domain_ops", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-loongson-pch-pic.c", i32 172, i32 36}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-loongson-pch-pic.c", i32 134, i32 12}
!25 = !{ptr @pch_pic_irq_chip, !26, !"pch_pic_irq_chip", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-loongson-pch-pic.c", i32 133, i32 24}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2153648171}
!37 = !{i64 4202433}
!38 = !{i64 2153648486}
!39 = !{i64 4202630}
!40 = !{!"auto-init"}
!41 = !{i64 4203048}
!42 = !{i64 2153646913}
!43 = !{i64 2153647519}
!44 = !{i64 2153643847}
!45 = !{i64 2153644175}
!46 = !{i64 2153645888}
!47 = !{i64 2153644885}
!48 = !{i64 2153645213}
