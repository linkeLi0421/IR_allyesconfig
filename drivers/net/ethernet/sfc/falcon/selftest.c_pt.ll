; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/selftest.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/selftest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ef4_loopback_state = type { i8, i32, ptr, i8, %struct.atomic_t, %struct.atomic_t, %struct.ef4_loopback_payload }
%struct.ef4_loopback_payload = type <{ %struct.ethhdr, %struct.iphdr, %struct.udphdr, i16, [64 x i8] }>
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ef4_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ef4_nic_type = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i32, i32, i64, i32 }
%struct.ef4_self_tests = type { i32, i32, i32, [32 x i32], [32 x i32], i32, i32, [20 x i32], [18 x %struct.ef4_loopback_self_tests] }
%struct.ef4_loopback_self_tests = type { [4 x i32], [4 x i32], i32, i32 }
%struct.ef4_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.ef4_special_buffer, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ef4_rx_queue, [120 x i8], [4 x %struct.ef4_tx_queue] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ef4_special_buffer = type { %struct.ef4_buffer, i32, i32 }
%struct.ef4_rx_queue = type { ptr, i32, ptr, %struct.ef4_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.ef4_tx_queue = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.ef4_special_buffer, i32, i8, i32, ptr, [68 x i8], i32, i32, i32, i32, i32, [108 x i8], i32, i32, i32, i32, i8, i32, i32, [100 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"saw runt RX packet (length %d) in %s loopback test\0A\00", [44 x i8] zeroinitializer }, align 32
@ef4_loopback_mode_max = external dso_local local_unnamed_addr constant i32, align 4
@ef4_loopback_mode_names = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(invalid)\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"saw non-loopback RX packet in %s loopback test\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"saw incorrect RX packet length %d (wanted %d) in %s loopback test\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saw corrupted IP header in %s loopback test\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saw corrupted RX packet in %s loopback test\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"saw RX packet from iteration %d (wanted %d) in %s loopback test\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to recover from chip test\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"channel %d failed to trigger an interrupt\0A\00", [53 x i8] zeroinitializer }, align 32
@ef4_selftest_async_work.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, i8 0, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_falcon\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ef4_selftest_async_work\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/sfc/falcon/selftest.c\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"channel %d triggered interrupt on CPU %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ef4_test_interrupts.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.11, ptr @.str.14, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ef4_test_interrupts\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"testing interrupts\0A\00", [44 x i8] zeroinitializer }, align 32
@ef4_test_interrupts.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.11, ptr @.str.15, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"direct interrupt testing not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ef4_test_interrupts.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.11, ptr @.str.16, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"waiting for test interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timed out waiting for interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@ef4_test_interrupts.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.11, ptr @.str.18, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s test interrupt seen on CPU%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ef4_interrupt_mode_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSI-X\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@ef4_test_eventq_irq.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.22, ptr @.str.11, ptr @.str.23, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ef4_test_eventq_irq\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"channel %d event queue passed (with%s NAPI)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"channel %d timed out waiting for event queue\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"channel %d saw interrupt during event queue test\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"channel %d event was generated, but failed to trigger an interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s phy selftest\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Passed\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to move into %s loopback\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"loopback %s never came up\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ef4_test_loopback.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.34, ptr @.str.11, ptr @.str.35, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_test_loopback\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"TX queue %d testing %s loopback with %d packets\0A\00", [47 x i8] zeroinitializer }, align 32
@ef4_test_loopback.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.34, ptr @.str.11, ptr @.str.36, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"TX queue %d passed %s loopback test with a burst length of %d packets\0A\00", [57 x i8] zeroinitializer }, align 32
@payload_msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Hello world! This is an Efx loopback test in progress!\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"TX queue %d could not transmit packet %d of %d in %s loopback test\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"TX queue %d saw only %d out of an expected %d TX completion events in %s loopback test\0A\00", [40 x i8] zeroinitializer }, align 32
@ef4_end_loopback.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.39, ptr @.str.11, ptr @.str.40, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ef4_end_loopback\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"TX queue %d saw only %d out of an expected %d received packets in %s loopback test\0A\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 305, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 313, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 321, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 330, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 338, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 346, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 734, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 796, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 800, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 137, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 142, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 152, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 161, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 165, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"ef4_interrupt_mode_names\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 59, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 60, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 61, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 62, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 225, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 234, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 238, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 243, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 267, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 645, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 653, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 542, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 569, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"payload_msg\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 54, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 444, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 495, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [46 x i8] c"../drivers/net/ethernet/sfc/falcon/selftest.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 506, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ef4_interrupt_mode_names, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @payload_msg, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_interrupt_mode_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @payload_msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_loopback_rx_packet(ptr nocapture noundef readonly %efx, ptr noundef %buf_ptr, i32 noundef %pkt_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %loopback_selftest = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 90
  %0 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %loopback_selftest, align 128
  %tobool.not = icmp eq ptr %buf_ptr, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !94

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/selftest.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 290, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

do.end9:                                          ; preds = %entry
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %lor.lhs.false

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool10.not = icmp eq i8 %3, 0
  br i1 %tobool10.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %payload13 = getelementptr inbounds %struct.ef4_loopback_state, ptr %1, i32 0, i32 6
  %ip = getelementptr inbounds %struct.ef4_loopback_state, ptr %1, i32 0, i32 6, i32 1
  %saddr = getelementptr inbounds %struct.ef4_loopback_state, ptr %1, i32 0, i32 6, i32 1, i32 8
  %4 = ptrtoint ptr %saddr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %saddr, align 1
  %ip14 = getelementptr inbounds %struct.ef4_loopback_payload, ptr %buf_ptr, i32 0, i32 1
  %saddr15 = getelementptr inbounds %struct.ef4_loopback_payload, ptr %buf_ptr, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %saddr15 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %saddr15, align 1
  %offload_csum = getelementptr inbounds %struct.ef4_loopback_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %offload_csum to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %offload_csum, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.end12.if.end21_crit_edge, label %if.then17

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %check = getelementptr inbounds %struct.ef4_loopback_state, ptr %1, i32 0, i32 6, i32 1, i32 7
  %9 = ptrtoint ptr %check to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %check, align 1
  %check20 = getelementptr inbounds %struct.ef4_loopback_payload, ptr %buf_ptr, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %check20 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %check20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end12.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %pkt_len)
  %cmp22 = icmp ult i32 %pkt_len, 14
  br i1 %cmp22, label %do.body24, label %if.end32

do.body24:                                        ; preds = %if.end21
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %do.body24.err_crit_edge, label %if.then26

do.body24.err_crit_edge:                          ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then26:                                        ; preds = %do.body24
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %16 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %loopback_mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %18 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp27 = icmp ult i32 %17, %18
  br i1 %cmp27, label %cond.true, label %if.then26.cond.end_crit_edge

if.then26.cond.end_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %17
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then26.cond.end_crit_edge
  %cond = phi ptr [ %20, %cond.true ], [ @.str.1, %if.then26.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef %pkt_len, ptr noundef %cond) #13
  br label %err

if.end32:                                         ; preds = %if.end21
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %buf_ptr, ptr noundef dereferenceable(14) %payload13, i32 14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp34.not = icmp eq i32 %bcmp, 0
  br i1 %cmp34.not, label %if.end53, label %do.body36

do.body36:                                        ; preds = %if.end32
  %msg_enable37 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %21 = ptrtoint ptr %msg_enable37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable37, align 8
  %and38 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body36.err_crit_edge, label %if.then40

do.body36.err_crit_edge:                          ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then40:                                        ; preds = %do.body36
  %net_dev41 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %23 = ptrtoint ptr %net_dev41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev41, align 4
  %loopback_mode42 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %25 = ptrtoint ptr %loopback_mode42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %loopback_mode42, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %27 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp43 = icmp ult i32 %26, %27
  br i1 %cmp43, label %cond.true44, label %if.then40.cond.end48_crit_edge

if.then40.cond.end48_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end48

cond.true44:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx46 = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %26
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx46, align 4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.true44, %if.then40.cond.end48_crit_edge
  %cond49 = phi ptr [ %29, %cond.true44 ], [ @.str.1, %if.then40.cond.end48_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef %cond49) #13
  br label %err

if.end53:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %pkt_len)
  %cmp54.not = icmp eq i32 %pkt_len, 108
  br i1 %cmp54.not, label %if.end73, label %do.body56

do.body56:                                        ; preds = %if.end53
  %msg_enable57 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %30 = ptrtoint ptr %msg_enable57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable57, align 8
  %and58 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body56.err_crit_edge, label %if.then60

do.body56.err_crit_edge:                          ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then60:                                        ; preds = %do.body56
  %net_dev61 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %32 = ptrtoint ptr %net_dev61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev61, align 4
  %loopback_mode62 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %34 = ptrtoint ptr %loopback_mode62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %loopback_mode62, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %36 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %36)
  %cmp63 = icmp ult i32 %35, %36
  br i1 %cmp63, label %cond.true64, label %if.then60.cond.end68_crit_edge

if.then60.cond.end68_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end68

cond.true64:                                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx66 = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %35
  %37 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx66, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.true64, %if.then60.cond.end68_crit_edge
  %cond69 = phi ptr [ %38, %cond.true64 ], [ @.str.1, %if.then60.cond.end68_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.3, i32 noundef %pkt_len, i32 noundef 108, ptr noundef %cond69) #13
  br label %err

if.end73:                                         ; preds = %if.end53
  %bcmp200 = tail call i32 @bcmp(ptr noundef dereferenceable(20) %ip14, ptr noundef dereferenceable(20) %ip, i32 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp200)
  %cmp77.not = icmp eq i32 %bcmp200, 0
  br i1 %cmp77.not, label %if.end96, label %do.body79

do.body79:                                        ; preds = %if.end73
  %msg_enable80 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %39 = ptrtoint ptr %msg_enable80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable80, align 8
  %and81 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body79.err_crit_edge, label %if.then83

do.body79.err_crit_edge:                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then83:                                        ; preds = %do.body79
  %net_dev84 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %41 = ptrtoint ptr %net_dev84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev84, align 4
  %loopback_mode85 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %43 = ptrtoint ptr %loopback_mode85 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %loopback_mode85, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %45 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %45)
  %cmp86 = icmp ult i32 %44, %45
  br i1 %cmp86, label %cond.true87, label %if.then83.cond.end91_crit_edge

if.then83.cond.end91_crit_edge:                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end91

cond.true87:                                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx89 = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %44
  %46 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx89, align 4
  br label %cond.end91

cond.end91:                                       ; preds = %cond.true87, %if.then83.cond.end91_crit_edge
  %cond92 = phi ptr [ %47, %cond.true87 ], [ @.str.1, %if.then83.cond.end91_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.4, ptr noundef %cond92) #13
  br label %err

if.end96:                                         ; preds = %if.end73
  %msg = getelementptr inbounds %struct.ef4_loopback_payload, ptr %buf_ptr, i32 0, i32 4
  %msg97 = getelementptr inbounds %struct.ef4_loopback_state, ptr %1, i32 0, i32 6, i32 4
  %bcmp201 = tail call i32 @bcmp(ptr noundef dereferenceable(64) %msg, ptr noundef dereferenceable(64) %msg97, i32 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp201)
  %cmp99.not = icmp eq i32 %bcmp201, 0
  br i1 %cmp99.not, label %if.end118, label %do.body101

do.body101:                                       ; preds = %if.end96
  %msg_enable102 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %48 = ptrtoint ptr %msg_enable102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable102, align 8
  %and103 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body101.err_crit_edge, label %if.then105

do.body101.err_crit_edge:                         ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then105:                                       ; preds = %do.body101
  %net_dev106 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %50 = ptrtoint ptr %net_dev106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev106, align 4
  %loopback_mode107 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %52 = ptrtoint ptr %loopback_mode107 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %loopback_mode107, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %54 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %54)
  %cmp108 = icmp ult i32 %53, %54
  br i1 %cmp108, label %cond.true109, label %if.then105.cond.end113_crit_edge

if.then105.cond.end113_crit_edge:                 ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end113

cond.true109:                                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx111 = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %53
  %55 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx111, align 4
  br label %cond.end113

cond.end113:                                      ; preds = %cond.true109, %if.then105.cond.end113_crit_edge
  %cond114 = phi ptr [ %56, %cond.true109 ], [ @.str.1, %if.then105.cond.end113_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.5, ptr noundef %cond114) #13
  br label %err

if.end118:                                        ; preds = %if.end96
  %iteration = getelementptr inbounds %struct.ef4_loopback_payload, ptr %buf_ptr, i32 0, i32 3
  %57 = ptrtoint ptr %iteration to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %iteration, align 1
  %conv = zext i16 %58 to i32
  %iteration119 = getelementptr inbounds %struct.ef4_loopback_state, ptr %1, i32 0, i32 6, i32 3
  %59 = ptrtoint ptr %iteration119 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %iteration119, align 1
  %conv120 = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp121.not = icmp eq i16 %58, %60
  br i1 %cmp121.not, label %if.end146, label %do.body124

do.body124:                                       ; preds = %if.end118
  %msg_enable125 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %61 = ptrtoint ptr %msg_enable125 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable125, align 8
  %and126 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body124.err_crit_edge, label %if.then128

do.body124.err_crit_edge:                         ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then128:                                       ; preds = %do.body124
  %net_dev129 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %63 = ptrtoint ptr %net_dev129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net_dev129, align 4
  %loopback_mode134 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %65 = ptrtoint ptr %loopback_mode134 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %loopback_mode134, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %67 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %67)
  %cmp135 = icmp ult i32 %66, %67
  br i1 %cmp135, label %cond.true137, label %if.then128.cond.end141_crit_edge

if.then128.cond.end141_crit_edge:                 ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end141

cond.true137:                                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx139 = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %66
  %68 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx139, align 4
  br label %cond.end141

cond.end141:                                      ; preds = %cond.true137, %if.then128.cond.end141_crit_edge
  %cond142 = phi ptr [ %69, %cond.true137 ], [ @.str.1, %if.then128.cond.end141_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv120, ptr noundef %cond142) #13
  br label %err

if.end146:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %rx_good = getelementptr inbounds %struct.ef4_loopback_state, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_good, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %rx_good, i32 1, i32 3, i32 1) #10
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_good, ptr %rx_good, i32 1, ptr elementtype(i32) %rx_good) #10, !srcloc !97
  br label %cleanup

err:                                              ; preds = %cond.end141, %do.body124.err_crit_edge, %cond.end113, %do.body101.err_crit_edge, %cond.end91, %do.body79.err_crit_edge, %cond.end68, %do.body56.err_crit_edge, %cond.end48, %do.body36.err_crit_edge, %cond.end, %do.body24.err_crit_edge
  %rx_bad = getelementptr inbounds %struct.ef4_loopback_state, ptr %1, i32 0, i32 5
  %call.i.i202 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_bad, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %rx_bad, i32 1, i32 3, i32 1) #10
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_bad, ptr %rx_bad, i32 1, ptr elementtype(i32) %rx_bad) #10, !srcloc !97
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end146, %lor.lhs.false.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_selftest(ptr noundef %efx, ptr noundef %tests, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %loopback_mode1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %0 = ptrtoint ptr %loopback_mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %loopback_mode1, align 4
  %phy_mode2 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %2 = ptrtoint ptr %phy_mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode2, align 16
  %selftest_work.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 61
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %selftest_work.i) #10
  %phy_op.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %4 = ptrtoint ptr %phy_op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_op.i, align 16
  %test_alive.i = getelementptr inbounds %struct.ef4_phy_operations, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %test_alive.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %test_alive.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.ef4_test_phy_alive.exit_crit_edge, label %if.then.i

entry.ef4_test_phy_alive.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_test_phy_alive.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i137 = tail call i32 %7(ptr noundef %efx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool3.not.i = icmp eq i32 %call.i137, 0
  %cond.i = select i1 %tobool3.not.i, i32 1, i32 -1
  %8 = ptrtoint ptr %tests to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %tests, align 4
  br label %ef4_test_phy_alive.exit

ef4_test_phy_alive.exit:                          ; preds = %if.then.i, %entry.ef4_test_phy_alive.exit_crit_edge
  %rc.0.i = phi i32 [ %call.i137, %if.then.i ], [ 0, %entry.ef4_test_phy_alive.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool.not = icmp eq i32 %rc.0.i, 0
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type.i, align 4
  %test_nvram.i = getelementptr inbounds %struct.ef4_nic_type, ptr %10, i32 0, i32 34
  %11 = ptrtoint ptr %test_nvram.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %test_nvram.i, align 8
  %tobool.not.i138 = icmp eq ptr %12, null
  br i1 %tobool.not.i138, label %ef4_test_phy_alive.exit.ef4_test_nvram.exit_crit_edge, label %if.then.i140

ef4_test_phy_alive.exit.ef4_test_nvram.exit_crit_edge: ; preds = %ef4_test_phy_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_test_nvram.exit

if.then.i140:                                     ; preds = %ef4_test_phy_alive.exit
  %call.i139 = tail call i32 %12(ptr noundef %efx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i139)
  %cmp.i = icmp eq i32 %call.i139, -1
  br i1 %cmp.i, label %if.then.i140.ef4_test_nvram.exit_crit_edge, label %if.else.i

if.then.i140.ef4_test_nvram.exit_crit_edge:       ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_test_nvram.exit

if.else.i:                                        ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool4.not.i = icmp eq i32 %call.i139, 0
  %cond.i141 = select i1 %tobool4.not.i, i32 1, i32 -1
  %nvram.i = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 1
  %13 = ptrtoint ptr %nvram.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i141, ptr %nvram.i, align 4
  br label %ef4_test_nvram.exit

ef4_test_nvram.exit:                              ; preds = %if.else.i, %if.then.i140.ef4_test_nvram.exit_crit_edge, %ef4_test_phy_alive.exit.ef4_test_nvram.exit_crit_edge
  %rc.0.i142 = phi i32 [ %call.i139, %if.else.i ], [ 0, %ef4_test_phy_alive.exit.ef4_test_nvram.exit_crit_edge ], [ 0, %if.then.i140.ef4_test_nvram.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i142)
  %tobool5.not = icmp ne i32 %rc.0.i142, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool.not, i1 false
  %rc_test.1 = select i1 %or.cond, i32 %rc.0.i142, i32 %rc.0.i
  %call10 = tail call fastcc i32 @ef4_test_interrupts(ptr noundef %efx, ptr noundef %tests)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp ne i32 %call10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc_test.1)
  %tobool13.not = icmp eq i32 %rc_test.1, 0
  %or.cond134 = select i1 %tobool11.not, i1 %tobool13.not, i1 false
  %rc_test.2 = select i1 %or.cond134, i32 %call10, i32 %rc_test.1
  %call16 = tail call fastcc i32 @ef4_test_eventq_irq(ptr noundef %efx, ptr noundef %tests)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp ne i32 %call16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc_test.2)
  %tobool19.not = icmp eq i32 %rc_test.2, 0
  %or.cond135 = select i1 %tobool17.not, i1 %tobool19.not, i1 false
  %rc_test.3 = select i1 %or.cond135, i32 %call16, i32 %rc_test.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc_test.3)
  %tobool22.not = icmp eq i32 %rc_test.3, 0
  br i1 %tobool22.not, label %if.end24, label %ef4_test_nvram.exit.cleanup_crit_edge

ef4_test_nvram.exit.cleanup_crit_edge:            ; preds = %ef4_test_nvram.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %ef4_test_nvram.exit
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %14 = ptrtoint ptr %phy_op.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_op.i, align 16
  %run_tests.i = getelementptr inbounds %struct.ef4_phy_operations, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %run_tests.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %run_tests.i, align 4
  %tobool.not.i144 = icmp eq ptr %17, null
  br i1 %tobool.not.i144, label %if.then26.cleanup_crit_edge, label %if.end.i

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then26
  %mac_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock.i, i32 noundef 0) #10
  %18 = ptrtoint ptr %phy_op.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_op.i, align 16
  %run_tests2.i = getelementptr inbounds %struct.ef4_phy_operations, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %run_tests2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %run_tests2.i, align 4
  %phy_ext.i = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 7
  %call.i145 = tail call i32 %21(ptr noundef %efx, ptr noundef %phy_ext.i, i32 noundef %flags) #10
  tail call void @mutex_unlock(ptr noundef %mac_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i145)
  %cmp.i146 = icmp eq i32 %call.i145, -1
  br i1 %cmp.i146, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %22 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.cleanup_crit_edge, label %if.then6.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %24 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool7.not.i = icmp eq i32 %call.i145, 0
  %cond.i147 = select i1 %tobool7.not.i, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %25, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond.i147) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %net_dev.i148 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %26 = ptrtoint ptr %net_dev.i148 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev.i148, align 4
  tail call fastcc void @local_bh_disable() #10
  tail call void @netif_tx_lock(ptr noundef %27) #10
  tail call void @netif_device_detach(ptr noundef %27) #10
  tail call void @netif_tx_unlock(ptr noundef %27) #10
  tail call fastcc void @local_bh_enable() #10
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type.i, align 4
  %test_chip = getelementptr inbounds %struct.ef4_nic_type, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %test_chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %test_chip, align 4
  %tobool29.not = icmp eq ptr %31, null
  br i1 %tobool29.not, label %if.end28.if.end46_crit_edge, label %if.then30

if.end28.if.end46_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then30:                                        ; preds = %if.end28
  %call33 = tail call i32 %31(ptr noundef %efx, ptr noundef %tests) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.body

do.body:                                          ; preds = %if.then30
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 8
  %and36 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body.do.end_crit_edge, label %if.then38

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %net_dev.i148 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev.i148, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.7) #13
  br label %do.end

do.end:                                           ; preds = %if.then38, %do.body.do.end_crit_edge
  tail call void @ef4_schedule_reset(ptr noundef %efx, i32 noundef 6) #10
  br label %cleanup

if.end40:                                         ; preds = %if.then30
  %memory = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 5
  %36 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp = icmp slt i32 %37, 0
  br i1 %cmp, label %if.end40.if.then44_crit_edge, label %lor.lhs.false

if.end40.if.then44_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.end40
  %registers = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 6
  %38 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %registers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp41 = icmp slt i32 %39, 0
  br i1 %cmp41, label %lor.lhs.false.if.then44_crit_edge, label %lor.lhs.false.if.end46_crit_edge

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.end40.if.then44_crit_edge
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %lor.lhs.false.if.end46_crit_edge, %if.end28.if.end46_crit_edge
  %tobool55.not = phi i1 [ true, %lor.lhs.false.if.end46_crit_edge ], [ false, %if.then44 ], [ true, %if.end28.if.end46_crit_edge ]
  %rc_test.4 = phi i32 [ 0, %lor.lhs.false.if.end46_crit_edge ], [ -5, %if.then44 ], [ 0, %if.end28.if.end46_crit_edge ]
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #10
  %40 = ptrtoint ptr %phy_mode2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phy_mode2, align 16
  %and48 = and i32 %41, -3
  store i32 %and48, ptr %phy_mode2, align 16
  %42 = ptrtoint ptr %loopback_mode1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %loopback_mode1, align 4
  %call50 = tail call i32 @__ef4_reconfigure_port(ptr noundef %efx) #10
  tail call void @mutex_unlock(ptr noundef %mac_lock) #10
  %43 = ptrtoint ptr %phy_op.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_op.i, align 16
  %run_tests.i150 = getelementptr inbounds %struct.ef4_phy_operations, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %run_tests.i150 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %run_tests.i150, align 4
  %tobool.not.i151 = icmp eq ptr %46, null
  br i1 %tobool.not.i151, label %if.end46.ef4_test_phy.exit167.thread_crit_edge, label %if.end.i157

if.end46.ef4_test_phy.exit167.thread_crit_edge:   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_test_phy.exit167.thread

if.end.i157:                                      ; preds = %if.end46
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #10
  %47 = ptrtoint ptr %phy_op.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy_op.i, align 16
  %run_tests2.i153 = getelementptr inbounds %struct.ef4_phy_operations, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %run_tests2.i153 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %run_tests2.i153, align 4
  %phy_ext.i154 = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 7
  %call.i155 = tail call i32 %50(ptr noundef %efx, ptr noundef %phy_ext.i154, i32 noundef %flags) #10
  tail call void @mutex_unlock(ptr noundef %mac_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i155)
  %cmp.i156 = icmp eq i32 %call.i155, -1
  br i1 %cmp.i156, label %if.end.i157.ef4_test_phy.exit167.thread_crit_edge, label %do.body.i161

if.end.i157.ef4_test_phy.exit167.thread_crit_edge: ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_test_phy.exit167.thread

do.body.i161:                                     ; preds = %if.end.i157
  %msg_enable.i158 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %51 = ptrtoint ptr %msg_enable.i158 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable.i158, align 8
  %and.i159 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool5.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool5.not.i160, label %do.body.i161.ef4_test_phy.exit167_crit_edge, label %if.then6.i165

do.body.i161.ef4_test_phy.exit167_crit_edge:      ; preds = %do.body.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_test_phy.exit167

if.then6.i165:                                    ; preds = %do.body.i161
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %net_dev.i148 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net_dev.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool7.not.i163 = icmp eq i32 %call.i155, 0
  %cond.i164 = select i1 %tobool7.not.i163, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %54, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond.i164) #13
  br label %ef4_test_phy.exit167

ef4_test_phy.exit167:                             ; preds = %if.then6.i165, %do.body.i161.ef4_test_phy.exit167_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool53.not = icmp eq i32 %call.i155, 0
  %spec.select = select i1 %tobool55.not, i32 %call.i155, i32 %rc_test.4
  br i1 %tobool53.not, label %ef4_test_phy.exit167.ef4_test_phy.exit167.thread_crit_edge, label %ef4_test_phy.exit167._crit_edge

ef4_test_phy.exit167._crit_edge:                  ; preds = %ef4_test_phy.exit167
  call void @__sanitizer_cov_trace_pc() #12
  br label %55

ef4_test_phy.exit167.ef4_test_phy.exit167.thread_crit_edge: ; preds = %ef4_test_phy.exit167
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_test_phy.exit167.thread

ef4_test_phy.exit167.thread:                      ; preds = %ef4_test_phy.exit167.ef4_test_phy.exit167.thread_crit_edge, %if.end.i157.ef4_test_phy.exit167.thread_crit_edge, %if.end46.ef4_test_phy.exit167.thread_crit_edge
  br label %55

55:                                               ; preds = %ef4_test_phy.exit167.thread, %ef4_test_phy.exit167._crit_edge
  %56 = phi i32 [ %rc_test.4, %ef4_test_phy.exit167.thread ], [ %spec.select, %ef4_test_phy.exit167._crit_edge ]
  %loopback_modes = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 89
  %57 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %loopback_modes, align 8
  %conv = trunc i64 %58 to i32
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 39
  %59 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_channel_offset.i, align 32
  %arrayidx.i.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 132) #15
  %cmp.i168 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i168, label %.ef4_test_loopbacks.exit_crit_edge, label %do.body.i170

.ef4_test_loopbacks.exit_crit_edge:               ; preds = %55
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_test_loopbacks.exit

do.body.i170:                                     ; preds = %55
  %loopback_selftest.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 90
  %64 = ptrtoint ptr %loopback_selftest.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %loopback_selftest.i, align 128
  %tobool.not.i169 = icmp eq ptr %65, null
  br i1 %tobool.not.i169, label %do.end11.i, label %do.body5.i, !prof !98

do.body5.i:                                       ; preds = %do.body.i170
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/selftest.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end11.i:                                       ; preds = %do.body.i170
  %66 = ptrtoint ptr %loopback_selftest.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i.i, ptr %loopback_selftest.i, align 128
  %link_state1.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 81
  %channel1.i.i = getelementptr inbounds %struct.ef4_channel, ptr %62, i32 0, i32 1
  %tx_queue56.i = getelementptr inbounds %struct.ef4_channel, ptr %62, i32 0, i32 32
  %add.ptr.i = getelementptr %struct.ef4_channel, ptr %62, i32 1
  %cmp60131.i = icmp uge ptr %tx_queue56.i, %add.ptr.i
  %offload_csum.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %call7.i.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc71.i.for.body.i_crit_edge, %do.end11.i
  %mode.0135.i = phi i32 [ 0, %do.end11.i ], [ %inc.i, %for.inc71.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %mode.0135.i
  %and.i172 = and i32 %shl.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool14.not.i = icmp eq i32 %and.i172, 0
  br i1 %tobool14.not.i, label %for.body.i.for.inc71.i_crit_edge, label %if.end16.i

for.body.i.for.inc71.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc71.i

if.end16.i:                                       ; preds = %for.body.i
  %67 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %call7.i.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #10
  %68 = ptrtoint ptr %loopback_mode1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mode.0135.i, ptr %loopback_mode1, align 4
  %call18.i = tail call i32 @__ef4_reconfigure_port(ptr noundef %efx) #10
  tail call void @mutex_unlock(ptr noundef %mac_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool20.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool20.not.i, label %if.end16.i.for.body.i.i_crit_edge, label %do.body22.i

if.end16.i.for.body.i.i_crit_edge:                ; preds = %if.end16.i
  br label %for.body.i.i

do.body22.i:                                      ; preds = %if.end16.i
  %msg_enable.i173 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %69 = ptrtoint ptr %msg_enable.i173 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable.i173, align 8
  %and23.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %do.body22.i.out.i_crit_edge, label %if.then25.i

do.body22.i.out.i_crit_edge:                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then25.i:                                      ; preds = %do.body22.i
  %71 = ptrtoint ptr %net_dev.i148 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net_dev.i148, align 4
  %73 = ptrtoint ptr %loopback_mode1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %loopback_mode1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %75 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %75)
  %cmp27.i = icmp ult i32 %74, %75
  br i1 %cmp27.i, label %cond.true.i, label %if.then25.i.cond.end.i_crit_edge

if.then25.i.cond.end.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %74
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then25.i.cond.end.i_crit_edge
  %cond.i175 = phi ptr [ %77, %cond.true.i ], [ @.str.1, %if.then25.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %72, ptr noundef nonnull @.str.32, ptr noundef %cond.i175) #13
  br label %out.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end16.i.for.body.i.i_crit_edge
  %link_up_count.037.i.i = phi i32 [ %link_up_count.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end16.i.for.body.i.i_crit_edge ]
  %count.036.i.i = phi i32 [ %inc20.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end16.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #10
  %78 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %type.i, align 4
  %monitor.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %monitor.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %monitor.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %81, null
  br i1 %cmp2.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #10
  %82 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %type.i, align 4
  %monitor4.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %monitor4.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %monitor4.i.i, align 4
  tail call void %85(ptr noundef %efx) #10
  tail call void @mutex_unlock(ptr noundef %mac_lock) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #10
  %86 = ptrtoint ptr %link_state1.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %link_state1.i.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i.i, label %if.end12.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %type.i, align 4
  %check_mac_fault.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %89, i32 0, i32 29
  %90 = ptrtoint ptr %check_mac_fault.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %check_mac_fault.i.i, align 4
  %call10.i.i = tail call zeroext i1 %91(ptr noundef %efx) #10
  tail call void @mutex_unlock(ptr noundef %mac_lock) #10
  br i1 %call10.i.i, label %if.then8.i.i.for.inc.i.i_crit_edge, label %if.then15.i.i

if.then8.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mac_lock) #10
  br label %for.inc.i.i

if.then15.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %link_up_count.037.i.i)
  %cmp16.i.i = icmp eq i32 %link_up_count.037.i.i, 1
  br i1 %cmp16.i.i, label %if.end53.i, label %if.then15.i.i.for.inc.i.i_crit_edge

if.then15.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then15.i.i.for.inc.i.i_crit_edge, %if.end12.i.i, %if.then8.i.i.for.inc.i.i_crit_edge
  %link_up_count.1.i.i = phi i32 [ 1, %if.then15.i.i.for.inc.i.i_crit_edge ], [ 0, %if.end12.i.i ], [ 0, %if.then8.i.i.for.inc.i.i_crit_edge ]
  %inc20.i.i = add nuw nsw i32 %count.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc20.i.i, 40
  br i1 %exitcond.not.i.i, label %do.body36.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.body36.i:                                      ; preds = %for.inc.i.i
  %msg_enable37.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %92 = ptrtoint ptr %msg_enable37.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msg_enable37.i, align 8
  %and38.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body36.i.out.i_crit_edge, label %if.then40.i

do.body36.i.out.i_crit_edge:                      ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then40.i:                                      ; preds = %do.body36.i
  %94 = ptrtoint ptr %net_dev.i148 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %net_dev.i148, align 4
  %96 = ptrtoint ptr %loopback_mode1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %loopback_mode1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %98 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %98)
  %cmp43.i = icmp ult i32 %97, %98
  br i1 %cmp43.i, label %cond.true44.i, label %if.then40.i.cond.end48.i_crit_edge

if.then40.i.cond.end48.i_crit_edge:               ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end48.i

cond.true44.i:                                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx46.i = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %97
  %99 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx46.i, align 4
  br label %cond.end48.i

cond.end48.i:                                     ; preds = %cond.true44.i, %if.then40.i.cond.end48.i_crit_edge
  %cond49.i = phi ptr [ %100, %cond.true44.i ], [ @.str.1, %if.then40.i.cond.end48.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull @.str.33, ptr noundef %cond49.i) #13
  br label %out.i

if.end53.i:                                       ; preds = %if.then15.i.i
  %101 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %channel1.i.i, align 4
  %103 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %62, align 128
  %tx_channel_offset.i.i = getelementptr inbounds %struct.ef4_nic, ptr %104, i32 0, i32 39
  %105 = ptrtoint ptr %tx_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tx_channel_offset.i.i, align 32
  %sub.i.i = sub i32 %102, %106
  %n_tx_channels.i.i = getelementptr inbounds %struct.ef4_nic, ptr %104, i32 0, i32 40
  %107 = ptrtoint ptr %n_tx_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %n_tx_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %108)
  %cmp.i.i = icmp uge i32 %sub.i.i, %108
  %brmerge.i = select i1 %cmp.i.i, i1 true, i1 %cmp60131.i
  br i1 %brmerge.i, label %if.end53.i.for.inc71.i_crit_edge, label %land.rhs.lr.ph.i

if.end53.i.for.inc71.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc71.i

land.rhs.lr.ph.i:                                 ; preds = %if.end53.i
  %arrayidx65.i = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 8, i32 %mode.0135.i
  br label %land.rhs.i

for.cond57.i:                                     ; preds = %for.body62.i
  %incdec.ptr.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.0132.i, i32 1
  %cmp60.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp60.i, label %for.cond57.i.land.rhs.i_crit_edge, label %for.cond57.i.for.inc71.i_crit_edge

for.cond57.i.for.inc71.i_crit_edge:               ; preds = %for.cond57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc71.i

for.cond57.i.land.rhs.i_crit_edge:                ; preds = %for.cond57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.cond57.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %tx_queue.0132.i = phi ptr [ %tx_queue56.i, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %for.cond57.i.land.rhs.i_crit_edge ]
  %109 = ptrtoint ptr %tx_queue.0132.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tx_queue.0132.i, align 128
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %110, i32 0, i32 69
  %111 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %net_dev.i.i, align 4
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 140
  %113 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %114)
  %cmp.i123.i = icmp slt i16 %114, 2
  br i1 %cmp.i123.i, label %ef4_tx_queue_used.exit.i, label %land.rhs.i.for.body62.i_crit_edge

land.rhs.i.for.body62.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body62.i

ef4_tx_queue_used.exit.i:                         ; preds = %land.rhs.i
  %queue.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0132.i, i32 0, i32 1
  %115 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %queue.i.i, align 4
  %and.i.i = and i32 %116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i, label %ef4_tx_queue_used.exit.i.for.body62.i_crit_edge, label %ef4_tx_queue_used.exit.i.for.inc71.i_crit_edge

ef4_tx_queue_used.exit.i.for.inc71.i_crit_edge:   ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc71.i

ef4_tx_queue_used.exit.i.for.body62.i_crit_edge:  ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body62.i

for.body62.i:                                     ; preds = %ef4_tx_queue_used.exit.i.for.body62.i_crit_edge, %land.rhs.i.for.body62.i_crit_edge
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0132.i, i32 0, i32 1
  %117 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %queue.i, align 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = ptrtoint ptr %offload_csum.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %offload_csum.i, align 4
  %call66.i = tail call fastcc i32 @ef4_test_loopback(ptr noundef %tx_queue.0132.i, ptr noundef %arrayidx65.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %for.cond57.i, label %for.body62.i.out.i_crit_edge

for.body62.i.out.i_crit_edge:                     ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.inc71.i:                                      ; preds = %ef4_tx_queue_used.exit.i.for.inc71.i_crit_edge, %for.cond57.i.for.inc71.i_crit_edge, %if.end53.i.for.inc71.i_crit_edge, %for.body.i.for.inc71.i_crit_edge
  %inc.i = add nuw nsw i32 %mode.0135.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %for.inc71.i.out.i_crit_edge, label %for.inc71.i.for.body.i_crit_edge

for.inc71.i.for.body.i_crit_edge:                 ; preds = %for.inc71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc71.i.out.i_crit_edge:                      ; preds = %for.inc71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

out.i:                                            ; preds = %for.inc71.i.out.i_crit_edge, %for.body62.i.out.i_crit_edge, %cond.end48.i, %do.body36.i.out.i_crit_edge, %cond.end.i, %do.body22.i.out.i_crit_edge
  %rc.3.i = phi i32 [ %call18.i, %cond.end.i ], [ %call18.i, %do.body22.i.out.i_crit_edge ], [ -110, %cond.end48.i ], [ -110, %do.body36.i.out.i_crit_edge ], [ %call66.i, %for.body62.i.out.i_crit_edge ], [ 0, %for.inc71.i.out.i_crit_edge ]
  %122 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %call7.i.i.i, align 8
  %123 = ptrtoint ptr %loopback_selftest.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %loopback_selftest.i, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  tail call void @arm_heavy_mb() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.3.i)
  %cmp78.i = icmp eq i32 %rc.3.i, -1
  %spec.select190 = select i1 %cmp78.i, i32 0, i32 %rc.3.i
  br label %ef4_test_loopbacks.exit

ef4_test_loopbacks.exit:                          ; preds = %out.i, %.ef4_test_loopbacks.exit_crit_edge
  %retval.0.i176 = phi i32 [ -12, %.ef4_test_loopbacks.exit_crit_edge ], [ %spec.select190, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i176)
  %tobool59.not = icmp ne i32 %retval.0.i176, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool61.not = icmp eq i32 %56, 0
  %or.cond136 = select i1 %tobool59.not, i1 %tobool61.not, i1 false
  %rc_test.6 = select i1 %or.cond136, i32 %retval.0.i176, i32 %56
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #10
  %124 = ptrtoint ptr %phy_mode2 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %3, ptr %phy_mode2, align 16
  %125 = ptrtoint ptr %loopback_mode1 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %1, ptr %loopback_mode1, align 4
  %call67 = tail call i32 @__ef4_reconfigure_port(ptr noundef %efx) #10
  tail call void @mutex_unlock(ptr noundef %mac_lock) #10
  %126 = ptrtoint ptr %net_dev.i148 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %net_dev.i148, align 4
  tail call void @netif_device_attach(ptr noundef %127) #10
  br label %cleanup

cleanup:                                          ; preds = %ef4_test_loopbacks.exit, %do.end, %if.then6.i, %do.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %ef4_test_nvram.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %do.end ], [ %rc_test.6, %ef4_test_loopbacks.exit ], [ %rc_test.3, %ef4_test_nvram.exit.cleanup_crit_edge ], [ 0, %if.then26.cleanup_crit_edge ], [ %call.i145, %if.then6.i ], [ %call.i145, %do.body.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_selftest_async_cancel(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %selftest_work = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 61
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %selftest_work) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_test_interrupts(ptr noundef %efx, ptr nocapture noundef writeonly %tests) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_test_interrupts.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_test_interrupts, %if.then5)) #10
          to label %do.end8 [label %if.then5], !srcloc !101

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_test_interrupts.__UNIQUE_ID_ddebug522, ptr noundef %3, ptr noundef nonnull @.str.14) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %interrupt = getelementptr inbounds %struct.ef4_self_tests, ptr %tests, i32 0, i32 2
  %4 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %interrupt, align 4
  %call9 = tail call i32 @ef4_nic_irq_test_start(ptr noundef %efx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call9)
  %cmp = icmp eq i32 %call9, -524
  br i1 %cmp, label %do.body11, label %if.end37

do.body11:                                        ; preds = %do.end8
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and13 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body11.do.end35_crit_edge, label %do.body16

do.body11.do.end35_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

do.body16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_test_interrupts.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_test_interrupts, %if.then28)) #10
          to label %do.end35 [label %if.then28], !srcloc !101

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev29 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %7 = ptrtoint ptr %net_dev29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_test_interrupts.__UNIQUE_ID_ddebug523, ptr noundef %8, ptr noundef nonnull @.str.15) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then28, %do.body16, %do.body11.do.end35_crit_edge
  %9 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %interrupt, align 4
  br label %cleanup

if.end37:                                         ; preds = %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and40 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.do.end62_crit_edge, label %do.body43

if.end37.do.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

do.body43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_test_interrupts.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_test_interrupts, %if.then55)) #10
          to label %do.end62 [label %if.then55], !srcloc !101

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev56 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %13 = ptrtoint ptr %net_dev56 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_test_interrupts.__UNIQUE_ID_ddebug524, ptr noundef %14, ptr noundef nonnull @.str.16) #10
  br label %do.end62

do.end62:                                         ; preds = %if.then55, %do.body43, %if.end37.do.end62_crit_edge
  %last_irq_cpu.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 104
  %add.neg = sub i32 -100, %10
  br label %do.body63

do.body63:                                        ; preds = %if.end68.do.body63_crit_edge, %do.end62
  %wait.0 = phi i32 [ 1, %do.end62 ], [ %mul, %if.end68.do.body63_crit_edge ]
  %call64 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %wait.0) #10
  %15 = ptrtoint ptr %last_irq_cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %last_irq_cpu.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp66 = icmp sgt i32 %16, -1
  br i1 %cmp66, label %do.body81, label %if.end68

if.end68:                                         ; preds = %do.body63
  %mul = shl i32 %wait.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %17
  %cmp70 = icmp slt i32 %sub, 0
  br i1 %cmp70, label %if.end68.do.body63_crit_edge, label %do.body72

if.end68.do.body63_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

do.body72:                                        ; preds = %if.end68
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 8
  %and74 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body72.cleanup_crit_edge, label %if.then76

do.body72.cleanup_crit_edge:                      ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then76:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev77 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %20 = ptrtoint ptr %net_dev77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev77, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.17) #13
  br label %cleanup

do.body81:                                        ; preds = %do.body63
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and83 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body81.do.end107_crit_edge, label %do.body86

do.body81.do.end107_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end107

do.body86:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_test_interrupts.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_test_interrupts, %if.then98)) #10
          to label %do.end107 [label %if.then98], !srcloc !101

if.then98:                                        ; preds = %do.body86
  %net_dev99 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %24 = ptrtoint ptr %net_dev99 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev99, align 4
  %interrupt_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 14
  %26 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %interrupt_mode, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp100 = icmp ult i32 %27, 3
  br i1 %cmp100, label %cond.true, label %if.then98.cond.end_crit_edge

if.then98.cond.end_crit_edge:                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [3 x ptr], ptr @ef4_interrupt_mode_names, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then98.cond.end_crit_edge
  %cond = phi ptr [ %29, %cond.true ], [ @.str.1, %if.then98.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_test_interrupts.__UNIQUE_ID_ddebug525, ptr noundef %25, ptr noundef nonnull @.str.18, ptr noundef %cond, i32 noundef %16) #10
  br label %do.end107

do.end107:                                        ; preds = %cond.end, %do.body86, %do.body81.do.end107_crit_edge
  %30 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %interrupt, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %if.then76, %do.body72.cleanup_crit_edge, %do.end35
  %retval.0 = phi i32 [ 0, %do.end35 ], [ 0, %do.end107 ], [ -110, %if.then76 ], [ -110, %do.body72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_test_eventq_irq(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %tests) unnamed_addr #0 align 64 {
entry:
  %read_ptr = alloca [32 x i32], align 4
  %napi_ran = alloca i32, align 4
  %dma_pend = alloca i32, align 4
  %int_pend = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %read_ptr) #10
  %0 = call ptr @memset(ptr %read_ptr, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %napi_ran) #10
  %1 = ptrtoint ptr %napi_ran to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %napi_ran, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_pend) #10
  %2 = ptrtoint ptr %dma_pend to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dma_pend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_pend) #10
  %3 = ptrtoint ptr %int_pend to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %int_pend, align 4
  %channel1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %4 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel1, align 4
  %tobool.not220 = icmp eq ptr %5, null
  br i1 %tobool.not220, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.0221 = phi ptr [ %5, %for.body.lr.ph ], [ %18, %cond.end.for.body_crit_edge ]
  %eventq_read_ptr = getelementptr inbounds %struct.ef4_channel, ptr %channel.0221, i32 0, i32 12
  %6 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eventq_read_ptr, align 4
  %channel2 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0221, i32 0, i32 1
  %8 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel2, align 4
  %arrayidx3 = getelementptr [32 x i32], ptr %read_ptr, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx3, align 4
  call void @_set_bit(i32 noundef %9, ptr noundef nonnull %dma_pend) #10
  %11 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel2, align 4
  call void @_set_bit(i32 noundef %12, ptr noundef nonnull %int_pend) #10
  call void @ef4_nic_event_test_start(ptr noundef nonnull %channel.0221) #10
  %13 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel2, align 4
  %add = add i32 %14, 1
  %15 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp = icmp ult i32 %add, %16
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx10 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx10, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %n_channels37 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  %add11.neg = sub i32 -100, %19
  br label %do.body12

do.body12:                                        ; preds = %land.rhs.do.body12_crit_edge, %for.end
  %wait.0 = phi i32 [ 1, %for.end ], [ %mul, %land.rhs.do.body12_crit_edge ]
  %call = call i32 @schedule_timeout_uninterruptible(i32 noundef %wait.0) #10
  %20 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %channel1, align 4
  %tobool16.not222 = icmp eq ptr %21, null
  br i1 %tobool16.not222, label %do.body12.for.end47_crit_edge, label %do.body12.for.body17_crit_edge

do.body12.for.body17_crit_edge:                   ; preds = %do.body12
  br label %for.body17

do.body12.for.end47_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end47

for.body17:                                       ; preds = %cond.end45.for.body17_crit_edge, %do.body12.for.body17_crit_edge
  %channel.1223 = phi ptr [ %41, %cond.end45.for.body17_crit_edge ], [ %21, %do.body12.for.body17_crit_edge ]
  call void @ef4_stop_eventq(ptr noundef nonnull %channel.1223) #10
  %eventq_read_ptr18 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1223, i32 0, i32 12
  %22 = ptrtoint ptr %eventq_read_ptr18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eventq_read_ptr18, align 4
  %channel19 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1223, i32 0, i32 1
  %24 = ptrtoint ptr %channel19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel19, align 4
  %arrayidx20 = getelementptr [32 x i32], ptr %read_ptr, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp21.not = icmp eq i32 %23, %27
  br i1 %cmp21.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %25, ptr noundef nonnull %napi_ran) #10
  %28 = ptrtoint ptr %channel19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel19, align 4
  call void @_clear_bit(i32 noundef %29, ptr noundef nonnull %dma_pend) #10
  br label %if.end33.sink.split

if.else:                                          ; preds = %for.body17
  %call25 = call zeroext i1 @ef4_nic_event_present(ptr noundef nonnull %channel.1223) #10
  br i1 %call25, label %if.then26, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %channel19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel19, align 4
  call void @_clear_bit(i32 noundef %31, ptr noundef nonnull %dma_pend) #10
  br label %if.end

if.end:                                           ; preds = %if.then26, %if.else.if.end_crit_edge
  %event_test_cpu.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1223, i32 0, i32 13
  %32 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %event_test_cpu.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp29 = icmp sgt i32 %33, -1
  br i1 %cmp29, label %if.end.if.end33.sink.split_crit_edge, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end.if.end33.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.end.if.end33.sink.split_crit_edge, %if.then
  %34 = ptrtoint ptr %channel19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel19, align 4
  call void @_clear_bit(i32 noundef %35, ptr noundef nonnull %int_pend) #10
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.end.if.end33_crit_edge
  call void @ef4_start_eventq(ptr noundef nonnull %channel.1223) #10
  %36 = ptrtoint ptr %channel19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel19, align 4
  %add36 = add i32 %37, 1
  %38 = ptrtoint ptr %n_channels37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %39)
  %cmp38 = icmp ult i32 %add36, %39
  br i1 %cmp38, label %cond.end45, label %if.end33.for.end47_crit_edge

if.end33.for.end47_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end47

cond.end45:                                       ; preds = %if.end33
  %arrayidx43 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add36
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx43, align 4
  %tobool16.not = icmp eq ptr %41, null
  br i1 %tobool16.not, label %cond.end45.for.end47_crit_edge, label %cond.end45.for.body17_crit_edge

cond.end45.for.body17_crit_edge:                  ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

cond.end45.for.end47_crit_edge:                   ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end47

for.end47:                                        ; preds = %cond.end45.for.end47_crit_edge, %if.end33.for.end47_crit_edge, %do.body12.for.end47_crit_edge
  %mul = shl i32 %wait.0, 1
  %42 = ptrtoint ptr %dma_pend to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool49.not = icmp eq i32 %43, 0
  br i1 %tobool49.not, label %lor.lhs.false, label %for.end47.land.rhs_crit_edge

for.end47.land.rhs_crit_edge:                     ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false:                                    ; preds = %for.end47
  %44 = ptrtoint ptr %int_pend to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %int_pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool50.not = icmp eq i32 %45, 0
  br i1 %tobool50.not, label %lor.lhs.false.do.end52_crit_edge, label %lor.lhs.false.land.rhs_crit_edge

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false.do.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %for.end47.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add11.neg, %46
  %cmp51 = icmp slt i32 %sub, 0
  br i1 %cmp51, label %land.rhs.do.body12_crit_edge, label %land.rhs.do.end52_crit_edge

land.rhs.do.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end52

land.rhs.do.body12_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

do.end52:                                         ; preds = %land.rhs.do.end52_crit_edge, %lor.lhs.false.do.end52_crit_edge
  %47 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %channel1, align 4
  %tobool56.not225 = icmp eq ptr %48, null
  br i1 %tobool56.not225, label %do.end52.for.end150_crit_edge, label %for.body57.lr.ph

do.end52.for.end150_crit_edge:                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end150

for.body57.lr.ph:                                 ; preds = %do.end52
  %msg_enable101 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %net_dev105 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  br label %for.body57

for.body57:                                       ; preds = %cond.end148.for.body57_crit_edge, %for.body57.lr.ph
  %channel.2226 = phi ptr [ %48, %for.body57.lr.ph ], [ %94, %cond.end148.for.body57_crit_edge ]
  %channel58 = getelementptr inbounds %struct.ef4_channel, ptr %channel.2226, i32 0, i32 1
  %49 = ptrtoint ptr %channel58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel58, align 4
  %51 = ptrtoint ptr %dma_pend to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dma_pend, align 4
  %and.i = and i32 %50, 31
  %53 = shl nuw i32 1, %and.i
  %54 = and i32 %53, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool60.not = icmp eq i32 %54, 0
  %55 = ptrtoint ptr %int_pend to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %int_pend, align 4
  %57 = and i32 %56, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool63.not = icmp eq i32 %57, 0
  %cond67 = select i1 %tobool60.not, i32 1, i32 -1
  %arrayidx69 = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 3, i32 %50
  %58 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond67, ptr %arrayidx69, align 4
  %cond71 = select i1 %tobool63.not, i32 1, i32 -1
  %59 = ptrtoint ptr %channel58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel58, align 4
  %arrayidx73 = getelementptr %struct.ef4_self_tests, ptr %tests, i32 0, i32 4, i32 %60
  %61 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond71, ptr %arrayidx73, align 4
  %62 = select i1 %tobool60.not, i1 %tobool63.not, i1 false
  %63 = ptrtoint ptr %msg_enable101 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_enable101, align 8
  %and = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool78.not = icmp eq i32 %and, 0
  br i1 %62, label %do.body77, label %do.body100

do.body77:                                        ; preds = %for.body57
  br i1 %tobool78.not, label %do.body77.if.end136_crit_edge, label %do.body80

do.body77.if.end136_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

do.body80:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_test_eventq_irq.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_test_eventq_irq, %if.then87)) #10
          to label %if.end136 [label %if.then87], !srcloc !101

if.then87:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %net_dev105 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net_dev105, align 4
  %67 = ptrtoint ptr %channel58 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %channel58, align 4
  %69 = ptrtoint ptr %napi_ran to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %napi_ran, align 4
  %and.i216 = and i32 %68, 31
  %71 = shl nuw i32 1, %and.i216
  %72 = and i32 %71, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool91.not = icmp eq i32 %72, 0
  %cond92 = select i1 %tobool91.not, ptr @.str.25, ptr @.str.24
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_test_eventq_irq.__UNIQUE_ID_ddebug527, ptr noundef %66, ptr noundef nonnull @.str.23, i32 noundef %68, ptr noundef nonnull %cond92) #10
  br label %if.end136

do.body100:                                       ; preds = %for.body57
  br i1 %tobool78.not, label %do.body100.do.end109_crit_edge, label %if.then104

do.body100.do.end109_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end109

if.then104:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %net_dev105 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %net_dev105, align 4
  %75 = ptrtoint ptr %channel58 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %channel58, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %74, ptr noundef nonnull @.str.26, i32 noundef %76) #13
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %do.body100.do.end109_crit_edge
  br i1 %tobool63.not, label %do.body112, label %do.end109.if.end122_crit_edge

do.end109.if.end122_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

do.body112:                                       ; preds = %do.end109
  %77 = ptrtoint ptr %msg_enable101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable101, align 8
  %and114 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body112.if.end122_crit_edge, label %if.then116

do.body112.if.end122_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then116:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %net_dev105 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev105, align 4
  %81 = ptrtoint ptr %channel58 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %channel58, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.27, i32 noundef %82) #13
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %do.body112.if.end122_crit_edge, %do.end109.if.end122_crit_edge
  br i1 %tobool60.not, label %do.body125, label %if.end122.if.end136_crit_edge

if.end122.if.end136_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

do.body125:                                       ; preds = %if.end122
  %83 = ptrtoint ptr %msg_enable101 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %msg_enable101, align 8
  %and127 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body125.if.end136_crit_edge, label %if.then129

do.body125.if.end136_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then129:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %net_dev105 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %net_dev105, align 4
  %87 = ptrtoint ptr %channel58 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %channel58, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %86, ptr noundef nonnull @.str.28, i32 noundef %88) #13
  br label %if.end136

if.end136:                                        ; preds = %if.then129, %do.body125.if.end136_crit_edge, %if.end122.if.end136_crit_edge, %if.then87, %do.body80, %do.body77.if.end136_crit_edge
  %89 = ptrtoint ptr %channel58 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %channel58, align 4
  %add139 = add i32 %90, 1
  %91 = ptrtoint ptr %n_channels37 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %n_channels37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add139, i32 %92)
  %cmp141 = icmp ult i32 %add139, %92
  br i1 %cmp141, label %cond.end148, label %if.end136.for.end150_crit_edge

if.end136.for.end150_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end150

cond.end148:                                      ; preds = %if.end136
  %arrayidx146 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add139
  %93 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx146, align 4
  %tobool56.not = icmp eq ptr %94, null
  br i1 %tobool56.not, label %cond.end148.for.end150_crit_edge, label %cond.end148.for.body57_crit_edge

cond.end148.for.body57_crit_edge:                 ; preds = %cond.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body57

cond.end148.for.end150_crit_edge:                 ; preds = %cond.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end150

for.end150:                                       ; preds = %cond.end148.for.end150_crit_edge, %if.end136.for.end150_crit_edge, %do.end52.for.end150_crit_edge
  %95 = ptrtoint ptr %dma_pend to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool151.not = icmp eq i32 %96, 0
  br i1 %tobool151.not, label %lor.rhs, label %for.end150.lor.end_crit_edge

for.end150.lor.end_crit_edge:                     ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %int_pend to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %int_pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool152.not = icmp eq i32 %98, 0
  %phi.sel = select i1 %tobool152.not, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end150.lor.end_crit_edge
  %99 = phi i32 [ -110, %for.end150.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_pend) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_pend) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %napi_ran) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %read_ptr) #10
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ef4_reconfigure_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_selftest_async_start(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 4
  %tobool.not13 = icmp eq ptr %1, null
  br i1 %tobool.not13, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.014 = phi ptr [ %1, %for.body.lr.ph ], [ %7, %cond.end.for.body_crit_edge ]
  tail call void @ef4_nic_event_test_start(ptr noundef nonnull %channel.014) #10
  %channel2 = getelementptr inbounds %struct.ef4_channel, ptr %channel.014, i32 0, i32 1
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %add = add i32 %3, 1
  %4 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ult i32 %add, %5
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx6 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %selftest_work = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %selftest_work, i32 noundef 100) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_nic_event_test_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_selftest_async_work(ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr i8, ptr %data, i32 -1852
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 4
  %tobool.not45 = icmp eq ptr %1, null
  br i1 %tobool.not45, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %msg_enable6 = getelementptr i8, ptr %data, i32 -1864
  %net_dev17 = getelementptr i8, ptr %data, i32 252
  %n_channels = getelementptr i8, ptr %data, i32 -652
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.046 = phi ptr [ %1, %for.body.lr.ph ], [ %19, %cond.end.for.body_crit_edge ]
  %event_test_cpu.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.046, i32 0, i32 13
  %2 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %event_test_cpu.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  %4 = ptrtoint ptr %msg_enable6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable6, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %do.body5

do.body:                                          ; preds = %for.body
  br i1 %tobool2.not, label %do.body.for.inc_crit_edge, label %if.then3

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %net_dev17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev17, align 4
  %channel4 = getelementptr inbounds %struct.ef4_channel, ptr %channel.046, i32 0, i32 1
  %8 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel4, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %9) #13
  br label %for.inc

do.body5:                                         ; preds = %for.body
  br i1 %tobool2.not, label %do.body5.for.inc_crit_edge, label %do.body10

do.body5.for.inc_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_selftest_async_work.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_selftest_async_work, %if.then16)) #10
          to label %for.inc [label %if.then16], !srcloc !101

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %net_dev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev17, align 4
  %channel18 = getelementptr inbounds %struct.ef4_channel, ptr %channel.046, i32 0, i32 1
  %12 = ptrtoint ptr %channel18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_selftest_async_work.__UNIQUE_ID_ddebug533, ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef %13, i32 noundef %3) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %do.body10, %do.body5.for.inc_crit_edge, %if.then3, %do.body.for.inc_crit_edge
  %channel26 = getelementptr inbounds %struct.ef4_channel, ptr %channel.046, i32 0, i32 1
  %14 = ptrtoint ptr %channel26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel26, align 4
  %add = add i32 %15, 1
  %16 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp27 = icmp ult i32 %add, %17
  br i1 %cmp27, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %arrayidx31 = getelementptr [32 x ptr], ptr %channel1, i32 0, i32 %add
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx31, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_nic_irq_test_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_stop_eventq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ef4_nic_event_present(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_start_eventq(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_test_loopback(ptr noundef %tx_queue, ptr nocapture noundef %lb_tests) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %loopback_selftest = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 90
  %2 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %loopback_selftest, align 128
  %txq_entries = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 27
  %packet_count = getelementptr inbounds %struct.ef4_loopback_state, ptr %3, i32 0, i32 1
  %skbs140 = getelementptr inbounds %struct.ef4_loopback_state, ptr %3, i32 0, i32 2
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 88
  br label %for.body

for.cond:                                         ; preds = %if.end33
  %inc = add nuw nsw i32 %i.0147, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.body46, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0147 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txq_entries, align 16
  %div = udiv i32 %5, 3
  %shl = shl i32 %i.0147, 2
  %shl2 = shl nuw i32 1, %shl
  %6 = tail call i32 @llvm.smin.i32(i32 %shl2, i32 %div)
  %7 = ptrtoint ptr %packet_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %packet_count, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #10
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !94

kcalloc.exit.thread:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %skbs140 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %skbs140, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.body
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #16
  %12 = ptrtoint ptr %skbs140 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %skbs140, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %3, align 4
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 8
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end.do.end27_crit_edge, label %do.body10

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_test_loopback.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_test_loopback, %if.then16)) #10
          to label %do.end27 [label %if.then16], !srcloc !101

if.then16:                                        ; preds = %do.body10
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue, align 4
  %20 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %loopback_mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %22 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %22)
  %cmp17 = icmp ult i32 %21, %22
  br i1 %cmp17, label %cond.true18, label %if.then16.cond.end21_crit_edge

if.then16.cond.end21_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end21

cond.true18:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %21
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true18, %if.then16.cond.end21_crit_edge
  %cond22 = phi ptr [ %24, %cond.true18 ], [ @.str.1, %if.then16.cond.end21_crit_edge ]
  %25 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %packet_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_test_loopback.__UNIQUE_ID_ddebug531, ptr noundef %17, ptr noundef nonnull @.str.35, i32 noundef %19, ptr noundef %cond22, i32 noundef %26) #10
  br label %do.end27

do.end27:                                         ; preds = %cond.end21, %do.body10, %if.end.do.end27_crit_edge
  %27 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %loopback_selftest, align 128
  %29 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev, align 4
  %payload2.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr.i, align 64
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = ptrtoint ptr %payload2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %payload2.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 0, i32 0, i32 4
  %38 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i.i, align 2
  %h_source.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 0, i32 1
  %39 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1004315, ptr %h_source.i, align 4
  %add.ptr1.i39.i = getelementptr %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %add.ptr1.i39.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 6939, ptr %add.ptr1.i39.i, align 2
  %h_proto.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 0, i32 2
  %41 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 2048, ptr %h_proto.i, align 1
  %ip.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 1
  %daddr.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 1, i32 9
  %42 = ptrtoint ptr %daddr.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 2130706433, ptr %daddr.i, align 1
  %check.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 1, i32 7
  %43 = ptrtoint ptr %check.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 -8531, ptr %check.i, align 1
  %tot_len.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 1, i32 2
  %44 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 94, ptr %tot_len.i, align 1
  %45 = ptrtoint ptr %ip.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 69, ptr %ip.i, align 1
  %protocol.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 1, i32 6
  %46 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 17, ptr %protocol.i, align 1
  %udp.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 2
  %47 = ptrtoint ptr %udp.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 0, ptr %udp.i, align 1
  %len.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 2, i32 2
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 74, ptr %len.i, align 1
  %check15.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 2, i32 3
  %49 = ptrtoint ptr %check15.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 0, ptr %check15.i, align 1
  %iteration.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 3
  %50 = ptrtoint ptr %iteration.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %iteration.i, align 1
  %add.i = add i16 %51, 1
  store i16 %add.i, ptr %iteration.i, align 1
  %msg.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 6, i32 4
  %52 = call ptr @memcpy(ptr %msg.i, ptr @payload_msg, i32 55)
  %rx_good.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_good.i, i32 noundef 4) #10
  %53 = ptrtoint ptr %rx_good.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %rx_good.i, align 4
  %rx_bad.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %28, i32 0, i32 5
  %call.i.i38.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_bad.i, i32 noundef 4) #10
  %54 = ptrtoint ptr %rx_bad.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %rx_bad.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %55 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_queue, align 128
  %loopback_selftest.i121 = getelementptr inbounds %struct.ef4_nic, ptr %56, i32 0, i32 90
  %57 = ptrtoint ptr %loopback_selftest.i121 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %loopback_selftest.i121, align 128
  %packet_count.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %packet_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp52.i = icmp sgt i32 %60, 0
  br i1 %cmp52.i, label %for.body.lr.ph.i, label %do.end27.ef4_begin_loopback.exit_crit_edge

do.end27.ef4_begin_loopback.exit_crit_edge:       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_begin_loopback.exit

for.body.lr.ph.i:                                 ; preds = %do.end27
  %skbs.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %58, i32 0, i32 2
  %payload4.i = getelementptr inbounds %struct.ef4_loopback_state, ptr %58, i32 0, i32 6
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %56, i32 0, i32 69
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.053.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 108, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.i.ef4_begin_loopback.exit.loopexit_crit_edge, label %if.end.i

for.body.i.ef4_begin_loopback.exit.loopexit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_begin_loopback.exit.loopexit

if.end.i:                                         ; preds = %for.body.i
  %61 = ptrtoint ptr %skbs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %skbs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %62, i32 %i.053.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !103
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !94

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %65 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %.not.i.i.i.i.i = icmp sgt i32 %65, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !98

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 108) #10
  %66 = call ptr @memcpy(ptr %call3.i, ptr %payload4.i, i32 108)
  %shl.i = shl i32 %i.053.i, 2
  %or.i = or i32 %shl.i, 2130706433
  %saddr.i = getelementptr inbounds %struct.ef4_loopback_payload, ptr %call3.i, i32 0, i32 1, i32 8
  %67 = ptrtoint ptr %saddr.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %or.i, ptr %saddr.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  %68 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #10
  tail call void @netif_tx_lock(ptr noundef %69) #10
  %call8.i = tail call i32 @ef4_enqueue_skb(ptr noundef %tx_queue, ptr noundef nonnull %call.i.i) #10
  %70 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net_dev.i, align 4
  tail call void @netif_tx_unlock(ptr noundef %71) #10
  tail call fastcc void @local_bh_enable() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp10.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp10.not.i, label %for.inc.i, label %do.body12.i

do.body12.i:                                      ; preds = %skb_get.exit.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %56, i32 0, i32 20
  %72 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.end22.i_crit_edge, label %if.then14.i

do.body12.i.do.end22.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

if.then14.i:                                      ; preds = %do.body12.i
  %74 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net_dev.i, align 4
  %76 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %queue, align 4
  %add.i122 = add nuw nsw i32 %i.053.i, 1
  %78 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %packet_count.i, align 4
  %loopback_mode.i = getelementptr inbounds %struct.ef4_nic, ptr %56, i32 0, i32 88
  %80 = ptrtoint ptr %loopback_mode.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %loopback_mode.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %82 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %82)
  %cmp17.i = icmp ult i32 %81, %82
  br i1 %cmp17.i, label %cond.true.i, label %if.then14.i.cond.end.i_crit_edge

if.then14.i.cond.end.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19.i = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %81
  %83 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx19.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then14.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %84, %cond.true.i ], [ @.str.1, %if.then14.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %75, ptr noundef nonnull @.str.37, i32 noundef %77, i32 noundef %add.i122, i32 noundef %79, ptr noundef %cond.i) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %cond.end.i, %do.body12.i.do.end22.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %ef4_begin_loopback.exit

for.inc.i:                                        ; preds = %skb_get.exit.i
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %85 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %packet_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %86
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ef4_begin_loopback.exit.loopexit_crit_edge

for.inc.i.ef4_begin_loopback.exit.loopexit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ef4_begin_loopback.exit.loopexit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ef4_begin_loopback.exit.loopexit:                 ; preds = %for.inc.i.ef4_begin_loopback.exit.loopexit_crit_edge, %for.body.i.ef4_begin_loopback.exit.loopexit_crit_edge
  %retval.0.i123.ph = phi i32 [ -12, %for.body.i.ef4_begin_loopback.exit.loopexit_crit_edge ], [ 0, %for.inc.i.ef4_begin_loopback.exit.loopexit_crit_edge ]
  %87 = xor i1 %tobool.not.i, true
  br label %ef4_begin_loopback.exit

ef4_begin_loopback.exit:                          ; preds = %ef4_begin_loopback.exit.loopexit, %do.end22.i, %do.end27.ef4_begin_loopback.exit_crit_edge
  %tobool36.not = phi i1 [ true, %do.end27.ef4_begin_loopback.exit_crit_edge ], [ false, %do.end22.i ], [ %87, %ef4_begin_loopback.exit.loopexit ]
  %retval.0.i123 = phi i32 [ 0, %do.end27.ef4_begin_loopback.exit_crit_edge ], [ -32, %do.end22.i ], [ %retval.0.i123.ph, %ef4_begin_loopback.exit.loopexit ]
  tail call void @msleep(i32 noundef 1) #10
  %88 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %loopback_selftest, align 128
  %rx_good.i125 = getelementptr inbounds %struct.ef4_loopback_state, ptr %89, i32 0, i32 4
  %call.i.i.i126 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_good.i125, i32 noundef 4) #10
  %90 = ptrtoint ptr %rx_good.i125 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %rx_good.i125, align 4
  %packet_count.i127 = getelementptr inbounds %struct.ef4_loopback_state, ptr %89, i32 0, i32 1
  %92 = ptrtoint ptr %packet_count.i127 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %packet_count.i127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp.i128.not = icmp eq i32 %91, %93
  br i1 %cmp.i128.not, label %ef4_begin_loopback.exit.if.end33_crit_edge, label %if.then31

ef4_begin_loopback.exit.if.end33_crit_edge:       ; preds = %ef4_begin_loopback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %ef4_begin_loopback.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 1000) #10
  %94 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %loopback_selftest, align 128
  %rx_good.i130 = getelementptr inbounds %struct.ef4_loopback_state, ptr %95, i32 0, i32 4
  %call.i.i.i131 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_good.i130, i32 noundef 4) #10
  %96 = ptrtoint ptr %rx_good.i130 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %rx_good.i130, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %ef4_begin_loopback.exit.if.end33_crit_edge
  %call34 = tail call fastcc i32 @ef4_end_loopback(ptr noundef %tx_queue, ptr noundef %lb_tests)
  %98 = ptrtoint ptr %skbs140 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %skbs140, align 4
  tail call void @kfree(ptr noundef %99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool37.not = icmp eq i32 %call34, 0
  %or.cond = select i1 %tobool36.not, i1 %tobool37.not, i1 false
  br i1 %or.cond, label %for.cond, label %if.then38

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #10
  %call34.call28 = select i1 %tobool36.not, i32 %call34, i32 %retval.0.i123
  br label %cleanup

do.body46:                                        ; preds = %for.cond
  %100 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %msg_enable, align 8
  %and48 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body46.cleanup_crit_edge, label %do.body51

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body51:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_test_loopback.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_test_loopback, %if.then63)) #10
          to label %cleanup [label %if.then63], !srcloc !101

if.then63:                                        ; preds = %do.body51
  %102 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %net_dev, align 4
  %104 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %queue, align 4
  %106 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %loopback_mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %108 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %108)
  %cmp67 = icmp ult i32 %107, %108
  br i1 %cmp67, label %cond.true68, label %if.then63.cond.end72_crit_edge

if.then63.cond.end72_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end72

cond.true68:                                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx70 = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %107
  %109 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx70, align 4
  br label %cond.end72

cond.end72:                                       ; preds = %cond.true68, %if.then63.cond.end72_crit_edge
  %cond73 = phi ptr [ %110, %cond.true68 ], [ @.str.1, %if.then63.cond.end72_crit_edge ]
  %111 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %packet_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_test_loopback.__UNIQUE_ID_ddebug532, ptr noundef %103, ptr noundef nonnull @.str.36, i32 noundef %105, ptr noundef %cond73, i32 noundef %112) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end72, %do.body51, %do.body46.cleanup_crit_edge, %if.then38, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ %call34.call28, %if.then38 ], [ 0, %cond.end72 ], [ 0, %do.body46.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %do.body51 ], [ -12, %if.end7.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_end_loopback(ptr nocapture noundef readonly %tx_queue, ptr nocapture noundef %lb_tests) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %loopback_selftest = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 90
  %2 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %loopback_selftest, align 128
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  tail call fastcc void @local_bh_disable() #10
  tail call void @netif_tx_lock(ptr noundef %5) #10
  %packet_count = getelementptr inbounds %struct.ef4_loopback_state, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packet_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp103 = icmp sgt i32 %7, 0
  br i1 %cmp103, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %skbs = getelementptr inbounds %struct.ef4_loopback_state, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc3, %if.end.for.body_crit_edge ]
  %tx_done.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %tx_done.1, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skbs, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.0105
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.not = icmp eq i32 %13, 1
  %inc = zext i1 %cmp.i.not to i32
  %spec.select = add i32 %tx_done.0104, %inc
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body.if.end_crit_edge
  %tx_done.1 = phi i32 [ %tx_done.0104, %for.body.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @consume_skb(ptr noundef %11) #10
  %inc3 = add nuw nsw i32 %i.0105, 1
  %14 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %packet_count, align 4
  %cmp = icmp slt i32 %inc3, %15
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_done.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %tx_done.1, %if.end.for.end_crit_edge ]
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  tail call void @netif_tx_unlock(ptr noundef %17) #10
  tail call fastcc void @local_bh_enable() #10
  %rx_good5 = getelementptr inbounds %struct.ef4_loopback_state, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_good5, i32 noundef 4) #10
  %18 = ptrtoint ptr %rx_good5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %rx_good5, align 4
  %rx_bad7 = getelementptr inbounds %struct.ef4_loopback_state, ptr %3, i32 0, i32 5
  %call.i.i101 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_bad7, i32 noundef 4) #10
  %20 = ptrtoint ptr %rx_bad7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %rx_bad7, align 4
  %22 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %packet_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_done.0.lcssa, i32 %23)
  %cmp10.not = icmp eq i32 %tx_done.0.lcssa, %23
  br i1 %cmp10.not, label %for.end.if.end20_crit_edge, label %do.body

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.body:                                          ; preds = %for.end
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 8
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body.if.end20_crit_edge, label %if.then13

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then13:                                        ; preds = %do.body
  %26 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %28 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %queue, align 4
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 88
  %30 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %loopback_mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %32 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %32)
  %cmp16 = icmp ult i32 %31, %32
  br i1 %cmp16, label %cond.true, label %if.then13.cond.end_crit_edge

if.then13.cond.end_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %31
  %33 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx18, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then13.cond.end_crit_edge
  %cond = phi ptr [ %34, %cond.true ], [ @.str.1, %if.then13.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.38, i32 noundef %29, i32 noundef %tx_done.0.lcssa, i32 noundef %23, ptr noundef %cond) #13
  br label %if.end20

if.end20:                                         ; preds = %cond.end, %do.body.if.end20_crit_edge, %for.end.if.end20_crit_edge
  %rc.0 = phi i32 [ 0, %for.end.if.end20_crit_edge ], [ -110, %cond.end ], [ -110, %do.body.if.end20_crit_edge ]
  %35 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %packet_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %36)
  %cmp22.not = icmp eq i32 %19, %36
  br i1 %cmp22.not, label %if.end20.if.end52_crit_edge, label %do.body24

if.end20.if.end52_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.body24:                                        ; preds = %if.end20
  %msg_enable25 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %37 = ptrtoint ptr %msg_enable25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable25, align 8
  %and26 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body24.if.end52_crit_edge, label %do.body29

do.body24.if.end52_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.body29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_end_loopback.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_end_loopback, %if.then34)) #10
          to label %if.end52 [label %if.then34], !srcloc !101

if.then34:                                        ; preds = %do.body29
  %39 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev, align 4
  %queue36 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %41 = ptrtoint ptr %queue36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %queue36, align 4
  %43 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %packet_count, align 4
  %loopback_mode38 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 88
  %45 = ptrtoint ptr %loopback_mode38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %loopback_mode38, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ef4_loopback_mode_max to i32))
  %47 = load i32, ptr @ef4_loopback_mode_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %47)
  %cmp39 = icmp ult i32 %46, %47
  br i1 %cmp39, label %cond.true40, label %if.then34.cond.end44_crit_edge

if.then34.cond.end44_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end44

cond.true40:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx42 = getelementptr [0 x ptr], ptr @ef4_loopback_mode_names, i32 0, i32 %46
  %48 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx42, align 4
  br label %cond.end44

cond.end44:                                       ; preds = %cond.true40, %if.then34.cond.end44_crit_edge
  %cond45 = phi ptr [ %49, %cond.true40 ], [ @.str.1, %if.then34.cond.end44_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_end_loopback.__UNIQUE_ID_ddebug528, ptr noundef %40, ptr noundef nonnull @.str.40, i32 noundef %42, i32 noundef %19, i32 noundef %44, ptr noundef %cond45) #10
  br label %if.end52

if.end52:                                         ; preds = %cond.end44, %do.body29, %do.body24.if.end52_crit_edge, %if.end20.if.end52_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end20.if.end52_crit_edge ], [ -110, %cond.end44 ], [ -110, %do.body24.if.end52_crit_edge ], [ -110, %do.body29 ]
  %50 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %packet_count, align 4
  %queue54 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %52 = ptrtoint ptr %queue54 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %queue54, align 4
  %arrayidx55 = getelementptr [4 x i32], ptr %lb_tests, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx55, align 4
  %add = add i32 %55, %51
  store i32 %add, ptr %arrayidx55, align 4
  %56 = load i32, ptr %queue54, align 4
  %arrayidx58 = getelementptr %struct.ef4_loopback_self_tests, ptr %lb_tests, i32 0, i32 1, i32 %56
  %57 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx58, align 4
  %add59 = add i32 %58, %tx_done.0.lcssa
  store i32 %add59, ptr %arrayidx58, align 4
  %rx_good60 = getelementptr inbounds %struct.ef4_loopback_self_tests, ptr %lb_tests, i32 0, i32 2
  %59 = ptrtoint ptr %rx_good60 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_good60, align 4
  %add61 = add i32 %60, %19
  store i32 %add61, ptr %rx_good60, align 4
  %rx_bad62 = getelementptr inbounds %struct.ef4_loopback_self_tests, ptr %lb_tests, i32 0, i32 3
  %61 = ptrtoint ptr %rx_bad62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_bad62, align 4
  %add63 = add i32 %62, %21
  store i32 %add63, ptr %rx_bad62, align 4
  ret i32 %rc.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_enqueue_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !56, !58, !60, !61, !62, !64, !66, !68, !69, !70, !72, !73, !75, !77, !79, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 305, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 313, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 321, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 330, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 338, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 346, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 734, i32 4}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 796, i32 4}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 800, i32 4}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ef4_selftest_async_work.__UNIQUE_ID_ddebug533, !18, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 137, i32 2}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ef4_test_interrupts.__UNIQUE_ID_ddebug522, !24, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 142, i32 3}
!29 = !{ptr @ef4_test_interrupts.__UNIQUE_ID_ddebug523, !28, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 152, i32 2}
!32 = !{ptr @ef4_test_interrupts.__UNIQUE_ID_ddebug524, !31, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 161, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 165, i32 2}
!37 = !{ptr @ef4_test_interrupts.__UNIQUE_ID_ddebug525, !36, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 60, i32 26}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 61, i32 26}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 62, i32 26}
!44 = !{ptr @ef4_interrupt_mode_names, !45, !"ef4_interrupt_mode_names", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 59, i32 26}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 225, i32 4}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ef4_test_eventq_irq.__UNIQUE_ID_ddebug527, !47, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!50 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 234, i32 4}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 238, i32 5}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 243, i32 5}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 267, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 645, i32 4}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 653, i32 4}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 542, i32 3}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ef4_test_loopback.__UNIQUE_ID_ddebug531, !67, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 569, i32 2}
!72 = !{ptr @ef4_test_loopback.__UNIQUE_ID_ddebug532, !71, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!73 = distinct !{null, !74, !"payload_source", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 50, i32 17}
!75 = !{ptr @payload_msg, !76, !"payload_msg", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 54, i32 19}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 444, i32 4}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 495, i32 3}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sfc/falcon/selftest.c", i32 506, i32 3}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ef4_end_loopback.__UNIQUE_ID_ddebug528, !82, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{i64 2159136326, i64 2159136833, i64 2159136363, i64 2159136419, i64 2159136453, i64 2159136477, i64 2159136518, i64 2159136539, i64 2159136567, i64 2159136601}
!96 = !{i8 0, i8 2}
!97 = !{i64 2148502435, i64 2148502461, i64 2148502490, i64 2148502524, i64 2148502555, i64 2148502578}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2159159876, i64 2159160383, i64 2159159913, i64 2159159969, i64 2159160003, i64 2159160027, i64 2159160068, i64 2159160089, i64 2159160117, i64 2159160151}
!100 = !{i64 2159163137}
!101 = !{i64 2149059700, i64 2149059705, i64 2149059718, i64 2149059762, i64 2149059796, i64 2149059817}
!102 = !{i64 2159144819}
!103 = !{i64 2148503965, i64 2148503997, i64 2148504026, i64 2148504060, i64 2148504091, i64 2148504114}
!104 = !{i64 2159145294}
