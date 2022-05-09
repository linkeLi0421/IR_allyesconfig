; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/isight_firmware.c_pt.bc'
source_filename = "../drivers/usb/misc/isight_firmware.c"
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
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_firmware234 = internal constant [35 x i8] c"isight_firmware.firmware=isight.fw\00", section ".modinfo", align 1
@__initcall__kmod_isight_firmware__235_128_isight_firmware_driver_init6 = internal global ptr @isight_firmware_driver_init, section ".initcall6.init", align 4
@isight_firmware_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @isight_firmware_load, ptr @isight_firmware_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_isight_firmware_driver_exit = internal global ptr @isight_firmware_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file236 = internal constant [54 x i8] c"isight_firmware.file=drivers/usb/misc/isight_firmware\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [28 x i8] c"isight_firmware.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [56 x i8] c"isight_firmware.author=Matthew Garrett <mjg@redhat.com>\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isight_firmware\00", [16 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1452, i16 -32000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isight.fw\00", [22 x i8] zeroinitializer }, align 32
@isight_firmware_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Unable to load isight firmware\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isight_firmware_load\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/misc/isight_firmware.c\00", [61 x i8] zeroinitializer }, align 32
@isight_firmware_load._entry_ptr = internal global ptr @isight_firmware_load._entry, section ".printk_index", align 4
@isight_firmware_load._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Failed to initialise isight firmware loader\0A\00", [49 x i8] zeroinitializer }, align 32
@isight_firmware_load._entry_ptr.7 = internal global ptr @isight_firmware_load._entry.5, section ".printk_index", align 4
@isight_firmware_load._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Malformed isight firmware\00", [36 x i8] zeroinitializer }, align 32
@isight_firmware_load._entry_ptr.10 = internal global ptr @isight_firmware_load._entry.8, section ".printk_index", align 4
@isight_firmware_load._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to load isight firmware\0A\00", [62 x i8] zeroinitializer }, align 32
@isight_firmware_load._entry_ptr.13 = internal global ptr @isight_firmware_load._entry.11, section ".printk_index", align 4
@isight_firmware_load._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013isight firmware loading completion failed\0A\00", [51 x i8] zeroinitializer }, align 32
@isight_firmware_load._entry_ptr.16 = internal global ptr @isight_firmware_load._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32769]
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"isight_firmware_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 121, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 128, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 27, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 47, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 48, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 59, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 80, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 92, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [38 x i8] c"../drivers/usb/misc/isight_firmware.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 105, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_firmware234, ptr @__UNIQUE_ID_license237, ptr @__exitcall_isight_firmware_driver_exit, ptr @__initcall__kmod_isight_firmware__235_128_isight_firmware_driver_init6, ptr @isight_firmware_driver_exit, ptr @isight_firmware_load._entry, ptr @isight_firmware_load._entry.11, ptr @isight_firmware_load._entry.14, ptr @isight_firmware_load._entry.5, ptr @isight_firmware_load._entry.8, ptr @isight_firmware_load._entry_ptr, ptr @isight_firmware_load._entry_ptr.10, ptr @isight_firmware_load._entry_ptr.13, ptr @isight_firmware_load._entry_ptr.16, ptr @isight_firmware_load._entry_ptr.7, ptr @isight_firmware_driver, ptr @.str, ptr @id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_firmware_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_firmware_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_firmware_load._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_firmware_load._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_firmware_load._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_firmware_load._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_firmware_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @isight_firmware_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isight_firmware_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @isight_firmware_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_firmware_load(ptr nocapture noundef readonly %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %firmware = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #8
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware, align 4, !annotation !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 50) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull @.str.1, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end6, label %if.end.out.sink.split_crit_edge

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %firmware, align 4
  %data7 = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data7, align 4
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %call7.i, align 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %10, 8
  %or = or i32 %shl.i, -2147483648
  %call9 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %while.cond.preheader, label %if.end6.out.sink.split_crit_edge

if.end6.out.sink.split_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

while.cond.preheader:                             ; preds = %if.end6
  %add.ptr132 = getelementptr i8, ptr %7, i32 4
  %11 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %firmware, align 4
  %data18133 = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data18133 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data18133, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.ptr19134 = getelementptr i8, ptr %14, i32 %16
  %cmp20.not135 = icmp ugt ptr %add.ptr132, %add.ptr19134
  br i1 %cmp20.not135, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %add.ptr137 = phi ptr [ %add.ptr, %while.cond.backedge.while.body_crit_edge ], [ %add.ptr132, %while.cond.preheader.while.body_crit_edge ]
  %ptr.0136 = phi ptr [ %ptr.0.be, %while.cond.backedge.while.body_crit_edge ], [ %7, %while.cond.preheader.while.body_crit_edge ]
  %17 = ptrtoint ptr %ptr.0136 to i32
  call void @__asan_load1_noabort(i32 %17)
  %data.sroa.0.0.copyload = load i8, ptr %ptr.0136, align 1
  %data.sroa.5.0.ptr.0.96.sroa_idx = getelementptr inbounds i8, ptr %ptr.0136, i32 1
  %18 = ptrtoint ptr %data.sroa.5.0.ptr.0.96.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %data.sroa.5.0.copyload = load i8, ptr %data.sroa.5.0.ptr.0.96.sroa_idx, align 1
  %conv = zext i8 %data.sroa.0.0.copyload to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv23 = zext i8 %data.sroa.5.0.copyload to i32
  %or24 = or i32 %shl, %conv23
  %trunc = trunc i32 %or24 to i16
  %19 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %for.body.preheader [
    i16 -32767, label %while.body.while.end_crit_edge
    i16 0, label %while.body.while.cond.backedge_crit_edge
  ]

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.body.preheader:                               ; preds = %while.body
  %data.sroa.7.0.ptr.0.96.sroa_idx = getelementptr inbounds i8, ptr %ptr.0136, i32 2
  %20 = ptrtoint ptr %data.sroa.7.0.ptr.0.96.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %data.sroa.7.0.copyload = load i8, ptr %data.sroa.7.0.ptr.0.96.sroa_idx, align 1
  %conv26 = zext i8 %data.sroa.7.0.copyload to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %data.sroa.9.0.ptr.0.96.sroa_idx = getelementptr inbounds i8, ptr %ptr.0136, i32 3
  %21 = ptrtoint ptr %data.sroa.9.0.ptr.0.96.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %data.sroa.9.0.copyload = load i8, ptr %data.sroa.9.0.ptr.0.96.sroa_idx, align 1
  %conv29 = zext i8 %data.sroa.9.0.copyload to i32
  %or30 = or i32 %shl27, %conv29
  br label %for.body

while.cond.backedge:                              ; preds = %for.cond.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %ptr.0.be = phi ptr [ %add.ptr137, %while.body.while.cond.backedge_crit_edge ], [ %add.ptr45, %for.cond.while.cond.backedge_crit_edge ]
  %add.ptr = getelementptr i8, ptr %ptr.0.be, i32 4
  %22 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %firmware, align 4
  %data18 = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data18, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %add.ptr19 = getelementptr i8, ptr %25, i32 %27
  %cmp20.not = icmp ugt ptr %add.ptr, %add.ptr19
  br i1 %cmp20.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.cond:                                         ; preds = %if.end57
  %add = add i32 %req.0130, 50
  %cmp40 = icmp sgt i32 %sub, 0
  br i1 %cmp40, label %for.cond.for.body_crit_edge, label %for.cond.while.cond.backedge_crit_edge

for.cond.while.cond.backedge_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %len.0131 = phi i32 [ %sub, %for.cond.for.body_crit_edge ], [ %or24, %for.body.preheader ]
  %req.0130 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ %or30, %for.body.preheader ]
  %ptr.1129 = phi ptr [ %add.ptr45, %for.cond.for.body_crit_edge ], [ %add.ptr137, %for.body.preheader ]
  %28 = call i32 @llvm.umin.i32(i32 %len.0131, i32 50)
  %sub = sub i32 %len.0131, %28
  %add.ptr45 = getelementptr i8, ptr %ptr.1129, i32 %28
  %29 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %firmware, align 4
  %data46 = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %data46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data46, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %add.ptr48 = getelementptr i8, ptr %32, i32 %34
  %cmp49 = icmp ugt ptr %add.ptr45, %add.ptr48
  br i1 %cmp49, label %for.body.out.sink.split_crit_edge, label %if.end57

for.body.out.sink.split_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

if.end57:                                         ; preds = %for.body
  %35 = call ptr @memcpy(ptr %call7.i, ptr %ptr.1129, i32 %28)
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i, align 8
  %shl.i124 = shl i32 %37, 8
  %or60 = or i32 %shl.i124, -2147483648
  %conv61 = trunc i32 %req.0130 to i16
  %conv62 = trunc i32 %28 to i16
  %call63 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or60, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv61, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext %conv62, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call63, i32 %28)
  %cmp64.not = icmp eq i32 %call63, %28
  br i1 %cmp64.not, label %for.cond, label %if.end57.out.sink.split_crit_edge

if.end57.out.sink.split_crit_edge:                ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %call7.i, align 8
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i, align 8
  %shl.i125 = shl i32 %40, 8
  %or75 = or i32 %shl.i125, -2147483648
  %call76 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or75, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call76)
  %cmp77.not = icmp eq i32 %call76, 1
  br i1 %cmp77.not, label %while.end.out_crit_edge, label %while.end.out.sink.split_crit_edge

while.end.out.sink.split_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out.sink.split:                                   ; preds = %while.end.out.sink.split_crit_edge, %if.end57.out.sink.split_crit_edge, %for.body.out.sink.split_crit_edge, %if.end6.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.2, %if.end.out.sink.split_crit_edge ], [ @.str.6, %if.end6.out.sink.split_crit_edge ], [ @.str.15, %while.end.out.sink.split_crit_edge ], [ @.str.9, %for.body.out.sink.split_crit_edge ], [ @.str.12, %if.end57.out.sink.split_crit_edge ]
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %while.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %while.end.out_crit_edge ], [ -19, %out.sink.split ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  %41 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %42) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @isight_firmware_disconnect(ptr nocapture noundef %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__UNIQUE_ID_firmware234, !1, !"__UNIQUE_ID_firmware234", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/isight_firmware.c", i32 115, i32 1}
!2 = !{ptr @__initcall__kmod_isight_firmware__235_128_isight_firmware_driver_init6, !3, !"__initcall__kmod_isight_firmware__235_128_isight_firmware_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/usb/misc/isight_firmware.c", i32 128, i32 1}
!4 = !{ptr @__exitcall_isight_firmware_driver_exit, !3, !"__exitcall_isight_firmware_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file236, !6, !"__UNIQUE_ID_file236", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/isight_firmware.c", i32 130, i32 1}
!7 = !{ptr @__UNIQUE_ID_license237, !6, !"__UNIQUE_ID_license237", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author238, !9, !"__UNIQUE_ID_author238", i1 false, i1 false}
!9 = !{!"../drivers/usb/misc/isight_firmware.c", i32 131, i32 1}
!10 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @isight_firmware_driver, !12, !"isight_firmware_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/isight_firmware.c", i32 121, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/isight_firmware.c", i32 47, i32 34}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/misc/isight_firmware.c", i32 48, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @isight_firmware_load._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @isight_firmware_load._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/misc/isight_firmware.c", i32 59, i32 3}
!23 = !{ptr @isight_firmware_load._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @isight_firmware_load._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/misc/isight_firmware.c", i32 80, i32 5}
!27 = !{ptr @isight_firmware_load._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @isight_firmware_load._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/misc/isight_firmware.c", i32 92, i32 5}
!31 = !{ptr @isight_firmware_load._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @isight_firmware_load._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/misc/isight_firmware.c", i32 105, i32 3}
!35 = !{ptr @isight_firmware_load._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @isight_firmware_load._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @id_table, !38, !"id_table", i1 false, i1 false}
!38 = !{!"../drivers/usb/misc/isight_firmware.c", i32 27, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
