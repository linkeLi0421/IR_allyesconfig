; ModuleID = '/llk/IR_all_yes/drivers/nfc/s3fwrn5/uart.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3fwrn5_phy_ops = type { ptr, ptr, ptr, ptr }
%struct.s3fwrn82_uart_phy = type { %struct.phy_common, ptr, ptr }
%struct.phy_common = type { ptr, i32, i32, %struct.mutex, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@__initcall__kmod_s3fwrn82_uart__337_192_s3fwrn82_uart_driver_init6 = internal global ptr @s3fwrn82_uart_driver_init, section ".initcall6.init", align 4
@s3fwrn82_uart_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3fwrn82_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s3fwrn82_uart_probe, ptr @s3fwrn82_uart_remove }, [44 x i8] zeroinitializer }, align 32
@__exitcall_s3fwrn82_uart_driver_exit = internal global ptr @s3fwrn82_uart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file338 = internal constant [53 x i8] c"s3fwrn82_uart.file=drivers/nfc/s3fwrn5/s3fwrn82_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [26 x i8] c"s3fwrn82_uart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [54 x i8] c"s3fwrn82_uart.description=UART driver for Samsung NFC\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [59 x i8] c"s3fwrn82_uart.author=Bongsu Jeon <bongsu.jeon@samsung.com>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3fwrn82_uart\00", [18 x i8] zeroinitializer }, align 32
@s3fwrn82_uart_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3fwrn82\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s3fwrn82_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&phy->common.mutex\00", [45 x i8] zeroinitializer }, align 32
@s3fwrn82_serdev_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @s3fwrn82_uart_read, ptr @serdev_device_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@s3fwrn82_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to open device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s3fwrn82_uart_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/nfc/s3fwrn5/uart.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3fwrn82_uart_probe._entry_ptr = internal global ptr @s3fwrn82_uart_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3fwrn82_en\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3fwrn82_fw_wake\00", [47 x i8] zeroinitializer }, align 32
@uart_phy_ops = internal constant { %struct.s3fwrn5_phy_ops, [16 x i8] } { %struct.s3fwrn5_phy_ops { ptr @s3fwrn5_phy_set_wake, ptr @s3fwrn5_phy_set_mode, ptr @s3fwrn5_phy_get_mode, ptr @s3fwrn82_uart_write }, [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"en-gpios\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wake-gpios\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"s3fwrn82_uart_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 183, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 187, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"s3fwrn82_uart_of_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 86, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 124, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"s3fwrn82_serdev_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 81, i32 39 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 132, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 149, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 155, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"uart_phy_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 47, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 100, i32 46 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [30 x i8] c"../drivers/nfc/s3fwrn5/uart.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 104, i32 51 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__exitcall_s3fwrn82_uart_driver_exit, ptr @__initcall__kmod_s3fwrn82_uart__337_192_s3fwrn82_uart_driver_init6, ptr @s3fwrn82_uart_driver_exit, ptr @s3fwrn82_uart_probe._entry, ptr @s3fwrn82_uart_probe._entry_ptr, ptr @s3fwrn82_uart_driver, ptr @.str, ptr @s3fwrn82_uart_of_match, ptr @s3fwrn82_uart_probe.__key, ptr @.str.1, ptr @s3fwrn82_serdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @uart_phy_ops, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn82_uart_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn82_uart_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn82_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn82_serdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn82_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_phy_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn82_uart_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @s3fwrn82_uart_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3fwrn82_uart_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef nonnull @s3fwrn82_uart_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn82_uart_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i75 = tail call ptr @__alloc_skb(i32 noundef 258, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %recv_skb = getelementptr inbounds %struct.s3fwrn82_uart_phy, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %recv_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i75, ptr %recv_skb, align 4
  %tobool3.not = icmp eq ptr %call.i75, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.phy_common, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @s3fwrn82_uart_probe.__key) #5
  %mode = getelementptr inbounds %struct.phy_common, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mode, align 4
  %ser_dev = getelementptr inbounds %struct.s3fwrn82_uart_phy, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ser_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %serdev, ptr %ser_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %4 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @s3fwrn82_serdev_ops, ptr %ops1.i, align 8
  %call7 = tail call i32 @serdev_device_open(ptr noundef %serdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.2) #8
  br label %err_skb

if.end14:                                         ; preds = %do.body
  %call15 = tail call i32 @serdev_device_set_baudrate(ptr noundef %serdev, i32 noundef 115200) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %call15)
  %cmp.not = icmp eq i32 %call15, 115200
  br i1 %cmp.not, label %if.end17, label %if.end14.err_serdev_crit_edge

if.end14.err_serdev_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_serdev

if.end17:                                         ; preds = %if.end14
  tail call void @serdev_device_set_flow_control(ptr noundef %serdev, i1 noundef zeroext false) #5
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end17.err_serdev_crit_edge, label %if.end.i

if.end17.err_serdev_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_serdev

if.end.i:                                         ; preds = %if.end17
  %call.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef null) #5
  %gpio_en.i = getelementptr inbounds %struct.phy_common, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %gpio_en.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i.i, ptr %gpio_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i)
  %10 = icmp ult i32 %call.i.i, 2048
  br i1 %10, label %if.end6.i, label %if.end.i.err_serdev_crit_edge

if.end.i.err_serdev_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_serdev

if.end6.i:                                        ; preds = %if.end.i
  %call.i21.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef null) #5
  %gpio_fw_wake.i = getelementptr inbounds %struct.phy_common, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %gpio_fw_wake.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i21.i, ptr %gpio_fw_wake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i21.i)
  %12 = icmp ult i32 %call.i21.i, 2048
  br i1 %12, label %if.end21, label %if.end6.i.err_serdev_crit_edge

if.end6.i.err_serdev_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_serdev

if.end21:                                         ; preds = %if.end6.i
  %13 = ptrtoint ptr %ser_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ser_dev, align 4
  %gpio_en = getelementptr inbounds %struct.phy_common, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %gpio_en to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_en, align 4
  %call25 = tail call i32 @devm_gpio_request_one(ptr noundef %14, i32 noundef %16, i32 noundef 2, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end21.err_serdev_crit_edge, label %if.end28

if.end21.err_serdev_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_serdev

if.end28:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %ser_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ser_dev, align 4
  %gpio_fw_wake = getelementptr inbounds %struct.phy_common, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %gpio_fw_wake to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_fw_wake, align 4
  %call32 = tail call i32 @devm_gpio_request_one(ptr noundef %18, i32 noundef %20, i32 noundef 0, ptr noundef nonnull @.str.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end28.err_serdev_crit_edge, label %if.end35

if.end28.err_serdev_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_serdev

if.end35:                                         ; preds = %if.end28
  %21 = ptrtoint ptr %ser_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ser_dev, align 4
  %call39 = tail call i32 @s3fwrn5_probe(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef %22, ptr noundef nonnull @uart_phy_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end35.err_serdev_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35.err_serdev_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_serdev

err_serdev:                                       ; preds = %if.end35.err_serdev_crit_edge, %if.end28.err_serdev_crit_edge, %if.end21.err_serdev_crit_edge, %if.end6.i.err_serdev_crit_edge, %if.end.i.err_serdev_crit_edge, %if.end17.err_serdev_crit_edge, %if.end14.err_serdev_crit_edge
  %ret.0 = phi i32 [ %call25, %if.end21.err_serdev_crit_edge ], [ %call32, %if.end28.err_serdev_crit_edge ], [ %call39, %if.end35.err_serdev_crit_edge ], [ -22, %if.end14.err_serdev_crit_edge ], [ -19, %if.end17.err_serdev_crit_edge ], [ -19, %if.end.i.err_serdev_crit_edge ], [ -19, %if.end6.i.err_serdev_crit_edge ]
  tail call void @serdev_device_close(ptr noundef %serdev) #5
  br label %err_skb

err_skb:                                          ; preds = %err_serdev, %do.end12
  %ret.1 = phi i32 [ %call7, %do.end12 ], [ %ret.0, %err_serdev ]
  %23 = ptrtoint ptr %recv_skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %recv_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %24, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %err_skb, %if.end35.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end35.cleanup_crit_edge ], [ %ret.1, %err_skb ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3fwrn82_uart_remove(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @s3fwrn5_remove(ptr noundef %3) #5
  tail call void @serdev_device_close(ptr noundef %serdev) #5
  %recv_skb = getelementptr inbounds %struct.s3fwrn82_uart_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %recv_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recv_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn82_uart_read(ptr nocapture noundef readonly %serdev, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp31.not = icmp eq i32 %count, 0
  br i1 %cmp31.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %recv_skb = getelementptr inbounds %struct.s3fwrn82_uart_phy, ptr %1, i32 0, i32 2
  %mode = getelementptr inbounds %struct.phy_common, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %data.addr.032 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %recv_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_skb, align 4
  %incdec.ptr = getelementptr i8, ptr %data.addr.032, i32 1
  %4 = ptrtoint ptr %data.addr.032 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.addr.032, align 1
  %call.i = tail call ptr @skb_put(ptr noundef %3, i32 noundef 1) #5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call.i, align 1
  %7 = ptrtoint ptr %recv_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %recv_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp2 = icmp ult i32 %10, 3
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %sub = add i32 %10, -3
  %data6 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data6, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp7 = icmp ult i32 %sub, %conv
  br i1 %cmp7, label %if.end.for.inc_crit_edge, label %if.end10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end10:                                         ; preds = %if.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  %call13 = tail call i32 @s3fwrn5_recv_frame(ptr noundef %16, ptr noundef %8, i32 noundef %18) #5
  %call.i30 = tail call ptr @__alloc_skb(i32 noundef 258, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %19 = ptrtoint ptr %recv_skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i30, ptr %recv_skb, align 4
  %tobool.not = icmp eq ptr %call.i30, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %count, %for.inc.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_wakeup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_recv_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_phy_set_wake(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_phy_set_mode(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_phy_get_mode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn82_uart_write(ptr nocapture noundef readonly %phy_id, ptr nocapture noundef readonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ser_dev = getelementptr inbounds %struct.s3fwrn82_uart_phy, ptr %phy_id, i32 0, i32 1
  %0 = ptrtoint ptr %ser_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ser_dev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call = tail call i32 @serdev_device_write(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef 2147483647) #5
  %6 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_s3fwrn82_uart__337_192_s3fwrn82_uart_driver_init6, !1, !"__initcall__kmod_s3fwrn82_uart__337_192_s3fwrn82_uart_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 192, i32 1}
!2 = !{ptr @__exitcall_s3fwrn82_uart_driver_exit, !1, !"__exitcall_s3fwrn82_uart_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file338, !4, !"__UNIQUE_ID_file338", i1 false, i1 false}
!4 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 194, i32 1}
!5 = !{ptr @__UNIQUE_ID_license339, !4, !"__UNIQUE_ID_license339", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description340, !7, !"__UNIQUE_ID_description340", i1 false, i1 false}
!7 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 195, i32 1}
!8 = !{ptr @__UNIQUE_ID_author341, !9, !"__UNIQUE_ID_author341", i1 false, i1 false}
!9 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 196, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 187, i32 11}
!12 = !{ptr @s3fwrn82_uart_driver, !13, !"s3fwrn82_uart_driver", i1 false, i1 false}
!13 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 183, i32 36}
!14 = !{ptr @s3fwrn82_uart_of_match, !15, !"s3fwrn82_uart_of_match", i1 false, i1 false}
!15 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 86, i32 34}
!16 = !{ptr @s3fwrn82_uart_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 124, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 132, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @s3fwrn82_uart_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @s3fwrn82_uart_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 149, i32 30}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 155, i32 29}
!31 = !{ptr @s3fwrn82_serdev_ops, !32, !"s3fwrn82_serdev_ops", i1 false, i1 false}
!32 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 81, i32 39}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 100, i32 46}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 104, i32 51}
!37 = !{ptr @uart_phy_ops, !38, !"uart_phy_ops", i1 false, i1 false}
!38 = !{!"../drivers/nfc/s3fwrn5/uart.c", i32 47, i32 37}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
