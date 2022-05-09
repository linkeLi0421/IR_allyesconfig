; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_aperture.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_aperture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+devm_aperture_acquire_from_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_aperture_acquire_from_firmware\09\09\09\09"
module asm "\09.long\09__crc_devm_aperture_acquire_from_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_aperture_acquire_from_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_aperture_acquire_from_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_devm_aperture_acquire_from_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_aperture_remove_conflicting_framebuffers\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_aperture_remove_conflicting_framebuffers\09\09\09\09"
module asm "\09.long\09__crc_drm_aperture_remove_conflicting_framebuffers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_aperture_remove_conflicting_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_aperture_remove_conflicting_framebuffers\22\09\09\09\09\09"
module asm "__kstrtabns_drm_aperture_remove_conflicting_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_aperture_remove_conflicting_pci_framebuffers\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_aperture_remove_conflicting_pci_framebuffers\09\09\09\09"
module asm "\09.long\09__crc_drm_aperture_remove_conflicting_pci_framebuffers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_aperture_remove_conflicting_pci_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_aperture_remove_conflicting_pci_framebuffers\22\09\09\09\09\09"
module asm "__kstrtabns_drm_aperture_remove_conflicting_pci_framebuffers:\09\09\09\09\09"
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.84 = type { i32, ptr }
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
%struct.drm_aperture = type { ptr, i32, i32, %struct.list_head, ptr }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }

@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/drm_aperture.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s: %s\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drm_WARN_ON(!((dev->dev)->bus == &platform_bus_type))\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_devm_aperture_acquire_from_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_aperture_acquire_from_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_aperture_acquire_from_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_aperture_acquire_from_firmware to i32), ptr @__kstrtab_devm_aperture_acquire_from_firmware, ptr @__kstrtabns_devm_aperture_acquire_from_firmware }, section "___ksymtab+devm_aperture_acquire_from_firmware", align 4
@__kstrtab_drm_aperture_remove_conflicting_framebuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_aperture_remove_conflicting_framebuffers = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_aperture_remove_conflicting_framebuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_aperture_remove_conflicting_framebuffers to i32), ptr @__kstrtab_drm_aperture_remove_conflicting_framebuffers, ptr @__kstrtabns_drm_aperture_remove_conflicting_framebuffers }, section "___ksymtab+drm_aperture_remove_conflicting_framebuffers", align 4
@__kstrtab_drm_aperture_remove_conflicting_pci_framebuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_aperture_remove_conflicting_pci_framebuffers = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_aperture_remove_conflicting_pci_framebuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_aperture_remove_conflicting_pci_framebuffers to i32), ptr @__kstrtab_drm_aperture_remove_conflicting_pci_framebuffers, ptr @__kstrtabns_drm_aperture_remove_conflicting_pci_framebuffers }, section "___ksymtab+drm_aperture_remove_conflicting_pci_framebuffers", align 4
@drm_apertures_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @drm_apertures_lock, i64 52), ptr getelementptr (i8, ptr @drm_apertures_lock, i64 52) }, ptr @drm_apertures_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@drm_apertures = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @drm_apertures, ptr @drm_apertures }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drm_apertures_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drm_apertures_lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@drm_aperture_detach_drivers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 242, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"drm_apertures_lock\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"drm_apertures\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 137, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [34 x i8] c"../drivers/gpu/drm/drm_aperture.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 138, i32 8 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_devm_aperture_acquire_from_firmware, ptr @__ksymtab_drm_aperture_remove_conflicting_framebuffers, ptr @__ksymtab_drm_aperture_remove_conflicting_pci_framebuffers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @drm_apertures_lock, ptr @drm_apertures, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_apertures_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_apertures to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_aperture_acquire_from_firmware(ptr noundef %dev, i32 noundef %base, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %bus = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %cmp.not = icmp eq ptr %3, @platform_bus_type
  br i1 %cmp.not, label %if.end26, label %do.end, !prof !27

do.end:                                           ; preds = %entry
  %call = tail call ptr @dev_driver_string(ptr noundef %1) #3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call, ptr noundef %retval.0.i, ptr noundef nonnull @.str.2) #3
  br label %return

if.end26:                                         ; preds = %entry
  %add.i = add i32 %size, %base
  tail call void @mutex_lock_nested(ptr noundef nonnull @drm_apertures_lock, i32 noundef 0) #3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end26
  %pos.0.in.i = phi ptr [ @drm_apertures, %if.end26 ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, @drm_apertures
  br i1 %cmp.i.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %base1.i = getelementptr i8, ptr %pos.0.i, i32 -8
  %11 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base1.i, align 4
  %size3.i = getelementptr i8, ptr %pos.0.i, i32 -4
  %13 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size3.i, align 4
  %add4.i = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %base)
  %cmp.i1.i = icmp ugt i32 %add4.i, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp1.i.i = icmp ugt i32 %add.i, %12
  %spec.select.i.i = and i1 %cmp1.i.i, %cmp.i1.i
  br i1 %spec.select.i.i, label %for.body.i.cleanup.sink.split.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

for.end.i:                                        ; preds = %for.cond.i
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 24, i32 noundef 3520) #3
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %if.end10.i

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.end10.i:                                       ; preds = %for.end.i
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %call.i.i, align 4
  %base12.i = getelementptr inbounds %struct.drm_aperture, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %base12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %base, ptr %base12.i, align 4
  %size13.i = getelementptr inbounds %struct.drm_aperture, ptr %call.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %size13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %size, ptr %size13.i, align 4
  %detach14.i = getelementptr inbounds %struct.drm_aperture, ptr %call.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %detach14.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @drm_aperture_detach_firmware, ptr %detach14.i, align 4
  %lh.i = getelementptr inbounds %struct.drm_aperture, ptr %call.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %lh.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %lh.i, ptr %lh.i, align 4
  %prev.i.i = getelementptr inbounds %struct.drm_aperture, ptr %call.i.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lh.i, ptr %prev.i.i, align 4
  %23 = load ptr, ptr @drm_apertures, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lh.i, ptr noundef nonnull @drm_apertures, ptr noundef %23) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.i.list_add.exit.i_crit_edge

if.end10.i.list_add.exit.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %lh.i, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %lh.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %lh.i, align 4
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @drm_apertures, ptr %prev.i.i, align 4
  store volatile ptr %lh.i, ptr @drm_apertures, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end10.i.list_add.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @drm_apertures_lock) #3
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  %call.i2.i = tail call i32 @devm_add_action(ptr noundef %28, ptr noundef nonnull @devm_aperture_acquire_release, ptr noundef nonnull %call.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i.i, label %list_add.exit.i.return_crit_edge, label %if.then.i.i

list_add.exit.i.return_crit_edge:                 ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then.i.i:                                      ; preds = %list_add.exit.i
  %29 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.return_crit_edge, label %if.end.i.i3.i

if.then.i.i.return_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i.i3.i:                                    ; preds = %if.then.i.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @drm_apertures_lock, i32 noundef 0) #3
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lh.i) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i3.i.list_del.exit.i.i.i_crit_edge

if.end.i.i3.i.list_del.exit.i.i.i_crit_edge:      ; preds = %if.end.i.i3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i3.i
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %lh.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lh.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.end.i.i3.i.list_del.exit.i.i.i_crit_edge
  %37 = ptrtoint ptr %lh.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %lh.i, align 4
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %list_del.exit.i.i.i, %for.end.i.cleanup.sink.split.i_crit_edge, %for.body.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call.i2.i, %list_del.exit.i.i.i ], [ -12, %for.end.i.cleanup.sink.split.i_crit_edge ], [ -16, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @drm_apertures_lock) #3
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %if.then.i.i.return_crit_edge, %list_add.exit.i.return_crit_edge, %dev_name.exit
  %retval.0 = phi i32 [ -22, %dev_name.exit ], [ 0, %list_add.exit.i.return_crit_edge ], [ %call.i2.i, %if.then.i.i.return_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_aperture_detach_firmware(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef %base, i32 noundef %size, i1 noundef zeroext %primary, ptr nocapture noundef readonly %req_driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #6
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %call7.i.i.i, align 8
  %ranges = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %base, ptr %ranges, align 4
  %size4 = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i, i32 2
  %3 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %size, ptr %size4, align 8
  %name = getelementptr inbounds %struct.drm_driver, ptr %req_driver, i32 0, i32 21
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call6 = tail call i32 @remove_conflicting_framebuffers(ptr noundef nonnull %call7.i.i.i, ptr noundef %5, i1 noundef zeroext %primary) #3
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %base, i32 noundef %size)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call6, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_conflicting_framebuffers(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_aperture_detach_drivers(i32 noundef %base, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, %base
  tail call void @mutex_lock_nested(ptr noundef nonnull @drm_apertures_lock, i32 noundef 0) #3
  %0 = load ptr, ptr @drm_apertures, align 4
  %cmp.i.not71 = icmp eq ptr %0, @drm_apertures
  br i1 %cmp.i.not71, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.072 = phi ptr [ %n.074, %cleanup.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %pos.072 to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.074 = load ptr, ptr %pos.072, align 4
  %add.ptr = getelementptr i8, ptr %pos.072, i32 -12
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %for.body
  %.b67 = load i1, ptr @drm_aperture_detach_drivers.__already_done, align 1
  br i1 %.b67, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !27

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @drm_aperture_detach_drivers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 261, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end43:                                         ; preds = %for.body
  %base44 = getelementptr i8, ptr %pos.072, i32 -8
  %4 = ptrtoint ptr %base44 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base44, align 4
  %size46 = getelementptr i8, ptr %pos.072, i32 -4
  %6 = ptrtoint ptr %size46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size46, align 4
  %add47 = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add47, i32 %base)
  %cmp.i69 = icmp ugt i32 %add47, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp1.i = icmp ugt i32 %add, %5
  %spec.select.i = and i1 %cmp1.i, %cmp.i69
  br i1 %spec.select.i, label %if.end50, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end50:                                         ; preds = %if.end43
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %add.ptr, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.072) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.list_del.exit_crit_edge

if.end50.list_del.exit_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.072, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %pos.072 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pos.072, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end50.list_del.exit_crit_edge
  %15 = ptrtoint ptr %pos.072 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.072, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.072, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %detach = getelementptr i8, ptr %pos.072, i32 8
  %17 = ptrtoint ptr %detach to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %detach, align 4
  tail call void %18(ptr noundef nonnull %3) #3
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end43.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %cmp.i.not = icmp eq ptr %n.074, @drm_apertures
  br i1 %cmp.i.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @drm_apertures_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr nocapture noundef readonly %req_driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp eq i32 %5, 0
  %sub = sub i32 1, %3
  %add = add i32 %sub, %5
  %cond = select i1 %cmp5, i32 0, i32 %add
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %3, i32 noundef %cond)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %flags.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %6 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 8
  %end.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %10 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5.1 = icmp eq i32 %11, 0
  %sub.1 = sub i32 1, %9
  %add.1 = add i32 %sub.1, %11
  %cond.1 = select i1 %cmp5.1, i32 0, i32 %add.1
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %9, i32 noundef %cond.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %flags.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %12 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 8
  %end.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %16 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.2 = icmp eq i32 %17, 0
  %sub.2 = sub i32 1, %15
  %add.2 = add i32 %sub.2, %17
  %cond.2 = select i1 %cmp5.2, i32 0, i32 %add.2
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %15, i32 noundef %cond.2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %flags.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 3
  %18 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.3, align 8
  %end.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %22 = ptrtoint ptr %end.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp5.3 = icmp eq i32 %23, 0
  %sub.3 = sub i32 1, %21
  %add.3 = add i32 %sub.3, %23
  %cond.3 = select i1 %cmp5.3, i32 0, i32 %add.3
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %21, i32 noundef %cond.3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %flags.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %24 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.4, align 4
  %and.4 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4, align 8
  %end.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %28 = ptrtoint ptr %end.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp5.4 = icmp eq i32 %29, 0
  %sub.4 = sub i32 1, %27
  %add.4 = add i32 %sub.4, %29
  %cond.4 = select i1 %cmp5.4, i32 0, i32 %add.4
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %27, i32 noundef %cond.4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %flags.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 3
  %30 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.5, align 4
  %and.5 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.5, align 8
  %end.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %34 = ptrtoint ptr %end.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp5.5 = icmp eq i32 %35, 0
  %sub.5 = sub i32 1, %33
  %add.5 = add i32 %sub.5, %35
  %cond.5 = select i1 %cmp5.5, i32 0, i32 %add.5
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %33, i32 noundef %cond.5)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %name = getelementptr inbounds %struct.drm_driver, ptr %req_driver, i32 0, i32 21
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  %call = tail call i32 @remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr noundef %37) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp eq i32 %call, 0
  br i1 %cmp12, label %if.then13, label %for.inc.5.if.end15_crit_edge

for.inc.5.if.end15_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then13:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %call14 = tail call i32 @vga_remove_vgacon(ptr noundef %pdev) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %for.inc.5.if.end15_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ %call, %for.inc.5.if.end15_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vga_remove_vgacon(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_aperture_acquire_release(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @drm_apertures_lock, i32 noundef 0) #3
  %lh = getelementptr inbounds %struct.drm_aperture, ptr %data, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lh) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.drm_aperture, ptr %data, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lh, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %lh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %lh, align 4
  %prev.i = getelementptr inbounds %struct.drm_aperture, ptr %data, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @drm_apertures_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_aperture.c", i32 242, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_devm_aperture_acquire_from_firmware, !5, !"__ksymtab_devm_aperture_acquire_from_firmware", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_aperture.c", i32 247, i32 1}
!6 = !{ptr @__ksymtab_drm_aperture_remove_conflicting_framebuffers, !7, !"__ksymtab_drm_aperture_remove_conflicting_framebuffers", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_aperture.c", i32 314, i32 1}
!8 = !{ptr @__ksymtab_drm_aperture_remove_conflicting_pci_framebuffers, !9, !"__ksymtab_drm_aperture_remove_conflicting_pci_framebuffers", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_aperture.c", i32 353, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_aperture.c", i32 138, i32 8}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @drm_apertures_lock, !11, !"drm_apertures_lock", i1 false, i1 false}
!14 = !{ptr @drm_apertures, !15, !"drm_apertures", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_aperture.c", i32 137, i32 8}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_aperture.c", i32 261, i32 7}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
