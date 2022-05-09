; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_serdev.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_serdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hci_uart_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_hci_uart_register_device\09\09\09\09"
module asm "\09.long\09__crc_hci_uart_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_uart_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_uart_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_hci_uart_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hci_uart_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_hci_uart_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_hci_uart_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_uart_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_uart_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_hci_uart_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }

@hci_uart_register_device.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hci_uart_register_device\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/bluetooth/hci_serdev.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hci_serdev_client_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @hci_uart_receive_buf, ptr @hci_uart_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't allocate HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@hci_uart_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&hu->init_ready)\00", [61 x i8] zeroinitializer }, align 32
@hci_uart_register_device.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&hu->write_work)\00", [61 x i8] zeroinitializer }, align 32
@hci_uart_register_device.rwsem_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&hu->proto_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_hci_uart_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_uart_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_uart_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_uart_register_device to i32), ptr @__kstrtab_hci_uart_register_device, ptr @__kstrtabns_hci_uart_register_device }, section "___ksymtab_gpl+hci_uart_register_device", align 4
@__kstrtab_hci_uart_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_uart_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_uart_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_uart_unregister_device to i32), ptr @__kstrtab_hci_uart_unregister_device, ptr @__kstrtabns_hci_uart_unregister_device }, section "___ksymtab_gpl+hci_uart_unregister_device", align 4
@hci_uart_write_wakeup.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hci_uart_write_wakeup\00", [42 x i8] zeroinitializer }, align 32
@hci_uart_open.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_uart_open\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %p\0A\00", [25 x i8] zeroinitializer }, align 32
@hci_uart_close.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hci_uart_close\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdev %p\0A\00", [23 x i8] zeroinitializer }, align 32
@hci_uart_flush.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hci_uart_flush\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdev %p serdev %p\0A\00", [45 x i8] zeroinitializer }, align 32
@hci_uart_send_frame.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_uart_send_frame\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: type %d len %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to set baudrate\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Reading local version info failed (%ld)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Event length mismatch for version info\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 300, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"hci_serdev_client_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 289, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 318, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 328, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 329, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"rwsem_key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 330, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 364, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 244, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 119, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 143, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 98, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 168, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 208, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 222, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [34 x i8] c"../drivers/bluetooth/hci_serdev.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 228, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_hci_uart_register_device, ptr @__ksymtab_hci_uart_unregister_device, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hci_serdev_client_ops, ptr @.str.4, ptr @hci_uart_register_device.__key, ptr @.str.5, ptr @hci_uart_register_device.__key.6, ptr @.str.7, ptr @hci_uart_register_device.rwsem_key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_serdev_client_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_uart_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_uart_register_device.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_uart_register_device.rwsem_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_uart_register_device(ptr noundef %hu, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_register_device.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_register_device, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_register_device.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.3) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %0 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev, align 4
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hci_serdev_client_ops, ptr %ops1.i, align 8
  %3 = load ptr, ptr %serdev, align 4
  %call4 = tail call i32 @serdev_device_open(ptr noundef %3) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %open = getelementptr inbounds %struct.hci_uart_proto, ptr %p, i32 0, i32 5
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %open, align 4
  %call8 = tail call i32 %5(ptr noundef %hu) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_open_crit_edge

if.end7.err_open_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %err_open

if.end11:                                         ; preds = %if.end7
  %proto = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %p, ptr %proto, align 4
  %flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #2
  %call.i = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #2
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4) #2
  br label %err_alloc

if.end15:                                         ; preds = %if.end11
  %hdev16 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %7 = ptrtoint ptr %hdev16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %hdev16, align 4
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %bus, align 2
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 204, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %hu, ptr %driver_data.i.i, align 4
  %init_ready = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 5
  tail call void @__init_work(ptr noundef %init_ready, i32 noundef 0) #2
  %10 = ptrtoint ptr %init_ready to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %init_ready, align 4
  %lockdep_map = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @hci_uart_register_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #2
  %entry21 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 5, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry21, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hci_uart_init_work, ptr %func, align 4
  %write_work = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 6
  tail call void @__init_work(ptr noundef %write_work, i32 noundef 0) #2
  %14 = ptrtoint ptr %write_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %write_work, align 4
  %lockdep_map31 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map31, ptr noundef nonnull @.str.7, ptr noundef nonnull @hci_uart_register_device.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #2
  %entry33 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i145 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 6, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i145 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry33, ptr %prev.i145, align 4
  %func35 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @hci_uart_write_work, ptr %func35, align 4
  %proto_lock = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 8
  %call39 = tail call i32 @__percpu_init_rwsem(ptr noundef %proto_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @hci_uart_register_device.rwsem_key) #2
  %18 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proto, align 4
  %setup = getelementptr inbounds %struct.hci_uart_proto, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup, align 4
  %tobool41.not = icmp eq ptr %21, null
  br i1 %tobool41.not, label %if.end15.if.end45_crit_edge, label %if.then42

if.end15.if.end45_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45

if.then42:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  %manufacturer = getelementptr inbounds %struct.hci_uart_proto, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %manufacturer, align 4
  %conv = trunc i32 %23 to i16
  %manufacturer44 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 31
  %24 = ptrtoint ptr %manufacturer44 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %manufacturer44, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end15.if.end45_crit_edge
  %open46 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 232
  %25 = ptrtoint ptr %open46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hci_uart_open, ptr %open46, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 233
  %26 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hci_uart_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 234
  %27 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @hci_uart_flush, ptr %flush, align 8
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 237
  %28 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hci_uart_send_frame, ptr %send, align 4
  %setup47 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 235
  %29 = ptrtoint ptr %setup47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hci_uart_setup, ptr %setup47, align 4
  %30 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %serdev, align 4
  %parent = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 204, i32 1
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %parent, align 8
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags, align 4
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool52.not = icmp eq i32 %35, 0
  br i1 %tobool52.not, label %if.end45.if.end54_crit_edge, label %if.then53

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end54

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #4
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 16, ptr noundef %quirks) #2
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end45.if.end54_crit_edge
  %hdev_flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 4
  %36 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %hdev_flags, align 4
  %and1.i138 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i138)
  %tobool56.not = icmp eq i32 %and1.i138, 0
  br i1 %tobool56.not, label %if.end54.if.end59_crit_edge, label %if.then57

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #4
  %quirks58 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 1, ptr noundef %quirks58) #2
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end54.if.end59_crit_edge
  %38 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %hdev_flags, align 4
  %40 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool62.not = icmp eq i32 %40, 0
  br i1 %tobool62.not, label %if.end59.if.end65_crit_edge, label %if.then63

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end65

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #4
  %quirks64 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 6, ptr noundef %quirks64) #2
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end59.if.end65_crit_edge
  %41 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %hdev_flags, align 4
  %43 = trunc i32 %42 to i8
  %44 = lshr i8 %43, 2
  %45 = and i8 %44, 1
  %46 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 6
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %45, ptr %46, align 1
  %48 = load volatile i32, ptr %hdev_flags, align 4
  %49 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool74.not = icmp eq i32 %49, 0
  br i1 %tobool74.not, label %if.end76, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end76:                                         ; preds = %if.end65
  %call77 = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp = icmp slt i32 %call77, 0
  br i1 %cmp, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9) #2
  tail call void @hci_free_dev(ptr noundef nonnull %call.i) #2
  br label %err_alloc

if.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #2
  br label %cleanup

err_alloc:                                        ; preds = %if.then79, %if.then14
  %err.0 = phi i32 [ -19, %if.then79 ], [ -12, %if.then14 ]
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #2
  %close83 = getelementptr inbounds %struct.hci_uart_proto, ptr %p, i32 0, i32 6
  %50 = ptrtoint ptr %close83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %close83, align 4
  %call84 = tail call i32 %51(ptr noundef %hu) #2
  br label %err_open

err_open:                                         ; preds = %err_alloc, %if.end7.err_open_crit_edge
  %err.1 = phi i32 [ %call8, %if.end7.err_open_crit_edge ], [ %err.0, %err_alloc ]
  %52 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_close(ptr noundef %53) #2
  br label %cleanup

cleanup:                                          ; preds = %err_open, %if.end80, %if.end65.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_open ], [ 0, %if.end80 ], [ %call4, %do.end.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_init_work(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_uart_write_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -64
  %serdev1 = getelementptr i8, ptr %work, i32 -60
  %0 = ptrtoint ptr %serdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev1, align 4
  %hdev2 = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev2, align 4
  %tx_state = getelementptr i8, ptr %work, i32 216
  %tx_skb.i = getelementptr i8, ptr %work, i32 212
  %flags.i = getelementptr i8, ptr %work, i32 -52
  %proto.i = getelementptr i8, ptr %work, i32 44
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 199, i32 9
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %tx_state) #2
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %do.body
  %4 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %hci_uart_dequeue.exit.thread28

if.then.i:                                        ; preds = %while.cond
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %if.then.i.while.end_crit_edge, label %hci_uart_dequeue.exit

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

hci_uart_dequeue.exit.thread28:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tx_skb.i, align 4
  br label %while.body

hci_uart_dequeue.exit:                            ; preds = %if.then.i
  %10 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proto.i, align 4
  %dequeue.i = getelementptr inbounds %struct.hci_uart_proto, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dequeue.i, align 4
  %call3.i = tail call ptr %13(ptr noundef %add.ptr) #2
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %hci_uart_dequeue.exit.while.end_crit_edge, label %hci_uart_dequeue.exit.while.body_crit_edge

hci_uart_dequeue.exit.while.body_crit_edge:       ; preds = %hci_uart_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

hci_uart_dequeue.exit.while.end_crit_edge:        ; preds = %hci_uart_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body:                                       ; preds = %hci_uart_dequeue.exit.while.body_crit_edge, %hci_uart_dequeue.exit.thread28
  %skb.0.i31 = phi ptr [ %5, %hci_uart_dequeue.exit.thread28 ], [ %call3.i, %hci_uart_dequeue.exit.while.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i31, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i31, i32 0, i32 6
  %16 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len3, align 4
  %call4 = tail call i32 @serdev_device_write_buf(ptr noundef %1, ptr noundef %15, i32 noundef %17) #2
  %18 = ptrtoint ptr %byte_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_tx, align 4
  %add = add i32 %19, %call4
  store i32 %add, ptr %byte_tx, align 4
  %call5 = tail call ptr @skb_pull(ptr noundef nonnull %skb.0.i31, i32 noundef %call4) #2
  %20 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not = icmp eq i32 %21, 0
  br i1 %tobool7.not, label %if.end, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  %22 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb.0.i31, ptr %tx_skb.i, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i31, i32 0, i32 3
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cb, align 8
  %25 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev2, align 4
  %27 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb2.i
    i8 3, label %sw.bb5.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %cmd_tx.i = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 199, i32 2
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %acl_tx.i = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 199, i32 4
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %sco_tx.i = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 199, i32 6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb5.i, %sw.bb2.i, %sw.bb.i
  %sco_tx.sink10.i = phi ptr [ %sco_tx.i, %sw.bb5.i ], [ %acl_tx.i, %sw.bb2.i ], [ %cmd_tx.i, %sw.bb.i ]
  %28 = ptrtoint ptr %sco_tx.sink10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sco_tx.sink10.i, align 8
  %inc7.i = add i32 %29, 1
  store i32 %inc7.i, ptr %sco_tx.sink10.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split.i, %if.end.cleanup_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.0.i31, i32 noundef 0) #2
  br label %while.cond

while.end:                                        ; preds = %cleanup.thread, %hci_uart_dequeue.exit.while.end_crit_edge, %if.then.i.while.end_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #2
  %30 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %tx_state, align 4
  %32 = and i32 %31, 4
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %do.end, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_open(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_open.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_open, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_open.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %hdev) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.then6:                                         ; preds = %do.end
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serdev, align 4
  %call7 = tail call i32 @serdev_device_open(ptr noundef %6) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #2
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %do.end.if.end12_crit_edge
  %flush = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 234
  %7 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hci_uart_flush, ptr %flush, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call7, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_close(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_close.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_close, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_close.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.14, ptr noundef %hdev) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_flush.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_close, %if.then.i)) #2
          to label %do.end.i [label %if.then.i], !srcloc !59

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  %serdev.i = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %serdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdev.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_flush.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.16, ptr noundef %hdev, ptr noundef %8) #2
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end7
  %tx_skb.i = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 10
  %9 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_skb.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %do.end.i.if.end8.i_crit_edge, label %if.then5.i

do.end.i.if.end8.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #2
  %11 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_skb.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %do.end.i.if.end8.i_crit_edge
  %serdev9.i = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %serdev9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serdev9.i, align 4
  tail call void @serdev_device_write_flush(ptr noundef %13) #2
  %flags.i = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not.i = icmp eq i32 %16, 0
  br i1 %tobool11.not.i, label %if.end8.i.hci_uart_flush.exit_crit_edge, label %if.then12.i

if.end8.i.hci_uart_flush.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %hci_uart_flush.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  %proto.i = getelementptr inbounds %struct.hci_uart, ptr %6, i32 0, i32 7
  %17 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %proto.i, align 4
  %flush.i = getelementptr inbounds %struct.hci_uart_proto, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %flush.i, align 4
  %call13.i = tail call i32 %20(ptr noundef %6) #2
  br label %hci_uart_flush.exit

hci_uart_flush.exit:                              ; preds = %if.then12.i, %if.end8.i.hci_uart_flush.exit_crit_edge
  %flush = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 234
  %21 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %flush, align 8
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 118
  %22 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %quirks, align 4
  %24 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool10.not = icmp eq i32 %24, 0
  br i1 %tobool10.not, label %hci_uart_flush.exit.cleanup_crit_edge, label %if.then11

hci_uart_flush.exit.cleanup_crit_edge:            ; preds = %hci_uart_flush.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then11:                                        ; preds = %hci_uart_flush.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #2
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_close(ptr noundef %26) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %hci_uart_flush.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_flush(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_flush.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_flush, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_flush.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.16, ptr noundef %hdev, ptr noundef %3) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_skb = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %if.then5

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #2
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end.if.end8_crit_edge
  %serdev9 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %serdev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdev9, align 4
  tail call void @serdev_device_write_flush(ptr noundef %8) #2
  %flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.end8.if.end14_crit_edge, label %if.then12

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proto, align 4
  %flush = getelementptr inbounds %struct.hci_uart_proto, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %flush, align 4
  %call13 = tail call i32 %15(ptr noundef %1) #2
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_send_frame(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_send_frame.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_send_frame, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %conv = zext i8 %3 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_send_frame.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %conv, i32 noundef %5) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proto, align 4
  %enqueue = getelementptr inbounds %struct.hci_uart_proto, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enqueue, align 4
  %call5 = tail call i32 %9(ptr noundef %1, ptr noundef %skb) #2
  %call6 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %1) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_setup(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_speed = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %init_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end8, label %entry.if.then10_crit_edge

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then10

if.end8:                                          ; preds = %entry
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proto, align 4
  %init_speed2 = getelementptr inbounds %struct.hci_uart_proto, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_speed2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %init_speed2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.end8.if.then10_crit_edge

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %entry.if.then10_crit_edge
  %speed.0102 = phi i32 [ %7, %if.end8.if.then10_crit_edge ], [ %3, %entry.if.then10_crit_edge ]
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serdev, align 4
  %call11 = tail call i32 @serdev_device_set_baudrate(ptr noundef %9, i32 noundef %speed.0102) #2
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %oper_speed = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %oper_speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oper_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.else16, label %if.end12.if.end25_crit_edge

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25

if.else16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  %proto17 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %proto17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proto17, align 4
  %oper_speed18 = getelementptr inbounds %struct.hci_uart_proto, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %oper_speed18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oper_speed18, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else16, %if.end12.if.end25_crit_edge
  %speed.1 = phi i32 [ %11, %if.end12.if.end25_crit_edge ], [ %15, %if.else16 ]
  %proto26 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %proto26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %proto26, align 4
  %set_baudrate = getelementptr inbounds %struct.hci_uart_proto, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %set_baudrate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_baudrate, align 4
  %tobool27.not = icmp eq ptr %19, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed.1)
  %tobool28.not = icmp eq i32 %speed.1, 0
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.end25.if.end39_crit_edge, label %if.then29

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end39

if.then29:                                        ; preds = %if.end25
  %call32 = tail call i32 %19(ptr noundef %1, i32 noundef %speed.1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else35, label %if.then34

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #4
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, ptr noundef %name) #2
  br label %if.end39

if.else35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #4
  %serdev36 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %serdev36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serdev36, align 4
  %call37 = tail call i32 @serdev_device_set_baudrate(ptr noundef %21, i32 noundef %speed.1) #2
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.then34, %if.end25.if.end39_crit_edge
  %22 = ptrtoint ptr %proto26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %proto26, align 4
  %setup = getelementptr inbounds %struct.hci_uart_proto, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %setup, align 4
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #4
  %call45 = tail call i32 %25(ptr noundef %1) #2
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %hdev_flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %hdev_flags, align 4
  %28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool48.not = icmp eq i32 %28, 0
  br i1 %tobool48.not, label %if.end46.cleanup_crit_edge, label %if.end50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %call52 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i32 noundef 1000) #2
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #4
  %name55 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %29 = ptrtoint ptr %call52 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, ptr noundef %name55, i32 noundef %29) #2
  br label %cleanup

if.end58:                                         ; preds = %if.end50
  %len = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 6
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %31)
  %cmp.not = icmp eq i32 %31, 9
  br i1 %cmp.not, label %if.end58.if.end62_crit_edge, label %if.then59

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end62

if.then59:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #4
  %name60 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21, ptr noundef %name60) #2
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end58.if.end62_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %call52, i32 noundef 0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then54, %if.end46.cleanup_crit_edge, %if.then42
  %retval.0 = phi i32 [ %call45, %if.then42 ], [ 0, %if.then54 ], [ 0, %if.end62 ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_uart_unregister_device(ptr noundef %hu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %init_ready = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 5
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %init_ready) #2
  %flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @hci_unregister_dev(ptr noundef %1) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hci_free_dev(ptr noundef %1) #2
  %write_work = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 6
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %write_work) #2
  %proto = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %5 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proto, align 4
  %close = getelementptr inbounds %struct.hci_uart_proto, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %close, align 4
  %call4 = tail call i32 %8(ptr noundef %hu) #2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #2
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %12 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serdev, align 4
  tail call void @serdev_device_close(ptr noundef %13) #2
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_receive_buf(ptr noundef readonly %serdev, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %serdev1 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev1, align 4
  %cmp.not = icmp eq ptr %3, %serdev
  br i1 %cmp.not, label %if.end18, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool20.not = icmp eq i32 %6, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proto, align 4
  %recv = getelementptr inbounds %struct.hci_uart_proto, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %recv, align 4
  %call23 = tail call i32 %10(ptr noundef nonnull %1, ptr noundef %data, i32 noundef %count) #2
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %tobool24.not = icmp eq ptr %12, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 199, i32 8
  %13 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %byte_rx, align 8
  %add = add i32 %14, %count
  store i32 %add, ptr %byte_rx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end18.cleanup_crit_edge ], [ %count, %if.then25 ], [ %count, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_uart_write_wakeup(ptr noundef readonly %serdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_write_wakeup.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_write_wakeup, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_write_wakeup.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.3) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.do.end18_crit_edge, label %lor.lhs.false

do.end.do.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end18

lor.lhs.false:                                    ; preds = %do.end
  %serdev5 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev5, align 4
  %cmp.not = icmp eq ptr %3, %serdev
  br i1 %cmp.not, label %if.end32, label %lor.lhs.false.do.end18_crit_edge

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %do.end.do.end18_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 247, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool34.not = icmp eq i32 %6, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.then35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  %call36 = tail call i32 @hci_uart_tx_wakeup(ptr noundef nonnull %1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end32.cleanup_crit_edge, %do.end18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_serdev.c", i32 300, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hci_uart_register_device.__UNIQUE_ID_ddebug480, !1, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/hci_serdev.c", i32 318, i32 3}
!8 = !{ptr @hci_uart_register_device.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/hci_serdev.c", i32 328, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hci_uart_register_device.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/bluetooth/hci_serdev.c", i32 329, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hci_uart_register_device.rwsem_key, !15, !"rwsem_key", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/hci_serdev.c", i32 330, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/bluetooth/hci_serdev.c", i32 364, i32 3}
!19 = !{ptr @__ksymtab_hci_uart_register_device, !20, !"__ksymtab_hci_uart_register_device", i1 false, i1 false}
!20 = !{!"../drivers/bluetooth/hci_serdev.c", i32 382, i32 1}
!21 = !{ptr @__ksymtab_hci_uart_unregister_device, !22, !"__ksymtab_hci_uart_unregister_device", i1 false, i1 false}
!22 = !{!"../drivers/bluetooth/hci_serdev.c", i32 402, i32 1}
!23 = !{ptr @hci_serdev_client_ops, !24, !"hci_serdev_client_ops", i1 false, i1 false}
!24 = !{!"../drivers/bluetooth/hci_serdev.c", i32 289, i32 39}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/hci_serdev.c", i32 244, i32 2}
!27 = !{ptr @hci_uart_write_wakeup.__UNIQUE_ID_ddebug479, !26, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/bluetooth/hci_serdev.c", i32 119, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hci_uart_open.__UNIQUE_ID_ddebug476, !29, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bluetooth/hci_serdev.c", i32 143, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hci_uart_close.__UNIQUE_ID_ddebug477, !33, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/hci_serdev.c", i32 98, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hci_uart_flush.__UNIQUE_ID_ddebug475, !37, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bluetooth/hci_serdev.c", i32 168, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hci_uart_send_frame.__UNIQUE_ID_ddebug478, !41, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/hci_serdev.c", i32 208, i32 4}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/hci_serdev.c", i32 222, i32 3}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/hci_serdev.c", i32 228, i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148698722, i64 2148698727, i64 2148698740, i64 2148698784, i64 2148698818, i64 2148698839}
