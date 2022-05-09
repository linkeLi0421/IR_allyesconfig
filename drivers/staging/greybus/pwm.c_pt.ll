; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/pwm.c_pt.bc'
source_filename = "../drivers/staging/greybus/pwm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gbphy_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gbphy_device_id = type { i8 }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_pwm_count_response = type { i8 }
%struct.gbphy_device = type { i32, ptr, ptr, %struct.list_head, %struct.device }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_pwm_chip = type { ptr, i8, %struct.pwm_chip, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.gb_pwm_activate_request = type { i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.gb_pwm_deactivate_request = type { i8 }
%struct.gb_pwm_config_request = type <{ i8, i32, i32 }>
%struct.gb_pwm_polarity_request = type { i8, i8 }
%struct.gb_pwm_enable_request = type { i8 }
%struct.gb_pwm_disable_request = type { i8 }

@__initcall__kmod_gb_pwm__229_335_pwm_driver_init6 = internal global ptr @pwm_driver_init, section ".initcall6.init", align 4
@pwm_driver = internal global { %struct.gbphy_driver, [36 x i8] } { %struct.gbphy_driver { ptr @.str.1, ptr @gb_pwm_probe, ptr @gb_pwm_remove, ptr @gb_pwm_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pwm_driver_exit = internal global ptr @pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file230 = internal constant [43 x i8] c"gb_pwm.file=drivers/staging/greybus/gb-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [22 x i8] c"gb_pwm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gb_pwm\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@gb_pwm_id_table = internal constant { [2 x %struct.gbphy_device_id], [30 x i8] } { [2 x %struct.gbphy_device_id] [%struct.gbphy_device_id { i8 9 }, %struct.gbphy_device_id zeroinitializer], [30 x i8] zeroinitializer }, align 32
@gb_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @gb_pwm_request, ptr @gb_pwm_free, ptr null, ptr null, ptr null, ptr null, ptr @gb_pwm_config, ptr @gb_pwm_set_polarity, ptr @gb_pwm_enable, ptr @gb_pwm_disable }, [56 x i8] zeroinitializer }, align 32
@gb_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 290, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register PWM: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gb_pwm_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/greybus/pwm.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_pwm_probe._entry_ptr = internal global ptr @gb_pwm_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gbphy_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 76, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gbphy_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/staging/greybus/gbphy.h\00", [32 x i8] zeroinitializer }, align 32
@gbphy_runtime_get_sync._entry_ptr = internal global ptr @gbphy_runtime_get_sync._entry, section ".printk_index", align 4
@gb_pwm_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 202, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"freeing PWM device without disabling\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gb_pwm_free\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gb_pwm_free._entry_ptr = internal global ptr @gb_pwm_free._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"pwm_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 328, i32 28 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 335, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 329, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"gb_pwm_id_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 322, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"gb_pwm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 237, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 289, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [35 x i8] c"../drivers/staging/greybus/gbphy.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 76, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [33 x i8] c"../drivers/staging/greybus/pwm.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 202, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_pwm_driver_exit, ptr @__initcall__kmod_gb_pwm__229_335_pwm_driver_init6, ptr @gb_pwm_free._entry, ptr @gb_pwm_free._entry_ptr, ptr @gb_pwm_probe._entry, ptr @gb_pwm_probe._entry_ptr, ptr @gbphy_runtime_get_sync._entry, ptr @gbphy_runtime_get_sync._entry_ptr, ptr @pwm_driver_exit, ptr @pwm_driver, ptr @.str, ptr @.str.1, ptr @gb_pwm_id_table, ptr @gb_pwm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pwm_id_table to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbphy_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pwm_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gb_gbphy_register_driver(ptr noundef nonnull @pwm_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gb_gbphy_deregister_driver(ptr noundef nonnull @pwm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_gbphy_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_gbphy_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_pwm_probe(ptr noundef %gbphy_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %response.i = alloca %struct.gb_pwm_count_response, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bundle = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 2
  %1 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bundle, align 8
  %cport_desc = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 1
  %3 = ptrtoint ptr %cport_desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cport_desc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %call2 = tail call ptr @gb_connection_create(ptr noundef %2, i16 noundef zeroext %7, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call2 to i32
  br label %exit_pwmc_free

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %call7.i.i, align 8
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call2, i32 0, i32 17
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call8 = tail call i32 @gb_connection_enable(ptr noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.exit_connection_destroy_crit_edge

if.end6.exit_connection_destroy_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_connection_destroy

if.end11:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response.i) #8
  %12 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %response.i, align 1, !annotation !44
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %14, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response.i, i32 noundef 1, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end15, label %gb_pwm_count_operation.exit

gb_pwm_count_operation.exit:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i) #8
  br label %exit_connection_disable

if.end15:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %response.i, align 1
  %pwm_max.i = getelementptr inbounds %struct.gb_pwm_chip, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %pwm_max.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %pwm_max.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i) #8
  %chip = getelementptr inbounds %struct.gb_pwm_chip, ptr %call7.i.i, i32 0, i32 2
  %dev = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.gb_pwm_chip, ptr %call7.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @gb_pwm_ops, ptr %ops, align 4
  %base = getelementptr inbounds %struct.gb_pwm_chip, ptr %call7.i.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %base, align 8
  %conv = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv, 1
  %npwm = getelementptr inbounds %struct.gb_pwm_chip, ptr %call7.i.i, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %npwm, align 4
  %call17 = call i32 @pwmchip_add(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call17) #12
  br label %exit_connection_disable

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i51 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i.i51, ptr %last_busy.i.i, align 8
  %call.i3.i = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #8
  br label %cleanup

exit_connection_disable:                          ; preds = %do.end, %gb_pwm_count_operation.exit
  %ret.0 = phi i32 [ %call.i.i, %gb_pwm_count_operation.exit ], [ %call17, %do.end ]
  call void @gb_connection_disable(ptr noundef %call2) #8
  br label %exit_connection_destroy

exit_connection_destroy:                          ; preds = %exit_connection_disable, %if.end6.exit_connection_destroy_crit_edge
  %ret.1 = phi i32 [ %call8, %if.end6.exit_connection_destroy_crit_edge ], [ %ret.0, %exit_connection_disable ]
  call void @gb_connection_destroy(ptr noundef %call2) #8
  br label %exit_pwmc_free

exit_pwmc_free:                                   ; preds = %exit_connection_destroy, %if.then4
  %ret.2 = phi i32 [ %8, %if.then4 ], [ %ret.1, %exit_connection_destroy ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_pwmc_free, %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %exit_pwmc_free ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_pwm_remove(ptr noundef %gbphy_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.7, i32 noundef %call.i.i) #12
  %usage_count.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !46
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then_crit_edge
  %call.i.i.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !48
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chip = getelementptr inbounds %struct.gb_pwm_chip, ptr %1, i32 0, i32 2
  tail call void @pwmchip_remove(ptr noundef %chip) #8
  tail call void @gb_connection_disable(ptr noundef %3) #8
  tail call void @gb_connection_destroy(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_pwm_request(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_pwm_activate_request, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -8
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %conv = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #8
  %pwm_max.i = getelementptr i8, ptr %chip, i32 -4
  %2 = ptrtoint ptr %pwm_max.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwm_max.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv)
  %cmp.i = icmp ult i8 %3, %conv
  br i1 %cmp.i, label %entry.gb_pwm_activate_operation.exit_crit_edge, label %if.end.i

entry.gb_pwm_activate_operation.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_activate_operation.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %request.i, align 1
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end5.i

do.end.i.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %call.i.i.i) #12
  %usage_count.i.i.i = getelementptr i8, ptr %6, i32 668
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.gb_pwm_activate_operation.exit_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.gb_pwm_activate_operation.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_activate_operation.exit

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  br label %gb_pwm_activate_operation.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %9, i32 noundef 3, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %call.i.i16.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr i8, ptr %6, i32 704
  %10 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i.i16.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #8
  br label %gb_pwm_activate_operation.exit

gb_pwm_activate_operation.exit:                   ; preds = %if.end5.i, %do.end11.i.i.i.i.i.i, %do.end.i.i.gb_pwm_activate_operation.exit_crit_edge, %entry.gb_pwm_activate_operation.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end5.i ], [ -22, %entry.gb_pwm_activate_operation.exit_crit_edge ], [ %call.i.i.i, %do.end.i.i.gb_pwm_activate_operation.exit_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_pwm_free(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_pwm_deactivate_request, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.10) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %chip, i32 -8
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %3 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwpwm, align 8
  %conv = trunc i32 %4 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #8
  %pwm_max.i = getelementptr i8, ptr %chip, i32 -4
  %5 = ptrtoint ptr %pwm_max.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwm_max.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %conv)
  %cmp.i = icmp ult i8 %6, %conv
  br i1 %cmp.i, label %if.end.gb_pwm_deactivate_operation.exit_crit_edge, label %if.end.i

if.end.gb_pwm_deactivate_operation.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_deactivate_operation.exit

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %request.i, align 1
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end5.i

do.end.i.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %call.i.i.i) #12
  %usage_count.i.i.i = getelementptr i8, ptr %9, i32 668
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.gb_pwm_deactivate_operation.exit_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.gb_pwm_deactivate_operation.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_deactivate_operation.exit

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  br label %gb_pwm_deactivate_operation.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %12, i32 noundef 4, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %call.i.i2.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr i8, ptr %9, i32 704
  %13 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i.i2.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #8
  br label %gb_pwm_deactivate_operation.exit

gb_pwm_deactivate_operation.exit:                 ; preds = %if.end5.i, %do.end11.i.i.i.i.i.i, %do.end.i.i.gb_pwm_deactivate_operation.exit_crit_edge, %if.end.gb_pwm_deactivate_operation.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_pwm_config(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_pwm_config_request, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -8
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %conv = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %request.i) #8
  %pwm_max.i = getelementptr i8, ptr %chip, i32 -4
  %2 = ptrtoint ptr %pwm_max.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwm_max.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv)
  %cmp.i = icmp ult i8 %3, %conv
  br i1 %cmp.i, label %entry.gb_pwm_config_operation.exit_crit_edge, label %if.end.i

entry.gb_pwm_config_operation.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_config_operation.exit

if.end.i:                                         ; preds = %entry
  %4 = getelementptr inbounds %struct.gb_pwm_config_request, ptr %request.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.gb_pwm_config_request, ptr %request.i, i32 0, i32 1
  %6 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %request.i, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %duty_ns) #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %5, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %period_ns) #8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %4, align 1
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end7.i

do.end.i.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef %call.i.i.i) #12
  %usage_count.i.i.i = getelementptr i8, ptr %12, i32 668
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.gb_pwm_config_operation.exit_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.gb_pwm_config_operation.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_config_operation.exit

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  br label %gb_pwm_config_operation.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %15, i32 noundef 5, ptr noundef nonnull %request.i, i32 noundef 9, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %call.i.i18.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr i8, ptr %12, i32 704
  %16 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i.i18.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #8
  br label %gb_pwm_config_operation.exit

gb_pwm_config_operation.exit:                     ; preds = %if.end7.i, %do.end11.i.i.i.i.i.i, %do.end.i.i.gb_pwm_config_operation.exit_crit_edge, %entry.gb_pwm_config_operation.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end7.i ], [ -22, %entry.gb_pwm_config_operation.exit_crit_edge ], [ %call.i.i.i, %do.end.i.i.gb_pwm_config_operation.exit_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %request.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_pwm_set_polarity(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %polarity) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_pwm_polarity_request, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -8
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %conv = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request.i) #8
  %pwm_max.i = getelementptr i8, ptr %chip, i32 -4
  %2 = ptrtoint ptr %pwm_max.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwm_max.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv)
  %cmp.i = icmp ult i8 %3, %conv
  br i1 %cmp.i, label %entry.gb_pwm_set_polarity_operation.exit_crit_edge, label %if.end.i

entry.gb_pwm_set_polarity_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_set_polarity_operation.exit

if.end.i:                                         ; preds = %entry
  %conv1 = trunc i32 %polarity to i8
  %4 = getelementptr inbounds %struct.gb_pwm_polarity_request, ptr %request.i, i32 0, i32 1
  %5 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %request.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %4, align 1
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end6.i

do.end.i.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %call.i.i.i) #12
  %usage_count.i.i.i = getelementptr i8, ptr %8, i32 668
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.gb_pwm_set_polarity_operation.exit_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.gb_pwm_set_polarity_operation.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_set_polarity_operation.exit

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  br label %gb_pwm_set_polarity_operation.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %11, i32 noundef 6, ptr noundef nonnull %request.i, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %call.i.i17.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr i8, ptr %8, i32 704
  %12 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i.i17.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #8
  br label %gb_pwm_set_polarity_operation.exit

gb_pwm_set_polarity_operation.exit:               ; preds = %if.end6.i, %do.end11.i.i.i.i.i.i, %do.end.i.i.gb_pwm_set_polarity_operation.exit_crit_edge, %entry.gb_pwm_set_polarity_operation.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end6.i ], [ -22, %entry.gb_pwm_set_polarity_operation.exit_crit_edge ], [ %call.i.i.i, %do.end.i.i.gb_pwm_set_polarity_operation.exit_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_pwm_enable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_pwm_enable_request, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -8
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %conv = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #8
  %pwm_max.i = getelementptr i8, ptr %chip, i32 -4
  %2 = ptrtoint ptr %pwm_max.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwm_max.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv)
  %cmp.i = icmp ult i8 %3, %conv
  br i1 %cmp.i, label %entry.gb_pwm_enable_operation.exit_crit_edge, label %if.end.i

entry.gb_pwm_enable_operation.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_enable_operation.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %request.i, align 1
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end5.i

do.end.i.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %call.i.i.i) #12
  %usage_count.i.i.i = getelementptr i8, ptr %6, i32 668
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.gb_pwm_enable_operation.exit_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.gb_pwm_enable_operation.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_enable_operation.exit

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  br label %gb_pwm_enable_operation.exit

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %9, i32 noundef 7, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.gb_pwm_enable_operation.exit_crit_edge, label %if.then8.i

if.end5.i.gb_pwm_enable_operation.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_enable_operation.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i20.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr i8, ptr %6, i32 704
  %10 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i.i20.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #8
  br label %gb_pwm_enable_operation.exit

gb_pwm_enable_operation.exit:                     ; preds = %if.then8.i, %if.end5.i.gb_pwm_enable_operation.exit_crit_edge, %do.end11.i.i.i.i.i.i, %do.end.i.i.gb_pwm_enable_operation.exit_crit_edge, %entry.gb_pwm_enable_operation.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.gb_pwm_enable_operation.exit_crit_edge ], [ %call.i.i, %if.then8.i ], [ 0, %if.end5.i.gb_pwm_enable_operation.exit_crit_edge ], [ %call.i.i.i, %do.end.i.i.gb_pwm_enable_operation.exit_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_pwm_disable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  %request.i = alloca %struct.gb_pwm_disable_request, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %conv = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #8
  %pwm_max.i = getelementptr i8, ptr %chip, i32 -4
  %2 = ptrtoint ptr %pwm_max.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwm_max.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv)
  %cmp.i = icmp ult i8 %3, %conv
  br i1 %cmp.i, label %entry.gb_pwm_disable_operation.exit_crit_edge, label %if.end.i

entry.gb_pwm_disable_operation.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pwm_disable_operation.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %chip, i32 -8
  %4 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %request.i, align 1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %6, i32 noundef 8, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %call.i.i.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr i8, ptr %8, i32 704
  %9 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i.i.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #8
  br label %gb_pwm_disable_operation.exit

gb_pwm_disable_operation.exit:                    ; preds = %if.end.i, %entry.gb_pwm_disable_operation.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_gb_pwm__229_335_pwm_driver_init6, !1, !"__initcall__kmod_gb_pwm__229_335_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/pwm.c", i32 335, i32 1}
!2 = !{ptr @__exitcall_pwm_driver_exit, !1, !"__exitcall_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file230, !4, !"__UNIQUE_ID_file230", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/pwm.c", i32 336, i32 1}
!5 = !{ptr @__UNIQUE_ID_license231, !4, !"__UNIQUE_ID_license231", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/pwm.c", i32 329, i32 11}
!9 = !{ptr @pwm_driver, !10, !"pwm_driver", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/pwm.c", i32 328, i32 28}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/pwm.c", i32 289, i32 3}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gb_pwm_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @gb_pwm_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @gb_pwm_ops, !20, !"gb_pwm_ops", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/pwm.c", i32 237, i32 29}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/greybus/gbphy.h", i32 76, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gbphy_runtime_get_sync._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @gbphy_runtime_get_sync._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/greybus/pwm.c", i32 202, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gb_pwm_free._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @gb_pwm_free._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @gb_pwm_id_table, !34, !"gb_pwm_id_table", i1 false, i1 false}
!34 = !{!"../drivers/staging/greybus/pwm.c", i32 322, i32 37}
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
!45 = !{i64 2148214800}
!46 = !{i64 699623, i64 699648, i64 699670, i64 699686, i64 699698, i64 699718, i64 699742, i64 699758, i64 699770}
!47 = !{i64 2148214988}
!48 = !{i64 2148215381, i64 2148215407, i64 2148215436, i64 2148215470, i64 2148215501, i64 2148215524}
