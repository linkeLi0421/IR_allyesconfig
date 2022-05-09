; ModuleID = '/llk/IR_all_yes/drivers/net/usb/huawei_cdc_ncm.c_pt.bc'
source_filename = "../drivers/net/usb/huawei_cdc_ncm.c"
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
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
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.cdc_ncm_ctx = type { %struct.usb_cdc_ncm_ntb_parameters, %struct.hrtimer, %struct.tasklet_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.atomic_t, i32, i32, i32, i8, %union.anon.122, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.usb_cdc_ncm_ntb_parameters = type { i16, i16, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16 }
%union.anon.122 = type { ptr }

@__initcall__kmod_huawei_cdc_ncm__346_224_huawei_cdc_ncm_driver_init6 = internal global ptr @huawei_cdc_ncm_driver_init, section ".initcall6.init", align 4
@huawei_cdc_ncm_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @huawei_cdc_ncm_suspend, ptr @huawei_cdc_ncm_resume, ptr @huawei_cdc_ncm_resume, ptr null, ptr null, ptr @huawei_cdc_ncm_devs, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_huawei_cdc_ncm_driver_exit = internal global ptr @huawei_cdc_ncm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author347 = internal constant [57 x i8] c"huawei_cdc_ncm.author=Enrico Mioso <mrkiko.rs@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description348 = internal constant [86 x i8] c"huawei_cdc_ncm.description=USB CDC NCM host driver with encapsulated protocol support\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [51 x i8] c"huawei_cdc_ncm.file=drivers/net/usb/huawei_cdc_ncm\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [27 x i8] c"huawei_cdc_ncm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"huawei_cdc_ncm\00", [17 x i8] zeroinitializer }, align 32
@huawei_cdc_ncm_devs = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 2, i8 22, i8 0, i32 ptrtoint (ptr @huawei_cdc_ncm_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 2, i8 70, i8 0, i32 ptrtoint (ptr @huawei_cdc_ncm_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 2, i8 118, i8 0, i32 ptrtoint (ptr @huawei_cdc_ncm_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 3, i8 22, i8 0, i32 ptrtoint (ptr @huawei_cdc_ncm_info to i32) }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@huawei_cdc_ncm_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 9232, ptr @huawei_cdc_ncm_bind, ptr @huawei_cdc_ncm_unbind, ptr null, ptr null, ptr null, ptr @huawei_cdc_ncm_manage_power, ptr null, ptr null, ptr @cdc_ncm_rx_fixup, ptr @cdc_ncm_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Huawei CDC NCM device\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [22 x i8] c"huawei_cdc_ncm_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 213, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 224, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"huawei_cdc_ncm_devs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 192, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"huawei_cdc_ncm_info\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 182, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [36 x i8] c"../drivers/net/usb/huawei_cdc_ncm.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 183, i32 17 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_license350, ptr @__exitcall_huawei_cdc_ncm_driver_exit, ptr @__initcall__kmod_huawei_cdc_ncm__346_224_huawei_cdc_ncm_driver_init6, ptr @huawei_cdc_ncm_driver_exit, ptr @huawei_cdc_ncm_driver, ptr @.str, ptr @huawei_cdc_ncm_devs, ptr @huawei_cdc_ncm_info, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @huawei_cdc_ncm_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @huawei_cdc_ncm_devs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @huawei_cdc_ncm_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @huawei_cdc_ncm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @huawei_cdc_ncm_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @huawei_cdc_ncm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_deregister(ptr noundef nonnull @huawei_cdc_ncm_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @huawei_cdc_ncm_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @usbnet_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.error_crit_edge, label %if.end6

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end6:                                          ; preds = %if.end
  %control = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %cmp7 = icmp eq ptr %5, %intf
  br i1 %cmp7, label %land.lhs.true, label %if.end6.error_crit_edge

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

land.lhs.true:                                    ; preds = %if.end6
  %subdriver = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %subdriver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subdriver, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.error_crit_edge, label %land.lhs.true8

land.lhs.true.error_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

land.lhs.true8:                                   ; preds = %land.lhs.true
  %suspend = getelementptr inbounds %struct.usb_driver, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %land.lhs.true8.error_crit_edge, label %if.end16

land.lhs.true8.error_crit_edge:                   ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end16:                                         ; preds = %land.lhs.true8
  %call15 = tail call i32 %9(ptr noundef %intf, [1 x i32] %message.coerce) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %if.then18, label %if.end16.error_crit_edge

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @usbnet_resume(ptr noundef %intf) #4
  br label %error

error:                                            ; preds = %if.then18, %if.end16.error_crit_edge, %land.lhs.true8.error_crit_edge, %land.lhs.true.error_crit_edge, %if.end6.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.1 = phi i32 [ %call3, %if.end.error_crit_edge ], [ %call15, %if.then18 ], [ %call15, %if.end16.error_crit_edge ], [ -19, %entry.error_crit_edge ], [ %call3, %land.lhs.true8.error_crit_edge ], [ %call3, %land.lhs.true.error_crit_edge ], [ %call3, %if.end6.error_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @huawei_cdc_ncm_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %control = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %cmp = icmp eq ptr %5, %intf
  br i1 %cmp, label %land.lhs.true, label %entry.if.end10.thread_crit_edge

entry.if.end10.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.thread

land.lhs.true:                                    ; preds = %entry
  %subdriver = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %subdriver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subdriver, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end10.thread_crit_edge, label %land.end

land.lhs.true.if.end10.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.thread

land.end:                                         ; preds = %land.lhs.true
  %resume = getelementptr inbounds %struct.usb_driver, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.end.if.end10.thread_crit_edge, label %if.end

land.end.if.end10.thread_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.thread

if.end:                                           ; preds = %land.end
  %10 = ptrtoint ptr %subdriver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subdriver, align 4
  %resume6 = getelementptr inbounds %struct.usb_driver, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %resume6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resume6, align 4
  %call7 = tail call i32 %13(ptr noundef %intf) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.err_crit_edge, label %if.end10

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end10.thread:                                  ; preds = %land.end.if.end10.thread_crit_edge, %land.lhs.true.if.end10.thread_crit_edge, %entry.if.end10.thread_crit_edge
  %call1132 = tail call i32 @usbnet_resume(ptr noundef %intf) #4
  br label %err

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @usbnet_resume(ptr noundef %intf) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp12 = icmp sgt i32 %call11, -1
  br i1 %cmp12, label %if.end10.err_crit_edge, label %if.then15

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %subdriver16 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %subdriver16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %subdriver16, align 4
  %suspend = getelementptr inbounds %struct.usb_driver, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %suspend, align 4
  %call17 = tail call i32 %17(ptr noundef %intf, [1 x i32] [i32 2]) #4
  br label %err

err:                                              ; preds = %if.then15, %if.end10.err_crit_edge, %if.end10.thread, %if.end.err_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end.err_crit_edge ], [ %call11, %if.then15 ], [ %call11, %if.end10.err_crit_edge ], [ %call1132, %if.end10.thread ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @huawei_cdc_ncm_bind(ptr noundef %usbnet_dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %usbnet_dev, i32 0, i32 21
  %call2 = tail call i32 @cdc_ncm_bind_common(ptr noundef %usbnet_dev, ptr noundef %intf, i8 noundef zeroext 1, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.usbnet, ptr %usbnet_dev, i32 0, i32 15
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end.if.then10_crit_edge, label %if.end8

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %control = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %call7 = tail call ptr @usb_cdc_wdm_register(ptr noundef %5, ptr noundef nonnull %1, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @huawei_cdc_ncm_wdm_manage_power) #4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.if.then10_crit_edge, label %if.end12

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %subdriver.029 = phi ptr [ %call7, %if.end8.if.then10_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.if.then10_crit_edge ]
  %6 = ptrtoint ptr %subdriver.029 to i32
  tail call void @cdc_ncm_unbind(ptr noundef %usbnet_dev, ptr noundef %intf) #4
  br label %err

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %status, align 4
  %subdriver14 = getelementptr inbounds %struct.usbnet, ptr %usbnet_dev, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %subdriver14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %subdriver14, align 4
  br label %err

err:                                              ; preds = %if.end12, %if.then10, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.err_crit_edge ], [ %6, %if.then10 ], [ 0, %if.end12 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @huawei_cdc_ncm_unbind(ptr noundef %usbnet_dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %usbnet_dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %subdriver = getelementptr inbounds %struct.usbnet, ptr %usbnet_dev, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %subdriver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdriver, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disconnect = getelementptr inbounds %struct.usb_driver, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disconnect, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %control = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control, align 4
  tail call void %5(ptr noundef %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %subdriver to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %subdriver, align 4
  tail call void @cdc_ncm_unbind(ptr noundef %usbnet_dev, ptr noundef %intf) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @huawei_cdc_ncm_manage_power(ptr noundef %usbnet_dev, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %pmcount3 = getelementptr inbounds %struct.usbnet, ptr %usbnet_dev, i32 0, i32 21, i32 1
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pmcount3, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4
  tail call void @llvm.prefetch.p0(ptr %pmcount3, i32 1, i32 3, i32 1) #4
  br i1 %tobool.not, label %land.lhs.true2.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pmcount3, ptr %pmcount3, i32 1, ptr elementtype(i32) %pmcount3) #4, !srcloc !28
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true2.critedge:                          ; preds = %entry
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pmcount3, ptr %pmcount3, i32 1, ptr elementtype(i32) %pmcount3) #4, !srcloc !30
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true2.critedge.if.then_crit_edge, label %land.lhs.true2.critedge.if.end10_crit_edge

land.lhs.true2.critedge.if.end10_crit_edge:       ; preds = %land.lhs.true2.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

land.lhs.true2.critedge.if.then_crit_edge:        ; preds = %land.lhs.true2.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %land.lhs.true2.critedge.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %intf = getelementptr inbounds %struct.usbnet, ptr %usbnet_dev, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call5 = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #4
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 6
  %6 = trunc i32 %on to i8
  %7 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.value = shl i8 %6, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.then8, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %9) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then.if.end10_crit_edge, %land.lhs.true2.critedge.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_ncm_rx_fixup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdc_ncm_tx_fixup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_ncm_bind_common(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_cdc_wdm_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @huawei_cdc_ncm_wdm_manage_power(ptr nocapture noundef readonly %intf, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @huawei_cdc_ncm_manage_power(ptr noundef nonnull %1, i32 noundef %status)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdc_ncm_unbind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_huawei_cdc_ncm__346_224_huawei_cdc_ncm_driver_init6, !1, !"__initcall__kmod_huawei_cdc_ncm__346_224_huawei_cdc_ncm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/huawei_cdc_ncm.c", i32 224, i32 1}
!2 = !{ptr @__exitcall_huawei_cdc_ncm_driver_exit, !1, !"__exitcall_huawei_cdc_ncm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author347, !4, !"__UNIQUE_ID_author347", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/huawei_cdc_ncm.c", i32 225, i32 1}
!5 = !{ptr @__UNIQUE_ID_description348, !6, !"__UNIQUE_ID_description348", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/huawei_cdc_ncm.c", i32 226, i32 1}
!7 = !{ptr @__UNIQUE_ID_file349, !8, !"__UNIQUE_ID_file349", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/huawei_cdc_ncm.c", i32 227, i32 1}
!9 = !{ptr @__UNIQUE_ID_license350, !8, !"__UNIQUE_ID_license350", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @huawei_cdc_ncm_driver, !12, !"huawei_cdc_ncm_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/huawei_cdc_ncm.c", i32 213, i32 26}
!13 = !{ptr @huawei_cdc_ncm_devs, !14, !"huawei_cdc_ncm_devs", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/huawei_cdc_ncm.c", i32 192, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/huawei_cdc_ncm.c", i32 183, i32 17}
!17 = !{ptr @huawei_cdc_ncm_info, !18, !"huawei_cdc_ncm_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/huawei_cdc_ncm.c", i32 182, i32 33}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2148345225, i64 2148345257, i64 2148345286, i64 2148345320, i64 2148345351, i64 2148345374}
!29 = !{i64 2148430169}
!30 = !{i64 2148347690, i64 2148347722, i64 2148347751, i64 2148347785, i64 2148347816, i64 2148347839}
!31 = !{i64 2148433210}
