; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_pci.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_legacy_pci_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_pci_init\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_pci_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_pci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_pci_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_pci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_legacy_pci_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_pci_exit\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_pci_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_pci_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_pci_exit\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_pci_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.73 = type { i32, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_irq_busid = type { i32, i32, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.drm_agp_head = type { %struct.agp_kern_info, %struct.list_head, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.agp_kern_info = type { %struct.agp_version, ptr, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.agp_version = type { i16, i16 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci:%04x:%02x:%02x.%d\00", [42 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpu/drm/drm_pci.c\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__kstrtab_drm_legacy_pci_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_pci_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_pci_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_pci_init to i32), ptr @__kstrtab_drm_legacy_pci_init, ptr @__kstrtabns_drm_legacy_pci_init }, section "___ksymtab+drm_legacy_pci_init", align 4
@legacy_dev_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @legacy_dev_list_lock, i64 52), ptr getelementptr (i8, ptr @legacy_dev_list_lock, i64 52) }, ptr @legacy_dev_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@legacy_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @legacy_dev_list, ptr @legacy_dev_list }, [24 x i8] zeroinitializer }, align 32
@drm_legacy_pci_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016[drm] Module unloaded\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drm_legacy_pci_exit\00", [44 x i8] zeroinitializer }, align 32
@drm_legacy_pci_exit._entry_ptr = internal global ptr @drm_legacy_pci_exit._entry, section ".printk_index", align 4
@__kstrtab_drm_legacy_pci_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_pci_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_pci_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_pci_exit to i32), ptr @__kstrtab_drm_legacy_pci_exit, ptr @__kstrtabns_drm_legacy_pci_exit }, section "___ksymtab+drm_legacy_pci_exit", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%d:%d:%d => IRQ %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"legacy_dev_list_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"legacy_dev_list_lock\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 63, i32 41 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 114, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 206, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"legacy_dev_list_lock\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"legacy_dev_list\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 41, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 265, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 88, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [29 x i8] c"../drivers/gpu/drm/drm_pci.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 42, i32 8 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_drm_legacy_pci_exit, ptr @__ksymtab_drm_legacy_pci_init, ptr @drm_legacy_pci_exit._entry, ptr @drm_legacy_pci_exit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @legacy_dev_list_lock, ptr @legacy_dev_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dev_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_legacy_pci_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_pci_set_busid(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %master) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65540, i32 %3)
  %cmp.i = icmp slt i32 %3, 65540
  br i1 %cmp.i, label %entry.drm_get_pci_domain.exit_crit_edge, label %if.end.i

entry.drm_get_pci_domain.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_get_pci_domain.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bus.i = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %domain_nr.i.i, align 8
  br label %drm_get_pci_domain.exit

drm_get_pci_domain.exit:                          ; preds = %if.end.i, %entry.drm_get_pci_domain.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.end.i ], [ 0, %entry.drm_get_pci_domain.exit_crit_edge ]
  %bus = getelementptr i8, ptr %1, i32 -128
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 4
  %conv = zext i8 %11 to i32
  %devfn = getelementptr i8, ptr %1, i32 -108
  %12 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %13, 3
  %and = and i32 %shr, 31
  %and3 = and i32 %13, 7
  %call4 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %retval.0.i, i32 noundef %conv, i32 noundef %and, i32 noundef %and3) #4
  %unique = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 2
  %14 = ptrtoint ptr %unique to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4, ptr %unique, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %drm_get_pci_domain.exit.cleanup_crit_edge, label %if.end

drm_get_pci_domain.exit.cleanup_crit_edge:        ; preds = %drm_get_pci_domain.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %drm_get_pci_domain.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @strlen(ptr noundef nonnull %call4) #7
  %unique_len = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 3
  %15 = ptrtoint ptr %unique_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call7, ptr %unique_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %drm_get_pci_domain.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %drm_get_pci_domain.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_irq_by_busid(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, %3
  %and2.i.i = and i32 %and.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %bus = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %cmp.not = icmp eq ptr %9, @pci_bus_type
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !32

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 114, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %and2.i.i38 = and i32 %and.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i38)
  %cmp.i.i39.not = icmp eq i32 %and2.i.i38, 0
  br i1 %cmp.i.i39.not, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %busnum.i = getelementptr inbounds %struct.drm_irq_busid, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %busnum.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %busnum.i, align 4
  %shr.i = ashr i32 %11, 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65540, i32 %13)
  %cmp.i.i40 = icmp slt i32 %13, 65540
  br i1 %cmp.i.i40, label %if.end28.drm_get_pci_domain.exit.i_crit_edge, label %if.end.i.i

if.end28.drm_get_pci_domain.exit.i_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_get_pci_domain.exit.i

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %bus.i.i = getelementptr i8, ptr %7, i32 -128
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %domain_nr.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %domain_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %domain_nr.i.i.i, align 8
  br label %drm_get_pci_domain.exit.i

drm_get_pci_domain.exit.i:                        ; preds = %if.end.i.i, %if.end28.drm_get_pci_domain.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %17, %if.end.i.i ], [ 0, %if.end28.drm_get_pci_domain.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %retval.0.i.i)
  %cmp.not.i = icmp eq i32 %shr.i, %retval.0.i.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %drm_get_pci_domain.exit.i.cleanup_crit_edge

drm_get_pci_domain.exit.i.cleanup_crit_edge:      ; preds = %drm_get_pci_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %drm_get_pci_domain.exit.i
  %bus.i = getelementptr i8, ptr %7, i32 -128
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %number.i, align 4
  %22 = trunc i32 %11 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %22)
  %cmp3.not.i = icmp eq i8 %21, %22
  br i1 %cmp3.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %devnum.i = getelementptr inbounds %struct.drm_irq_busid, ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %devnum.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devnum.i, align 4
  %devfn.i = getelementptr i8, ptr %7, i32 -108
  %25 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %devfn.i, align 4
  %shr6.i = lshr i32 %26, 3
  %and7.i = and i32 %shr6.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %and7.i)
  %cmp8.not.i = icmp eq i32 %24, %and7.i
  br i1 %cmp8.not.i, label %lor.lhs.false10.i, label %lor.lhs.false5.i.cleanup_crit_edge

lor.lhs.false5.i.cleanup_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false10.i:                                ; preds = %lor.lhs.false5.i
  %funcnum.i = getelementptr inbounds %struct.drm_irq_busid, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %funcnum.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %funcnum.i, align 4
  %and12.i = and i32 %26, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %and12.i)
  %cmp13.not.i = icmp eq i32 %28, %and12.i
  br i1 %cmp13.not.i, label %if.end.i, label %lor.lhs.false10.i.cleanup_crit_edge

lor.lhs.false10.i.cleanup_crit_edge:              ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq.i = getelementptr i8, ptr %7, i32 932
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i, align 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef %24, i32 noundef %28, i32 noundef %30) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false10.i.cleanup_crit_edge, %lor.lhs.false5.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %drm_get_pci_domain.exit.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end25.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %lor.lhs.false10.i.cleanup_crit_edge ], [ -22, %lor.lhs.false5.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %drm_get_pci_domain.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_pci_agp_destroy(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %agp = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %agp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %agp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_pci_init(ptr noundef %driver, ptr nocapture noundef readonly %pdriver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #4
  %driver_features = getelementptr inbounds %struct.drm_driver, ptr %driver, i32 0, i32 24
  %0 = ptrtoint ptr %driver_features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_features, align 4
  %and = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %for.cond.preheader, !prof !33

for.cond.preheader:                               ; preds = %entry
  %id_table = getelementptr inbounds %struct.pci_driver, ptr %pdriver, i32 0, i32 2
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not54 = icmp eq i32 %5, 0
  br i1 %cmp.not54, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.while.cond.preheader_crit_edge

for.cond.preheader.while.cond.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %while.cond.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 208, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %for.cond.preheader.while.cond.preheader_crit_edge
  %arrayidx57 = phi ptr [ %arrayidx, %for.inc.while.cond.preheader_crit_edge ], [ %3, %for.cond.preheader.while.cond.preheader_crit_edge ]
  %6 = phi ptr [ %57, %for.inc.while.cond.preheader_crit_edge ], [ %3, %for.cond.preheader.while.cond.preheader_crit_edge ]
  %i.055 = phi i32 [ %inc, %for.inc.while.cond.preheader_crit_edge ], [ 0, %for.cond.preheader.while.cond.preheader_crit_edge ]
  %device = getelementptr %struct.pci_device_id, ptr %6, i32 %i.055, i32 1
  %subvendor = getelementptr %struct.pci_device_id, ptr %6, i32 %i.055, i32 2
  %subdevice = getelementptr %struct.pci_device_id, ptr %6, i32 %i.055, i32 3
  %7 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx57, align 4
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device, align 4
  %11 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %subvendor, align 4
  %13 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %subdevice, align 4
  %call51 = tail call ptr @pci_get_subsys(i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef null) #4
  %cmp27.not52 = icmp eq ptr %call51, null
  br i1 %cmp27.not52, label %while.cond.preheader.for.inc_crit_edge, label %while.body.lr.ph

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %class_mask = getelementptr %struct.pci_device_id, ptr %6, i32 %i.055, i32 5
  %class29 = getelementptr %struct.pci_device_id, ptr %6, i32 %i.055, i32 4
  %driver_data.i = getelementptr %struct.pci_device_id, ptr %6, i32 %i.055, i32 6
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call53 = phi ptr [ %call51, %while.body.lr.ph ], [ %call, %while.cond.backedge.while.body_crit_edge ]
  %class = getelementptr inbounds %struct.pci_dev, ptr %call53, i32 0, i32 11
  %15 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %class, align 8
  %17 = ptrtoint ptr %class_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %class_mask, align 4
  %and28 = and i32 %18, %16
  %19 = ptrtoint ptr %class29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %class29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and28, i32 %20)
  %cmp30.not = icmp eq i32 %and28, %20
  br i1 %cmp30.not, label %if.end32, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.end32:                                         ; preds = %while.body
  %call33 = tail call ptr @pci_dev_get(ptr noundef nonnull %call53) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %call53, i32 0, i32 44
  %call.i = tail call ptr @drm_dev_alloc(ptr noundef %driver, ptr noundef %dev1.i) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end32.while.cond.backedge_crit_edge, label %if.end.i

if.end32.while.cond.backedge_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.end.i:                                         ; preds = %if.end32
  %call4.i = tail call i32 @pci_enable_device(ptr noundef nonnull %call53) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.err_free.i_crit_edge

if.end.i.err_free.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free.i

if.end6.i:                                        ; preds = %if.end.i
  %driver.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver.i.i.i.i, align 4
  %driver_features.i.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %driver_features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_features.i.i.i.i, align 4
  %driver_features1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %driver_features1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_features1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %24, 33554432
  %and2.i.i.i.i = and i32 %and.i.i.i.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and2.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 33554432
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.end6.i.drm_legacy_pci_agp_init.exit.i_crit_edge

if.end6.i.drm_legacy_pci_agp_init.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_legacy_pci_agp_init.exit.i

if.then.i.i:                                      ; preds = %if.end6.i
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 -136
  %call2.i.i = tail call zeroext i8 @pci_find_capability(ptr noundef %add.ptr.i.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2.i.i)
  %tobool.not.i.i = icmp eq i8 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then3.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %agp.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 38
  %29 = ptrtoint ptr %agp.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %agp.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then3.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %agp5.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 38
  %30 = ptrtoint ptr %agp5.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %agp5.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %31, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.drm_legacy_pci_agp_init.exit.i_crit_edge, label %if.then7.i.i

if.end.i.i.drm_legacy_pci_agp_init.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_legacy_pci_agp_init.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %agp_mtrr.i.i = getelementptr inbounds %struct.drm_agp_head, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %agp_mtrr.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %agp_mtrr.i.i, align 4
  br label %drm_legacy_pci_agp_init.exit.i

drm_legacy_pci_agp_init.exit.i:                   ; preds = %if.then7.i.i, %if.end.i.i.drm_legacy_pci_agp_init.exit.i_crit_edge, %if.end6.i.drm_legacy_pci_agp_init.exit.i_crit_edge
  %33 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %driver_data.i, align 4
  %call7.i = tail call i32 @drm_dev_register(ptr noundef %call.i, i32 noundef %34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %err_agp.i

if.end10.i:                                       ; preds = %drm_legacy_pci_agp_init.exit.i
  %35 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver.i.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %driver_features.i.i.i, align 4
  %39 = ptrtoint ptr %driver_features1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %driver_features1.i.i.i.i, align 4
  %and.i.i.i = and i32 %38, 67108864
  %and2.i.i.i = and i32 %and.i.i.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %and2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and2.i.i.i, 67108864
  br i1 %cmp.i.i.i, label %if.then12.i, label %if.end10.i.while.cond.backedge_crit_edge

if.end10.i.while.cond.backedge_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.then12.i:                                      ; preds = %if.end10.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @legacy_dev_list_lock, i32 noundef 0) #4
  %legacy_dev_list.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 37
  %41 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @legacy_dev_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %legacy_dev_list.i, ptr noundef %41, ptr noundef nonnull @legacy_dev_list) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then12.i.list_add_tail.exit.i_crit_edge

if.then12.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %legacy_dev_list.i, ptr getelementptr inbounds (%struct.list_head, ptr @legacy_dev_list, i32 0, i32 1), align 4
  %42 = ptrtoint ptr %legacy_dev_list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @legacy_dev_list, ptr %legacy_dev_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 37, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %legacy_dev_list.i, ptr %41, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then12.i.list_add_tail.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @legacy_dev_list_lock) #4
  br label %while.cond.backedge

err_agp.i:                                        ; preds = %drm_legacy_pci_agp_init.exit.i
  %agp.i1.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 38
  %45 = ptrtoint ptr %agp.i1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %agp.i1.i, align 4
  %tobool.not.i2.i = icmp eq ptr %46, null
  br i1 %tobool.not.i2.i, label %err_agp.i.drm_legacy_pci_agp_destroy.exit.i_crit_edge, label %if.then.i3.i

err_agp.i.drm_legacy_pci_agp_destroy.exit.i_crit_edge: ; preds = %err_agp.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_legacy_pci_agp_destroy.exit.i

if.then.i3.i:                                     ; preds = %err_agp.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %46) #4
  %47 = ptrtoint ptr %agp.i1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %agp.i1.i, align 4
  br label %drm_legacy_pci_agp_destroy.exit.i

drm_legacy_pci_agp_destroy.exit.i:                ; preds = %if.then.i3.i, %err_agp.i.drm_legacy_pci_agp_destroy.exit.i_crit_edge
  tail call void @pci_disable_device(ptr noundef nonnull %call53) #4
  br label %err_free.i

err_free.i:                                       ; preds = %drm_legacy_pci_agp_destroy.exit.i, %if.end.i.err_free.i_crit_edge
  tail call void @drm_dev_put(ptr noundef %call.i) #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %err_free.i, %list_add_tail.exit.i, %if.end10.i.while.cond.backedge_crit_edge, %if.end32.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %48 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx57, align 4
  %50 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %device, align 4
  %52 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %subvendor, align 4
  %54 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %subdevice, align 4
  %call = tail call ptr @pci_get_subsys(i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, ptr noundef nonnull %call53) #4
  %cmp27.not = icmp eq ptr %call, null
  br i1 %cmp27.not, label %while.cond.backedge.for.inc_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.backedge.for.inc_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %while.cond.backedge.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add i32 %i.055, 1
  %56 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %id_table, align 4
  %arrayidx = getelementptr %struct.pci_device_id, ptr %57, i32 %inc
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %59, 0
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_subsys(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_pci_exit(ptr noundef readonly %driver, ptr nocapture readnone %pdriver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #4
  %driver_features = getelementptr inbounds %struct.drm_driver, ptr %driver, i32 0, i32 24
  %0 = ptrtoint ptr %driver_features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_features, align 4
  %and = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 253, i32 noundef 9, ptr noundef null) #4
  br label %do.end38

if.else:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @legacy_dev_list_lock, i32 noundef 0) #4
  %2 = load ptr, ptr @legacy_dev_list, align 4
  %cmp.not50 = icmp eq ptr %2, @legacy_dev_list
  br i1 %cmp.not50, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %.pn.in51 = phi ptr [ %.pn54, %for.inc.for.body_crit_edge ], [ %2, %if.else.for.body_crit_edge ]
  %dev.053 = getelementptr i8, ptr %.pn.in51, i32 -2044
  %3 = ptrtoint ptr %.pn.in51 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn54 = load ptr, ptr %.pn.in51, align 4
  %driver25 = getelementptr i8, ptr %.pn.in51, i32 -1976
  %4 = ptrtoint ptr %driver25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver25, align 4
  %cmp26 = icmp eq ptr %5, %driver
  br i1 %cmp26, label %if.then27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then27:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in51) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then27.list_del.exit_crit_edge

if.then27.list_del.exit_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in51, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn.in51 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in51, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then27.list_del.exit_crit_edge
  %12 = ptrtoint ptr %.pn.in51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in51, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in51, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @drm_put_dev(ptr noundef %dev.053) #4
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn54, @legacy_dev_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @legacy_dev_list_lock) #4
  br label %do.end38

do.end38:                                         ; preds = %for.end, %do.end
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !15, !17, !19, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_pci.c", i32 63, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_pci.c", i32 114, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_pci.c", i32 206, i32 2}
!6 = !{ptr @__ksymtab_drm_legacy_pci_init, !7, !"__ksymtab_drm_legacy_pci_init", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_pci.c", i32 235, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_pci.c", i32 265, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @drm_legacy_pci_exit._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @drm_legacy_pci_exit._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_drm_legacy_pci_exit, !14, !"__ksymtab_drm_legacy_pci_exit", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_pci.c", i32 267, i32 1}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/drm_pci.c", i32 88, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/drm_pci.c", i32 42, i32 8}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @legacy_dev_list_lock, !18, !"legacy_dev_list_lock", i1 false, i1 false}
!21 = !{ptr @legacy_dev_list, !22, !"legacy_dev_list", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/drm_pci.c", i32 41, i32 8}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{!"branch_weights", i32 1, i32 2000}
