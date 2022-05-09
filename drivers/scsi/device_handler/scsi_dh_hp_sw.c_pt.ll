; ModuleID = '/llk/IR_all_yes/drivers/scsi/device_handler/scsi_dh_hp_sw.c_pt.bc'
source_filename = "../drivers/scsi/device_handler/scsi_dh_hp_sw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hp_sw_dh_data = type { i32, i32, i32, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }

@hp_sw_dh = internal global { %struct.scsi_device_handler, [52 x i8] } { %struct.scsi_device_handler { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr null, ptr @hp_sw_bus_attach, ptr @hp_sw_bus_detach, ptr @hp_sw_activate, ptr @hp_sw_prep_fn, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_scsi_dh_hp_sw__283_256_hp_sw_init6 = internal global ptr @hp_sw_init, section ".initcall6.init", align 4
@__exitcall_hp_sw_exit = internal global ptr @hp_sw_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description284 = internal constant [51 x i8] c"scsi_dh_hp_sw.description=HP Active/Passive driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author285 = internal constant [57 x i8] c"scsi_dh_hp_sw.author=Mike Christie <michaelc@cs.wisc.edu\00", section ".modinfo", align 1
@__UNIQUE_ID_file286 = internal constant [61 x i8] c"scsi_dh_hp_sw.file=drivers/scsi/device_handler/scsi_dh_hp_sw\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [26 x i8] c"scsi_dh_hp_sw.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hp_sw\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: attached to %s path\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"passive\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: sending tur failed with %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: sending tur failed, sense %x/%x/%x\0A\00", [56 x i8] zeroinitializer }, align 32
@__const.hp_sw_start_stop.cmd = private unnamed_addr constant [6 x i8] c"\1B\00\00\00\01\00", align 1
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: sending start_stop_unit failed, no sense available\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: sending start_stop_unit failed, sense %x/%x/%x\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"hp_sw_dh\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 237, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 238, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 220, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 96, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 65, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 132, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [47 x i8] c"../drivers/scsi/device_handler/scsi_dh_hp_sw.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 152, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__exitcall_hp_sw_exit, ptr @__initcall__kmod_scsi_dh_hp_sw__283_256_hp_sw_init6, ptr @hp_sw_exit, ptr @hp_sw_dh, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_sw_dh to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hp_sw_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @scsi_unregister_device_handler(ptr noundef nonnull @hp_sw_dh) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_unregister_device_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_sw_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_register_device_handler(ptr noundef nonnull @hp_sw_dh) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_sw_bus_attach(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %call7.i.i, align 8
  %retries = getelementptr inbounds %struct.hp_sw_dh_data, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %retries, align 4
  %sdev1 = getelementptr inbounds %struct.hp_sw_dh_data, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %sdev1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sdev, ptr %sdev1, align 4
  %call2 = tail call fastcc i32 @hp_sw_tur(ptr noundef %sdev, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end4, label %if.end.failed_crit_edge

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp6 = icmp eq i32 %5, -1
  br i1 %cmp6, label %if.end4.failed_crit_edge, label %if.end8

if.end4.failed_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  %cond = select i1 %cmp10, ptr @.str.3, ptr @.str.4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull %cond) #6
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %6 = ptrtoint ptr %handler_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %handler_data, align 4
  br label %cleanup

failed:                                           ; preds = %if.end4.failed_crit_edge, %if.end.failed_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.failed_crit_edge ], [ 16, %if.end4.failed_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %failed ], [ 0, %if.end8 ], [ 15, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hp_sw_bus_detach(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %handler_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %handler_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_sw_activate(ptr noundef %sdev, ptr noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  %cmd.i = alloca [6 x i8], align 1
  %sshdr.i = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %call = tail call fastcc i32 @hp_sw_tur(ptr noundef %sdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd.i) #6
  %4 = call ptr @memcpy(ptr %cmd.i, ptr @__const.hp_sw_start_stop.cmd, i32 6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i) #6
  %5 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 3
  %sdev1.i = getelementptr inbounds %struct.hp_sw_dh_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %sshdr.i, align 8
  %9 = ptrtoint ptr %sdev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev1.i, align 4
  %call.i = call i32 @__scsi_execute(ptr noundef %10, ptr noundef nonnull %cmd.i, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 6000, i32 noundef 3, i64 noundef 1792, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.hp_sw_start_stop.exit_crit_edge, label %if.then.i

if.then.hp_sw_start_stop.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %hp_sw_start_stop.exit

if.then.i:                                        ; preds = %if.then
  %11 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sshdr.i, align 8
  %13 = and i8 %12, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %13)
  %cmp.i.i = icmp eq i8 %13, 112
  br i1 %cmp.i.i, label %if.end.i, label %if.then.i.if.then3.i_crit_edge

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.then.2.i.if.then3.i_crit_edge, %if.then.1.i.if.then3.i_crit_edge, %if.then.i.if.then3.i_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %10, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str) #6
  br label %hp_sw_start_stop.exit

if.end.i:                                         ; preds = %if.then.i
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cond.i = icmp eq i8 %15, 2
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.sw.default.i_crit_edge

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp.i = icmp eq i8 %17, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.sw.default.i_crit_edge

sw.bb.i.sw.default.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp7.i = icmp eq i8 %19, 3
  br i1 %cmp7.i, label %if.then9.i, label %land.lhs.true.i.sw.default.i_crit_edge

land.lhs.true.i.sw.default.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %call.1.i = call i32 @__scsi_execute(ptr noundef %10, ptr noundef nonnull %cmd.i, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 6000, i32 noundef 3, i64 noundef 1792, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.then9.i.hp_sw_start_stop.exit_crit_edge, label %if.then.1.i

if.then9.i.hp_sw_start_stop.exit_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hp_sw_start_stop.exit

if.then.1.i:                                      ; preds = %if.then9.i
  %20 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sshdr.i, align 8
  %22 = and i8 %21, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %22)
  %cmp.i.1.i = icmp eq i8 %22, 112
  br i1 %cmp.i.1.i, label %if.end.1.i, label %if.then.1.i.if.then3.i_crit_edge

if.then.1.i.if.then3.i_crit_edge:                 ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.end.1.i:                                       ; preds = %if.then.1.i
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cond.1.i = icmp eq i8 %24, 2
  br i1 %cond.1.i, label %sw.bb.1.i, label %if.end.1.i.sw.default.i_crit_edge

if.end.1.i.sw.default.i_crit_edge:                ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb.1.i:                                        ; preds = %if.end.1.i
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp.1.i = icmp eq i8 %26, 4
  br i1 %cmp.1.i, label %land.lhs.true.1.i, label %sw.bb.1.i.sw.default.i_crit_edge

sw.bb.1.i.sw.default.i_crit_edge:                 ; preds = %sw.bb.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

land.lhs.true.1.i:                                ; preds = %sw.bb.1.i
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp7.1.i = icmp eq i8 %28, 3
  br i1 %cmp7.1.i, label %if.then9.1.i, label %land.lhs.true.1.i.sw.default.i_crit_edge

land.lhs.true.1.i.sw.default.i_crit_edge:         ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

if.then9.1.i:                                     ; preds = %land.lhs.true.1.i
  %call.2.i = call i32 @__scsi_execute(ptr noundef %10, ptr noundef nonnull %cmd.i, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 6000, i32 noundef 3, i64 noundef 1792, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.then9.1.i.hp_sw_start_stop.exit_crit_edge, label %if.then.2.i

if.then9.1.i.hp_sw_start_stop.exit_crit_edge:     ; preds = %if.then9.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hp_sw_start_stop.exit

if.then.2.i:                                      ; preds = %if.then9.1.i
  %29 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sshdr.i, align 8
  %31 = and i8 %30, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %31)
  %cmp.i.2.i = icmp eq i8 %31, 112
  br i1 %cmp.i.2.i, label %if.end.2.i, label %if.then.2.i.if.then3.i_crit_edge

if.then.2.i.if.then3.i_crit_edge:                 ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.end.2.i:                                       ; preds = %if.then.2.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cond.2.i = icmp eq i8 %33, 2
  br i1 %cond.2.i, label %sw.bb.2.i, label %if.end.2.i.sw.default.i_crit_edge

if.end.2.i.sw.default.i_crit_edge:                ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb.2.i:                                        ; preds = %if.end.2.i
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %35)
  %cmp.2.i = icmp eq i8 %35, 4
  br i1 %cmp.2.i, label %land.lhs.true.2.i, label %sw.bb.2.i.sw.default.i_crit_edge

sw.bb.2.i.sw.default.i_crit_edge:                 ; preds = %sw.bb.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

land.lhs.true.2.i:                                ; preds = %sw.bb.2.i
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp7.2.i = icmp eq i8 %37, 3
  br i1 %cmp7.2.i, label %land.lhs.true.2.i.hp_sw_start_stop.exit_crit_edge, label %land.lhs.true.2.i.sw.default.i_crit_edge

land.lhs.true.2.i.sw.default.i_crit_edge:         ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

land.lhs.true.2.i.hp_sw_start_stop.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hp_sw_start_stop.exit

sw.default.i:                                     ; preds = %land.lhs.true.2.i.sw.default.i_crit_edge, %sw.bb.2.i.sw.default.i_crit_edge, %if.end.2.i.sw.default.i_crit_edge, %land.lhs.true.1.i.sw.default.i_crit_edge, %sw.bb.1.i.sw.default.i_crit_edge, %if.end.1.i.sw.default.i_crit_edge, %land.lhs.true.i.sw.default.i_crit_edge, %sw.bb.i.sw.default.i_crit_edge, %if.end.i.sw.default.i_crit_edge
  %.lcssa.i = phi i8 [ 2, %sw.bb.i.sw.default.i_crit_edge ], [ 2, %land.lhs.true.i.sw.default.i_crit_edge ], [ %15, %if.end.i.sw.default.i_crit_edge ], [ %24, %if.end.1.i.sw.default.i_crit_edge ], [ 2, %sw.bb.1.i.sw.default.i_crit_edge ], [ 2, %land.lhs.true.1.i.sw.default.i_crit_edge ], [ %33, %if.end.2.i.sw.default.i_crit_edge ], [ 2, %sw.bb.2.i.sw.default.i_crit_edge ], [ 2, %land.lhs.true.2.i.sw.default.i_crit_edge ]
  %conv15.i = zext i8 %.lcssa.i to i32
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %6, align 2
  %conv17.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %7, align 1
  %conv19.i = zext i8 %41 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %10, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef %conv15.i, i32 noundef %conv17.i, i32 noundef %conv19.i) #6
  br label %hp_sw_start_stop.exit

hp_sw_start_stop.exit:                            ; preds = %sw.default.i, %land.lhs.true.2.i.hp_sw_start_stop.exit_crit_edge, %if.then9.1.i.hp_sw_start_stop.exit_crit_edge, %if.then9.i.hp_sw_start_stop.exit_crit_edge, %if.then3.i, %if.then.hp_sw_start_stop.exit_crit_edge
  %retval.0.i = phi i32 [ 8, %if.then3.i ], [ 8, %sw.default.i ], [ 0, %if.then.hp_sw_start_stop.exit_crit_edge ], [ 0, %if.then9.i.hp_sw_start_stop.exit_crit_edge ], [ 0, %if.then9.1.i.hp_sw_start_stop.exit_crit_edge ], [ 10, %land.lhs.true.2.i.hp_sw_start_stop.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd.i) #6
  br label %if.end

if.end:                                           ; preds = %hp_sw_start_stop.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %hp_sw_start_stop.exit ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  %tobool.not = icmp eq ptr %fn, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void %fn(ptr noundef %data, i32 noundef %ret.0) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hp_sw_prep_fn(ptr nocapture noundef readonly %sdev, ptr nocapture noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rq_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_flags, align 8
  %or = or i32 %5, 2048
  store i32 %or, ptr %rq_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 10, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hp_sw_tur(ptr noundef %sdev, ptr nocapture noundef writeonly %h) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [6 x i8], align 1
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd) #6
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #6
  %1 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %3 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %4 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %sshdr, align 8
  br label %retry

retry:                                            ; preds = %if.then2.retry_crit_edge, %entry
  %call = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 6000, i32 noundef 3, i64 noundef 1792, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else4, label %if.then

if.then:                                          ; preds = %retry
  %5 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sshdr, align 8
  %7 = and i8 %6, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %7)
  %cmp.i = icmp eq i8 %7, 112
  br i1 %cmp.i, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %sw.default.i.loopexit [
    i8 6, label %if.then2.retry_crit_edge
    i8 2, label %sw.bb1.i
  ]

if.then2.retry_crit_edge:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

sw.bb1.i:                                         ; preds = %if.then2
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp.i13 = icmp eq i8 %12, 4
  br i1 %cmp.i13, label %land.lhs.true.i, label %sw.bb1.i.sw.default.i_crit_edge

sw.bb1.i.sw.default.i_crit_edge:                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

land.lhs.true.i:                                  ; preds = %sw.bb1.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp5.i = icmp eq i8 %14, 2
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.sw.default.i_crit_edge

land.lhs.true.i.sw.default.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %h, align 4
  br label %if.end7

sw.default.i.loopexit:                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i8 %9 to i32
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.default.i.loopexit, %land.lhs.true.i.sw.default.i_crit_edge, %sw.bb1.i.sw.default.i_crit_edge
  %16 = phi i32 [ %phi.cast, %sw.default.i.loopexit ], [ 2, %land.lhs.true.i.sw.default.i_crit_edge ], [ 2, %sw.bb1.i.sw.default.i_crit_edge ]
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %2, align 2
  %conv10.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %conv12.i = zext i8 %20 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef %16, i32 noundef %conv10.i, i32 noundef %conv12.i) #6
  br label %if.end7

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef %call) #6
  br label %if.end7

if.else4:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %h, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.else, %sw.default.i, %if.then.i
  %ret.0.ph = phi i32 [ 0, %if.then.i ], [ 8, %sw.default.i ], [ 0, %if.else4 ], [ 8, %if.else ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd) #6
  ret i32 %ret.0.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_device_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_scsi_dh_hp_sw__283_256_hp_sw_init6, !1, !"__initcall__kmod_scsi_dh_hp_sw__283_256_hp_sw_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 256, i32 1}
!2 = !{ptr @__exitcall_hp_sw_exit, !3, !"__exitcall_hp_sw_exit", i1 false, i1 false}
!3 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 257, i32 1}
!4 = !{ptr @__UNIQUE_ID_description284, !5, !"__UNIQUE_ID_description284", i1 false, i1 false}
!5 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 259, i32 1}
!6 = !{ptr @__UNIQUE_ID_author285, !7, !"__UNIQUE_ID_author285", i1 false, i1 false}
!7 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 260, i32 1}
!8 = !{ptr @__UNIQUE_ID_file286, !9, !"__UNIQUE_ID_file286", i1 false, i1 false}
!9 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 261, i32 1}
!10 = !{ptr @__UNIQUE_ID_license287, !9, !"__UNIQUE_ID_license287", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 238, i32 11}
!13 = !{ptr @hp_sw_dh, !14, !"hp_sw_dh", i1 false, i1 false}
!14 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 237, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 220, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 96, i32 4}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 65, i32 3}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 132, i32 4}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/device_handler/scsi_dh_hp_sw.c", i32 152, i32 4}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
