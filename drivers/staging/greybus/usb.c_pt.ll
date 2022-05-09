; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/usb.c_pt.bc'
source_filename = "../drivers/staging/greybus/usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gbphy_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gbphy_device_id = type { i8 }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_usb_hub_control_request = type { i16, i16, i16, i16 }

@__initcall__kmod_gb_usb__237_244_usb_driver_init6 = internal global ptr @usb_driver_init, section ".initcall6.init", align 4
@usb_driver = internal global { %struct.gbphy_driver, [36 x i8] } { %struct.gbphy_driver { ptr @.str.1, ptr @gb_usb_probe, ptr @gb_usb_remove, ptr @gb_usb_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_usb_driver_exit = internal global ptr @usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file238 = internal constant [43 x i8] c"gb_usb.file=drivers/staging/greybus/gb-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [22 x i8] c"gb_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gb_usb\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@gb_usb_id_table = internal constant { [2 x %struct.gbphy_device_id], [30 x i8] } { [2 x %struct.gbphy_device_id] [%struct.gbphy_device_id { i8 6 }, %struct.gbphy_device_id zeroinitializer], [30 x i8] zeroinitializer }, align 32
@usb_gb_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @.str.7, ptr @.str.8, i32 8, ptr null, i32 32, ptr null, ptr @hcd_start, ptr null, ptr null, ptr @hcd_stop, ptr null, ptr @get_frame_number, ptr @urb_enqueue, ptr @urb_dequeue, ptr null, ptr null, ptr null, ptr null, ptr @hub_status_data, ptr @hub_control, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gb_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB protocol disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gb_usb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/greybus/usb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_usb_probe._entry_ptr = internal global ptr @gb_usb_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"greybus-hcd\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Greybus USB Host Controller\00", [36 x i8] zeroinitializer }, align 32
@hcd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 68, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HCD start failed '%d'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hcd_start\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hcd_start._entry_ptr = internal global ptr @hcd_start._entry, section ".printk_index", align 4
@hcd_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 56, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HCD stop failed '%d'\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hcd_stop\00", [23 x i8] zeroinitializer }, align 32
@hcd_stop._entry_ptr = internal global ptr @hcd_stop._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"usb_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 237, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 244, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 238, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"gb_usb_id_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 231, i32 37 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"usb_gb_hc_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 140, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 198, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 141, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 142, i32 18 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 68, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [33 x i8] c"../drivers/staging/greybus/usb.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 56, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_usb_driver_exit, ptr @__initcall__kmod_gb_usb__237_244_usb_driver_init6, ptr @gb_usb_probe._entry, ptr @gb_usb_probe._entry_ptr, ptr @hcd_start._entry, ptr @hcd_start._entry_ptr, ptr @hcd_stop._entry, ptr @hcd_stop._entry_ptr, ptr @usb_driver_exit, ptr @usb_driver, ptr @.str, ptr @.str.1, ptr @gb_usb_id_table, ptr @usb_gb_hc_driver, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_usb_id_table to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_gb_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gb_gbphy_register_driver(ptr noundef nonnull @usb_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gb_gbphy_deregister_driver(ptr noundef nonnull @usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_gbphy_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_gbphy_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_usb_probe(ptr noundef %gbphy_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %init_name.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @usb_create_hcd(ptr noundef nonnull @usb_gb_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %bundle = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 2
  %4 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bundle, align 8
  %cport_desc = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 1
  %6 = ptrtoint ptr %cport_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cport_desc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %7, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %call5 = tail call ptr @gb_connection_create(ptr noundef %5, i16 noundef zeroext %10, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call5 to i32
  br label %exit_usb_put

if.end9:                                          ; preds = %if.end
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 0, i32 30
  %12 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %hcd_priv.i, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call5, i32 0, i32 17
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hcd_priv.i, ptr %private.i, align 4
  %gbphy_dev12 = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %gbphy_dev12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %gbphy_dev, ptr %gbphy_dev12, align 4
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hcd_priv.i, ptr %driver_data.i.i, align 4
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 0, i32 14
  %16 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %has_tt, align 4
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %has_tt, align 4
  %call13 = tail call i32 @gb_connection_enable(ptr noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end, label %if.end9.exit_connection_destroy_crit_edge

if.end9.exit_connection_destroy_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_connection_destroy

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  tail call void @gb_connection_disable(ptr noundef %call5) #6
  br label %exit_connection_destroy

exit_connection_destroy:                          ; preds = %do.end, %if.end9.exit_connection_destroy_crit_edge
  %retval2.0 = phi i32 [ %call13, %if.end9.exit_connection_destroy_crit_edge ], [ -93, %do.end ]
  tail call void @gb_connection_destroy(ptr noundef %call5) #6
  br label %exit_usb_put

exit_usb_put:                                     ; preds = %exit_connection_destroy, %if.then7
  %retval2.1 = phi i32 [ %11, %if.then7 ], [ %retval2.0, %exit_connection_destroy ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_usb_put, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.1, %exit_usb_put ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_usb_remove(ptr nocapture noundef readonly %gbphy_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -600
  tail call void @usb_remove_hcd(ptr noundef %add.ptr.i) #6
  tail call void @gb_connection_disable(ptr noundef %3) #6
  tail call void @gb_connection_destroy(ptr noundef %3) #6
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hcd_start(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 4
  %call.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %1, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gbphy_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %gbphy_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gbphy_dev, align 4
  %dev3 = getelementptr inbounds %struct.gbphy_device, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.9, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state, align 4
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %5 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root_hub, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_hcd_resume_root_hub(ptr noundef %hcd) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %do.end
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hcd_stop(ptr nocapture noundef readonly %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 4
  %call.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %1, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gbphy_dev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %gbphy_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gbphy_dev, align 4
  %dev2 = getelementptr inbounds %struct.gbphy_device, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_frame_number(ptr nocapture noundef readnone %hcd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @urb_enqueue(ptr nocapture noundef readnone %hcd, ptr nocapture noundef readnone %urb, i32 noundef %mem_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @urb_dequeue(ptr nocapture noundef readnone %hcd, ptr nocapture noundef readnone %urb, i32 noundef %status) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hub_status_data(ptr nocapture noundef readnone %hcd, ptr nocapture noundef readnone %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hub_control(ptr nocapture noundef readonly %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %wLength) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %conv = zext i16 %wLength to i32
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 4
  %call.i = tail call ptr @gb_operation_create_flags(ptr noundef %1, i8 noundef zeroext 4, i32 noundef 8, i32 noundef %conv, i32 noundef 0, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %request2 = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %request2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request2, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %payload, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %typeReq)
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %5, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %wValue)
  %wValue4 = getelementptr inbounds %struct.gb_usb_hub_control_request, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %wValue4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %wValue4, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %wIndex)
  %wIndex5 = getelementptr inbounds %struct.gb_usb_hub_control_request, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %wIndex5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %wIndex5, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %wLength)
  %wLength6 = getelementptr inbounds %struct.gb_usb_hub_control_request, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %wLength6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %wLength6, align 2
  %call.i34 = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call.i, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool8.not = icmp ne i32 %call.i34, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wLength)
  %tobool11.not = icmp eq i16 %wLength, 0
  %or.cond = or i1 %tobool11.not, %tobool8.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.then12

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %response13 = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %response13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %response13, align 4
  %payload14 = getelementptr inbounds %struct.gb_message, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %payload14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %payload14, align 4
  %18 = call ptr @memcpy(ptr %buf, ptr %17, i32 %conv)
  br label %out

out:                                              ; preds = %if.then12, %if.end.out_crit_edge
  tail call void @gb_operation_put(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i34, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_operation_create_flags(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_gb_usb__237_244_usb_driver_init6, !1, !"__initcall__kmod_gb_usb__237_244_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/usb.c", i32 244, i32 1}
!2 = !{ptr @__exitcall_usb_driver_exit, !1, !"__exitcall_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file238, !4, !"__UNIQUE_ID_file238", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/usb.c", i32 245, i32 1}
!5 = !{ptr @__UNIQUE_ID_license239, !4, !"__UNIQUE_ID_license239", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/usb.c", i32 238, i32 11}
!9 = !{ptr @usb_driver, !10, !"usb_driver", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/usb.c", i32 237, i32 28}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/usb.c", i32 198, i32 3}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gb_usb_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @gb_usb_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/usb.c", i32 141, i32 17}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/greybus/usb.c", i32 142, i32 18}
!23 = !{ptr @usb_gb_hc_driver, !24, !"usb_gb_hc_driver", i1 false, i1 false}
!24 = !{!"../drivers/staging/greybus/usb.c", i32 140, i32 31}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/greybus/usb.c", i32 68, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hcd_start._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @hcd_start._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/greybus/usb.c", i32 56, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @hcd_stop._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @hcd_stop._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @gb_usb_id_table, !37, !"gb_usb_id_table", i1 false, i1 false}
!37 = !{!"../drivers/staging/greybus/usb.c", i32 231, i32 37}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
