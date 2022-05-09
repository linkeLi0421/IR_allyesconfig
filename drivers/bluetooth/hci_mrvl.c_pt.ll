; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_mrvl.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_mrvl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mrvl_data = type { ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i8, i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.hci_mrvl_pkt = type { i16, i16 }

@mrvl_serdev_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mrvl_bluetooth_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mrvl_serdev_probe, ptr @mrvl_serdev_remove }, [44 x i8] zeroinitializer }, align 32
@mrvl_proto = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 11, ptr @.str.1, i32 0, i32 115200, i32 0, ptr @mrvl_open, ptr @mrvl_close, ptr @mrvl_flush, ptr @mrvl_setup, ptr null, ptr @mrvl_recv, ptr @mrvl_enqueue, ptr @mrvl_dequeue }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_uart_mrvl\00", [18 x i8] zeroinitializer }, align 32
@mrvl_bluetooth_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,88w8897\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Marvell\00", [24 x i8] zeroinitializer }, align 32
@mrvl_open.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mrvl_open\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/bluetooth/hci_mrvl.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hu %p\0A\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@mrvl_close.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.5, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mrvl_close\00", [21 x i8] zeroinitializer }, align 32
@mrvl_flush.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str.4, ptr @.str.5, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mrvl_flush\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mrvl/helper_uart_3000000.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Unable to download firmware helper\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mrvl/uart8897_bt.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Failed to load firmware file %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: Loading %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Firmware load interrupted\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Firmware request timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@mrvl_load_firmware.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mrvl_load_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Firmware request, expecting %d bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Firmware loading complete\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Firmware loading failure\0A\00", [34 x i8] zeroinitializer }, align 32
@mrvl_load_firmware.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.16, ptr @.str.4, ptr @.str.20, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Adjusting tx_len to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to alloc mem for FW packet\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@mrvl_recv_pkts = internal constant { [5 x %struct.h4_recv_pkt], [36 x i8] } { [5 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 -91, i8 4, i8 0, i8 0, i16 4, ptr @mrvl_recv_fw_req }, %struct.h4_recv_pkt { i8 -86, i8 4, i8 0, i8 0, i16 4, ptr @mrvl_recv_chip_ver }], [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Corrupted mrvl header\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Received unexpected firmware request\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Unable to alloc ack/nak packet\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Received unexpected chip version\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Controller id = %x, rev = %x\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"mrvl_serdev_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 425, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"mrvl_proto\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 383, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 429, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"mrvl_bluetooth_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 418, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 385, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 60, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1984, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 93, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 111, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 360, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 362, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 376, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 280, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 287, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 301, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 305, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 310, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 319, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 321, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 329, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 335, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 125, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"mrvl_recv_pkts\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 242, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 262, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 169, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 177, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 152, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 210, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [32 x i8] c"../drivers/bluetooth/hci_mrvl.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 217, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @mrvl_deinit, ptr @mrvl_serdev_driver, ptr @mrvl_proto, ptr @.str, ptr @mrvl_bluetooth_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @skb_queue_head_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @mrvl_recv_pkts, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrvl_serdev_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrvl_proto to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrvl_bluetooth_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrvl_recv_pkts to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mrvl_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @mrvl_serdev_driver, ptr noundef null) #6
  %call1 = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @mrvl_proto) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mrvl_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @mrvl_serdev_driver) #6
  %call = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @mrvl_proto) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrvl_serdev_probe(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 296, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %serdev1 = getelementptr inbounds %struct.hci_uart, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %serdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %serdev, ptr %serdev1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @hci_uart_register_device(ptr noundef nonnull %call.i, ptr noundef nonnull @mrvl_proto) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrvl_serdev_remove(ptr nocapture noundef readonly %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hci_uart_unregister_device(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrvl_open(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrvl_open.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrvl_open, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mrvl_open.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.5, ptr noundef %hu) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call zeroext i1 @hci_uart_has_flow_control(ptr noundef %hu) #6
  br i1 %call3, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #9
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %txq = getelementptr inbounds %struct.mrvl_data, ptr %call7.i.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.mrvl_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %1 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.mrvl_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.mrvl_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %rawq = getelementptr inbounds %struct.mrvl_data, ptr %call7.i.i, i32 0, i32 2
  %lock.i29 = getelementptr inbounds %struct.mrvl_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i29, ptr noundef nonnull @.str.6, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %4 = ptrtoint ptr %rawq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rawq, ptr %rawq, align 4
  %prev.i.i30 = getelementptr inbounds %struct.mrvl_data, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rawq, ptr %prev.i.i30, align 8
  %qlen.i.i31 = getelementptr inbounds %struct.mrvl_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %qlen.i.i31 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i31, align 4
  %flags = getelementptr inbounds %struct.mrvl_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #6
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %priv, align 4
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %8 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serdev, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %call13 = tail call i32 @serdev_device_open(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %err

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err:                                              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %err ], [ -95, %do.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrvl_close(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrvl_close.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrvl_close, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mrvl_close.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.5, ptr noundef %hu) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serdev_device_close(ptr noundef nonnull %3) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %txq = getelementptr inbounds %struct.mrvl_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #6
  %rawq = getelementptr inbounds %struct.mrvl_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %rawq) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #6
  tail call void @kfree(ptr noundef %1) #6
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %priv, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrvl_flush(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrvl_flush.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrvl_flush, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mrvl_flush.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.5, ptr noundef %hu) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.mrvl_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #6
  %rawq = getelementptr inbounds %struct.mrvl_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %rawq) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrvl_setup(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext true) #6
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %call = tail call fastcc i32 @mrvl_load_firmware(ptr noundef %1, ptr noundef nonnull @.str.9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.10, ptr noundef %name) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @hci_uart_wait_until_sent(ptr noundef %hu) #6
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %4 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdev, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @serdev_device_set_baudrate(ptr noundef nonnull %5, i32 noundef 3000000) #6
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hci_uart_set_baudrate(ptr noundef %hu, i32 noundef 3000000) #6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  tail call void @hci_uart_set_flow_control(ptr noundef %hu, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  %call9 = tail call fastcc i32 @mrvl_load_firmware(ptr noundef %7, ptr noundef nonnull @.str.11)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call9, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrvl_recv(ptr noundef %hu, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1 = tail call ptr @h4_recv_buf(ptr noundef %6, ptr noundef %8, ptr noundef %data, i32 noundef %count, ptr noundef nonnull @mrvl_recv_pkts, i32 noundef 5) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call1 to i32
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %10) #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ -49, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrvl_enqueue(ptr nocapture noundef readonly %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %txq = getelementptr inbounds %struct.mrvl_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mrvl_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %txq = getelementptr inbounds %struct.mrvl_data, ptr %1, i32 0, i32 1
  %call = tail call ptr @skb_dequeue(ptr noundef %txq) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rawq = getelementptr inbounds %struct.mrvl_data, ptr %1, i32 0, i32 2
  %call1 = tail call ptr @skb_dequeue(ptr noundef %rawq) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #6
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call2, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %skb.0 = phi ptr [ %call, %if.else ], [ %call1, %if.then ]
  ret ptr %skb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_uart_has_flow_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mrvl_load_firmware(ptr noundef %hdev, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fw, align 4
  %dev = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204
  %call1 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %name, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name2 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12, ptr noundef %name2, ptr noundef %name) #6
  br label %cleanup78

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %10
  %name4 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.13, ptr noundef %name4, ptr noundef %name) #6
  %flags = getelementptr inbounds %struct.mrvl_data, ptr %3, i32 0, i32 3
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #6
  %cmp6.not140 = icmp ugt ptr %8, %add.ptr
  br i1 %cmp6.not140, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %tx_len = getelementptr inbounds %struct.mrvl_data, ptr %3, i32 0, i32 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %rawq = getelementptr inbounds %struct.mrvl_data, ptr %3, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %fw_ptr.0141 = phi ptr [ %8, %while.body.lr.ph ], [ %add.ptr75, %cleanup.while.body_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 125) #6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %while.body.do.body_crit_edge, label %wait_on_bit_timeout.exit

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

wait_on_bit_timeout.exit:                         ; preds = %while.body
  %call3.i = call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags, i32 noundef 1, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 200) #6
  %14 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3.i, label %if.then14 [
    i32 1, label %if.then11
    i32 0, label %wait_on_bit_timeout.exit.do.body_crit_edge
  ]

wait_on_bit_timeout.exit.do.body_crit_edge:       ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then11:                                        ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14, ptr noundef %name4) #6
  br label %while.end

if.then14:                                        ; preds = %wait_on_bit_timeout.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef %name4) #6
  br label %while.end

do.body:                                          ; preds = %wait_on_bit_timeout.exit.do.body_crit_edge, %while.body.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrvl_load_firmware.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrvl_load_firmware, %if.then23)) #6
          to label %do.end [label %if.then23], !srcloc !77

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_len, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mrvl_load_firmware.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.17, ptr noundef %name4, i32 noundef %16) #6
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %cmp27 = icmp eq ptr %fw_ptr.0141, %add.ptr
  %17 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_len, align 4
  br i1 %cmp27, label %if.then28, label %if.end38

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.18, ptr noundef %name4) #6
  br label %while.end

if.else34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, ptr noundef %name4) #6
  br label %while.end

if.end38:                                         ; preds = %do.end
  %add.ptr40 = getelementptr i8, ptr %fw_ptr.0141, i32 %18
  %cmp41 = icmp ugt ptr %add.ptr40, %add.ptr
  br i1 %cmp41, label %if.then42, label %if.end38.if.end63_crit_edge

if.end38.if.end63_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.rhs.cast = ptrtoint ptr %fw_ptr.0141 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.ptr.sub, ptr %tx_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrvl_load_firmware.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrvl_load_firmware, %if.then56)) #6
          to label %if.end63 [label %if.then56], !srcloc !77

if.then56:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_len, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mrvl_load_firmware.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.20, ptr noundef %name4, i32 noundef %21) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %if.then42, %if.end38.if.end63_crit_edge
  %22 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_len, align 4
  %add.i = add i32 %23, 8
  %call.i.i = call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i127 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i127, label %if.then67, label %cleanup

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21, ptr noundef %name4) #6
  br label %while.end

cleanup:                                          ; preds = %if.end63
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %27, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 31, ptr %cb, align 8
  %29 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_len, align 4
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %30) #6
  %31 = call ptr @memcpy(ptr %call.i, ptr %fw_ptr.0141, i32 %30)
  %32 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_len, align 4
  %add.ptr75 = getelementptr i8, ptr %fw_ptr.0141, i32 %33
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #6
  call void @skb_queue_tail(ptr noundef %rawq, ptr noundef nonnull %call.i.i) #6
  %call77 = call i32 @hci_uart_tx_wakeup(ptr noundef %1) #6
  %cmp6.not = icmp ugt ptr %add.ptr75, %add.ptr
  br i1 %cmp6.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then67, %if.else34, %if.then31, %if.then14, %if.then11, %if.end.while.end_crit_edge
  %err.3 = phi i32 [ 0, %if.then31 ], [ -22, %if.else34 ], [ -12, %if.then67 ], [ -110, %if.then14 ], [ -4, %if.then11 ], [ %call1, %if.end.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %35) #6
  br label %cleanup78

cleanup78:                                        ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %err.3, %while.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_wait_until_sent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uart_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @h4_recv_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrvl_recv_fw_req(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %1, align 1
  %rhs = getelementptr inbounds %struct.hci_mrvl_pkt, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rhs to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %rhs, align 1
  %xor25 = xor i16 %9, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %xor25)
  %cmp.not = icmp eq i16 %xor25, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %name) #6
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %hdev.i = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdev.i, align 4
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %name.i) #6
  br label %done

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -65, ptr %cb.i, align 8
  %txq.i = getelementptr inbounds %struct.mrvl_data, ptr %11, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq.i, ptr noundef nonnull %call.i.i.i) #6
  %call2.i = tail call i32 @hci_uart_tx_wakeup(ptr noundef %3) #6
  br label %done

if.end:                                           ; preds = %entry
  %call.i.i.i27 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i28 = icmp eq ptr %call.i.i.i27, null
  br i1 %tobool.not.i.i28, label %if.then.i31, label %if.end.i39

if.then.i31:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hdev.i29 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %hdev.i29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev.i29, align 4
  %name.i30 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %name.i30) #6
  br label %mrvl_send_ack.exit40

if.end.i39:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i32 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i27, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i32, align 4
  %add.ptr.i.i.i33 = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i.i33, ptr %data.i.i.i32, align 4
  %tail.i.i.i34 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i27, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i34, align 8
  %add.ptr1.i.i.i35 = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i.i35, ptr %tail.i.i.i34, align 8
  %cb.i36 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i27, i32 0, i32 3
  %25 = ptrtoint ptr %cb.i36 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 90, ptr %cb.i36, align 8
  %txq.i37 = getelementptr inbounds %struct.mrvl_data, ptr %5, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq.i37, ptr noundef nonnull %call.i.i.i27) #6
  %call2.i38 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %3) #6
  br label %mrvl_send_ack.exit40

mrvl_send_ack.exit40:                             ; preds = %if.end.i39, %if.then.i31
  %flags = getelementptr inbounds %struct.mrvl_data, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %if.then4, label %if.end7

if.then4:                                         ; preds = %mrvl_send_ack.exit40
  call void @__sanitizer_cov_trace_pc() #8
  %name5 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25, ptr noundef %name5) #6
  br label %done

if.end7:                                          ; preds = %mrvl_send_ack.exit40
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %1, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv9 = zext i16 %31 to i32
  %tx_len = getelementptr inbounds %struct.mrvl_data, ptr %5, i32 0, i32 4
  %32 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv9, ptr %tx_len, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 1) #6
  br label %done

done:                                             ; preds = %if.end7, %if.then4, %if.end.i, %if.then.i
  %ret.0 = phi i32 [ 0, %if.end7 ], [ -22, %if.then4 ], [ -22, %if.then.i ], [ -22, %if.end.i ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrvl_recv_chip_ver(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %1, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %rhs = getelementptr inbounds %struct.hci_mrvl_pkt, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %rhs to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %rhs, align 1
  %xor38 = xor i16 %10, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %xor38)
  %cmp.not = icmp eq i16 %xor38, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %name) #6
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %hdev.i = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev.i, align 4
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %name.i) #6
  br label %done

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %18, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -65, ptr %cb.i, align 8
  %txq.i = getelementptr inbounds %struct.mrvl_data, ptr %12, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq.i, ptr noundef nonnull %call.i.i.i) #6
  %call2.i = tail call i32 @hci_uart_tx_wakeup(ptr noundef %3) #6
  br label %done

if.end:                                           ; preds = %entry
  %call.i.i.i40 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i41 = icmp eq ptr %call.i.i.i40, null
  br i1 %tobool.not.i.i41, label %if.then.i44, label %if.end.i52

if.then.i44:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hdev.i42 = getelementptr inbounds %struct.hci_uart, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %hdev.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdev.i42, align 4
  %name.i43 = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %name.i43) #6
  br label %mrvl_send_ack.exit53

if.end.i52:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i45 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i40, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i45, align 4
  %add.ptr.i.i.i46 = getelementptr i8, ptr %23, i32 8
  store ptr %add.ptr.i.i.i46, ptr %data.i.i.i45, align 4
  %tail.i.i.i47 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i40, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i47, align 8
  %add.ptr1.i.i.i48 = getelementptr i8, ptr %25, i32 8
  store ptr %add.ptr1.i.i.i48, ptr %tail.i.i.i47, align 8
  %cb.i49 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i40, i32 0, i32 3
  %26 = ptrtoint ptr %cb.i49 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 90, ptr %cb.i49, align 8
  %txq.i50 = getelementptr inbounds %struct.mrvl_data, ptr %5, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq.i50, ptr noundef nonnull %call.i.i.i40) #6
  %call2.i51 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %3) #6
  br label %mrvl_send_ack.exit53

mrvl_send_ack.exit53:                             ; preds = %if.end.i52, %if.then.i44
  %flags = getelementptr inbounds %struct.mrvl_data, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %mrvl_send_ack.exit53
  call void @__sanitizer_cov_trace_pc() #8
  %name6 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.27, ptr noundef %name6) #6
  br label %done

if.end8:                                          ; preds = %mrvl_send_ack.exit53
  call void @__sanitizer_cov_trace_pc() #8
  %conv9 = trunc i16 %8 to i8
  %id = getelementptr inbounds %struct.mrvl_data, ptr %5, i32 0, i32 5
  %29 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv9, ptr %id, align 4
  %30 = lshr i16 %8, 8
  %conv11 = trunc i16 %30 to i8
  %rev = getelementptr inbounds %struct.mrvl_data, ptr %5, i32 0, i32 6
  %31 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv11, ptr %rev, align 1
  %name12 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv9.mask = and i16 %8, 255
  %conv15 = zext i16 %conv9.mask to i32
  %conv17 = zext i16 %30 to i32
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.28, ptr noundef %name12, i32 noundef %conv15, i32 noundef %conv17) #6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 0) #6
  br label %done

done:                                             ; preds = %if.end8, %if.then5, %if.end.i, %if.then.i
  %ret.0 = phi i32 [ 0, %if.end8 ], [ 0, %if.then5 ], [ -22, %if.then.i ], [ -22, %if.end.i ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 429, i32 11}
!2 = !{ptr @mrvl_serdev_driver, !3, !"mrvl_serdev_driver", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 425, i32 36}
!4 = !{ptr @mrvl_bluetooth_of_match, !5, !"mrvl_bluetooth_of_match", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 418, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 385, i32 11}
!8 = !{ptr @mrvl_proto, !9, !"mrvl_proto", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 383, i32 36}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 60, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mrvl_open.__UNIQUE_ID_ddebug475, !11, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!16 = !{ptr @skb_queue_head_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 93, i32 2}
!21 = !{ptr @mrvl_close.__UNIQUE_ID_ddebug476, !20, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 111, i32 2}
!24 = !{ptr @mrvl_flush.__UNIQUE_ID_ddebug477, !23, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 360, i32 37}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 362, i32 3}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 376, i32 37}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 280, i32 3}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 287, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 301, i32 4}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 305, i32 4}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 310, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mrvl_load_firmware.__UNIQUE_ID_ddebug478, !40, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 319, i32 5}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 321, i32 5}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 329, i32 4}
!49 = !{ptr @mrvl_load_firmware.__UNIQUE_ID_ddebug479, !48, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 335, i32 4}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/wait_bit.h", i32 125, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 262, i32 3}
!56 = !{ptr @mrvl_recv_pkts, !57, !"mrvl_recv_pkts", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 242, i32 33}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 169, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 177, i32 3}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 152, i32 3}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 210, i32 3}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bluetooth/hci_mrvl.c", i32 217, i32 2}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2148699215, i64 2148699220, i64 2148699233, i64 2148699277, i64 2148699311, i64 2148699332}
!78 = !{i64 2157579556}
!79 = !{i64 2157580573}
