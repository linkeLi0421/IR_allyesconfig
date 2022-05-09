; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/qca_uart.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/qca_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serdev_device_ops = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.qcauart = type { ptr, %struct.spinlock, %struct.work_struct, ptr, %struct.qcafrm_handle, ptr, ptr, i32, ptr }
%struct.qcafrm_handle = type { i32, i32, i16, i16 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@__initcall__kmod_qcauart__354_411_qca_uart_driver_init6 = internal global ptr @qca_uart_driver_init, section ".initcall6.init", align 4
@qca_uart_driver = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qca_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @qca_uart_probe, ptr @qca_uart_remove }, [44 x i8] zeroinitializer }, align 32
@__exitcall_qca_uart_driver_exit = internal global ptr @qca_uart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description355 = internal constant [57 x i8] c"qcauart.description=Qualcomm Atheros QCA7000 UART Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [47 x i8] c"qcauart.author=Qualcomm Atheros Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [54 x i8] c"qcauart.author=Stefan Wahren <stefan.wahren@i2se.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [51 x i8] c"qcauart.file=drivers/net/ethernet/qualcomm/qcauart\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [29 x i8] c"qcauart.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version360 = internal constant [22 x i8] c"qcauart.version=0.1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcauart\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.1.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@qca_uart_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,qca7000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qca_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013qca_uart: Fail to retrieve private structure\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qca_uart_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/qualcomm/qca_uart.c\00", [55 x i8] zeroinitializer }, align 32
@qca_uart_probe._entry_ptr = internal global ptr @qca_uart_probe._entry, section ".printk_index", align 4
@qca_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&qca->lock\00", [21 x i8] zeroinitializer }, align 32
@qca_uart_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&qca->tx_work)\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@qca_uart_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 354, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using random MAC address: %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qca_uart_probe._entry_ptr.14 = internal global ptr @qca_uart_probe._entry.10, section ".printk_index", align 4
@qca_serdev_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @qca_tty_receive, ptr @qca_tty_wakeup }, [24 x i8] zeroinitializer }, align 32
@qca_uart_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 364, ptr @.str.17, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to open device %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@qca_uart_probe._entry_ptr.18 = internal global ptr @qca_uart_probe._entry.15, section ".printk_index", align 4
@qca_uart_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 369, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Using baudrate: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@qca_uart_probe._entry_ptr.21 = internal global ptr @qca_uart_probe._entry.19, section ".printk_index", align 4
@qca_uart_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 376, ptr @.str.17, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to register net device %s\0A\00", [62 x i8] zeroinitializer }, align 32
@qca_uart_probe._entry_ptr.24 = internal global ptr @qca_uart_probe._entry.22, section ".printk_index", align 4
@qcauart_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @qcauart_netdev_init, ptr @qcauart_netdev_uninit, ptr @qcauart_netdev_open, ptr @qcauart_netdev_close, ptr @qcauart_netdev_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcauart_netdev_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xmit: iface is down\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Transmit timeout at %ld, latency %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@qca_tty_receive.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qca_tty_receive\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"recv: no RX tail\0A\00", [46 x i8] zeroinitializer }, align 32
@qca_tty_receive.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.29, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"recv: invalid RX length\0A\00", [39 x i8] zeroinitializer }, align 32
@qca_tty_receive.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.30, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"recv: out of RX resources\0A\00", [37 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294966293, i64 4294966294, i64 4294966295]
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"qca_uart_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 402, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 417, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"qca_uart_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 314, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 337, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 345, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 346, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 348, i32 44 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 353, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"qca_serdev_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 170, i32 39 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 363, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 369, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 375, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"qcauart_netdev_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 291, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 213, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 255, i32 28 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 95, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 100, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [44 x i8] c"../drivers/net/ethernet/qualcomm/qca_uart.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 116, i32 5 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_license359, ptr @__UNIQUE_ID_version360, ptr @__exitcall_qca_uart_driver_exit, ptr @__initcall__kmod_qcauart__354_411_qca_uart_driver_init6, ptr @__modver_attr, ptr @qca_uart_driver_exit, ptr @qca_uart_probe._entry, ptr @qca_uart_probe._entry.10, ptr @qca_uart_probe._entry.15, ptr @qca_uart_probe._entry.19, ptr @qca_uart_probe._entry.22, ptr @qca_uart_probe._entry_ptr, ptr @qca_uart_probe._entry_ptr.14, ptr @qca_uart_probe._entry_ptr.18, ptr @qca_uart_probe._entry_ptr.21, ptr @qca_uart_probe._entry_ptr.24, ptr @qca_uart_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qca_uart_of_match, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @qca_uart_probe.__key, ptr @.str.6, ptr @qca_uart_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @qca_serdev_ops, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @qcauart_netdev_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_uart_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_uart_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_uart_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_uart_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_serdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_uart_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_uart_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca_uart_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcauart_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_uart_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @qca_uart_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qca_uart_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @qca_uart_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_uart_probe(ptr noundef %serdev) #2 align 64 {
entry:
  %speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 124, i32 noundef 1, i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #6
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 115200, ptr %speed, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @qcauart_netdev_ops, ptr %netdev_ops.i, align 8
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %2 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %watchdog_timeo.i, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %4, -2049
  store i64 %and.i, ptr %priv_flags.i, align 16
  %tx_queue_len.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 107
  %5 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100, ptr %tx_queue_len.i, align 16
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %6 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 46, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %7 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1500, ptr %max_mtu.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %serdev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %tobool3.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %free

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %add.ptr.i, align 4
  %serdev7 = getelementptr i8, ptr %call, i32 2396
  %10 = ptrtoint ptr %serdev7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %serdev, ptr %serdev7, align 4
  %frm_handle = getelementptr i8, ptr %call, i32 2400
  %init.i = getelementptr i8, ptr %call, i32 2404
  %11 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32764, ptr %init.i, align 4
  %12 = ptrtoint ptr %frm_handle to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32764, ptr %frm_handle, align 4
  %lock = getelementptr i8, ptr %call, i32 2308
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @qca_uart_probe.__key, i16 noundef signext 3) #6
  %tx_work = getelementptr i8, ptr %call, i32 2352
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #6
  %13 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2368
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @qca_uart_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry16 = getelementptr i8, ptr %call, i32 2356
  %14 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2360
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2364
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @qcauart_transmit, ptr %func, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.9, ptr noundef nonnull %speed, i32 noundef 1, i32 noundef 0) #6
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %call25 = call i32 @of_get_ethdev_address(ptr noundef %20, ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end6.if.end34_crit_edge, label %if.then27

if.end6.if.end34_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then27:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  call fastcc void @eth_hw_addr_random(ptr noundef %24)
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %serdev, ptr noundef nonnull @.str.11, ptr noundef %28) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.end6.if.end34_crit_edge
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  call void @netif_carrier_on(ptr noundef %30) #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %32 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @qca_serdev_ops, ptr %ops1.i, align 8
  %call36 = call i32 @serdev_device_open(ptr noundef %serdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.16, ptr noundef nonnull %call) #9
  br label %free

if.end43:                                         ; preds = %if.end34
  %33 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %speed, align 4
  %call44 = call i32 @serdev_device_set_baudrate(ptr noundef %serdev, i32 noundef %34) #6
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call44, ptr %speed, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %serdev, ptr noundef nonnull @.str.20, i32 noundef %call44) #9
  call void @serdev_device_set_flow_control(ptr noundef %serdev, i1 noundef zeroext false) #6
  %call49 = call i32 @register_netdev(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end43.cleanup_crit_edge, label %do.end54

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.23, ptr noundef nonnull %call) #9
  call void @serdev_device_close(ptr noundef %serdev) #6
  %call59 = call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #6
  br label %free

free:                                             ; preds = %do.end54, %do.end41, %do.end
  %ret.0 = phi i32 [ %call36, %do.end41 ], [ %call49, %do.end54 ], [ -12, %do.end ]
  call void @free_netdev(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_uart_remove(ptr noundef %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @unregister_netdev(ptr noundef %3) #6
  tail call void @serdev_device_close(ptr noundef %serdev) #6
  %tx_work = getelementptr inbounds %struct.qcauart, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @free_netdev(ptr noundef %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcauart_transmit(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr i8, ptr %work, i32 -44
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_left = getelementptr i8, ptr %work, i32 68
  %6 = ptrtoint ptr %tx_left to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_packets, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %serdev = getelementptr i8, ptr %work, i32 44
  %14 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serdev, align 4
  %tx_head = getelementptr i8, ptr %work, i32 64
  %16 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_head, align 4
  %call8 = tail call i32 @serdev_device_write_buf(ptr noundef %15, ptr noundef %17, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %tx_left to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_left, align 4
  %sub = sub i32 %19, %call8
  store i32 %sub, ptr %tx_left, align 4
  %20 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_head, align 4
  %add.ptr13 = getelementptr i8, ptr %21, i32 %call8
  store ptr %add.ptr13, ptr %tx_head, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #6
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #6
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #6
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcauart_netdev_init(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1500, ptr %mtu, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %type, align 16
  %serdev = getelementptr i8, ptr %dev, i32 2396
  %2 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdev, align 4
  %call2 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1528, i32 noundef 3264) #6
  %tx_buffer = getelementptr i8, ptr %dev, i32 2424
  %4 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %tx_buffer, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %mtu5 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %mtu5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu5, align 4
  %add.i.i = add i32 %8, 20
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %6, i32 noundef %add.i.i, i32 noundef 2592) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.netdev_alloc_skb_ip_align.exit_crit_edge, label %if.then.i.i

if.end.netdev_alloc_skb_ip_align.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_alloc_skb_ip_align.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %12, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %netdev_alloc_skb_ip_align.exit

netdev_alloc_skb_ip_align.exit:                   ; preds = %if.then.i.i, %if.end.netdev_alloc_skb_ip_align.exit_crit_edge
  %. = phi i32 [ -105, %if.end.netdev_alloc_skb_ip_align.exit_crit_edge ], [ 0, %if.then.i.i ]
  %rx_skb = getelementptr i8, ptr %dev, i32 2412
  %13 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %rx_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %netdev_alloc_skb_ip_align.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %., %netdev_alloc_skb_ip_align.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcauart_netdev_uninit(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_skb = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  tail call void @consume_skb(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcauart_netdev_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcauart_netdev_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %tx_work = getelementptr i8, ptr %dev, i32 2352
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %tx_work) #6
  %lock = getelementptr i8, ptr %dev, i32 2308
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %tx_left = getelementptr i8, ptr %dev, i32 2420
  %2 = ptrtoint ptr %tx_left to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tx_left, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcauart_netdev_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2308
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %tx_left = getelementptr i8, ptr %dev, i32 2420
  %0 = ptrtoint ptr %tx_left to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !82

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 209, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.25) #9
  br label %out

if.end23:                                         ; preds = %if.end
  %tx_buffer = getelementptr i8, ptr %dev, i32 2424
  %6 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_buffer, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %9)
  %cmp = icmp ult i32 %9, 60
  %10 = trunc i32 %9 to i8
  %conv = sub i8 60, %10
  %pad_len.0 = select i1 %cmp, i8 %conv, i8 0
  %conv28 = zext i8 %pad_len.0 to i32
  %add = add i32 %9, %conv28
  %conv29 = trunc i32 %add to i16
  %call30 = tail call zeroext i16 @qcafrm_create_header(ptr noundef %7, i16 noundef zeroext %conv29) #6
  %conv31 = zext i16 %call30 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv31
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %12, i32 %14)
  %16 = load i32, ptr %len, align 4
  %add.ptr34 = getelementptr i8, ptr %add.ptr, i32 %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pad_len.0)
  %tobool35.not = icmp eq i8 %pad_len.0, 0
  br i1 %tobool35.not, label %if.end23.if.end40_crit_edge, label %if.then36

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then36:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %17 = call ptr @memset(ptr %add.ptr34, i32 0, i32 %conv28)
  %add.ptr39 = getelementptr i8, ptr %add.ptr34, i32 %conv28
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end23.if.end40_crit_edge
  %pos.0 = phi ptr [ %add.ptr39, %if.then36 ], [ %add.ptr34, %if.end23.if.end40_crit_edge ]
  %call41 = tail call zeroext i16 @qcafrm_create_footer(ptr noundef %pos.0) #6
  %conv42 = zext i16 %call41 to i32
  %add.ptr43 = getelementptr i8, ptr %pos.0, i32 %conv42
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %serdev = getelementptr i8, ptr %dev, i32 2396
  %22 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %serdev, align 4
  %24 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_buffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr43 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call47 = tail call i32 @serdev_device_write_buf(ptr noundef %23, ptr noundef %25, i32 noundef %sub.ptr.sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp sgt i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end40.if.end60_crit_edge

if.end40.if.end60_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then50:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_buffer, align 4
  %sub.ptr.rhs.cast53 = ptrtoint ptr %27 to i32
  %28 = add i32 %call47, %sub.ptr.rhs.cast53
  %sub55 = sub i32 %sub.ptr.lhs.cast, %28
  %29 = ptrtoint ptr %tx_left to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub55, ptr %tx_left, align 4
  %add.ptr58 = getelementptr i8, ptr %27, i32 %call47
  %tx_head = getelementptr i8, ptr %dev, i32 2416
  %30 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr58, ptr %tx_head, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %31 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_bytes, align 4
  %add59 = add i32 %32, %call47
  store i32 %add59, ptr %tx_bytes, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then50, %if.end40.if.end60_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %_tx.i.i100 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i100, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 12
  %36 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp.not.i.i = icmp eq i32 %37, %35
  br i1 %cmp.not.i.i, label %if.end60.out_crit_edge, label %do.body5.i.i

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body5.i.i:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %35, ptr %trans_start.i.i, align 16
  br label %out

out:                                              ; preds = %do.body5.i.i, %if.end60.out_crit_edge, %if.then21
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcauart_netdev_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call1 = tail call i32 @dev_trans_start(ptr noundef %dev) #6
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %2, i32 noundef %call1) #9
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %3 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %5 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_dropped, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %tx_dropped, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qcafrm_create_header(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qcafrm_create_footer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca_tty_receive(ptr nocapture noundef readonly %serdev, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36
  %rx_skb = getelementptr inbounds %struct.qcauart, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu, align 4
  %add.i.i = add i32 %7, 20
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %add.i.i, i32 noundef 2592) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then5, label %netdev_alloc_skb_ip_align.exit

netdev_alloc_skb_ip_align.exit:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %12 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %rx_skb, align 4
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rx_skb, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  %14 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_errors, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %rx_errors, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 6
  br label %cleanup92.sink.split

if.end7:                                          ; preds = %netdev_alloc_skb_ip_align.exit, %entry.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp153.not = icmp eq i32 %count, 0
  br i1 %cmp153.not, label %if.end7.cleanup92_crit_edge, label %for.body.lr.ph

if.end7.cleanup92_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

for.body.lr.ph:                                   ; preds = %if.end7
  %frm_handle = getelementptr inbounds %struct.qcauart, ptr %1, i32 0, i32 4
  %rx_errors47 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  %rx_dropped49 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 6
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 2
  %mtu62 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc91, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_skb, align 4
  %data9 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data9, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %for.body.skb_tailroom.exit_crit_edge

for.body.skb_tailroom.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %for.body.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %for.body.skb_tailroom.exit_crit_edge ]
  %conv = trunc i32 %cond.i to i16
  %arrayidx = getelementptr i8, ptr %data, i32 %i.0154
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %call12 = tail call i32 @qcafrm_fsm_decode(ptr noundef %frm_handle, ptr noundef %19, i16 noundef zeroext %conv, i8 noundef zeroext %27) #6
  %28 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %sw.default [
    i32 0, label %skb_tailroom.exit.for.inc_crit_edge
    i32 -1001, label %skb_tailroom.exit.for.inc_crit_edge162
    i32 -1002, label %do.body14
    i32 -1003, label %do.body29
  ]

skb_tailroom.exit.for.inc_crit_edge162:           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

skb_tailroom.exit.for.inc_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body14:                                        ; preds = %skb_tailroom.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tty_receive.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tty_receive, %if.then19)) #6
          to label %do.end22 [label %if.then19], !srcloc !83

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qca_tty_receive.__UNIQUE_ID_ddebug351, ptr noundef %3, ptr noundef nonnull @.str.28) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body14
  %29 = ptrtoint ptr %rx_errors47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_errors47, align 4
  %inc24 = add i32 %30, 1
  store i32 %inc24, ptr %rx_errors47, align 4
  %31 = ptrtoint ptr %rx_dropped49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_dropped49, align 4
  %inc26 = add i32 %32, 1
  store i32 %inc26, ptr %rx_dropped49, align 4
  br label %for.inc

do.body29:                                        ; preds = %skb_tailroom.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tty_receive.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tty_receive, %if.then41)) #6
          to label %do.end46 [label %if.then41], !srcloc !83

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qca_tty_receive.__UNIQUE_ID_ddebug352, ptr noundef %3, ptr noundef nonnull @.str.29) #6
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %do.body29
  %33 = ptrtoint ptr %rx_errors47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_errors47, align 4
  %inc48 = add i32 %34, 1
  store i32 %inc48, ptr %rx_errors47, align 4
  %35 = ptrtoint ptr %rx_dropped49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_dropped49, align 4
  %inc50 = add i32 %36, 1
  store i32 %inc50, ptr %rx_dropped49, align 4
  br label %for.inc

sw.default:                                       ; preds = %skb_tailroom.exit
  %37 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stats, align 4
  %inc51 = add i32 %38, 1
  store i32 %inc51, ptr %stats, align 4
  %39 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_bytes, align 4
  %add52 = add i32 %40, %call12
  store i32 %add52, ptr %rx_bytes, align 4
  %41 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_skb, align 4
  %call54 = tail call ptr @skb_put(ptr noundef %42, i32 noundef %call12) #6
  %43 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_skb, align 4
  %45 = getelementptr inbounds %struct.anon.44, ptr %44, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %call57 = tail call zeroext i16 @eth_type_trans(ptr noundef %44, ptr noundef %47) #6
  %48 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_skb, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 15, i32 0, i32 18
  %50 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %call57, ptr %protocol, align 8
  %51 = load ptr, ptr %rx_skb, align 4
  %call61 = tail call i32 @netif_rx_ni(ptr noundef %51) #6
  %52 = ptrtoint ptr %mtu62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mtu62, align 4
  %add.i.i137 = add i32 %53, 20
  %call.i.i138 = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %add.i.i137, i32 noundef 2592) #6
  %tobool.not.i.i139 = icmp eq ptr %call.i.i138, null
  br i1 %tobool.not.i.i139, label %do.body70, label %netdev_alloc_skb_ip_align.exit145

netdev_alloc_skb_ip_align.exit145:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i140 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i138, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i140, align 4
  %add.ptr.i.i.i141 = getelementptr i8, ptr %55, i32 2
  store ptr %add.ptr.i.i.i141, ptr %data.i.i.i140, align 4
  %tail.i.i.i142 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i138, i32 0, i32 16
  %56 = ptrtoint ptr %tail.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i.i.i142, align 8
  %add.ptr1.i.i.i143 = getelementptr i8, ptr %57, i32 2
  store ptr %add.ptr1.i.i.i143, ptr %tail.i.i.i142, align 8
  %58 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i138, ptr %rx_skb, align 4
  br label %for.inc

do.body70:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rx_skb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca_tty_receive.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca_tty_receive, %if.then82)) #6
          to label %cleanup92.sink.split [label %if.then82], !srcloc !83

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @qca_tty_receive.__UNIQUE_ID_ddebug353, ptr noundef %3, ptr noundef nonnull @.str.30) #6
  br label %cleanup92.sink.split

for.inc:                                          ; preds = %netdev_alloc_skb_ip_align.exit145, %do.end46, %do.end22, %skb_tailroom.exit.for.inc_crit_edge, %skb_tailroom.exit.for.inc_crit_edge162
  %inc91 = add nuw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc91, %count
  br i1 %exitcond.not, label %for.inc.cleanup92_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup92_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

cleanup92.sink.split:                             ; preds = %if.then82, %do.body70, %if.then5
  %rx_errors47.sink158 = phi ptr [ %rx_dropped, %if.then5 ], [ %rx_errors47, %if.then82 ], [ %rx_errors47, %do.body70 ]
  %retval.2.ph = phi i32 [ 0, %if.then5 ], [ %i.0154, %if.then82 ], [ %i.0154, %do.body70 ]
  %60 = ptrtoint ptr %rx_errors47.sink158 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_errors47.sink158, align 4
  %inc89 = add i32 %61, 1
  store i32 %inc89, ptr %rx_errors47.sink158, align 4
  br label %cleanup92

cleanup92:                                        ; preds = %cleanup92.sink.split, %for.inc.cleanup92_crit_edge, %if.end7.cleanup92_crit_edge
  %retval.2 = phi i32 [ 0, %if.end7.cleanup92_crit_edge ], [ %retval.2.ph, %cleanup92.sink.split ], [ %count, %for.inc.cleanup92_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca_tty_wakeup(ptr nocapture noundef readonly %serdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_work = getelementptr inbounds %struct.qcauart, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %tx_work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcafrm_fsm_decode(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_qcauart__354_411_qca_uart_driver_init6, !1, !"__initcall__kmod_qcauart__354_411_qca_uart_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 411, i32 1}
!2 = !{ptr @__exitcall_qca_uart_driver_exit, !1, !"__exitcall_qca_uart_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description355, !4, !"__UNIQUE_ID_description355", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 413, i32 1}
!5 = !{ptr @__UNIQUE_ID_author356, !6, !"__UNIQUE_ID_author356", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 414, i32 1}
!7 = !{ptr @__UNIQUE_ID_author357, !8, !"__UNIQUE_ID_author357", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 415, i32 1}
!9 = !{ptr @__UNIQUE_ID_file358, !10, !"__UNIQUE_ID_file358", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 416, i32 1}
!11 = !{ptr @__UNIQUE_ID_license359, !10, !"__UNIQUE_ID_license359", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_version360, !13, !"__UNIQUE_ID_version360", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 417, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @qca_uart_driver, !19, !"qca_uart_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 402, i32 36}
!20 = !{ptr @qca_uart_of_match, !21, !"qca_uart_of_match", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 314, i32 34}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 337, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qca_uart_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @qca_uart_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @qca_uart_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 345, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @qca_uart_probe.__key.7, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 346, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 348, i32 44}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 353, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @qca_uart_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @qca_uart_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 363, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @qca_uart_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @qca_uart_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 369, i32 2}
!49 = !{ptr @qca_uart_probe._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @qca_uart_probe._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 375, i32 3}
!53 = !{ptr @qca_uart_probe._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @qca_uart_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @qcauart_netdev_ops, !56, !"qcauart_netdev_ops", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 291, i32 36}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 213, i32 29}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 255, i32 28}
!61 = !{ptr @qca_serdev_ops, !62, !"qca_serdev_ops", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 170, i32 39}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 95, i32 4}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qca_tty_receive.__UNIQUE_ID_ddebug351, !64, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 100, i32 4}
!69 = !{ptr @qca_tty_receive.__UNIQUE_ID_ddebug352, !68, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qualcomm/qca_uart.c", i32 116, i32 5}
!72 = !{ptr @qca_tty_receive.__UNIQUE_ID_ddebug353, !71, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2148285838, i64 2148285843, i64 2148285856, i64 2148285900, i64 2148285934, i64 2148285955}
