; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/cypress_atacb.c_pt.bc'
source_filename = "../drivers/usb/storage/cypress_atacb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.us_unusual_dev = type { ptr, ptr, i8, i8, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.scsi_eh_save = type { i32, i32, i32, i32, i32, i8, i8, ptr, %struct.scsi_data_buffer, [16 x i8], %struct.scatterlist }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description290 = internal constant [75 x i8] c"ums_cypress.description=SAT support for Cypress USB/ATA bridges with ATACB\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [61 x i8] c"ums_cypress.author=Matthieu Castet <castet.matthieu@free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"ums_cypress.file=drivers/usb/storage/ums-cypress\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"ums_cypress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [34 x i8] c"ums_cypress.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_cypress__295_287_cypress_driver_init6 = internal global ptr @cypress_driver_init, section ".initcall6.init", align 4
@cypress_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @cypress_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @cypress_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cypress_driver_exit = internal global ptr @cypress_driver_exit, section ".exitcall.exit", align 4
@cypress_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ums-cypress\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ums_cypress\00", [20 x i8] zeroinitializer }, align 32
@cypress_usb_ids = internal global { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1204, i16 26672, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1204, i16 26673, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 5325, i16 24854, i16 352, i16 352, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cypress_unusual_dev_list = internal global { [4 x %struct.us_unusual_dev], [32 x i8] } { [4 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.4, ptr @.str.5, i8 -15, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.4, ptr @.str.6, i8 -15, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.7, ptr @.str.8, i8 -15, i8 -1, ptr null }, %struct.us_unusual_dev zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Transparent SCSI with Cypress ATACB\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Transparent SCSI\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Cypress\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Cypress AT2LP\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cypress ISD-300LP\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Super Top\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"USB 2.0  SATA BRIDGE\00", [43 x i8] zeroinitializer }, align 32
@usb_stor_sense_invalidCDB = external dso_local global [18 x i8], align 1
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cypress atacb not supported ???\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 133, i64 161]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 8, i64 161, i64 236, i64 239]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 327680, i64 458752]
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"cypress_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 273, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"cypress_host_template\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 239, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 287, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"cypress_usb_ids\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 36, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"cypress_unusual_dev_list\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 58, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 262, i32 23 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 265, i32 23 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 11, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 17, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [41 x i8] c"../drivers/usb/storage/unusual_cypress.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 22, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [39 x i8] c"../drivers/usb/storage/cypress_atacb.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 154, i32 20 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__exitcall_cypress_driver_exit, ptr @__initcall__kmod_ums_cypress__295_287_cypress_driver_init6, ptr @cypress_driver_exit, ptr @cypress_driver, ptr @cypress_host_template, ptr @.str, ptr @.str.1, ptr @cypress_usb_ids, ptr @cypress_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_usb_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_unusual_dev_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @cypress_host_template, ptr noundef nonnull @.str, ptr noundef null) #5
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cypress_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cypress_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @cypress_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cypress_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #5
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !45
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @cypress_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @cypress_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @cypress_host_template) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %iManufacturer = getelementptr i8, ptr %2, i32 942
  %3 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iManufacturer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %4)
  %cmp.not = icmp eq i8 %4, 56
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

lor.lhs.false:                                    ; preds = %if.end
  %iProduct = getelementptr i8, ptr %2, i32 943
  %5 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iProduct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %6)
  %cmp5.not = icmp eq i8 %6, 78
  br i1 %cmp5.not, label %lor.lhs.false7, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %iSerialNumber = getelementptr i8, ptr %2, i32 944
  %7 = ptrtoint ptr %iSerialNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iSerialNumber, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %8)
  %cmp10.not = icmp eq i8 %8, 100
  %spec.select = select i1 %cmp10.not, ptr @.str.3, ptr @.str.2
  %spec.select26 = select i1 %cmp10.not, ptr @usb_stor_transparent_scsi_command, ptr @cypress_atacb_passthrough
  br label %if.end15

if.end15:                                         ; preds = %lor.lhs.false7, %lor.lhs.false.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %.str.3.sink = phi ptr [ @.str.2, %lor.lhs.false.if.end15_crit_edge ], [ @.str.2, %if.end.if.end15_crit_edge ], [ %spec.select, %lor.lhs.false7 ]
  %usb_stor_transparent_scsi_command.sink = phi ptr [ @cypress_atacb_passthrough, %lor.lhs.false.if.end15_crit_edge ], [ @cypress_atacb_passthrough, %if.end.if.end15_crit_edge ], [ %spec.select26, %lor.lhs.false7 ]
  %9 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %9)
  %.sink25 = load ptr, ptr %us, align 4
  %protocol_name13 = getelementptr inbounds %struct.us_data, ptr %.sink25, i32 0, i32 12
  %10 = ptrtoint ptr %protocol_name13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.str.3.sink, ptr %protocol_name13, align 4
  %proto_handler14 = getelementptr inbounds %struct.us_data, ptr %.sink25, i32 0, i32 21
  %11 = ptrtoint ptr %proto_handler14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %usb_stor_transparent_scsi_command.sink, ptr %proto_handler14, align 4
  %call16 = call i32 @usb_stor_probe2(ptr noundef %.sink25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_reset_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_pre_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_post_reset(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cypress_atacb_passthrough(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  %ses = alloca %struct.scsi_eh_save, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %0 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmnd, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %3)
  %cmp.not.not = icmp eq i8 %3, -123
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.then [
    i8 -95, label %entry.if.end_crit_edge
    i8 -123, label %entry.if.end_crit_edge318
  ]

entry.if.end_crit_edge318:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_stor_transparent_scsi_command(ptr noundef %srb, ptr noundef %us) #5
  br label %cleanup202

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge318
  %save_cmnd.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 1
  %5 = ptrtoint ptr %save_cmnd.sroa.6.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %save_cmnd.sroa.6.0.copyload = load i8, ptr %save_cmnd.sroa.6.0..sroa_idx, align 1
  %save_cmnd.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 2
  %6 = ptrtoint ptr %save_cmnd.sroa.10.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %save_cmnd.sroa.10.0.copyload = load i8, ptr %save_cmnd.sroa.10.0..sroa_idx, align 1
  %save_cmnd.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 3
  %7 = ptrtoint ptr %save_cmnd.sroa.12.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %save_cmnd.sroa.12.0.copyload = load i8, ptr %save_cmnd.sroa.12.0..sroa_idx, align 1
  %save_cmnd.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 4
  %8 = ptrtoint ptr %save_cmnd.sroa.15.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %save_cmnd.sroa.15.0.copyload = load i8, ptr %save_cmnd.sroa.15.0..sroa_idx, align 1
  %save_cmnd.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 5
  %9 = ptrtoint ptr %save_cmnd.sroa.18.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %save_cmnd.sroa.18.0.copyload = load i8, ptr %save_cmnd.sroa.18.0..sroa_idx, align 1
  %save_cmnd.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 6
  %10 = ptrtoint ptr %save_cmnd.sroa.21.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %save_cmnd.sroa.21.0.copyload = load i8, ptr %save_cmnd.sroa.21.0..sroa_idx, align 1
  %save_cmnd.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 7
  %11 = ptrtoint ptr %save_cmnd.sroa.24.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %save_cmnd.sroa.24.0.copyload = load i8, ptr %save_cmnd.sroa.24.0..sroa_idx, align 1
  %save_cmnd.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %12 = ptrtoint ptr %save_cmnd.sroa.27.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %save_cmnd.sroa.27.0.copyload = load i8, ptr %save_cmnd.sroa.27.0..sroa_idx, align 1
  %save_cmnd.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 9
  %13 = ptrtoint ptr %save_cmnd.sroa.30.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %save_cmnd.sroa.30.0.copyload = load i8, ptr %save_cmnd.sroa.30.0..sroa_idx, align 1
  %save_cmnd.sroa.33.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 10
  %14 = ptrtoint ptr %save_cmnd.sroa.33.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %save_cmnd.sroa.33.0.copyload = load i8, ptr %save_cmnd.sroa.33.0..sroa_idx, align 1
  %save_cmnd.sroa.35.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 11
  %15 = ptrtoint ptr %save_cmnd.sroa.35.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %save_cmnd.sroa.35.0.copyload = load i8, ptr %save_cmnd.sroa.35.0..sroa_idx, align 1
  %save_cmnd.sroa.37.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 12
  %16 = ptrtoint ptr %save_cmnd.sroa.37.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %save_cmnd.sroa.37.0.copyload = load i8, ptr %save_cmnd.sroa.37.0..sroa_idx, align 1
  %save_cmnd.sroa.39.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 13
  %17 = ptrtoint ptr %save_cmnd.sroa.39.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %save_cmnd.sroa.39.0.copyload = load i8, ptr %save_cmnd.sroa.39.0..sroa_idx, align 1
  %save_cmnd.sroa.41.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 14
  %18 = ptrtoint ptr %save_cmnd.sroa.41.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %save_cmnd.sroa.41.0.copyload = load i8, ptr %save_cmnd.sroa.41.0..sroa_idx, align 1
  %save_cmnd.sroa.43.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 15
  %19 = ptrtoint ptr %save_cmnd.sroa.43.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %save_cmnd.sroa.43.0.copyload = load i8, ptr %save_cmnd.sroa.43.0..sroa_idx, align 1
  %20 = call ptr @memset(ptr %1, i32 0, i32 16)
  %conv11 = zext i8 %save_cmnd.sroa.6.0.copyload to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %save_cmnd.sroa.6.0.copyload)
  %tobool12.not = icmp ult i8 %save_cmnd.sroa.6.0.copyload, 32
  br i1 %tobool12.not, label %if.end14, label %if.end.invalid_fld_crit_edge

if.end.invalid_fld_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %invalid_fld

if.end14:                                         ; preds = %if.end
  %21 = lshr i32 %conv11, 1
  %and = and i32 %21, 15
  %and.off = add nsw i32 %and, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.off)
  %switch = icmp ult i32 %and.off, 3
  br i1 %switch, label %sw.epilog, label %if.end14.invalid_fld_crit_edge

if.end14.invalid_fld_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %invalid_fld

sw.epilog:                                        ; preds = %if.end14
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 14
  %22 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 16, ptr %cmd_len, align 4
  %23 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmnd, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 36, ptr %24, align 1
  %26 = load ptr, ptr %cmnd, align 4
  %arrayidx21 = getelementptr i8, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 36, ptr %arrayidx21, align 1
  %28 = load ptr, ptr %cmnd, align 4
  %arrayidx23 = getelementptr i8, ptr %28, i32 3
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -2, ptr %arrayidx23, align 1
  %30 = load ptr, ptr %cmnd, align 4
  %arrayidx25 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx25, align 1
  %32 = load ptr, ptr %cmnd, align 4
  %arrayidx33 = getelementptr i8, ptr %32, i32 6
  br i1 %cmp.not.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.epilog
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %save_cmnd.sroa.15.0.copyload, ptr %arrayidx33, align 1
  %34 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmnd, align 4
  %arrayidx36 = getelementptr i8, ptr %35, i32 7
  %36 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %save_cmnd.sroa.21.0.copyload, ptr %arrayidx36, align 1
  %37 = load ptr, ptr %cmnd, align 4
  %arrayidx39 = getelementptr i8, ptr %37, i32 8
  %38 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %save_cmnd.sroa.27.0.copyload, ptr %arrayidx39, align 1
  %39 = load ptr, ptr %cmnd, align 4
  %arrayidx42 = getelementptr i8, ptr %39, i32 9
  %40 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %save_cmnd.sroa.33.0.copyload, ptr %arrayidx42, align 1
  %41 = load ptr, ptr %cmnd, align 4
  %arrayidx45 = getelementptr i8, ptr %41, i32 10
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %save_cmnd.sroa.37.0.copyload, ptr %arrayidx45, align 1
  %43 = load ptr, ptr %cmnd, align 4
  %arrayidx48 = getelementptr i8, ptr %43, i32 11
  %44 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %save_cmnd.sroa.39.0.copyload, ptr %arrayidx48, align 1
  %45 = load ptr, ptr %cmnd, align 4
  %arrayidx51 = getelementptr i8, ptr %45, i32 12
  %46 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %save_cmnd.sroa.41.0.copyload, ptr %arrayidx51, align 1
  %and54 = and i32 %conv11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then30.if.end99_crit_edge, label %if.then56

if.then30.if.end99_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then56:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %save_cmnd.sroa.12.0.copyload)
  %tobool59.not = icmp eq i8 %save_cmnd.sroa.12.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %save_cmnd.sroa.18.0.copyload)
  %tobool62.not = icmp eq i8 %save_cmnd.sroa.18.0.copyload, 0
  %or.cond = select i1 %tobool59.not, i1 %tobool62.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %save_cmnd.sroa.24.0.copyload)
  %tobool66.not = icmp eq i8 %save_cmnd.sroa.24.0.copyload, 0
  %or.cond311 = select i1 %or.cond, i1 %tobool66.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %save_cmnd.sroa.30.0.copyload)
  %tobool70.not = icmp eq i8 %save_cmnd.sroa.30.0.copyload, 0
  %or.cond312 = select i1 %or.cond311, i1 %tobool70.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %save_cmnd.sroa.35.0.copyload)
  %tobool74.not = icmp eq i8 %save_cmnd.sroa.35.0.copyload, 0
  %or.cond313 = select i1 %or.cond312, i1 %tobool74.not, i1 false
  br i1 %or.cond313, label %if.then56.if.end99_crit_edge, label %if.then56.invalid_fld_crit_edge

if.then56.invalid_fld_crit_edge:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  br label %invalid_fld

if.then56.if.end99_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %save_cmnd.sroa.12.0.copyload, ptr %arrayidx33, align 1
  %48 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cmnd, align 4
  %arrayidx83 = getelementptr i8, ptr %49, i32 7
  %50 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %save_cmnd.sroa.15.0.copyload, ptr %arrayidx83, align 1
  %51 = load ptr, ptr %cmnd, align 4
  %arrayidx86 = getelementptr i8, ptr %51, i32 8
  %52 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %save_cmnd.sroa.18.0.copyload, ptr %arrayidx86, align 1
  %53 = load ptr, ptr %cmnd, align 4
  %arrayidx89 = getelementptr i8, ptr %53, i32 9
  %54 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %save_cmnd.sroa.21.0.copyload, ptr %arrayidx89, align 1
  %55 = load ptr, ptr %cmnd, align 4
  %arrayidx92 = getelementptr i8, ptr %55, i32 10
  %56 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %save_cmnd.sroa.24.0.copyload, ptr %arrayidx92, align 1
  %57 = load ptr, ptr %cmnd, align 4
  %arrayidx95 = getelementptr i8, ptr %57, i32 11
  %58 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %save_cmnd.sroa.27.0.copyload, ptr %arrayidx95, align 1
  %59 = load ptr, ptr %cmnd, align 4
  %arrayidx98 = getelementptr i8, ptr %59, i32 12
  %60 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %save_cmnd.sroa.30.0.copyload, ptr %arrayidx98, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then56.if.end99_crit_edge, %if.then30.if.end99_crit_edge
  %61 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmnd, align 4
  %arrayidx101 = getelementptr i8, ptr %62, i32 12
  %63 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx101, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %64, label %if.end99.if.end128_crit_edge [
    i8 -17, label %land.lhs.true
    i8 -20, label %if.end99.if.then123_crit_edge
    i8 -95, label %if.end99.if.then123_crit_edge319
  ]

if.end99.if.then123_crit_edge319:                 ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then123

if.end99.if.then123_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then123

if.end99.if.end128_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

land.lhs.true:                                    ; preds = %if.end99
  %arrayidx106 = getelementptr i8, ptr %62, i32 6
  %66 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp108 = icmp eq i8 %67, 3
  br i1 %cmp108, label %land.lhs.true.invalid_fld_crit_edge, label %land.lhs.true.if.end128_crit_edge

land.lhs.true.if.end128_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

land.lhs.true.invalid_fld_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %invalid_fld

if.then123:                                       ; preds = %if.end99.if.then123_crit_edge, %if.end99.if.then123_crit_edge319
  %arrayidx125 = getelementptr i8, ptr %62, i32 2
  %68 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx125, align 1
  %70 = or i8 %69, -128
  store i8 %70, ptr %arrayidx125, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %land.lhs.true.if.end128_crit_edge, %if.end99.if.end128_crit_edge
  tail call void @usb_stor_transparent_scsi_command(ptr noundef %srb, ptr noundef %us) #5
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %71 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %result, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %72, label %if.end128.land.lhs.true143_crit_edge [
    i32 2, label %land.lhs.true131
    i32 458752, label %if.end128.end_crit_edge
    i32 327680, label %if.end128.end_crit_edge320
  ]

if.end128.end_crit_edge320:                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end128.end_crit_edge:                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end128.land.lhs.true143_crit_edge:             ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true143

land.lhs.true131:                                 ; preds = %if.end128
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 21
  %74 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sense_buffer, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(18) %75, ptr noundef nonnull dereferenceable(18) @usb_stor_sense_invalidCDB, i32 18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp132 = icmp eq i32 %bcmp, 0
  br i1 %cmp132, label %if.then134, label %land.lhs.true131.land.lhs.true143_crit_edge

land.lhs.true131.land.lhs.true143_crit_edge:      ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true143

if.then134:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.9) #5
  br label %end

land.lhs.true143:                                 ; preds = %land.lhs.true131.land.lhs.true143_crit_edge, %if.end128.land.lhs.true143_crit_edge
  %76 = and i8 %save_cmnd.sroa.10.0.copyload, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool147.not = icmp eq i8 %76, 0
  br i1 %tobool147.not, label %land.lhs.true143.end_crit_edge, label %if.then148

land.lhs.true143.end_crit_edge:                   ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.then148:                                       ; preds = %land.lhs.true143
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ses) #5
  %77 = call ptr @memset(ptr %ses, i32 255, i32 80)
  %sense_buffer149 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 21
  %78 = ptrtoint ptr %sense_buffer149 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sense_buffer149, align 4
  call void @scsi_eh_prep_cmnd(ptr noundef %srb, ptr noundef nonnull %ses, ptr noundef null, i32 noundef 0, i32 noundef 8) #5
  %80 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 16, ptr %cmd_len, align 4
  %cmnd151 = getelementptr inbounds %struct.scsi_eh_save, ptr %ses, i32 0, i32 7
  %81 = ptrtoint ptr %cmnd151 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmnd151, align 4
  %83 = ptrtoint ptr %cmnd to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %cmnd, align 4
  %arrayidx154 = getelementptr i8, ptr %82, i32 2
  %84 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %arrayidx154, align 1
  call void @usb_stor_transparent_scsi_command(ptr noundef %srb, ptr noundef %us) #5
  %85 = ptrtoint ptr %sense_buffer149 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sense_buffer149, align 4
  %regs.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %86, i32 1
  %87 = ptrtoint ptr %regs.sroa.4.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %87)
  %regs.sroa.4.0.copyload = load i8, ptr %regs.sroa.4.0..sroa_idx, align 1
  %regs.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %86, i32 2
  %88 = ptrtoint ptr %regs.sroa.6.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %88)
  %regs.sroa.6.0.copyload = load i8, ptr %regs.sroa.6.0..sroa_idx, align 1
  %regs.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %86, i32 3
  %89 = ptrtoint ptr %regs.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %89)
  %regs.sroa.8.0.copyload = load i8, ptr %regs.sroa.8.0..sroa_idx, align 1
  %regs.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %86, i32 4
  %90 = ptrtoint ptr %regs.sroa.10.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %90)
  %regs.sroa.10.0.copyload = load i8, ptr %regs.sroa.10.0..sroa_idx, align 1
  %regs.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %86, i32 5
  %91 = ptrtoint ptr %regs.sroa.12.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %91)
  %regs.sroa.12.0.copyload = load i8, ptr %regs.sroa.12.0..sroa_idx, align 1
  %regs.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %86, i32 6
  %92 = ptrtoint ptr %regs.sroa.14.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %92)
  %regs.sroa.14.0.copyload = load i8, ptr %regs.sroa.14.0..sroa_idx, align 1
  %regs.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %86, i32 7
  %93 = ptrtoint ptr %regs.sroa.16.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %93)
  %regs.sroa.16.0.copyload = load i8, ptr %regs.sroa.16.0..sroa_idx, align 1
  %94 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %result, align 4
  call void @scsi_eh_restore_cmnd(ptr noundef %srb, ptr noundef nonnull %ses) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp158.not = icmp eq i32 %95, 0
  br i1 %cmp158.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %79, i32 8
  %96 = getelementptr inbounds i8, ptr %79, i32 4
  %97 = call ptr @memset(ptr %96, i32 0, i32 92)
  %arrayidx162 = getelementptr i8, ptr %79, i32 1
  %98 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %arrayidx162, align 1
  %arrayidx163 = getelementptr i8, ptr %79, i32 2
  %99 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %arrayidx163, align 1
  %arrayidx164 = getelementptr i8, ptr %79, i32 3
  %100 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 29, ptr %arrayidx164, align 1
  %101 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 114, ptr %79, align 1
  %102 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 9, ptr %add.ptr, align 1
  %arrayidx167 = getelementptr i8, ptr %79, i32 7
  %103 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 14, ptr %arrayidx167, align 1
  %arrayidx168 = getelementptr i8, ptr %79, i32 9
  %104 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 12, ptr %arrayidx168, align 1
  %arrayidx171 = getelementptr i8, ptr %79, i32 11
  %105 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %regs.sroa.4.0.copyload, ptr %arrayidx171, align 1
  %arrayidx173 = getelementptr i8, ptr %79, i32 13
  %106 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %regs.sroa.6.0.copyload, ptr %arrayidx173, align 1
  %arrayidx175 = getelementptr i8, ptr %79, i32 15
  %107 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %regs.sroa.8.0.copyload, ptr %arrayidx175, align 1
  %arrayidx177 = getelementptr i8, ptr %79, i32 17
  %108 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %regs.sroa.10.0.copyload, ptr %arrayidx177, align 1
  %arrayidx179 = getelementptr i8, ptr %79, i32 19
  %109 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %regs.sroa.12.0.copyload, ptr %arrayidx179, align 1
  %arrayidx181 = getelementptr i8, ptr %79, i32 20
  %110 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %regs.sroa.14.0.copyload, ptr %arrayidx181, align 1
  %arrayidx183 = getelementptr i8, ptr %79, i32 21
  %111 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %regs.sroa.16.0.copyload, ptr %arrayidx183, align 1
  %112 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %result, align 4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ses) #5
  br label %end

cleanup:                                          ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ses) #5
  br label %invalid_fld

invalid_fld:                                      ; preds = %cleanup, %land.lhs.true.invalid_fld_crit_edge, %if.then56.invalid_fld_crit_edge, %if.end14.invalid_fld_crit_edge, %if.end.invalid_fld_crit_edge
  %result190 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %113 = ptrtoint ptr %result190 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 2, ptr %result190, align 4
  %sense_buffer191 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 21
  %114 = ptrtoint ptr %sense_buffer191 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sense_buffer191, align 4
  %116 = call ptr @memcpy(ptr %115, ptr @usb_stor_sense_invalidCDB, i32 18)
  br label %end

end:                                              ; preds = %invalid_fld, %cleanup.thread, %land.lhs.true143.end_crit_edge, %if.then134, %if.end128.end_crit_edge, %if.end128.end_crit_edge320
  %117 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cmnd, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %3, ptr %118, align 1
  %save_cmnd.sroa.6.0..sroa_idx221 = getelementptr inbounds i8, ptr %118, i32 1
  %120 = ptrtoint ptr %save_cmnd.sroa.6.0..sroa_idx221 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %save_cmnd.sroa.6.0.copyload, ptr %save_cmnd.sroa.6.0..sroa_idx221, align 1
  %save_cmnd.sroa.10.0..sroa_idx225 = getelementptr inbounds i8, ptr %118, i32 2
  %121 = ptrtoint ptr %save_cmnd.sroa.10.0..sroa_idx225 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %save_cmnd.sroa.10.0.copyload, ptr %save_cmnd.sroa.10.0..sroa_idx225, align 1
  %save_cmnd.sroa.12.0..sroa_idx227 = getelementptr inbounds i8, ptr %118, i32 3
  %122 = ptrtoint ptr %save_cmnd.sroa.12.0..sroa_idx227 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %save_cmnd.sroa.12.0.copyload, ptr %save_cmnd.sroa.12.0..sroa_idx227, align 1
  %save_cmnd.sroa.15.0..sroa_idx230 = getelementptr inbounds i8, ptr %118, i32 4
  %123 = ptrtoint ptr %save_cmnd.sroa.15.0..sroa_idx230 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %save_cmnd.sroa.15.0.copyload, ptr %save_cmnd.sroa.15.0..sroa_idx230, align 1
  %save_cmnd.sroa.18.0..sroa_idx233 = getelementptr inbounds i8, ptr %118, i32 5
  %124 = ptrtoint ptr %save_cmnd.sroa.18.0..sroa_idx233 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %save_cmnd.sroa.18.0.copyload, ptr %save_cmnd.sroa.18.0..sroa_idx233, align 1
  %save_cmnd.sroa.21.0..sroa_idx236 = getelementptr inbounds i8, ptr %118, i32 6
  %125 = ptrtoint ptr %save_cmnd.sroa.21.0..sroa_idx236 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %save_cmnd.sroa.21.0.copyload, ptr %save_cmnd.sroa.21.0..sroa_idx236, align 1
  %save_cmnd.sroa.24.0..sroa_idx239 = getelementptr inbounds i8, ptr %118, i32 7
  %126 = ptrtoint ptr %save_cmnd.sroa.24.0..sroa_idx239 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %save_cmnd.sroa.24.0.copyload, ptr %save_cmnd.sroa.24.0..sroa_idx239, align 1
  %save_cmnd.sroa.27.0..sroa_idx242 = getelementptr inbounds i8, ptr %118, i32 8
  %127 = ptrtoint ptr %save_cmnd.sroa.27.0..sroa_idx242 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %save_cmnd.sroa.27.0.copyload, ptr %save_cmnd.sroa.27.0..sroa_idx242, align 1
  %save_cmnd.sroa.30.0..sroa_idx245 = getelementptr inbounds i8, ptr %118, i32 9
  %128 = ptrtoint ptr %save_cmnd.sroa.30.0..sroa_idx245 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %save_cmnd.sroa.30.0.copyload, ptr %save_cmnd.sroa.30.0..sroa_idx245, align 1
  %save_cmnd.sroa.33.0..sroa_idx248 = getelementptr inbounds i8, ptr %118, i32 10
  %129 = ptrtoint ptr %save_cmnd.sroa.33.0..sroa_idx248 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %save_cmnd.sroa.33.0.copyload, ptr %save_cmnd.sroa.33.0..sroa_idx248, align 1
  %save_cmnd.sroa.35.0..sroa_idx250 = getelementptr inbounds i8, ptr %118, i32 11
  %130 = ptrtoint ptr %save_cmnd.sroa.35.0..sroa_idx250 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %save_cmnd.sroa.35.0.copyload, ptr %save_cmnd.sroa.35.0..sroa_idx250, align 1
  %save_cmnd.sroa.37.0..sroa_idx252 = getelementptr inbounds i8, ptr %118, i32 12
  %131 = ptrtoint ptr %save_cmnd.sroa.37.0..sroa_idx252 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %save_cmnd.sroa.37.0.copyload, ptr %save_cmnd.sroa.37.0..sroa_idx252, align 1
  %save_cmnd.sroa.39.0..sroa_idx254 = getelementptr inbounds i8, ptr %118, i32 13
  %132 = ptrtoint ptr %save_cmnd.sroa.39.0..sroa_idx254 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %save_cmnd.sroa.39.0.copyload, ptr %save_cmnd.sroa.39.0..sroa_idx254, align 1
  %save_cmnd.sroa.41.0..sroa_idx256 = getelementptr inbounds i8, ptr %118, i32 14
  %133 = ptrtoint ptr %save_cmnd.sroa.41.0..sroa_idx256 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %save_cmnd.sroa.41.0.copyload, ptr %save_cmnd.sroa.41.0..sroa_idx256, align 1
  %save_cmnd.sroa.43.0..sroa_idx258 = getelementptr inbounds i8, ptr %118, i32 15
  %134 = ptrtoint ptr %save_cmnd.sroa.43.0..sroa_idx258 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %save_cmnd.sroa.43.0.copyload, ptr %save_cmnd.sroa.43.0..sroa_idx258, align 1
  %135 = load ptr, ptr %cmnd, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %137)
  %cmp197 = icmp eq i8 %137, -95
  br i1 %cmp197, label %if.then199, label %end.cleanup202_crit_edge

end.cleanup202_crit_edge:                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup202

if.then199:                                       ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  %cmd_len200 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 14
  %138 = ptrtoint ptr %cmd_len200 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 12, ptr %cmd_len200, align 4
  br label %cleanup202

cleanup202:                                       ; preds = %if.then199, %end.cleanup202_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_transparent_scsi_command(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_prep_cmnd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_restore_cmnd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 25, i32 1}
!9 = !{ptr @__initcall__kmod_ums_cypress__295_287_cypress_driver_init6, !10, !"__initcall__kmod_ums_cypress__295_287_cypress_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 287, i32 1}
!11 = !{ptr @__exitcall_cypress_driver_exit, !10, !"__exitcall_cypress_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cypress_host_template, !15, !"cypress_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 239, i32 34}
!16 = !{ptr @cypress_driver, !17, !"cypress_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 273, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 262, i32 23}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 265, i32 23}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/storage/unusual_cypress.h", i32 11, i32 1}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/storage/unusual_cypress.h", i32 17, i32 1}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/storage/unusual_cypress.h", i32 22, i32 1}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cypress_unusual_dev_list, !31, !"cypress_unusual_dev_list", i1 false, i1 false}
!31 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 58, i32 30}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 154, i32 20}
!34 = !{ptr @cypress_usb_ids, !35, !"cypress_usb_ids", i1 false, i1 false}
!35 = !{!"../drivers/usb/storage/cypress_atacb.c", i32 36, i32 29}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
