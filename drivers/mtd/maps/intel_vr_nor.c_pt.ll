; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/intel_vr_nor.c_pt.bc'
source_filename = "../drivers/mtd/maps/intel_vr_nor.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vr_nor_mtd = type { ptr, %struct.map_info, ptr, ptr }
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
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.75 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.75 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@__initcall__kmod_intel_vr_nor__238_260_vr_nor_pci_driver_init6 = internal global ptr @vr_nor_pci_driver_init, section ".initcall6.init", align 4
@vr_nor_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @vr_nor_pci_ids, ptr @vr_nor_pci_probe, ptr @vr_nor_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_vr_nor_pci_driver_exit = internal global ptr @vr_nor_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [30 x i8] c"intel_vr_nor.author=Andy Lowe\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [79 x i8] c"intel_vr_nor.description=MTD map driver for NOR flash on Intel Vermilion Range\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [48 x i8] c"intel_vr_nor.file=drivers/mtd/maps/intel_vr_nor\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [25 x i8] c"intel_vr_nor.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel_vr_nor\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vr_nor\00", [25 x i8] zeroinitializer }, align 32
@vr_nor_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 20493, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vr_nor_init_maps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Expansion Bus Chip Select 0 is disabled.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vr_nor_init_maps\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/maps/intel_vr_nor.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vr_nor_init_maps._entry_ptr = internal global ptr @vr_nor_init_maps._entry, section ".printk_index", align 4
@vr_nor_init_maps._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Expansion Bus Chip Select 0 is configured for maximally slow access times.\0A\00", [52 x i8] zeroinitializer }, align 32
@vr_nor_init_maps._entry_ptr.9 = internal global ptr @vr_nor_init_maps._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_probe\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"vr_nor_pci_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 253, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 260, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 254, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"vr_nor_pci_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 173, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 142, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 148, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 85, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [35 x i8] c"../drivers/mtd/maps/intel_vr_nor.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 85, i32 21 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_vr_nor_pci_driver_exit, ptr @__initcall__kmod_intel_vr_nor__238_260_vr_nor_pci_driver_init6, ptr @vr_nor_init_maps._entry, ptr @vr_nor_init_maps._entry.7, ptr @vr_nor_init_maps._entry_ptr, ptr @vr_nor_init_maps._entry_ptr.9, ptr @vr_nor_pci_driver_exit, ptr @vr_nor_pci_driver, ptr @.str, ptr @.str.1, ptr @vr_nor_pci_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vr_nor_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vr_nor_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vr_nor_init_maps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vr_nor_init_maps._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vr_nor_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @vr_nor_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vr_nor_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @vr_nor_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vr_nor_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.disable_dev_crit_edge

if.end.disable_dev_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_dev

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #9
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.release_crit_edge, label %if.end8

if.end4.release_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end8:                                          ; preds = %if.end4
  %dev9 = getelementptr inbounds %struct.vr_nor_mtd, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev9, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %2 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %arrayidx14.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %6 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx14.i, align 8
  %end19.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 1
  %8 = ptrtoint ptr %end19.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp20.i = icmp eq i32 %9, 0
  %sub31.i = sub i32 1, %7
  %add32.i = add i32 %sub31.i, %9
  %cond34.i = select i1 %cmp20.i, i32 0, i32 %add32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool35.not.i = icmp eq i32 %cond.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool35.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool37.not.i = icmp eq i32 %7, 0
  %or.cond128.i = select i1 %or.cond.i, i1 true, i1 %tobool37.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond34.i)
  %tobool39.not.i = icmp eq i32 %cond34.i, 0
  %or.cond129.i = select i1 %or.cond128.i, i1 true, i1 %tobool39.not.i
  br i1 %or.cond129.i, label %if.end8.release_crit_edge, label %if.end.i

if.end8.release_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %cond34.i)
  %cmp40.i = icmp ult i32 %cond34.i, 67108864
  br i1 %cmp40.i, label %if.end.i.release_crit_edge, label %if.end42.i

if.end.i.release_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end42.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @ioremap(i32 noundef %3, i32 noundef %cond.i) #6
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %call7.i.i, align 8
  %tobool44.not.i = icmp eq ptr %call.i, null
  br i1 %tobool44.not.i, label %if.end42.i.release_crit_edge, label %if.end46.i

if.end42.i.release_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end46.i:                                       ; preds = %if.end42.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i) #6, !srcloc !44
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool50.not.i = icmp sgt i32 %12, -1
  br i1 %tobool50.not.i, label %do.end.i, label %if.end54.i

do.end.i:                                         ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev9, align 4
  %dev53.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev53.i, ptr noundef nonnull @.str.2) #10
  br label %release.sink.split

if.end54.i:                                       ; preds = %if.end46.i
  %and55.i = and i32 %12, 1073676288
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073676288, i32 %and55.i)
  %cmp56.i = icmp eq i32 %and55.i, 1073676288
  br i1 %cmp56.i, label %do.end60.i, label %if.end54.i.if.end63.i_crit_edge

if.end54.i.if.end63.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

do.end60.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev9, align 4
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev62.i, ptr noundef nonnull @.str.8) #10
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end60.i, %if.end54.i.if.end63.i_crit_edge
  %map.i = getelementptr inbounds %struct.vr_nor_mtd, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.1, ptr %map.i, align 4
  %and64.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  %cond66.i = select i1 %tobool65.not.i, i32 2, i32 1
  %bankwidth.i = getelementptr inbounds %struct.vr_nor_mtd, ptr %call7.i.i, i32 0, i32 1, i32 6
  %18 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond66.i, ptr %bankwidth.i, align 4
  %phys.i = getelementptr inbounds %struct.vr_nor_mtd, ptr %call7.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %phys.i, align 4
  %size.i = getelementptr inbounds %struct.vr_nor_mtd, ptr %call7.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67108864, ptr %size.i, align 8
  %call75.i = tail call ptr @ioremap(i32 noundef %7, i32 noundef 67108864) #6
  %virt.i = getelementptr inbounds %struct.vr_nor_mtd, ptr %call7.i.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %virt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call75.i, ptr %virt.i, align 8
  %tobool79.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool79.not.i, label %if.end63.i.release.sink.split_crit_edge, label %if.end13

if.end63.i.release.sink.split_crit_edge:          ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %release.sink.split

if.end13:                                         ; preds = %if.end63.i
  tail call void @simple_map_init(ptr noundef %map.i) #6
  %or.i = or i32 %12, 258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !47
  %info.i = getelementptr inbounds %struct.vr_nor_mtd, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info.i, align 8
  %tobool.not17.i = icmp eq ptr %26, null
  br i1 %tobool.not17.i, label %land.rhs.lr.ph.i, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.rhs.lr.ph.i:                                 ; preds = %if.end13
  %call.i52 = tail call ptr @do_map_probe(ptr noundef nonnull @.str.10, ptr noundef %map.i) #6
  %27 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i52, ptr %info.i, align 8
  %tobool.not.i53 = icmp eq ptr %call.i52, null
  br i1 %tobool.not.i53, label %land.rhs.1.i, label %land.rhs.lr.ph.i.if.end17_crit_edge

land.rhs.lr.ph.i.if.end17_crit_edge:              ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.rhs.1.i:                                     ; preds = %land.rhs.lr.ph.i
  %call.1.i = tail call ptr @do_map_probe(ptr noundef nonnull @.str.11, ptr noundef %map.i) #6
  %28 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.1.i, ptr %info.i, align 8
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %land.rhs.1.i.destroy_maps_crit_edge, label %land.rhs.1.i.if.end17_crit_edge

land.rhs.1.i.if.end17_crit_edge:                  ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.rhs.1.i.destroy_maps_crit_edge:              ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_maps

if.end17:                                         ; preds = %land.rhs.1.i.if.end17_crit_edge, %land.rhs.lr.ph.i.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %.lcssa.i = phi ptr [ %26, %if.end13.if.end17_crit_edge ], [ %call.i52, %land.rhs.lr.ph.i.if.end17_crit_edge ], [ %call.1.i, %land.rhs.1.i.if.end17_crit_edge ]
  %29 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev9, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %.lcssa.i, i32 0, i32 56, i32 1
  %31 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev5.i, ptr %parent.i, align 8
  %32 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info.i, align 8
  %call.i58 = tail call i32 @mtd_device_parse_register(ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool19.not = icmp eq i32 %call.i58, 0
  br i1 %tobool19.not, label %if.end21, label %destroy_mtd_setup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

destroy_mtd_setup:                                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info.i, align 8
  tail call void @map_destroy(ptr noundef %36) #6
  br label %destroy_maps

destroy_maps:                                     ; preds = %destroy_mtd_setup, %land.rhs.1.i.destroy_maps_crit_edge
  %err.0 = phi i32 [ %call.i58, %destroy_mtd_setup ], [ -19, %land.rhs.1.i.destroy_maps_crit_edge ]
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call7.i.i, align 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %40 = and i32 %39, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !47
  %43 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virt.i, align 8
  tail call void @iounmap(ptr noundef %44) #6
  br label %release.sink.split

release.sink.split:                               ; preds = %destroy_maps, %if.end63.i.release.sink.split_crit_edge, %do.end.i
  %err.1.ph = phi i32 [ %err.0, %destroy_maps ], [ -19, %do.end.i ], [ -12, %if.end63.i.release.sink.split_crit_edge ]
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %46) #6
  br label %release

release:                                          ; preds = %release.sink.split, %if.end42.i.release_crit_edge, %if.end.i.release_crit_edge, %if.end8.release_crit_edge, %if.end4.release_crit_edge
  %err.1 = phi i32 [ -12, %if.end4.release_crit_edge ], [ -12, %if.end42.i.release_crit_edge ], [ -6, %if.end.i.release_crit_edge ], [ -19, %if.end8.release_crit_edge ], [ %err.1.ph, %release.sink.split ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  tail call void @pci_release_regions(ptr noundef %dev) #6
  br label %disable_dev

disable_dev:                                      ; preds = %release, %if.end.disable_dev_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.disable_dev_crit_edge ], [ %err.1, %release ]
  tail call void @pci_disable_device(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_dev, %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ %call, %entry.cleanup_crit_edge ], [ %err.2, %disable_dev ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vr_nor_pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %info.i = getelementptr inbounds %struct.vr_nor_mtd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %call.i = tail call i32 @mtd_device_unregister(ptr noundef %3) #6
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  tail call void @map_destroy(ptr noundef %5) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %9 = and i32 %8, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !47
  %virt.i = getelementptr inbounds %struct.vr_nor_mtd, ptr %1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt.i, align 4
  tail call void @iounmap(ptr noundef %13) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %15) #6
  tail call void @kfree(ptr noundef %1) #6
  tail call void @pci_release_regions(ptr noundef %dev) #6
  tail call void @pci_disable_device(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_map_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_map_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_intel_vr_nor__238_260_vr_nor_pci_driver_init6, !1, !"__initcall__kmod_intel_vr_nor__238_260_vr_nor_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 260, i32 1}
!2 = !{ptr @__exitcall_vr_nor_pci_driver_exit, !1, !"__exitcall_vr_nor_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 262, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 263, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 264, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 254, i32 10}
!13 = !{ptr @vr_nor_pci_driver, !14, !"vr_nor_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 253, i32 26}
!15 = !{ptr @vr_nor_pci_ids, !16, !"vr_nor_pci_ids", i1 false, i1 false}
!16 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 173, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 142, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vr_nor_init_maps._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @vr_nor_init_maps._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 148, i32 3}
!27 = !{ptr @vr_nor_init_maps._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @vr_nor_init_maps._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 85, i32 8}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 85, i32 21}
!33 = distinct !{null, !34, !"probe_types", i1 false, i1 false}
!34 = !{!"../drivers/mtd/maps/intel_vr_nor.c", i32 84, i32 28}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 5377446}
!45 = !{i64 2154662206}
!46 = !{i64 2154666601}
!47 = !{i64 5377028}
!48 = !{i64 2154667636}
!49 = !{i64 2154667877}
!50 = !{i64 2154660518}
!51 = !{i64 2154660759}
