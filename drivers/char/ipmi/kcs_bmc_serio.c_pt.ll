; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/kcs_bmc_serio.c_pt.bc'
source_filename = "../drivers/char/ipmi/kcs_bmc_serio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kcs_bmc_driver = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kcs_bmc_driver_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kcs_bmc_client_ops = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kcs_bmc_device = type { %struct.list_head, ptr, i32, %struct.kcs_ioreg, ptr, %struct.spinlock, ptr }
%struct.kcs_ioreg = type { i32, i32, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.kcs_bmc_serio = type { %struct.list_head, %struct.kcs_bmc_client, ptr, %struct.spinlock }
%struct.kcs_bmc_client = type { ptr, ptr }

@__initcall__kmod_kcs_bmc_serio__203_149_kcs_bmc_serio_init6 = internal global ptr @kcs_bmc_serio_init, section ".initcall6.init", align 4
@__exitcall_kcs_bmc_serio_exit = internal global ptr @kcs_bmc_serio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file204 = internal constant [51 x i8] c"kcs_bmc_serio.file=drivers/char/ipmi/kcs_bmc_serio\00", section ".modinfo", align 1
@__UNIQUE_ID_license205 = internal constant [29 x i8] c"kcs_bmc_serio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author206 = internal constant [54 x i8] c"kcs_bmc_serio.author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description207 = internal constant [77 x i8] c"kcs_bmc_serio.description=Adapter driver for serio access to BMC KCS devices\00", section ".modinfo", align 1
@kcs_bmc_serio_driver = internal global { %struct.kcs_bmc_driver, [20 x i8] } { %struct.kcs_bmc_driver { %struct.list_head zeroinitializer, ptr @kcs_bmc_serio_driver_ops }, [20 x i8] zeroinitializer }, align 32
@kcs_bmc_serio_driver_ops = internal constant { %struct.kcs_bmc_driver_ops, [24 x i8] } { %struct.kcs_bmc_driver_ops { ptr @kcs_bmc_serio_add_device, ptr @kcs_bmc_serio_remove_device }, [24 x i8] zeroinitializer }, align 32
@kcs_bmc_serio_add_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kcs_bmc_serio_client_ops = internal constant { %struct.kcs_bmc_client_ops, [28 x i8] } { %struct.kcs_bmc_client_ops { ptr @kcs_bmc_serio_event }, [28 x i8] zeroinitializer }, align 32
@kcs_bmc_serio_instances_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@kcs_bmc_serio_instances = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @kcs_bmc_serio_instances, ptr @kcs_bmc_serio_instances }, [24 x i8] zeroinitializer }, align 32
@kcs_bmc_serio_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Initialised serio client for channel %d\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kcs_bmc_serio_add_device\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/char/ipmi/kcs_bmc_serio.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kcs_bmc_serio_add_device._entry_ptr = internal global ptr @kcs_bmc_serio_add_device._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kcs_bmc_serio_instances_lock\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"kcs_bmc_serio_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 139, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant [25 x i8] c"kcs_bmc_serio_driver_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 134, i32 40 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 90, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"kcs_bmc_serio_client_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 49, i32 40 }
@___asan_gen_.22 = private unnamed_addr constant [29 x i8] c"kcs_bmc_serio_instances_lock\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"kcs_bmc_serio_instances\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 68, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 101, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [37 x i8] c"../drivers/char/ipmi/kcs_bmc_serio.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 67, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_description207, ptr @__UNIQUE_ID_file204, ptr @__UNIQUE_ID_license205, ptr @__exitcall_kcs_bmc_serio_exit, ptr @__initcall__kmod_kcs_bmc_serio__203_149_kcs_bmc_serio_init6, ptr @kcs_bmc_serio_add_device._entry, ptr @kcs_bmc_serio_add_device._entry_ptr, ptr @kcs_bmc_serio_driver, ptr @kcs_bmc_serio_driver_ops, ptr @kcs_bmc_serio_add_device.__key, ptr @.str, ptr @kcs_bmc_serio_client_ops, ptr @kcs_bmc_serio_instances_lock, ptr @kcs_bmc_serio_instances, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_serio_driver to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_serio_driver_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_serio_add_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_serio_client_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_serio_instances_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_serio_instances to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_serio_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_serio_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kcs_bmc_register_driver(ptr noundef nonnull @kcs_bmc_serio_driver) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcs_bmc_serio_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kcs_bmc_unregister_driver(ptr noundef nonnull @kcs_bmc_serio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_serio_add_device(ptr noundef %kcs_bmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 64, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1336) #7
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %id, align 1
  %open = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @kcs_bmc_serio_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @kcs_bmc_serio_close, ptr %close, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 18, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %parent, align 8
  %lock = getelementptr inbounds %struct.kcs_bmc_serio, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @kcs_bmc_serio_add_device.__key, i16 noundef signext 3) #4
  %port8 = getelementptr inbounds %struct.kcs_bmc_serio, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %port8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %port8, align 4
  %client = getelementptr inbounds %struct.kcs_bmc_serio, ptr %call.i, i32 0, i32 1
  %dev9 = getelementptr inbounds %struct.kcs_bmc_serio, ptr %call.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %kcs_bmc, ptr %dev9, align 4
  %12 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kcs_bmc_serio_client_ops, ptr %client, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kcs_bmc_serio_instances_lock) #4
  %13 = load ptr, ptr @kcs_bmc_serio_instances, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef nonnull @kcs_bmc_serio_instances, ptr noundef %13) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add.exit_crit_edge

if.end4.list_add.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @kcs_bmc_serio_instances, ptr %prev3.i.i, align 4
  store volatile ptr %call.i, ptr @kcs_bmc_serio_instances, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end4.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kcs_bmc_serio_instances_lock) #4
  tail call void @__serio_register_port(ptr noundef nonnull %call7.i.i, ptr noundef null) #4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 2
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_serio_remove_device(ptr noundef %kcs_bmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kcs_bmc_serio_instances_lock) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pos.0.in = phi ptr [ @kcs_bmc_serio_instances, %entry ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.not = icmp eq ptr %pos.0, @kcs_bmc_serio_instances
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kcs_bmc_serio_instances_lock) #4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %dev = getelementptr inbounds %struct.kcs_bmc_serio, ptr %pos.0, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %cmp2 = icmp eq ptr %2, %kcs_bmc
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then:                                          ; preds = %for.body
  %dev.le = getelementptr inbounds %struct.kcs_bmc_serio, ptr %pos.0, i32 0, i32 1, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pos.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i, %if.then.for.end_crit_edge
  %9 = ptrtoint ptr %pos.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kcs_bmc_serio_instances_lock) #4
  %tobool.not = icmp eq ptr %pos.0, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %port = getelementptr inbounds %struct.kcs_bmc_serio, ptr %pos.0, i32 0, i32 2
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  tail call void @serio_unregister_port(ptr noundef %12) #4
  %client10 = getelementptr inbounds %struct.kcs_bmc_serio, ptr %pos.0, i32 0, i32 1
  tail call void @kcs_bmc_disable_device(ptr noundef %kcs_bmc, ptr noundef %client10) #4
  %13 = ptrtoint ptr %dev.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.le, align 4
  %dev13 = getelementptr inbounds %struct.kcs_bmc_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev13, align 4
  tail call void @devm_kfree(ptr noundef %16, ptr noundef nonnull %pos.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %for.end.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -19, %for.end.cleanup_crit_edge ], [ -19, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_serio_open(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %client = getelementptr inbounds %struct.kcs_bmc_serio, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.kcs_bmc_serio, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @kcs_bmc_enable_device(ptr noundef %3, ptr noundef %client) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcs_bmc_serio_close(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %client = getelementptr inbounds %struct.kcs_bmc_serio, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.kcs_bmc_serio, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_disable_device(ptr noundef %3, ptr noundef %client) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcs_bmc_enable_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_disable_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_serio_event(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %client, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %dev = getelementptr inbounds %struct.kcs_bmc_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call1 = tail call zeroext i8 @kcs_bmc_read_status(ptr noundef %1) #4
  %2 = and i8 %call1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %port = getelementptr i8, ptr %client, i32 8
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call3 = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %6) #4
  %call4 = tail call i32 @serio_interrupt(ptr noundef %4, i8 noundef zeroext %call3, i32 noundef 0) #4
  %phi.cast = and i32 %call4, 255
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %handled.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret i32 %handled.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @kcs_bmc_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @kcs_bmc_read_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_kcs_bmc_serio__203_149_kcs_bmc_serio_init6, !1, !"__initcall__kmod_kcs_bmc_serio__203_149_kcs_bmc_serio_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 149, i32 1}
!2 = !{ptr @__exitcall_kcs_bmc_serio_exit, !3, !"__exitcall_kcs_bmc_serio_exit", i1 false, i1 false}
!3 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 155, i32 1}
!4 = !{ptr @__UNIQUE_ID_file204, !5, !"__UNIQUE_ID_file204", i1 false, i1 false}
!5 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 157, i32 1}
!6 = !{ptr @__UNIQUE_ID_license205, !5, !"__UNIQUE_ID_license205", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author206, !8, !"__UNIQUE_ID_author206", i1 false, i1 false}
!8 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 158, i32 1}
!9 = !{ptr @__UNIQUE_ID_description207, !10, !"__UNIQUE_ID_description207", i1 false, i1 false}
!10 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 159, i32 1}
!11 = !{ptr @kcs_bmc_serio_driver, !12, !"kcs_bmc_serio_driver", i1 false, i1 false}
!12 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 139, i32 30}
!13 = !{ptr @kcs_bmc_serio_driver_ops, !14, !"kcs_bmc_serio_driver_ops", i1 false, i1 false}
!14 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 134, i32 40}
!15 = !{ptr @kcs_bmc_serio_add_device.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 90, i32 2}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 101, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @kcs_bmc_serio_add_device._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @kcs_bmc_serio_add_device._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @kcs_bmc_serio_client_ops, !27, !"kcs_bmc_serio_client_ops", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 49, i32 40}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 67, i32 8}
!30 = !{ptr @kcs_bmc_serio_instances_lock, !29, !"kcs_bmc_serio_instances_lock", i1 false, i1 false}
!31 = !{ptr @kcs_bmc_serio_instances, !32, !"kcs_bmc_serio_instances", i1 false, i1 false}
!32 = !{!"../drivers/char/ipmi/kcs_bmc_serio.c", i32 68, i32 8}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
