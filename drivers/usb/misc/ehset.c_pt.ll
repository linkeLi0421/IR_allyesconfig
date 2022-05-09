; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/ehset.c_pt.bc'
source_filename = "../drivers/usb/misc/ehset.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
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
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__initcall__kmod_ehset__232_187_ehset_driver_init6 = internal global ptr @ehset_driver_init, section ".initcall6.init", align 4
@ehset_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @ehset_probe, ptr @ehset_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehset_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ehset_driver_exit = internal global ptr @ehset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [52 x i8] c"ehset.description=USB Driver for EHSET Test Fixture\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [34 x i8] c"ehset.file=drivers/usb/misc/ehset\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"ehset.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ehset\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_ehset_test\00", [17 x i8] zeroinitializer }, align 32
@ehset_id_table = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6666, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6666, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6666, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6666, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6666, i16 262, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6666, i16 263, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6666, i16 264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ehset_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"SINGLE_STEP_SET_FEATURE test only supported on root hub\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ehset_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/misc/ehset.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ehset_probe._entry_ptr = internal global ptr @ehset_probe._entry, section ".printk_index", align 4
@ehset_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unsupported PID: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@ehset_probe._entry_ptr.9 = internal global ptr @ehset_probe._entry.7, section ".printk_index", align 4
@ehset_hub_list = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1060, i16 17666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1060, i16 18707, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 -32729, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 257, i64 258, i64 259, i64 260, i64 262, i64 263, i64 264]
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"ehset_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 180, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 187, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 181, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"ehset_id_table\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 168, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 146, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 157, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"ehset_hub_list\00", align 1
@___asan_gen_.47 = private constant [28 x i8] c"../drivers/usb/misc/ehset.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 28, i32 35 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_ehset_driver_exit, ptr @__initcall__kmod_ehset__232_187_ehset_driver_init6, ptr @ehset_driver_exit, ptr @ehset_probe._entry, ptr @ehset_probe._entry.7, ptr @ehset_probe._entry_ptr, ptr @ehset_probe._entry_ptr.9, ptr @ehset_driver, ptr @.str, ptr @.str.1, ptr @ehset_id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ehset_hub_list], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehset_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehset_id_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehset_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehset_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehset_hub_list to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehset_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ehset_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehset_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @ehset_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehset_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf = alloca %struct.usb_device_descriptor, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %1, i32 -68
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %buf) #7
  %portnum1 = getelementptr i8, ptr %1, i32 1094
  %4 = call ptr @memset(ptr %buf, i32 255, i32 18)
  %5 = ptrtoint ptr %portnum1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portnum1, align 2
  %idProduct = getelementptr i8, ptr %1, i32 938
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %do.end59 [
    i16 257, label %sw.bb
    i16 258, label %sw.bb7
    i16 259, label %sw.bb17
    i16 260, label %sw.bb27
    i16 262, label %sw.bb37
    i16 263, label %sw.bb45
    i16 264, label %sw.bb47
  ]

sw.bb:                                            ; preds = %entry
  %conv2 = zext i8 %6 to i16
  %call.i = tail call ptr @usb_device_match_id(ptr noundef %3, ptr noundef nonnull @ehset_hub_list) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 1, i16 noundef zeroext %conv2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  tail call void @msleep(i32 noundef 100) #7
  br label %ehset_prepare_port_for_testing.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %conv2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  br label %ehset_prepare_port_for_testing.exit

ehset_prepare_port_for_testing.exit:              ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %ehset_prepare_port_for_testing.exit.sw.epilog_crit_edge, label %if.end

ehset_prepare_port_for_testing.exit.sw.epilog_crit_edge: ; preds = %ehset_prepare_port_for_testing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %ehset_prepare_port_for_testing.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i16 %conv2, 768
  %call6 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 21, i16 noundef zeroext %or, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %conv8 = zext i8 %6 to i16
  %call.i95 = tail call ptr @usb_device_match_id(ptr noundef %3, ptr noundef nonnull @ehset_hub_list) #7
  %tobool.not.i96 = icmp eq ptr %call.i95, null
  br i1 %tobool.not.i96, label %if.else.i100, label %if.then.i98

if.then.i98:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i97 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 1, i16 noundef zeroext %conv8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  tail call void @msleep(i32 noundef 100) #7
  br label %ehset_prepare_port_for_testing.exit102

if.else.i100:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i99 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %conv8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  br label %ehset_prepare_port_for_testing.exit102

ehset_prepare_port_for_testing.exit102:           ; preds = %if.else.i100, %if.then.i98
  %ret.0.i101 = phi i32 [ %call1.i97, %if.then.i98 ], [ %call2.i99, %if.else.i100 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i101)
  %tobool10.not = icmp eq i32 %ret.0.i101, 0
  br i1 %tobool10.not, label %ehset_prepare_port_for_testing.exit102.sw.epilog_crit_edge, label %if.end12

ehset_prepare_port_for_testing.exit102.sw.epilog_crit_edge: ; preds = %ehset_prepare_port_for_testing.exit102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end12:                                         ; preds = %ehset_prepare_port_for_testing.exit102
  call void @__sanitizer_cov_trace_pc() #9
  %or14 = or i16 %conv8, 256
  %call16 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 21, i16 noundef zeroext %or14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %conv18 = zext i8 %6 to i16
  %call.i103 = tail call ptr @usb_device_match_id(ptr noundef %3, ptr noundef nonnull @ehset_hub_list) #7
  %tobool.not.i104 = icmp eq ptr %call.i103, null
  br i1 %tobool.not.i104, label %if.else.i108, label %if.then.i106

if.then.i106:                                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i105 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 1, i16 noundef zeroext %conv18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  tail call void @msleep(i32 noundef 100) #7
  br label %ehset_prepare_port_for_testing.exit110

if.else.i108:                                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i107 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %conv18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  br label %ehset_prepare_port_for_testing.exit110

ehset_prepare_port_for_testing.exit110:           ; preds = %if.else.i108, %if.then.i106
  %ret.0.i109 = phi i32 [ %call1.i105, %if.then.i106 ], [ %call2.i107, %if.else.i108 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i109)
  %tobool20.not = icmp eq i32 %ret.0.i109, 0
  br i1 %tobool20.not, label %ehset_prepare_port_for_testing.exit110.sw.epilog_crit_edge, label %if.end22

ehset_prepare_port_for_testing.exit110.sw.epilog_crit_edge: ; preds = %ehset_prepare_port_for_testing.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end22:                                         ; preds = %ehset_prepare_port_for_testing.exit110
  call void @__sanitizer_cov_trace_pc() #9
  %or24 = or i16 %conv18, 512
  %call26 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 21, i16 noundef zeroext %or24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %conv28 = zext i8 %6 to i16
  %call.i111 = tail call ptr @usb_device_match_id(ptr noundef %3, ptr noundef nonnull @ehset_hub_list) #7
  %tobool.not.i112 = icmp eq ptr %call.i111, null
  br i1 %tobool.not.i112, label %if.else.i116, label %if.then.i114

if.then.i114:                                     ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i113 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 1, i16 noundef zeroext %conv28, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  tail call void @msleep(i32 noundef 100) #7
  br label %ehset_prepare_port_for_testing.exit118

if.else.i116:                                     ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i115 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %conv28, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  br label %ehset_prepare_port_for_testing.exit118

ehset_prepare_port_for_testing.exit118:           ; preds = %if.else.i116, %if.then.i114
  %ret.0.i117 = phi i32 [ %call1.i113, %if.then.i114 ], [ %call2.i115, %if.else.i116 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i117)
  %tobool30.not = icmp eq i32 %ret.0.i117, 0
  br i1 %tobool30.not, label %ehset_prepare_port_for_testing.exit118.sw.epilog_crit_edge, label %if.end32

ehset_prepare_port_for_testing.exit118.sw.epilog_crit_edge: ; preds = %ehset_prepare_port_for_testing.exit118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end32:                                         ; preds = %ehset_prepare_port_for_testing.exit118
  call void @__sanitizer_cov_trace_pc() #9
  %or34 = or i16 %conv28, 1024
  %call36 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 21, i16 noundef zeroext %or34, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 15000) #7
  %conv38 = zext i8 %6 to i16
  %call39 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %conv38, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %sw.bb37.sw.epilog_crit_edge, label %if.end42

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end42:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 15000) #7
  %call44 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %conv38, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  tail call void @msleep(i32 noundef 15000) #7
  %call46 = call i32 @usb_control_msg_recv(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 18, i32 noundef 5000, i32 noundef 3264) #7
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  %bus = getelementptr i8, ptr %1, i32 -64
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 8
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %root_hub, align 4
  %cmp48.not = icmp eq ptr %3, %14
  br i1 %cmp48.not, label %if.end52, label %do.end

do.end:                                           ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  %dev51 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.2) #10
  br label %sw.epilog

if.end52:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  %conv53 = zext i8 %6 to i16
  %or54 = or i16 %conv53, 1536
  %call56 = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 21, i16 noundef zeroext %or54, ptr noundef null, i16 noundef zeroext 0, i32 noundef 60000, i32 noundef 3264) #7
  br label %sw.epilog

do.end59:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %9 to i32
  %dev60 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %conv) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end59, %if.end52, %do.end, %sw.bb45, %if.end42, %sw.bb37.sw.epilog_crit_edge, %if.end32, %ehset_prepare_port_for_testing.exit118.sw.epilog_crit_edge, %if.end22, %ehset_prepare_port_for_testing.exit110.sw.epilog_crit_edge, %if.end12, %ehset_prepare_port_for_testing.exit102.sw.epilog_crit_edge, %if.end, %ehset_prepare_port_for_testing.exit.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %do.end59 ], [ -22, %do.end ], [ %call56, %if.end52 ], [ %call46, %sw.bb45 ], [ %call39, %sw.bb37.sw.epilog_crit_edge ], [ %call44, %if.end42 ], [ %call36, %if.end32 ], [ 0, %ehset_prepare_port_for_testing.exit118.sw.epilog_crit_edge ], [ %call26, %if.end22 ], [ 0, %ehset_prepare_port_for_testing.exit110.sw.epilog_crit_edge ], [ %call16, %if.end12 ], [ 0, %ehset_prepare_port_for_testing.exit102.sw.epilog_crit_edge ], [ %call6, %if.end ], [ 0, %ehset_prepare_port_for_testing.exit.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %buf) #7
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ehset_disconnect(ptr nocapture noundef %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_device_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_ehset__232_187_ehset_driver_init6, !1, !"__initcall__kmod_ehset__232_187_ehset_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/ehset.c", i32 187, i32 1}
!2 = !{ptr @__exitcall_ehset_driver_exit, !1, !"__exitcall_ehset_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description233, !4, !"__UNIQUE_ID_description233", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/ehset.c", i32 189, i32 1}
!5 = !{ptr @__UNIQUE_ID_file234, !6, !"__UNIQUE_ID_file234", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/ehset.c", i32 190, i32 1}
!7 = !{ptr @__UNIQUE_ID_license235, !6, !"__UNIQUE_ID_license235", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/misc/ehset.c", i32 181, i32 11}
!11 = !{ptr @ehset_driver, !12, !"ehset_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/ehset.c", i32 180, i32 26}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/ehset.c", i32 146, i32 4}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ehset_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ehset_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/misc/ehset.c", i32 157, i32 3}
!23 = !{ptr @ehset_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ehset_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ehset_hub_list, !26, !"ehset_hub_list", i1 false, i1 false}
!26 = !{!"../drivers/usb/misc/ehset.c", i32 28, i32 35}
!27 = !{ptr @ehset_id_table, !28, !"ehset_id_table", i1 false, i1 false}
!28 = !{!"../drivers/usb/misc/ehset.c", i32 168, i32 35}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
