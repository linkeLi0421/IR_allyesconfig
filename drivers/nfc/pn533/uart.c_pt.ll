; ModuleID = '/llk/IR_all_yes/drivers/nfc/pn533/uart.c_pt.bc'
source_filename = "../drivers/nfc/pn533/uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pn533_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pn532_uart_phy = type { ptr, ptr, ptr, i32, %struct.timer_list, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.pn533_std_frame = type <{ i8, i16, i8, i8, [0 x i8] }>
%struct.pn533_ext_frame = type <{ i8, i16, i16, i16, i8, [0 x i8] }>
%struct.pn533 = type { ptr, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, ptr, i8, %struct.mutex, ptr, ptr, [6 x ptr], i8, i8, i8, i32, i32, %struct.timer_list, i32, ptr, i32, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }

@__initcall__kmod_pn532_uart__338_326_pn532_uart_driver_init6 = internal global ptr @pn532_uart_driver_init, section ".initcall6.init", align 4
@pn532_uart_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pn532_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pn532_uart_probe, ptr @pn532_uart_remove }, [44 x i8] zeroinitializer }, align 32
@__exitcall_pn532_uart_driver_exit = internal global ptr @pn532_uart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author339 = internal constant [55 x i8] c"pn532_uart.author=Lars P\C3\B6schel <poeschel@lemonage.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [41 x i8] c"pn532_uart.description=PN532 UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [45 x i8] c"pn532_uart.file=drivers/nfc/pn533/pn532_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [23 x i8] c"pn532_uart.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pn532_uart\00", [21 x i8] zeroinitializer }, align 32
@pn532_uart_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pn532\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pn532_serdev_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @pn532_receive_buf, ptr @serdev_device_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@pn532_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to open device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pn532_uart_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/nfc/pn533/uart.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pn532_uart_probe._entry_ptr = internal global ptr @pn532_uart_probe._entry, section ".printk_index", align 4
@pn532_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&pn532->cmd_timeout)\00", [42 x i8] zeroinitializer }, align 32
@uart_phy_ops = internal constant { %struct.pn533_phy_ops, [44 x i8] } { %struct.pn533_phy_ops { ptr @pn532_uart_send_frame, ptr @pn532_uart_send_ack, ptr @pn532_uart_abort_cmd, ptr @pn532_dev_up, ptr @pn532_dev_down }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pn532_uart_send_frame.wakeup = internal constant { <{ i8, i8, [14 x i8] }>, [16 x i8] } { <{ i8, i8, [14 x i8] }> <{ i8 85, i8 85, [14 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@pn532_uart_send_frame.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pn532_uart_send_frame\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PN532_uart TX: \00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pn532_uart_send_ack.ack = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\FF\00\FF\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 255]
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"pn532_uart_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 317, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 321, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"pn532_uart_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 232, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"pn532_serdev_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 227, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 258, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 270, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"uart_phy_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 126, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 49, i32 18 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 55, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@___asan_gen_.62 = private constant [28 x i8] c"../drivers/nfc/pn533/uart.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 82, i32 18 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_pn532_uart_driver_exit, ptr @__initcall__kmod_pn532_uart__338_326_pn532_uart_driver_init6, ptr @pn532_uart_driver_exit, ptr @pn532_uart_probe._entry, ptr @pn532_uart_probe._entry_ptr, ptr @pn532_uart_driver, ptr @.str, ptr @pn532_uart_of_match, ptr @pn532_serdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pn532_uart_probe.__key, ptr @.str.6, ptr @uart_phy_ops, ptr @pn532_uart_send_frame.wakeup, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pn532_uart_send_ack.ack], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn532_uart_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn532_uart_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn532_serdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn532_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn532_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_phy_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn532_uart_send_frame.wakeup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn532_uart_send_ack.ack to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pn532_uart_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @pn532_uart_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pn532_uart_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @pn532_uart_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn532_uart_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 524, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %recv_skb = getelementptr inbounds %struct.pn532_uart_phy, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %recv_skb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %recv_skb, align 4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.err_free_crit_edge, label %if.end5

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %serdev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %4 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pn532_serdev_ops, ptr %ops1.i, align 8
  %call7 = tail call i32 @serdev_device_open(ptr noundef %serdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.1) #10
  br label %err_skb

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i32 @serdev_device_set_baudrate(ptr noundef %serdev, i32 noundef 115200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 115200
  br i1 %cmp.not, label %if.end13, label %if.end10.err_serdev_crit_edge

if.end10.err_serdev_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_serdev

if.end13:                                         ; preds = %if.end10
  tail call void @serdev_device_set_flow_control(ptr noundef %serdev, i1 noundef zeroext false) #6
  %send_wakeup = getelementptr inbounds %struct.pn532_uart_phy, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %send_wakeup to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %send_wakeup, align 4
  %cmd_timeout = getelementptr inbounds %struct.pn532_uart_phy, ptr %call7.i.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %cmd_timeout, ptr noundef nonnull @pn532_cmd_timeout, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @pn532_uart_probe.__key) #6
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %call19 = tail call ptr @pn53x_common_init(i32 noundef 5, i32 noundef 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @uart_phy_ops, ptr noundef null, ptr noundef %7) #6
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call19 to i32
  br label %err_serdev

if.end23:                                         ; preds = %if.end13
  %priv24 = getelementptr inbounds %struct.pn532_uart_phy, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %priv24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %priv24, align 8
  %call26 = tail call i32 @pn533_finalize_setup(ptr noundef %call19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %err_clean

if.end29:                                         ; preds = %if.end23
  tail call void @serdev_device_close(ptr noundef %serdev) #6
  %call31 = tail call i32 @pn53x_register_nfc(ptr noundef %call19, i32 noundef 62, ptr noundef %serdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.cleanup_crit_edge, label %if.then33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %priv24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv24, align 8
  tail call void @pn53x_common_clean(ptr noundef %11) #6
  br label %err_skb

err_clean:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %priv24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv24, align 8
  tail call void @pn53x_common_clean(ptr noundef %13) #6
  br label %err_serdev

err_serdev:                                       ; preds = %err_clean, %if.then21, %if.end10.err_serdev_crit_edge
  %err.0 = phi i32 [ %8, %if.then21 ], [ %call26, %err_clean ], [ -22, %if.end10.err_serdev_crit_edge ]
  tail call void @serdev_device_close(ptr noundef %serdev) #6
  br label %err_skb

err_skb:                                          ; preds = %err_serdev, %if.then33, %do.end
  %err.1 = phi i32 [ %call7, %do.end ], [ %err.0, %err_serdev ], [ %call31, %if.then33 ]
  %14 = ptrtoint ptr %recv_skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %recv_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %15, i32 noundef 0) #6
  br label %err_free

err_free:                                         ; preds = %err_skb, %if.end.err_free_crit_edge
  %err.2 = phi i32 [ %err.1, %err_skb ], [ -12, %if.end.err_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29.cleanup_crit_edge ], [ %err.2, %err_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn532_uart_remove(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @pn53x_unregister_nfc(ptr noundef %3) #6
  tail call void @serdev_device_close(ptr noundef %serdev) #6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void @pn53x_common_clean(ptr noundef %5) #6
  %recv_skb = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %recv_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %7, i32 noundef 0) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn532_cmd_timeout(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cur_out_buf = getelementptr i8, ptr %t, i32 48
  %2 = ptrtoint ptr %cur_out_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_out_buf, align 4
  %call = tail call i32 @pn532_uart_send_frame(ptr noundef %1, ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pn53x_common_init(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn533_finalize_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn53x_register_nfc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn53x_common_clean(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn532_receive_buf(ptr nocapture noundef readonly %serdev, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmd_timeout = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @del_timer(ptr noundef %cmd_timeout) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp24.not = icmp eq i32 %count, 0
  br i1 %cmp24.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %recv_skb = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 1
  %priv = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %data.addr.025 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %recv_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_skb, align 4
  %incdec.ptr = getelementptr i8, ptr %data.addr.025, i32 1
  %4 = ptrtoint ptr %data.addr.025 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.addr.025, align 1
  %call.i = tail call ptr @skb_put(ptr noundef %3, i32 noundef 1) #6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call.i, align 1
  %7 = ptrtoint ptr %recv_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %recv_skb, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp.not72.i = icmp ult i32 %10, 6
  br i1 %cmp.not72.i, label %for.body.for.inc_crit_edge, label %for.body.lr.ph.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %for.body
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp15.i = icmp ugt i32 %10, 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %12, i32 %i.073.i
  %start_frame.i = getelementptr inbounds %struct.pn533_std_frame, ptr %arrayidx.i, i32 0, i32 1
  %13 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %start_frame.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %14)
  %cmp1.not.i = icmp eq i16 %14, 255
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %datalen.i = getelementptr inbounds %struct.pn533_std_frame, ptr %arrayidx.i, i32 0, i32 2
  %15 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %datalen.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb9.i
    i8 -1, label %sw.bb20.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %datalen_checksum.i = getelementptr inbounds %struct.pn533_std_frame, ptr %arrayidx.i, i32 0, i32 3
  %18 = ptrtoint ptr %datalen_checksum.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %datalen_checksum.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp5.i = icmp eq i8 %19, -1
  br i1 %cmp5.i, label %sw.bb.i.if.end_crit_edge, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb9.i:                                         ; preds = %if.end.i
  %datalen_checksum10.i = getelementptr inbounds %struct.pn533_std_frame, ptr %arrayidx.i, i32 0, i32 3
  %20 = ptrtoint ptr %datalen_checksum10.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %datalen_checksum10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp12.i = icmp eq i8 %21, -1
  %or.cond.i = select i1 %cmp12.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %sw.bb9.i.if.end_crit_edge, label %sw.bb9.i.for.inc.i_crit_edge

sw.bb9.i.for.inc.i_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb9.i.if.end_crit_edge:                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb20.i:                                        ; preds = %if.end.i
  %datalen23.i = getelementptr inbounds %struct.pn533_ext_frame, ptr %arrayidx.i, i32 0, i32 3
  %22 = ptrtoint ptr %datalen23.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %datalen23.i, align 1
  %conv25.i = zext i16 %23 to i32
  %add27.i = add nuw nsw i32 %conv25.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add27.i)
  %cmp28.not.i = icmp ult i32 %10, %add27.i
  br i1 %cmp28.not.i, label %sw.bb20.i.for.inc.i_crit_edge, label %sw.bb20.i.if.end_crit_edge

sw.bb20.i.if.end_crit_edge:                       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb20.i.for.inc.i_crit_edge:                    ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.default.i:                                     ; preds = %if.end.i
  %conv36.i = zext i8 %16 to i32
  %add38.i = add nuw nsw i32 %conv36.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add38.i)
  %cmp39.not.i = icmp ult i32 %10, %add38.i
  br i1 %cmp39.not.i, label %sw.default.i.for.inc.i_crit_edge, label %sw.default.i.if.end_crit_edge

sw.default.i.if.end_crit_edge:                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.default.i.for.inc.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i.for.inc.i_crit_edge, %sw.bb20.i.for.inc.i_crit_edge, %sw.bb9.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.073.i, 1
  %add.i = add i32 %i.073.i, 7
  %cmp.not.i = icmp ugt i32 %add.i, %10
  br i1 %cmp.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %sw.default.i.if.end_crit_edge, %sw.bb20.i.if.end_crit_edge, %sw.bb9.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge
  %call42.i = tail call ptr @skb_pull(ptr noundef %8, i32 noundef %i.073.i) #6
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %26 = ptrtoint ptr %recv_skb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %recv_skb, align 4
  tail call void @pn533_recv_frame(ptr noundef %25, ptr noundef %27, i32 noundef 0) #6
  %call.i20 = tail call ptr @__alloc_skb(i32 noundef 524, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %28 = ptrtoint ptr %recv_skb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i20, ptr %recv_skb, align 4
  %tobool8.not = icmp eq ptr %call.i20, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %count, %for.inc.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_wakeup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn533_recv_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn532_uart_send_frame(ptr nocapture noundef readonly %dev, ptr noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn532_uart_send_frame.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn532_uart_send_frame, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %3, i32 noundef %5, i1 noundef zeroext false) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cur_out_buf = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %cur_out_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %out, ptr %cur_out_buf, align 4
  %send_wakeup = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %send_wakeup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %send_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %do.end.if.end13_crit_edge, label %if.then4

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then4:                                         ; preds = %do.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @serdev_device_write(ptr noundef %10, ptr noundef nonnull @pn532_uart_send_frame.wakeup, i32 noundef 16, i32 noundef 2147483647) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %11 = ptrtoint ptr %send_wakeup to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %send_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp10 = icmp eq i32 %.pr, 2
  br i1 %cmp10, label %if.then11, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %send_wakeup to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %send_wakeup, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %data15 = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 19
  %15 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data15, align 4
  %len16 = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 6
  %17 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len16, align 4
  %call17 = tail call i32 @serdev_device_write(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 2147483647) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_timeout = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %19, 2
  %call21 = tail call i32 @mod_timer(ptr noundef %cmd_timeout, i32 noundef %add) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end13.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ %call5, %if.then4.cleanup_crit_edge ], [ %call17, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn532_uart_send_ack(ptr nocapture noundef readonly %dev, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @serdev_device_write(ptr noundef %3, ptr noundef nonnull @pn532_uart_send_ack.ack, i32 noundef 6, i32 noundef 2147483647) #6
  %4 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn532_uart_abort_cmd(ptr noundef %dev, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy.i = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @serdev_device_write(ptr noundef %3, ptr noundef nonnull @pn532_uart_send_ack.ack, i32 noundef 6, i32 noundef 2147483647) #6
  tail call void @pn533_recv_frame(ptr noundef %dev, ptr noundef null, i32 noundef -2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn532_dev_up(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @serdev_device_open(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %send_wakeup = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %send_wakeup to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %send_wakeup, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn532_dev_down(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @serdev_device_close(ptr noundef %3) #6
  %send_wakeup = getelementptr inbounds %struct.pn532_uart_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %send_wakeup to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %send_wakeup, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn53x_unregister_nfc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !34, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_pn532_uart__338_326_pn532_uart_driver_init6, !1, !"__initcall__kmod_pn532_uart__338_326_pn532_uart_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/pn533/uart.c", i32 326, i32 1}
!2 = !{ptr @__exitcall_pn532_uart_driver_exit, !1, !"__exitcall_pn532_uart_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author339, !4, !"__UNIQUE_ID_author339", i1 false, i1 false}
!4 = !{!"../drivers/nfc/pn533/uart.c", i32 328, i32 1}
!5 = !{ptr @__UNIQUE_ID_description340, !6, !"__UNIQUE_ID_description340", i1 false, i1 false}
!6 = !{!"../drivers/nfc/pn533/uart.c", i32 329, i32 1}
!7 = !{ptr @__UNIQUE_ID_file341, !8, !"__UNIQUE_ID_file341", i1 false, i1 false}
!8 = !{!"../drivers/nfc/pn533/uart.c", i32 330, i32 1}
!9 = !{ptr @__UNIQUE_ID_license342, !8, !"__UNIQUE_ID_license342", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/pn533/uart.c", i32 321, i32 11}
!12 = !{ptr @pn532_uart_driver, !13, !"pn532_uart_driver", i1 false, i1 false}
!13 = !{!"../drivers/nfc/pn533/uart.c", i32 317, i32 36}
!14 = !{ptr @pn532_uart_of_match, !15, !"pn532_uart_of_match", i1 false, i1 false}
!15 = !{!"../drivers/nfc/pn533/uart.c", i32 232, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nfc/pn533/uart.c", i32 258, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pn532_uart_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pn532_uart_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @pn532_uart_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/nfc/pn533/uart.c", i32 270, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pn532_serdev_ops, !28, !"pn532_serdev_ops", i1 false, i1 false}
!28 = !{!"../drivers/nfc/pn533/uart.c", i32 227, i32 39}
!29 = !{ptr @pn532_uart_send_frame.wakeup, !30, !"wakeup", i1 false, i1 false}
!30 = !{!"../drivers/nfc/pn533/uart.c", i32 49, i32 18}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/nfc/pn533/uart.c", i32 55, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pn532_uart_send_frame.__UNIQUE_ID_ddebug337, !32, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!35 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @uart_phy_ops, !37, !"uart_phy_ops", i1 false, i1 false}
!37 = !{!"../drivers/nfc/pn533/uart.c", i32 126, i32 35}
!38 = !{ptr @pn532_uart_send_ack.ack, !39, !"ack", i1 false, i1 false}
!39 = !{!"../drivers/nfc/pn533/uart.c", i32 82, i32 18}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148283550, i64 2148283555, i64 2148283568, i64 2148283612, i64 2148283646, i64 2148283667}
