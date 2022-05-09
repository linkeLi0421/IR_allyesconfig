; ModuleID = '/llk/IR_all_yes/drivers/staging/fieldbus/anybuss/hms-profinet.c_pt.bc'
source_filename = "../drivers/staging/fieldbus/anybuss/hms-profinet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anybuss_client_driver = type { %struct.device_driver, ptr, ptr, i16 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anybuss_memcfg = type { i16, i16, i16, i16, i16, i16, i32 }
%struct.anybuss_client = type { %struct.device, ptr, i16, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.profi_priv = type { %struct.fieldbus_dev, ptr, %struct.mutex, i8 }
%struct.fieldbus_dev = type { ptr, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.cdev, ptr, i32, %struct.wait_queue_head, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.msg_mac_addr = type { [6 x i8] }

@__initcall__kmod_hms_profinet__223_214_profinet_init6 = internal global ptr @profinet_init, section ".initcall6.init", align 4
@profinet_driver = internal global { %struct.anybuss_client_driver, [40 x i8] } { %struct.anybuss_client_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @profinet_probe, ptr @profinet_remove, i16 137 }, [40 x i8] zeroinitializer }, align 32
@__exitcall_profinet_exit = internal global ptr @profinet_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [60 x i8] c"hms_profinet.author=Sven Van Asbroeck <TheSven73@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [60 x i8] c"hms_profinet.description=HMS Profinet IRT Driver (Anybus-S)\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [64 x i8] c"hms_profinet.file=drivers/staging/fieldbus/anybuss/hms-profinet\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [28 x i8] c"hms_profinet.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hms-profinet\00", [19 x i8] zeroinitializer }, align 32
@profinet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->enable_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HMS Profinet IRT (Anybus-S)\00", [36 x i8] zeroinitializer }, align 32
@profinet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 187, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"card detected, registered as %s\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"profinet_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/staging/fieldbus/anybuss/hms-profinet.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@profinet_probe._entry_ptr = internal global ptr @profinet_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@__const.__profi_enable.mem_cfg = private unnamed_addr constant %struct.anybuss_memcfg { i16 220, i16 512, i16 512, i16 220, i16 512, i16 512, i32 0 }, align 4
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"profinet_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 200, i32 37 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 204, i32 13 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 171, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 175, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 186, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [51 x i8] c"../drivers/staging/fieldbus/anybuss/hms-profinet.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 69, i32 33 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_profinet_exit, ptr @__initcall__kmod_hms_profinet__223_214_profinet_init6, ptr @profinet_exit, ptr @profinet_probe._entry, ptr @profinet_probe._entry_ptr, ptr @profinet_driver, ptr @.str, ptr @profinet_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profinet_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profinet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profinet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @profinet_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @anybuss_client_driver_register(ptr noundef nonnull @profinet_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @profinet_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @anybuss_client_driver_unregister(ptr noundef nonnull @profinet_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @anybuss_client_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anybuss_client_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profinet_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %on_area_updated = getelementptr inbounds %struct.anybuss_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %on_area_updated to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @profi_on_area_updated, ptr %on_area_updated, align 8
  %on_online_changed = getelementptr inbounds %struct.anybuss_client, ptr %client, i32 0, i32 4
  %1 = ptrtoint ptr %on_online_changed to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @profi_on_online_changed, ptr %on_online_changed, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %client, i32 noundef 368, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %enable_lock = getelementptr inbounds %struct.profi_priv, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %enable_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @profinet_probe.__key) #6
  %client2 = getelementptr inbounds %struct.profi_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client2, align 4
  %read_area_sz = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %read_area_sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 512, ptr %read_area_sz, align 4
  %write_area_sz = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %write_area_sz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 512, ptr %write_area_sz, align 4
  %card_name = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %card_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %card_name, align 4
  %fieldbus_type = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %fieldbus_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %fieldbus_type, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @profi_read_area, ptr %call.i, align 4
  %write_area = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %write_area to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @profi_write_area, ptr %write_area, align 4
  %fieldbus_id_get = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %fieldbus_id_get to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @profi_id_get, ptr %fieldbus_id_get, align 4
  %enable_get = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %enable_get to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @profi_enable_get, ptr %enable_get, align 4
  %simple_enable_set = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %simple_enable_set to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @profi_simple_enable, ptr %simple_enable_set, align 4
  %parent = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %parent, align 4
  %call13 = tail call i32 @fieldbus_dev_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %do.end18

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18:                                         ; preds = %do.body
  %dev20 = getelementptr inbounds %struct.fieldbus_dev, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev20, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end18.dev_name.exit_crit_edge

do.end18.dev_name.exit_crit_edge:                 ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end18.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %do.end18.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %client, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i) #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %client, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @profinet_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %client, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fieldbus_dev_unregister(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @profi_on_area_updated(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %client, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fieldbus_dev_area_updated(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @profi_on_online_changed(ptr nocapture noundef readonly %client, i1 noundef zeroext %online) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %client, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fieldbus_dev_online_changed(ptr noundef %1, i1 noundef zeroext %online) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profi_read_area(ptr nocapture noundef readonly %fbdev, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.profi_priv, ptr %fbdev, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call i32 @anybuss_read_output(ptr noundef %1, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profi_write_area(ptr nocapture noundef readonly %fbdev, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.profi_priv, ptr %fbdev, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call i32 @anybuss_write_input(ptr noundef %1, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profi_id_get(ptr nocapture noundef readonly %fbdev, ptr nocapture noundef writeonly %buf, i32 noundef %max_size) #2 align 64 {
entry:
  %response = alloca %struct.msg_mac_addr, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %response) #6
  %client = getelementptr inbounds %struct.profi_priv, ptr %fbdev, i32 0, i32 1
  %0 = call ptr @memset(ptr %response, i32 255, i32 6)
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %call = call i32 @anybuss_recv_msg(ptr noundef %2, i16 noundef zeroext 16, ptr noundef nonnull %response, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %max_size, ptr noundef nonnull @.str.8, ptr noundef nonnull %response)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %response) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @profi_enable_get(ptr noundef %fbdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_lock = getelementptr inbounds %struct.profi_priv, ptr %fbdev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %enable_lock, i32 noundef 0) #6
  %power_on1 = getelementptr inbounds %struct.profi_priv, ptr %fbdev, i32 0, i32 3
  %0 = ptrtoint ptr %power_on1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_on1, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  tail call void @mutex_unlock(ptr noundef %enable_lock) #6
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profi_simple_enable(ptr noundef %fbdev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %mem_cfg.i = alloca %struct.anybuss_memcfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_lock = getelementptr inbounds %struct.profi_priv, ptr %fbdev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %enable_lock, i32 noundef 0) #6
  %client1.i = getelementptr inbounds %struct.profi_priv, ptr %fbdev, i32 0, i32 1
  %0 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mem_cfg.i) #6
  %2 = call ptr @memcpy(ptr %mem_cfg.i, ptr @__const.__profi_enable.mem_cfg, i32 16)
  %call.i = tail call i32 @anybuss_set_power(ptr noundef %1, i1 noundef zeroext false) #6
  %call2.i = tail call i32 @anybuss_set_power(ptr noundef %1, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.err.i_crit_edge

if.then.err.i_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end.i:                                         ; preds = %if.then
  %call3.i = call i32 @anybuss_start_init(ptr noundef %1, ptr noundef nonnull %mem_cfg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.err.i_crit_edge

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call i32 @anybuss_finish_init(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.__profi_enable.exit_crit_edge, label %if.end6.i.err.i_crit_edge

if.end6.i.err.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end6.i.__profi_enable.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__profi_enable.exit

err.i:                                            ; preds = %if.end6.i.err.i_crit_edge, %if.end.i.err.i_crit_edge, %if.then.err.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.err.i_crit_edge ], [ %call3.i, %if.end.i.err.i_crit_edge ], [ %call7.i, %if.end6.i.err.i_crit_edge ]
  %call11.i = call i32 @anybuss_set_power(ptr noundef %1, i1 noundef zeroext false) #6
  br label %__profi_enable.exit

__profi_enable.exit:                              ; preds = %err.i, %if.end6.i.__profi_enable.exit_crit_edge
  %.sink.i = phi i8 [ 0, %err.i ], [ 1, %if.end6.i.__profi_enable.exit_crit_edge ]
  %retval.0.i = phi i32 [ %ret.0.i, %err.i ], [ 0, %if.end6.i.__profi_enable.exit_crit_edge ]
  %power_on12.i = getelementptr inbounds %struct.profi_priv, ptr %fbdev, i32 0, i32 3
  %3 = ptrtoint ptr %power_on12.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink.i, ptr %power_on12.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mem_cfg.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i7 = tail call i32 @anybuss_set_power(ptr noundef %1, i1 noundef zeroext false) #6
  %power_on.i = getelementptr inbounds %struct.profi_priv, ptr %fbdev, i32 0, i32 3
  %4 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %power_on.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %__profi_enable.exit
  %ret.0 = phi i32 [ %retval.0.i, %__profi_enable.exit ], [ 0, %if.else ]
  call void @mutex_unlock(ptr noundef %enable_lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fieldbus_dev_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fieldbus_dev_area_updated(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fieldbus_dev_online_changed(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anybuss_read_output(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anybuss_write_input(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anybuss_recv_msg(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anybuss_set_power(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anybuss_start_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anybuss_finish_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fieldbus_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_hms_profinet__223_214_profinet_init6, !1, !"__initcall__kmod_hms_profinet__223_214_profinet_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 214, i32 1}
!2 = !{ptr @__exitcall_profinet_exit, !3, !"__exitcall_profinet_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 220, i32 1}
!4 = !{ptr @__UNIQUE_ID_author224, !5, !"__UNIQUE_ID_author224", i1 false, i1 false}
!5 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 222, i32 1}
!6 = !{ptr @__UNIQUE_ID_description225, !7, !"__UNIQUE_ID_description225", i1 false, i1 false}
!7 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 223, i32 1}
!8 = !{ptr @__UNIQUE_ID_file226, !9, !"__UNIQUE_ID_file226", i1 false, i1 false}
!9 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 224, i32 1}
!10 = !{ptr @__UNIQUE_ID_license227, !9, !"__UNIQUE_ID_license227", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 204, i32 13}
!13 = !{ptr @profinet_driver, !14, !"profinet_driver", i1 false, i1 false}
!14 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 200, i32 37}
!15 = !{ptr @profinet_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 171, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 175, i32 26}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 186, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @profinet_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @profinet_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/fieldbus/anybuss/hms-profinet.c", i32 69, i32 33}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
