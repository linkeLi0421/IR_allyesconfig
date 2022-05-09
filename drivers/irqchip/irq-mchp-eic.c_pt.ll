; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-mchp-eic.c_pt.bc'
source_filename = "../drivers/irqchip/irq-mchp-eic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.mchp_eic = type { ptr, ptr, ptr, [2 x i32], [2 x i32], i32 }
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

@__initcall__kmod_irq_mchp_eic__187_276_mchp_eic_driver_init6 = internal global ptr @mchp_eic_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description188 = internal constant [65 x i8] c"irq_mchp_eic.description=Microchip External Interrupt Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [47 x i8] c"irq_mchp_eic.file=drivers/irqchip/irq-mchp-eic\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [28 x i8] c"irq_mchp_eic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [66 x i8] c"irq_mchp_eic.author=Claudiu Beznea <claudiu.beznea@microchip.com>\00", section ".modinfo", align 1
@mchp_eic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @mchp_eic_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mchp_eic\00", [23 x i8] zeroinitializer }, align 32
@mchp_eic_irqchip_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-eic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp_eic_init }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@eic = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/irqchip/irq-mchp-eic.c\00", [33 x i8] zeroinitializer }, align 32
@mchp_eic_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mchp_eic_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @irq_domain_translate_twocell, ptr null }, [52 x i8] zeroinitializer }, align 32
@mchp_eic_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOF: Failed to add domain\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mchp_eic_init\00", [18 x i8] zeroinitializer }, align 32
@mchp_eic_init._entry_ptr = internal global ptr @mchp_eic_init._entry, section ".printk_index", align 4
@mchp_eic_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mchp_eic_irq_suspend, ptr @mchp_eic_irq_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@mchp_eic_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%pOF: EIC registered, nr_irqs %u\0A\00", [60 x i8] zeroinitializer }, align 32
@mchp_eic_init._entry_ptr.7 = internal global ptr @mchp_eic_init._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mchp_eic_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @mchp_eic_irq_mask, ptr null, ptr @mchp_eic_irq_unmask, ptr @irq_chip_eoi_parent, ptr null, ptr @irq_chip_retrigger_hierarchy, ptr @mchp_eic_irq_set_type, ptr @mchp_eic_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 5 }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eic\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"mchp_eic_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 276, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"mchp_eic_irqchip_match_table\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 274, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [4 x i8] c"eic\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 45, i32 25 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 223, i32 38 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 243, i32 7 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"mchp_eic_domain_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 196, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 254, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"mchp_eic_syscore_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 138, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 261, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"mchp_eic_chip\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 143, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [34 x i8] c"../drivers/irqchip/irq-mchp-eic.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 144, i32 11 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__initcall__kmod_irq_mchp_eic__187_276_mchp_eic_driver_init6, ptr @mchp_eic_init._entry, ptr @mchp_eic_init._entry.5, ptr @mchp_eic_init._entry_ptr, ptr @mchp_eic_init._entry_ptr.7, ptr @mchp_eic_driver, ptr @.str, ptr @mchp_eic_irqchip_match_table, ptr @eic, ptr @.str.1, ptr @.str.2, ptr @mchp_eic_domain_ops, ptr @.str.3, ptr @.str.4, ptr @mchp_eic_syscore_ops, ptr @.str.6, ptr @mchp_eic_chip, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_eic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_eic_irqchip_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_eic_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_eic_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_eic_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_eic_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_eic_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_eic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mchp_eic_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_eic_init(ptr noundef %node, ptr noundef %parent) #2 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %irq = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #10
  store ptr %call7.i.i, ptr @eic, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %1 = load ptr, ptr @eic, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %1, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.free_crit_edge, label %if.end5

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end5:                                          ; preds = %if.end
  %tobool.not.i.i.i = icmp eq ptr %parent, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

irq_find_host.exit:                               ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %6 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 68)
  %8 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %tobool7.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool7.not, label %irq_find_host.exit.unmap_crit_edge, label %irq_find_host.exit.if.end9_crit_edge

irq_find_host.exit.if.end9_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

irq_find_host.exit.unmap_crit_edge:               ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap

if.end9:                                          ; preds = %irq_find_host.exit.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %d.0.i90 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end9_crit_edge ], [ %call.i.i.i, %if.end5.if.end9_crit_edge ]
  %call10 = call ptr @of_clk_get_by_name(ptr noundef %node, ptr noundef nonnull @.str.1) #7
  %9 = load ptr, ptr @eic, align 4
  %clk = getelementptr inbounds %struct.mchp_eic, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call10 to i32
  br label %unmap

if.end16:                                         ; preds = %if.end9
  %call.i = call i32 @clk_prepare(ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i86 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i86, label %if.end.i, label %if.end16.unmap_crit_edge

if.end16.unmap_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap

if.end.i:                                         ; preds = %if.end16
  %call1.i = call i32 @clk_enable(ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader, label %if.then3.i

for.cond.preheader:                               ; preds = %if.end.i
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %irq, i32 0, i32 1
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, ptr %irq, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %irq) #7
  %12 = call ptr @memset(ptr %irq, i32 255, i32 72)
  %13 = load ptr, ptr @eic, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !45
  %call23 = call i32 @of_irq_parse_one(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %for.cond.preheader.cleanup.thread_crit_edge

for.cond.preheader.cleanup.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call10) #7
  br label %unmap

if.end26:                                         ; preds = %for.cond.preheader
  %16 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp27.not = icmp eq i32 %17, 3
  br i1 %cmp27.not, label %for.inc, label %if.end26.do.end_crit_edge, !prof !46

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end26.1.do.end_crit_edge, %if.end26.do.end_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 243, i32 noundef 9, ptr noundef null) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc.cleanup.thread_crit_edge, %do.end, %for.cond.preheader.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %do.end ], [ %call23, %for.cond.preheader.cleanup.thread_crit_edge ], [ %call23.1, %for.inc.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %irq) #7
  br label %clk_unprepare

for.inc:                                          ; preds = %if.end26
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = load ptr, ptr @eic, align 4
  %arrayidx52 = getelementptr %struct.mchp_eic, ptr %20, i32 0, i32 3, i32 0
  %21 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %arrayidx52, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %irq) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %irq) #7
  %22 = call ptr @memset(ptr %irq, i32 255, i32 72)
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %add.ptr.1 = getelementptr i8, ptr %24, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 0) #7, !srcloc !45
  %call23.1 = call i32 @of_irq_parse_one(ptr noundef %node, i32 noundef 1, ptr noundef nonnull %irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.1)
  %tobool24.not.1 = icmp eq i32 %call23.1, 0
  br i1 %tobool24.not.1, label %if.end26.1, label %for.inc.cleanup.thread_crit_edge

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end26.1:                                       ; preds = %for.inc
  %25 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp27.not.1 = icmp eq i32 %26, 3
  br i1 %cmp27.not.1, label %for.inc.1, label %if.end26.1.do.end_crit_edge, !prof !46

if.end26.1.do.end_crit_edge:                      ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.1:                                        ; preds = %if.end26.1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %29 = load ptr, ptr @eic, align 4
  %arrayidx52.1 = getelementptr %struct.mchp_eic, ptr %29, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx52.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %arrayidx52.1, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %irq) #7
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i87 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i90, i32 noundef 0, i32 noundef 2, ptr noundef %spec.select.i.i, ptr noundef nonnull @mchp_eic_domain_ops, ptr noundef %29) #7
  %31 = load ptr, ptr @eic, align 4
  %domain = getelementptr inbounds %struct.mchp_eic, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1.i87, ptr %domain, align 4
  %tobool55.not = icmp eq ptr %call1.i87, null
  br i1 %tobool55.not, label %do.end59, label %if.end62

do.end59:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %node) #11
  br label %clk_unprepare

if.end62:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @register_syscore_ops(ptr noundef nonnull @mchp_eic_syscore_ops) #7
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %node, i32 noundef 2) #11
  br label %cleanup70

clk_unprepare:                                    ; preds = %do.end59, %cleanup.thread
  %ret.1 = phi i32 [ -19, %do.end59 ], [ %ret.0.ph, %cleanup.thread ]
  %33 = load ptr, ptr @eic, align 4
  %clk68 = getelementptr inbounds %struct.mchp_eic, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %clk68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk68, align 4
  call void @clk_disable(ptr noundef %35) #7
  call void @clk_unprepare(ptr noundef %35) #7
  br label %unmap

unmap:                                            ; preds = %clk_unprepare, %if.then3.i, %if.end16.unmap_crit_edge, %if.then13, %irq_find_host.exit.unmap_crit_edge
  %ret.2 = phi i32 [ %11, %if.then13 ], [ %ret.1, %clk_unprepare ], [ -19, %irq_find_host.exit.unmap_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end16.unmap_crit_edge ]
  %36 = load ptr, ptr @eic, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  call void @iounmap(ptr noundef %38) #7
  br label %free

free:                                             ; preds = %unmap, %if.end.free_crit_edge
  %ret.3 = phi i32 [ %ret.2, %unmap ], [ -12, %if.end.free_crit_edge ]
  %39 = load ptr, ptr @eic, align 4
  call void @kfree(ptr noundef %39) #7
  br label %cleanup70

cleanup70:                                        ; preds = %free, %if.end62, %entry.cleanup70_crit_edge
  %retval.0 = phi i32 [ %ret.3, %free ], [ 0, %if.end62 ], [ -12, %entry.cleanup70_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_eic_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef %data) #2 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  %hwirq = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #7
  %0 = getelementptr inbounds i8, ptr %parent_fwspec, i32 20
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwirq) #7
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hwirq, align 4, !annotation !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #7
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %type, align 4, !annotation !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !46

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 164, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  %call = call i32 @irq_domain_translate_twocell(ptr noundef %domain, ptr noundef %data, ptr noundef nonnull %hwirq, ptr noundef nonnull %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end21
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp23 = icmp ugt i32 %5, 1
  br i1 %cmp23, label %lor.lhs.false.cleanup_crit_edge, label %if.end25

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end25.cleanup_crit_edge [
    i32 1, label %if.end25.sw.epilog_crit_edge
    i32 4, label %if.end25.sw.epilog_crit_edge46
    i32 2, label %sw.bb26
    i32 8, label %sw.bb27
  ]

if.end25.sw.epilog_crit_edge46:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb26:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb26, %if.end25.sw.epilog_crit_edge, %if.end25.sw.epilog_crit_edge46
  %11 = load ptr, ptr @eic, align 4
  %call28 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %5, ptr noundef nonnull @mchp_eic_chip, ptr noundef %11) #7
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fwnode, align 4
  %16 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %parent_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %17 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %param_count, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %18 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %param, align 4
  %19 = load ptr, ptr @eic, align 4
  %20 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwirq, align 4
  %arrayidx30 = getelementptr %struct.mchp_eic, ptr %19, i32 0, i32 3, i32 %21
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx30, align 4
  %arrayidx32 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx32, align 4
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  %arrayidx34 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx34, align 4
  %call35 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef 1, ptr noundef nonnull %parent_fwspec) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end25.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call35, %sw.epilog ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %if.end21.cleanup_crit_edge ], [ -22, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwirq) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_translate_twocell(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mchp_eic_irq_mask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @eic, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %4, 2
  %add = add i32 %mul, 4
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !48
  %6 = and i32 %5, -257
  %7 = load ptr, ptr @eic, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %mul4 = shl i32 %11, 2
  %add5 = add i32 %mul4, 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %6) #7, !srcloc !45
  tail call void @irq_chip_mask_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mchp_eic_irq_unmask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @eic, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %4, 2
  %add = add i32 %mul, 4
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !48
  %6 = or i32 %5, 256
  %7 = load ptr, ptr @eic, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %mul4 = shl i32 %11, 2
  %add5 = add i32 %mul4, 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %6) #7, !srcloc !45
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_eic_irq_set_type(ptr noundef %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @eic, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %mul = shl i32 %4, 2
  %add = add i32 %mul, 4
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !48
  %6 = and i32 %5, -196609
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 8, label %sw.bb2
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %7, 768
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or3 = or i32 %7, 512
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %7, 256
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %tmp.0 = phi i32 [ %or6, %sw.bb5 ], [ %or3, %sw.bb2 ], [ %or, %sw.bb ], [ %7, %entry.sw.epilog_crit_edge ]
  %parent_irq_type.0 = phi i32 [ 1, %sw.bb5 ], [ 4, %sw.bb2 ], [ 4, %sw.bb ], [ %type, %entry.sw.epilog_crit_edge ]
  %9 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  %10 = load ptr, ptr @eic, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  %mul9 = shl i32 %14, 2
  %add10 = add i32 %mul9, 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %9) #7, !srcloc !45
  %call12 = tail call i32 @irq_chip_set_type_parent(ptr noundef %d, i32 noundef %parent_irq_type.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_eic_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @eic, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.mchp_eic, ptr %0, i32 0, i32 3, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef %on) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %5 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq, align 4
  %shl3 = shl nuw i32 1, %6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load ptr, ptr @eic, align 4
  %wakeup_source = getelementptr inbounds %struct.mchp_eic, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %wakeup_source to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wakeup_source, align 4
  %or = or i32 %9, %shl3
  store i32 %or, ptr %wakeup_source, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl3, -1
  %10 = load ptr, ptr @eic, align 4
  %wakeup_source4 = getelementptr inbounds %struct.mchp_eic, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %wakeup_source4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wakeup_source4, align 4
  %and = and i32 %12, %neg
  store i32 %and, ptr %wakeup_source4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_eic_irq_suspend() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @eic, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !48
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = load ptr, ptr @eic, align 4
  %arrayidx = getelementptr %struct.mchp_eic, ptr %5, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %add.ptr.1 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #7, !srcloc !48
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = load ptr, ptr @eic, align 4
  %arrayidx.1 = getelementptr %struct.mchp_eic, ptr %11, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %arrayidx.1, align 4
  %wakeup_source = getelementptr inbounds %struct.mchp_eic, ptr %11, i32 0, i32 5
  %13 = ptrtoint ptr %wakeup_source to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wakeup_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.mchp_eic, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mchp_eic_irq_resume() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @eic, align 4
  %wakeup_source = getelementptr inbounds %struct.mchp_eic, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %wakeup_source to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wakeup_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.mchp_eic, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = load ptr, ptr @eic, align 4
  %arrayidx = getelementptr %struct.mchp_eic, ptr %5, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !45
  %11 = load ptr, ptr @eic, align 4
  %arrayidx.1 = getelementptr %struct.mchp_eic, ptr %11, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 4
  %add.ptr.1 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %14) #7, !srcloc !45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_irq_mchp_eic__187_276_mchp_eic_driver_init6, !1, !"__initcall__kmod_irq_mchp_eic__187_276_mchp_eic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 276, i32 1}
!2 = !{ptr @__UNIQUE_ID_description188, !3, !"__UNIQUE_ID_description188", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 278, i32 1}
!4 = !{ptr @__UNIQUE_ID_file189, !5, !"__UNIQUE_ID_file189", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 279, i32 1}
!6 = !{ptr @__UNIQUE_ID_license190, !5, !"__UNIQUE_ID_license190", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author191, !8, !"__UNIQUE_ID_author191", i1 false, i1 false}
!8 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 280, i32 1}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mchp_eic_driver, !1, !"mchp_eic_driver", i1 false, i1 false}
!11 = !{ptr @mchp_eic_irqchip_match_table, !12, !"mchp_eic_irqchip_match_table", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 274, i32 1}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 223, i32 38}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 243, i32 7}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 254, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mchp_eic_init._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @mchp_eic_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 261, i32 2}
!24 = !{ptr @mchp_eic_init._entry.5, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mchp_eic_init._entry_ptr.7, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @eic, !27, !"eic", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 45, i32 25}
!28 = !{ptr @mchp_eic_domain_ops, !29, !"mchp_eic_domain_ops", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 196, i32 36}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 144, i32 11}
!32 = !{ptr @mchp_eic_chip, !33, !"mchp_eic_chip", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 143, i32 24}
!34 = !{ptr @mchp_eic_syscore_ops, !35, !"mchp_eic_syscore_ops", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-mchp-eic.c", i32 138, i32 27}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 4241933}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{!"auto-init"}
!48 = !{i64 4242351}
