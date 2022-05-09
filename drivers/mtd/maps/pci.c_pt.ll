; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/pci.c_pt.bc'
source_filename = "../drivers/mtd/maps/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_pci_info = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.map_pci_info = type { %struct.map_info, ptr, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.75 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.75 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%union.map_word = type { [8 x i32] }

@__initcall__kmod_pci__238_325_mtd_pci_driver_init6 = internal global ptr @mtd_pci_driver_init, section ".initcall6.init", align 4
@mtd_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mtd_pci_ids, ptr @mtd_pci_probe, ptr @mtd_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mtd_pci_driver_exit = internal global ptr @mtd_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [30 x i8] c"pci.file=drivers/mtd/maps/pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [16 x i8] c"pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [47 x i8] c"pci.author=Russell King <rmk@arm.linux.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [39 x i8] c"pci.description=Generic PCI map driver\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MTD PCI\00", [24 x i8] zeroinitializer }, align 32
@mtd_pci_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 21261, i32 -1, i32 -1, i32 360448, i32 16776960, i32 ptrtoint (ptr @intel_iq80310_info to i32), i32 0 }, %struct.pci_device_id { i32 4113, i32 4197, i32 0, i32 0, i32 0, i32 0, i32 ptrtoint (ptr @intel_dc21285_info to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@intel_iq80310_info = internal global { %struct.mtd_pci_info, [16 x i8] } { %struct.mtd_pci_info { ptr @intel_iq80310_init, ptr @intel_iq80310_exit, ptr @intel_iq80310_translate, ptr @.str.2 }, [16 x i8] zeroinitializer }, align 32
@intel_dc21285_info = internal global { %struct.mtd_pci_info, [16 x i8] } { %struct.mtd_pci_info { ptr @intel_dc21285_init, ptr @intel_dc21285_exit, ptr @intel_dc21285_translate, ptr @.str.3 }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_probe\00", [20 x i8] zeroinitializer }, align 32
@intel_dc21285_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: enabling expansion ROM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel_dc21285_init\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mtd/maps/pci.c\00", [41 x i8] zeroinitializer }, align 32
@intel_dc21285_init._entry_ptr = internal global ptr @intel_dc21285_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci mtd\00", [24 x i8] zeroinitializer }, align 32
@mtd_pci_map = internal constant { %struct.map_info, [52 x i8] } { %struct.map_info { ptr null, i32 0, i32 -1, ptr null, ptr null, i32 0, i32 0, ptr null, ptr @mtd_pci_copyfrom, ptr null, ptr @mtd_pci_copyto, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"mtd_pci_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 318, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 325, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 319, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"mtd_pci_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 228, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"intel_iq80310_info\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 144, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"intel_dc21285_info\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 217, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 148, i32 14 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 221, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 181, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 263, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"mtd_pci_map\00", align 1
@___asan_gen_.48 = private constant [26 x i8] c"../drivers/mtd/maps/pci.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 77, i32 30 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_mtd_pci_driver_exit, ptr @__initcall__kmod_pci__238_325_mtd_pci_driver_init6, ptr @intel_dc21285_init._entry, ptr @intel_dc21285_init._entry_ptr, ptr @mtd_pci_driver_exit, ptr @mtd_pci_driver, ptr @.str, ptr @.str.1, ptr @mtd_pci_ids, ptr @intel_iq80310_info, ptr @intel_dc21285_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mtd_pci_map], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pci_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_iq80310_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_dc21285_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_dc21285_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_pci_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtd_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mtd_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtd_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @mtd_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtd_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 92) #11
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.end4.if.end28_crit_edge, label %if.end8

if.end4.if.end28_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end8:                                          ; preds = %if.end4
  %4 = call ptr @memcpy(ptr %call7.i, ptr @mtd_pci_map, i32 76)
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.pci_name.exit_crit_edge

if.end8.pci_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end8.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end8.pci_name.exit_crit_edge ]
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i.i, ptr %call7.i, align 8
  %dev12 = getelementptr inbounds %struct.map_pci_info, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev12, align 8
  %exit = getelementptr inbounds %struct.mtd_pci_info, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %exit, align 4
  %exit13 = getelementptr inbounds %struct.map_pci_info, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %exit13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %exit13, align 8
  %translate = getelementptr inbounds %struct.mtd_pci_info, ptr %2, i32 0, i32 2
  %14 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %translate, align 4
  %translate14 = getelementptr inbounds %struct.map_pci_info, ptr %call7.i, i32 0, i32 3
  %16 = ptrtoint ptr %translate14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %translate14, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %call15 = tail call i32 %18(ptr noundef %dev, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %pci_name.exit.if.then26_crit_edge

pci_name.exit.if.then26_crit_edge:                ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.end18:                                         ; preds = %pci_name.exit
  %map_name = getelementptr inbounds %struct.mtd_pci_info, ptr %2, i32 0, i32 3
  %19 = ptrtoint ptr %map_name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map_name, align 4
  %call20 = tail call ptr @do_map_probe(ptr noundef %20, ptr noundef nonnull %call7.i) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end18.if.then26_crit_edge, label %if.end23

if.end18.if.then26_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %owner = getelementptr inbounds %struct.mtd_info, ptr %call20, i32 0, i32 55
  %21 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %owner, align 4
  %call24 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call20, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call20, ptr %driver_data.i.i, align 4
  br label %cleanup

if.then26:                                        ; preds = %if.end18.if.then26_crit_edge, %pci_name.exit.if.then26_crit_edge
  %err.0.ph = phi i32 [ -19, %if.end18.if.then26_crit_edge ], [ %call15, %pci_name.exit.if.then26_crit_edge ]
  %23 = ptrtoint ptr %exit13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exit13, align 8
  tail call void %24(ptr noundef %dev, ptr noundef nonnull %call7.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end4.if.end28_crit_edge
  %err.061 = phi i32 [ %err.0.ph, %if.then26 ], [ -12, %if.end4.if.end28_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %err.061, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtd_pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call1 = tail call i32 @mtd_device_unregister(ptr noundef %1) #8
  tail call void @map_destroy(ptr noundef %1) #8
  %exit = getelementptr inbounds %struct.map_pci_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exit, align 4
  tail call void %5(ptr noundef %dev, ptr noundef %3) #8
  tail call void @kfree(ptr noundef %3) #8
  tail call void @pci_release_regions(ptr noundef %dev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_iq80310_init(ptr noundef %dev, ptr nocapture noundef writeonly %map) #2 align 64 {
entry:
  %win_base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %win_base) #8
  %0 = ptrtoint ptr %win_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %win_base, align 4, !annotation !44
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %1 = ptrtoint ptr %bankwidth to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %bankwidth, align 4
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %2 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mtd_pci_read8, ptr %read, align 4
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %3 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mtd_pci_write8, ptr %write, align 4
  %size = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8388608, ptr %size, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %sub = sub i32 1, %6
  %add = add i32 %sub, %8
  %cond = select i1 %cmp, i32 0, i32 %add
  %call = tail call ptr @ioremap(i32 noundef %6, i32 noundef %cond) #8
  %base = getelementptr inbounds %struct.map_pci_info, ptr %map, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 68, ptr noundef nonnull %win_base) #8
  %call15 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 68, i32 noundef 0) #8
  %10 = ptrtoint ptr %win_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %win_base, align 4
  %map_priv_2 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 15
  %12 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %map_priv_2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %win_base) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_iq80310_exit(ptr noundef %dev, ptr nocapture noundef readonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.map_pci_info, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %map_priv_2 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 15
  %2 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_priv_2, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 68, i32 noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_iq80310_translate(ptr nocapture noundef readonly %map, i32 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ofs, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %base9 = getelementptr inbounds %struct.map_pci_info, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base9, align 4
  %add.ptr10 = getelementptr i8, ptr %1, i32 5464
  br i1 %tobool.not, label %do.body6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 134217728) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base9, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 5456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #8, !srcloc !45
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 117440512) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base9, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 5456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 32768) #8, !srcloc !45
  %add = add i32 %ofs, 8388608
  br label %if.end

if.end:                                           ; preds = %do.body6, %do.body
  %ofs.addr.0 = phi i32 [ %ofs, %do.body ], [ %add, %do.body6 ]
  ret i32 %ofs.addr.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtd_pci_read8(ptr noalias nocapture writeonly sret(%union.map_word) align 4 %agg.result, ptr noundef %_map, i32 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %translate = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 3
  %4 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %translate, align 4
  %call = tail call i32 %5(ptr noundef %_map, i32 noundef %ofs) #8
  %add.ptr = getelementptr i8, ptr %3, i32 %call
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtd_pci_write8(ptr noundef %_map, [8 x i32] %val.coerce, i32 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %val.coerce.fca.0.extract to i8
  %base = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %translate = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 3
  %2 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %translate, align 4
  %call = tail call i32 %3(ptr noundef %_map, i32 noundef %ofs) #8
  %add.ptr = getelementptr i8, ptr %1, i32 %call
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #8, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_dc21285_init(ptr noundef %dev, ptr nocapture noundef writeonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 %3, %1
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not69 = icmp eq i32 %add, 0
  %tobool.not = select i1 %cmp, i1 true, i1 %tobool.not69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool9.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11, align 8
  %end15 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 1
  %6 = ptrtoint ptr %end15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16 = icmp eq i32 %7, 0
  %sub25 = sub i32 1, %5
  %add26 = add i32 %sub25, %7
  %cond28 = select i1 %cmp16, i32 0, i32 %add26
  br label %if.end

if.else:                                          ; preds = %entry
  %call = tail call i32 @pci_enable_rom(ptr noundef %dev) #8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.pci_name.exit_crit_edge

if.else.pci_name.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.else.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.else.pci_name.exit_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i) #12
  br label %if.end

if.end:                                           ; preds = %pci_name.exit, %if.then
  %base.0 = phi i32 [ %1, %pci_name.exit ], [ %5, %if.then ]
  %len.0 = phi i32 [ %add, %pci_name.exit ], [ %cond28, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool31.not = icmp eq i32 %len.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base.0)
  %tobool33.not = icmp eq i32 %base.0, 0
  %or.cond68 = select i1 %tobool31.not, i1 true, i1 %tobool33.not
  br i1 %or.cond68, label %if.end.cleanup_crit_edge, label %if.end35

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %12 = ptrtoint ptr %bankwidth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %bankwidth, align 4
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %13 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mtd_pci_read32, ptr %read, align 4
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %14 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mtd_pci_write32, ptr %write, align 4
  %size = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len.0, ptr %size, align 4
  %call40 = tail call ptr @ioremap(i32 noundef %base.0, i32 noundef %len.0) #8
  %base41 = getelementptr inbounds %struct.map_pci_info, ptr %map, i32 0, i32 1
  %16 = ptrtoint ptr %base41 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %base41, align 4
  %tobool43.not = icmp eq ptr %call40, null
  %. = select i1 %tobool43.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %if.end.cleanup_crit_edge ], [ %., %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_dc21285_exit(ptr noundef %dev, ptr nocapture noundef readonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.map_pci_info, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_disable_rom(ptr noundef %dev) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @intel_dc21285_translate(ptr nocapture noundef readnone %map, i32 noundef %ofs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ofs, 16777152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %xor = xor i32 %ofs, 32
  %cond = select i1 %tobool.not, i32 %xor, i32 %ofs
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_rom(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtd_pci_read32(ptr noalias nocapture writeonly sret(%union.map_word) align 4 %agg.result, ptr noundef %_map, i32 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %translate = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 3
  %4 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %translate, align 4
  %call = tail call i32 %5(ptr noundef %_map, i32 noundef %ofs) #8
  %add.ptr = getelementptr i8, ptr %3, i32 %call
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !52
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtd_pci_write32(ptr noundef %_map, [8 x i32] %val.coerce, i32 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %val.coerce.fca.0.extract)
  %base = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %translate = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 3
  %3 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %translate, align 4
  %call = tail call i32 %4(ptr noundef %_map, i32 noundef %ofs) #8
  %add.ptr = getelementptr i8, ptr %2, i32 %call
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_rom(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_map_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtd_pci_copyfrom(ptr noundef %_map, ptr noundef %to, i32 noundef %from, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %translate = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 3
  %2 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %translate, align 4
  %call = tail call i32 %3(ptr noundef %_map, i32 noundef %from) #8
  %add.ptr = getelementptr i8, ptr %1, i32 %call
  tail call void @mmiocpy(ptr noundef %to, ptr noundef %add.ptr, i32 noundef %len) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtd_pci_copyto(ptr noundef %_map, i32 noundef %to, ptr noundef %from, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %translate = getelementptr inbounds %struct.map_pci_info, ptr %_map, i32 0, i32 3
  %2 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %translate, align 4
  %call = tail call i32 %3(ptr noundef %_map, i32 noundef %to) #8
  %add.ptr = getelementptr i8, ptr %1, i32 %call
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %from, i32 noundef %len) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_pci__238_325_mtd_pci_driver_init6, !1, !"__initcall__kmod_pci__238_325_mtd_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/pci.c", i32 325, i32 1}
!2 = !{ptr @__exitcall_mtd_pci_driver_exit, !1, !"__exitcall_mtd_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file239, !4, !"__UNIQUE_ID_file239", i1 false, i1 false}
!4 = !{!"../drivers/mtd/maps/pci.c", i32 327, i32 1}
!5 = !{ptr @__UNIQUE_ID_license240, !4, !"__UNIQUE_ID_license240", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author241, !7, !"__UNIQUE_ID_author241", i1 false, i1 false}
!7 = !{!"../drivers/mtd/maps/pci.c", i32 328, i32 1}
!8 = !{ptr @__UNIQUE_ID_description242, !9, !"__UNIQUE_ID_description242", i1 false, i1 false}
!9 = !{!"../drivers/mtd/maps/pci.c", i32 329, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/maps/pci.c", i32 319, i32 11}
!13 = !{ptr @mtd_pci_driver, !14, !"mtd_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/mtd/maps/pci.c", i32 318, i32 26}
!15 = !{ptr @mtd_pci_ids, !16, !"mtd_pci_ids", i1 false, i1 false}
!16 = !{!"../drivers/mtd/maps/pci.c", i32 228, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/maps/pci.c", i32 148, i32 14}
!19 = !{ptr @intel_iq80310_info, !20, !"intel_iq80310_info", i1 false, i1 false}
!20 = !{!"../drivers/mtd/maps/pci.c", i32 144, i32 28}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/maps/pci.c", i32 221, i32 14}
!23 = !{ptr @intel_dc21285_info, !24, !"intel_dc21285_info", i1 false, i1 false}
!24 = !{!"../drivers/mtd/maps/pci.c", i32 217, i32 28}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/maps/pci.c", i32 181, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @intel_dc21285_init._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @intel_dc21285_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/maps/pci.c", i32 263, i32 33}
!33 = !{ptr @mtd_pci_map, !34, !"mtd_pci_map", i1 false, i1 false}
!34 = !{!"../drivers/mtd/maps/pci.c", i32 77, i32 30}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{i64 4985414}
!46 = !{i64 2154634979}
!47 = !{i64 2154635817}
!48 = !{i64 4985612}
!49 = !{i64 2154632519}
!50 = !{i64 2154633393}
!51 = !{i64 4985217}
!52 = !{i64 4985832}
!53 = !{i64 2154633081}
!54 = !{i64 2154633708}
