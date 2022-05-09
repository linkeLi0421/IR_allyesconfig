; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_bcsp.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_bcsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.bcsp_struct = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, i8, i8, %struct.timer_list, ptr, i32, i32, i8, i16, i8, i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sk_buff_list = type { ptr, ptr }

@bcsp = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 1, ptr @.str, i32 0, i32 0, i32 0, ptr @bcsp_open, ptr @bcsp_close, ptr @bcsp_flush, ptr null, ptr null, ptr @bcsp_recv, ptr @bcsp_enqueue, ptr @bcsp_dequeue }, [44 x i8] zeroinitializer }, align 32
@__param_str_txcrc = internal constant [15 x i8] c"hci_uart.txcrc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@txcrc = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_txcrc = internal constant %struct.kernel_param { ptr @__param_str_txcrc, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @txcrc } }, section "__param", align 4
@__UNIQUE_ID_txcrctype490 = internal constant [29 x i8] c"hci_uart.parmtype=txcrc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_txcrc491 = internal constant [56 x i8] c"hci_uart.parm=txcrc:Transmit CRC with every BCSP packet\00", section ".modinfo", align 1
@__param_str_hciextn = internal constant [17 x i8] c"hci_uart.hciextn\00", align 1
@hciextn = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_hciextn = internal constant %struct.kernel_param { ptr @__param_str_hciextn, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @hciextn } }, section "__param", align 4
@__UNIQUE_ID_hciextntype492 = internal constant [31 x i8] c"hci_uart.parmtype=hciextn:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_hciextn493 = internal constant [63 x i8] c"hci_uart.parm=hciextn:Convert HCI Extensions into BCSP packets\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BCSP\00", [27 x i8] zeroinitializer }, align 32
@bcsp_open.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcsp_open\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/bluetooth/hci_bcsp.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hu %p\0A\00", [25 x i8] zeroinitializer }, align 32
@bcsp_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&bcsp->tbcsp)\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@bcsp_timed_event.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcsp_timed_event\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hu %p retransmitting %u pkts\0A\00", [34 x i8] zeroinitializer }, align 32
@bcsp_close.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.4, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcsp_close\00", [21 x i8] zeroinitializer }, align 32
@bcsp_flush.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.4, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcsp_flush\00", [21 x i8] zeroinitializer }, align 32
@bcsp_recv.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcsp_recv\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hu %p count %d rx_state %d rx_count %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Short BCSP packet\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error in BCSP hdr checksum\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Checksum failed: computed %04x received %04x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't allocate mem for new packet\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid byte %02x after esc byte\0A\00", [62 x i8] zeroinitializer }, align 32
@crc_table = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 0, i16 4225, i16 8450, i16 12675, i16 16900, i16 21125, i16 25350, i16 29575, i16 -31736, i16 -27511, i16 -23286, i16 -19061, i16 -14836, i16 -10611, i16 -6386, i16 -2161], [32 x i8] zeroinitializer }, align 32
@bcsp_complete_rx_pkt.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcsp_complete_rx_pkt\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Received seqno %u from card\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Out-of-order packet arrived, got %u expected %u\0A\00", [47 x i8] zeroinitializer }, align 32
@bcsp_complete_rx_pkt.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.21, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Request for pkt %u from card\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Packet for unknown channel (%u %s)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reliable\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unreliable\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Peer acked invalid packet\0A\00", [37 x i8] zeroinitializer }, align 32
@bcsp_pkt_cull.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcsp_pkt_cull\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Removing %u pkts out of %u, up to seqno %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Removed only %u out of %u pkts\0A\00", [32 x i8] zeroinitializer }, align 32
@__const.bcsp_handle_le_pkt.conf_pkt = private unnamed_addr constant [4 x i8] c"\AD\EF\AC\ED", align 1
@__const.bcsp_handle_le_pkt.sync_pkt = private unnamed_addr constant [4 x i8] c"\DA\DC\ED\ED", align 1
@bcsp_handle_le_pkt.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcsp_handle_le_pkt\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Found a LE conf pkt\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Found a LE sync pkt, card has reset\0A\00", [59 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Packet too long\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown packet type\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Could not dequeue pkt because alloc_skb failed\0A\00", [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcsp_prepare_pkt.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcsp_prepare_pkt\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"We request packet no %u to card\0A\00", [63 x i8] zeroinitializer }, align 32
@bcsp_prepare_pkt.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.37, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Sending packet with seqno %u\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 220, i64 221]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 4, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@___asan_gen_.50 = private unnamed_addr constant [5 x i8] c"bcsp\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 759, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"txcrc\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 35, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant [8 x i8] c"hciextn\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 36, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 761, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 714, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 726, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1984, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 696, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 744, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 343, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 585, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 592, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 608, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 630, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 675, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 465, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [10 x i8] c"crc_table\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 82, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 480, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 490, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 505, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 550, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 368, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 370, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 390, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 409, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 421, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 139, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 155, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 292, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 228, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [32 x i8] c"../drivers/bluetooth/hci_bcsp.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 232, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_hciextn493, ptr @__UNIQUE_ID_hciextntype492, ptr @__UNIQUE_ID_txcrc491, ptr @__UNIQUE_ID_txcrctype490, ptr @__param_hciextn, ptr @__param_txcrc, ptr @bcsp_deinit, ptr @bcsp, ptr @txcrc, ptr @hciextn, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bcsp_open.__key, ptr @.str.5, ptr @skb_queue_head_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @crc_table, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcsp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txcrc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hciextn to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcsp_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcsp_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @bcsp) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcsp_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @bcsp) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcsp_open(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_open.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_open, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_open.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.4, ptr noundef %hu) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #8
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %priv, align 4
  %hu7 = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %hu7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hu, ptr %hu7, align 4
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.anon.79, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 8
  %rel = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 1
  %lock.i24 = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i24, ptr noundef nonnull @.str.6, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %6 = ptrtoint ptr %rel to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rel, ptr %rel, align 8
  %prev.i.i25 = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rel, ptr %prev.i.i25, align 4
  %qlen.i.i26 = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %qlen.i.i26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i26, align 8
  %unrel = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 2
  %lock.i27 = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i27, ptr noundef nonnull @.str.6, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %9 = ptrtoint ptr %unrel to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %unrel, ptr %unrel, align 8
  %prev.i.i28 = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %unrel, ptr %prev.i.i28, align 4
  %qlen.i.i29 = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %qlen.i.i29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i29, align 8
  %tbcsp = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %tbcsp, ptr noundef nonnull @bcsp_timed_event, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @bcsp_open.__key) #5
  %rx_state = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rx_state, align 8
  %13 = load i8, ptr @txcrc, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.then12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %use_crc = getelementptr inbounds %struct.bcsp_struct, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %use_crc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %use_crc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcsp_close(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tbcsp = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 7
  %call = tail call i32 @del_timer_sync(ptr noundef %tbcsp) #5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_close.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_close, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_close.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.4, ptr noundef %hu) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @skb_queue_purge(ptr noundef %1) #5
  %rel = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %rel) #5
  %unrel = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %unrel) #5
  %rx_skb = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_skb, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %if.then6

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #5
  %5 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end.if.end9_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcsp_flush(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_flush.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_flush, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_flush.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.4, ptr noundef %hu) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcsp_recv(ptr noundef %hu, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_recv.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_recv, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rx_state = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rx_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_state, align 4
  %rx_count = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_recv.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.12, ptr noundef %hu, i32 noundef %count, i32 noundef %3, i32 noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not294 = icmp eq i32 %count, 0
  br i1 %tobool3.not294, label %do.end.cleanup_crit_edge, label %while.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.end
  %rx_count4 = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 3
  %rx_esc_state.i = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 10
  %rx_skb31.i = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 4
  %rx_state41.i = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 9
  %message_crc45.i = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %count.addr.0297 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %ptr.0295 = phi ptr [ %data, %while.body.lr.ph ], [ %ptr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %6 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_count4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end13, label %if.then6

if.then6:                                         ; preds = %while.body
  %8 = ptrtoint ptr %ptr.0295 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ptr.0295, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %9)
  %cmp = icmp eq i8 %9, -64
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13) #5
  %10 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_skb31.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #5
  %12 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rx_skb31.i, align 4
  %13 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %rx_state41.i, align 4
  %14 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rx_count4, align 4
  br label %if.end12

if.else:                                          ; preds = %if.then6
  %15 = ptrtoint ptr %rx_esc_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_esc_state.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.else.if.end12_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb8.i
  ]

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -37, i8 %9)
  %cond.i = icmp eq i8 %9, -37
  br i1 %cond.i, label %sw.bb1.i, label %sw.default.i

sw.bb1.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %rx_esc_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %rx_esc_state.i, align 4
  br label %if.end12

sw.default.i:                                     ; preds = %sw.bb.i
  %19 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_skb31.i, align 4
  %call.i.i = tail call ptr @skb_put(ptr noundef %20, i32 noundef 1) #5
  %21 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %9, ptr %call.i.i, align 1
  %22 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_skb31.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %28 = and i8 %27, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp.not.i = icmp eq i8 %28, 0
  br i1 %cmp.not.i, label %sw.default.i.if.end.i_crit_edge, label %land.lhs.true.i

sw.default.i.if.end.i_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.default.i
  %29 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_state41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp6.not.i = icmp eq i32 %30, 4
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %message_crc45.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %message_crc45.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %33 = lshr i16 %32, 4
  %conv2.i.i = zext i8 %9 to i32
  %xor.i.i = xor i32 %conv.i.i, %conv2.i.i
  %and.i.i = and i32 %xor.i.i, 15
  %arrayidx.i.i = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i.i, align 2
  %xor4.i.i = xor i16 %33, %35
  %36 = lshr i16 %xor4.i.i, 4
  %37 = lshr i32 %conv2.i.i, 4
  %38 = and i16 %xor4.i.i, 15
  %conv6.masked.i.i = zext i16 %38 to i32
  %and12.i.i = xor i32 %37, %conv6.masked.i.i
  %arrayidx13.i.i = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and12.i.i
  %39 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx13.i.i, align 2
  %xor15.i.i = xor i16 %36, %40
  store i16 %xor15.i.i, ptr %message_crc45.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %sw.default.i.if.end.i_crit_edge
  %41 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_count4, align 4
  %dec.i = add i32 %42, -1
  store i32 %dec.i, ptr %rx_count4, align 4
  br label %if.end12

sw.bb8.i:                                         ; preds = %if.else
  %43 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %9, label %sw.default50.i [
    i8 -36, label %sw.bb10.i
    i8 -35, label %sw.bb30.i
  ]

sw.bb10.i:                                        ; preds = %sw.bb8.i
  %44 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_skb31.i, align 4
  %call.i80.i = tail call ptr @skb_put(ptr noundef %45, i32 noundef 1) #5
  %46 = ptrtoint ptr %call.i80.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -64, ptr %call.i80.i, align 1
  %47 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_skb31.i, align 4
  %data14.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %data14.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data14.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %53 = and i8 %52, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp18.not.i = icmp eq i8 %53, 0
  br i1 %cmp18.not.i, label %sw.bb10.i.if.end26.i_crit_edge, label %land.lhs.true20.i

sw.bb10.i.if.end26.i_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

land.lhs.true20.i:                                ; preds = %sw.bb10.i
  %54 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_state41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp22.not.i = icmp eq i32 %55, 4
  br i1 %cmp22.not.i, label %land.lhs.true20.i.if.end26.i_crit_edge, label %if.then24.i

land.lhs.true20.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then24.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %message_crc45.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %message_crc45.i, align 2
  %58 = lshr i16 %57, 4
  %59 = and i16 %57, 15
  %and.i83.i = zext i16 %59 to i32
  %arrayidx.i84.i = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and.i83.i
  %60 = ptrtoint ptr %arrayidx.i84.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i84.i, align 2
  %xor4.i85.i = xor i16 %58, %61
  %62 = lshr i16 %xor4.i85.i, 4
  %63 = and i16 %xor4.i85.i, 15
  %64 = xor i16 %63, 12
  %and12.i87.i = zext i16 %64 to i32
  %arrayidx13.i88.i = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and12.i87.i
  %65 = ptrtoint ptr %arrayidx13.i88.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx13.i88.i, align 2
  %xor15.i89.i = xor i16 %62, %66
  store i16 %xor15.i89.i, ptr %message_crc45.i, align 2
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %land.lhs.true20.i.if.end26.i_crit_edge, %sw.bb10.i.if.end26.i_crit_edge
  %67 = ptrtoint ptr %rx_esc_state.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %rx_esc_state.i, align 4
  %68 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_count4, align 4
  %dec29.i = add i32 %69, -1
  store i32 %dec29.i, ptr %rx_count4, align 4
  br label %if.end12

sw.bb30.i:                                        ; preds = %sw.bb8.i
  %70 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_skb31.i, align 4
  %call.i90.i = tail call ptr @skb_put(ptr noundef %71, i32 noundef 1) #5
  %72 = ptrtoint ptr %call.i90.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -37, ptr %call.i90.i, align 1
  %73 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rx_skb31.i, align 4
  %data34.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 19
  %75 = ptrtoint ptr %data34.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data34.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %79 = and i8 %78, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp38.not.i = icmp eq i8 %79, 0
  br i1 %cmp38.not.i, label %sw.bb30.i.if.end46.i_crit_edge, label %land.lhs.true40.i

sw.bb30.i.if.end46.i_crit_edge:                   ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.i

land.lhs.true40.i:                                ; preds = %sw.bb30.i
  %80 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_state41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %81)
  %cmp42.not.i = icmp eq i32 %81, 4
  br i1 %cmp42.not.i, label %land.lhs.true40.i.if.end46.i_crit_edge, label %if.then44.i

land.lhs.true40.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.i

if.then44.i:                                      ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %message_crc45.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %message_crc45.i, align 2
  %84 = lshr i16 %83, 4
  %85 = and i16 %83, 15
  %86 = xor i16 %85, 11
  %and.i93.i = zext i16 %86 to i32
  %arrayidx.i94.i = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and.i93.i
  %87 = ptrtoint ptr %arrayidx.i94.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i94.i, align 2
  %xor4.i95.i = xor i16 %84, %88
  %89 = lshr i16 %xor4.i95.i, 4
  %90 = and i16 %xor4.i95.i, 15
  %91 = xor i16 %90, 13
  %and12.i97.i = zext i16 %91 to i32
  %arrayidx13.i98.i = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and12.i97.i
  %92 = ptrtoint ptr %arrayidx13.i98.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx13.i98.i, align 2
  %xor15.i99.i = xor i16 %89, %93
  store i16 %xor15.i99.i, ptr %message_crc45.i, align 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %land.lhs.true40.i.if.end46.i_crit_edge, %sw.bb30.i.if.end46.i_crit_edge
  %94 = ptrtoint ptr %rx_esc_state.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %rx_esc_state.i, align 4
  %95 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_count4, align 4
  %dec49.i = add i32 %96, -1
  store i32 %dec49.i, ptr %rx_count4, align 4
  br label %if.end12

sw.default50.i:                                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv9.i = zext i8 %9 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, i32 noundef %conv9.i) #5
  %97 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_skb31.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %98, i32 noundef 0) #5
  %99 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %rx_skb31.i, align 4
  %100 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %rx_state41.i, align 4
  %101 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %rx_count4, align 4
  br label %if.end12

if.end12:                                         ; preds = %sw.default50.i, %if.end46.i, %if.end26.i, %if.end.i, %sw.bb1.i, %if.else.if.end12_crit_edge, %if.then8
  %incdec.ptr = getelementptr i8, ptr %ptr.0295, i32 1
  %dec = add i32 %count.addr.0297, -1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %bt_skb_alloc.exit, %sw.bb163, %sw.epilog, %if.end152, %cond.end144, %if.else62, %if.then59, %if.end40, %if.then35, %if.end13.while.cond.backedge_crit_edge, %if.end12
  %ptr.0.be = phi ptr [ %incdec.ptr, %if.end12 ], [ %ptr.0295, %cond.end144 ], [ %ptr.0295, %if.end152 ], [ %ptr.0295, %if.then35 ], [ %ptr.0295, %if.end40 ], [ %ptr.0295, %if.else62 ], [ %ptr.0295, %if.then59 ], [ %ptr.0295, %if.end13.while.cond.backedge_crit_edge ], [ %incdec.ptr164, %sw.bb163 ], [ %ptr.0295, %bt_skb_alloc.exit ], [ %incdec.ptr159, %sw.epilog ]
  %count.addr.0.be = phi i32 [ %dec, %if.end12 ], [ %count.addr.0297, %cond.end144 ], [ %count.addr.0297, %if.end152 ], [ %count.addr.0297, %if.then35 ], [ %count.addr.0297, %if.end40 ], [ %count.addr.0297, %if.else62 ], [ %count.addr.0297, %if.then59 ], [ %count.addr.0297, %if.end13.while.cond.backedge_crit_edge ], [ %dec165, %sw.bb163 ], [ %count.addr.0297, %bt_skb_alloc.exit ], [ %dec160, %sw.epilog ]
  %tobool3.not = icmp eq i32 %count.addr.0.be, 0
  br i1 %tobool3.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %while.body
  %102 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_state41.i, align 4
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %103, label %if.end13.while.cond.backedge_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb52
    i32 4, label %cond.end.thread
    i32 0, label %sw.bb155
    i32 1, label %sw.bb161
  ]

if.end13.while.cond.backedge_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

sw.bb:                                            ; preds = %if.end13
  %105 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rx_skb31.i, align 4
  %data16 = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 19
  %107 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data16, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 1
  %arrayidx20 = getelementptr i8, ptr %108, i32 1
  %111 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx20, align 1
  %add = add i8 %112, %110
  %arrayidx24 = getelementptr i8, ptr %108, i32 2
  %113 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx24, align 1
  %add26 = add i8 %add, %114
  %neg = xor i8 %add26, -1
  %arrayidx31 = getelementptr i8, ptr %108, i32 3
  %115 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %neg)
  %cmp33.not = icmp eq i8 %116, %neg
  br i1 %cmp33.not, label %if.end40, label %if.then35

if.then35:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14) #5
  %117 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rx_skb31.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %118, i32 noundef 0) #5
  %119 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %rx_skb31.i, align 4
  %120 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %rx_state41.i, align 4
  %121 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %rx_count4, align 4
  br label %while.cond.backedge

if.end40:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 3, ptr %rx_state41.i, align 4
  %123 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data16, align 4
  %arrayidx44 = getelementptr i8, ptr %124, i32 1
  %125 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx44, align 1
  %127 = lshr i8 %126, 4
  %128 = zext i8 %127 to i32
  %arrayidx48 = getelementptr i8, ptr %124, i32 2
  %129 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %130 to i32
  %shl = shl nuw nsw i32 %conv49, 4
  %add50 = or i32 %shl, %128
  %131 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add50, ptr %rx_count4, align 4
  br label %while.cond.backedge

sw.bb52:                                          ; preds = %if.end13
  %132 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rx_skb31.i, align 4
  %data54 = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 19
  %134 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data54, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %135, align 1
  %138 = and i8 %137, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool58.not = icmp eq i8 %138, 0
  br i1 %tobool58.not, label %if.else62, label %if.then59

if.then59:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 4, ptr %rx_state41.i, align 4
  %140 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 2, ptr %rx_count4, align 4
  br label %while.cond.backedge

if.else62:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcsp_complete_rx_pkt(ptr noundef %hu)
  br label %while.cond.backedge

cond.end.thread:                                  ; preds = %if.end13
  %141 = ptrtoint ptr %message_crc45.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %message_crc45.i, align 2
  %143 = and i16 %142, 255
  %idxprom.i.i = zext i16 %143 to i32
  %arrayidx.i.i261 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %144 = ptrtoint ptr %arrayidx.i.i261 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i.i261, align 1
  %conv2.i = zext i8 %145 to i16
  %shl.i = shl nuw i16 %conv2.i, 8
  %146 = lshr i16 %142, 8
  %conv4.i = zext i16 %146 to i32
  %arrayidx.i10.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i
  %147 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i10.i, align 1
  %conv6.i = zext i8 %148 to i16
  %or.i = or i16 %shl.i, %conv6.i
  %149 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rx_skb31.i, align 4
  %data.i263283 = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 19
  %151 = ptrtoint ptr %data.i263283 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data.i263283, align 4
  %len.i284 = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 6
  %153 = ptrtoint ptr %len.i284 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len.i284, align 4
  %sub.i285 = add i32 %154, -2
  %arrayidx.i286 = getelementptr i8, ptr %152, i32 %sub.i285
  %155 = ptrtoint ptr %arrayidx.i286 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %arrayidx.i286, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %156)
  %cmp101.not287 = icmp eq i16 %or.i, %156
  br i1 %cmp101.not287, label %if.end152, label %cond.end144

cond.end144:                                      ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  %157 = ptrtoint ptr %arrayidx.i.i261 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i.i261, align 1
  %conv2.i266 = zext i8 %158 to i32
  %shl.i267 = shl nuw nsw i32 %conv2.i266, 8
  %159 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx.i10.i, align 1
  %conv6.i270 = zext i8 %160 to i32
  %or.i271 = or i32 %shl.i267, %conv6.i270
  %conv147 = zext i16 %156 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, i32 noundef %or.i271, i32 noundef %conv147) #5
  %161 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rx_skb31.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %162, i32 noundef 0) #5
  %163 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %rx_skb31.i, align 4
  %164 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %rx_state41.i, align 4
  %165 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %rx_count4, align 4
  br label %while.cond.backedge

if.end152:                                        ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_trim(ptr noundef %150, i32 noundef %sub.i285) #5
  tail call fastcc void @bcsp_complete_rx_pkt(ptr noundef %hu)
  br label %while.cond.backedge

sw.bb155:                                         ; preds = %if.end13
  %166 = ptrtoint ptr %ptr.0295 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %ptr.0295, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %167)
  %cond182 = icmp eq i8 %167, -64
  br i1 %cond182, label %sw.bb157, label %sw.bb155.sw.epilog_crit_edge

sw.bb155.sw.epilog_crit_edge:                     ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb157:                                         ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #7
  %168 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %rx_state41.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb157, %sw.bb155.sw.epilog_crit_edge
  %incdec.ptr159 = getelementptr i8, ptr %ptr.0295, i32 1
  %dec160 = add i32 %count.addr.0297, -1
  br label %while.cond.backedge

sw.bb161:                                         ; preds = %if.end13
  %169 = ptrtoint ptr %ptr.0295 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ptr.0295, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %170)
  %cond181 = icmp eq i8 %170, -64
  br i1 %cond181, label %sw.bb163, label %sw.default166

sw.bb163:                                         ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr164 = getelementptr i8, ptr %ptr.0295, i32 1
  %dec165 = add i32 %count.addr.0297, -1
  br label %while.cond.backedge

sw.default166:                                    ; preds = %sw.bb161
  %171 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 2, ptr %rx_state41.i, align 4
  %172 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 4, ptr %rx_count4, align 4
  %173 = ptrtoint ptr %rx_esc_state.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %rx_esc_state.i, align 4
  %174 = ptrtoint ptr %message_crc45.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 -1, ptr %message_crc45.i, align 2
  %call.i.i277 = tail call ptr @__alloc_skb(i32 noundef 4109, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i.i277, null
  br i1 %tobool.not.i, label %if.then174, label %bt_skb_alloc.exit

bt_skb_alloc.exit:                                ; preds = %sw.default166
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i277, i32 0, i32 19
  %175 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %176, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i277, i32 0, i32 16
  %177 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %178, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %179 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call.i.i277, ptr %rx_skb31.i, align 4
  br label %while.cond.backedge

if.then174:                                       ; preds = %sw.default166
  call void @__sanitizer_cov_trace_pc() #7
  %180 = ptrtoint ptr %rx_skb31.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %rx_skb31.i, align 4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16) #5
  %181 = ptrtoint ptr %rx_state41.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %rx_state41.i, align 4
  %182 = ptrtoint ptr %rx_count4 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %rx_count4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then174, %while.cond.backedge.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcsp_enqueue(ptr nocapture noundef readonly %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %3)
  %cmp = icmp ugt i32 %3, 4095
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32) #5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cb, align 8
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %5, label %sw.default [
    i8 2, label %if.end.sw.bb_crit_edge
    i8 1, label %if.end.sw.bb_crit_edge8
    i8 3, label %sw.bb1
  ]

if.end.sw.bb_crit_edge8:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge8
  %rel = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %rel, ptr noundef %skb) #5
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %unrel = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %unrel, ptr noundef %skb) #5
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33) #5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb1, %sw.bb, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcsp_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %unrel = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 2
  %call = tail call ptr @skb_dequeue(ptr noundef %unrel) #5
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.do.body5_crit_edge, label %if.then

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cb, align 8
  %conv = zext i8 %7 to i32
  %call1 = tail call fastcc ptr @bcsp_prepare_pkt(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %conv)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #5
  br label %cleanup50

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_queue_head(ptr noundef %unrel, ptr noundef nonnull %call) #5
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.34) #5
  br label %do.body5

do.body5:                                         ; preds = %if.else, %entry.do.body5_crit_edge
  %lock = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %lock, i32 noundef 1) #5
  %qlen = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp13 = icmp ult i32 %9, 4
  br i1 %cmp13, label %if.then15, label %do.body5.if.end41_crit_edge

do.body5.if.end41_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then15:                                        ; preds = %do.body5
  %rel = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 1
  %call16 = tail call ptr @skb_dequeue(ptr noundef %rel) #5
  %cmp17.not = icmp eq ptr %call16, null
  br i1 %cmp17.not, label %if.then15.if.end41_crit_edge, label %if.then19

if.then15.if.end41_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then19:                                        ; preds = %if.then15
  %data21 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 19
  %10 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data21, align 4
  %len22 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 6
  %12 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len22, align 4
  %cb23 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 3
  %14 = ptrtoint ptr %cb23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cb23, align 8
  %conv26 = zext i8 %15 to i32
  %call27 = tail call fastcc ptr @bcsp_prepare_pkt(ptr noundef %1, ptr noundef %11, i32 noundef %13, i32 noundef %conv26)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %cleanup37.thread, label %cleanup37

cleanup37.thread:                                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_queue_head(ptr noundef %rel, ptr noundef nonnull %call16) #5
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.34) #5
  br label %if.end41

cleanup37:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %1, ptr %call16, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call16, i32 0, i32 1
  %19 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %prev10.i.i.i, align 4
  store volatile ptr %call16, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call16, ptr %17, align 4
  %21 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %qlen, align 4
  %tbcsp = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %23, 25
  %call31 = tail call i32 @mod_timer(ptr noundef %tbcsp, i32 noundef %add) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #5
  br label %cleanup50

if.end41:                                         ; preds = %cleanup37.thread, %if.then15.if.end41_crit_edge, %do.body5.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #5
  %txack_req = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %txack_req to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %txack_req, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool44.not = icmp eq i8 %25, 0
  br i1 %tobool44.not, label %if.end41.cleanup50_crit_edge, label %if.then45

if.end41.cleanup50_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call fastcc ptr @bcsp_prepare_pkt(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 5)
  br label %cleanup50

cleanup50:                                        ; preds = %if.then45, %if.end41.cleanup50_crit_edge, %cleanup37, %if.then2
  %retval.3 = phi ptr [ %call47, %if.then45 ], [ %call27, %cleanup37 ], [ %call1, %if.then2 ], [ null, %if.end41.cleanup50_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcsp_timed_event(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -180
  %hu1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %hu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hu1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_timed_event.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_timed_event, %if.then)) #5
          to label %do.body6 [label %if.then], !srcloc !107

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %qlen = getelementptr i8, ptr %t, i32 -172
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_timed_event.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.8, ptr noundef %1, i32 noundef %3) #5
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %t, i32 -168
  %call10 = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %lock, i32 noundef 1) #5
  %prev.i.i = getelementptr i8, ptr %t, i32 -176
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i35 = icmp eq ptr %5, %add.ptr
  %tobool.not.i3436 = icmp eq ptr %5, null
  %tobool.not.i37 = or i1 %cmp.i.i35, %tobool.not.i3436
  br i1 %tobool.not.i37, label %do.body6.while.end_crit_edge, label %while.body.lr.ph

do.body6.while.end_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body6
  %qlen.i.i = getelementptr i8, ptr %t, i32 -172
  %msgq_txseq = getelementptr i8, ptr %t, i32 65
  %rel = getelementptr i8, ptr %t, i32 -124
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %20, %while.body.while.body_crit_edge ]
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %6, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  %15 = ptrtoint ptr %msgq_txseq to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %msgq_txseq, align 1
  %17 = add i8 %16, 7
  %18 = and i8 %17, 7
  store i8 %18, ptr %msgq_txseq, align 1
  tail call void @skb_queue_head(ptr noundef %rel, ptr noundef nonnull %6) #5
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %20, %add.ptr
  %tobool.not.i34 = icmp eq ptr %20, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i34
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.body6.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #5
  %call24 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_tx_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcsp_complete_rx_pkt(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rx_skb = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %do.body

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_complete_rx_pkt.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_complete_rx_pkt, %if.then4)) #5
          to label %do.end [label %if.then4], !srcloc !107

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %rxseq_txack = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %rxseq_txack to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rxseq_txack, align 4
  %conv5 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_complete_rx_pkt.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.19, i32 noundef %conv5) #5
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %10 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_skb, align 4
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data7, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = and i8 %15, 7
  %rxseq_txack11 = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %rxseq_txack11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rxseq_txack11, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp = icmp eq i8 %16, %18
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i8 %15, 1
  %19 = and i8 %inc, 7
  %20 = ptrtoint ptr %rxseq_txack11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %rxseq_txack11, align 4
  br label %if.end26

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv12 = zext i8 %18 to i32
  %and10 = zext i8 %16 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, i32 noundef %and10, i32 noundef %conv12) #5
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then14
  %pass_up.0 = phi i32 [ 0, %if.then14 ], [ 2, %if.else ]
  %txack_req = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %txack_req to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %txack_req, align 4
  %call27 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #5
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %entry.if.end28_crit_edge
  %pass_up.1 = phi i32 [ %pass_up.0, %if.end26 ], [ 0, %entry.if.end28_crit_edge ]
  %22 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_skb, align 4
  %data30 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data30, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %28 = lshr i8 %27, 3
  %29 = and i8 %28, 7
  %rxack = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %rxack to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %rxack, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_complete_rx_pkt.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_complete_rx_pkt, %if.then47)) #5
          to label %do.end52 [label %if.then47], !srcloc !107

if.then47:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %rxack to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rxack, align 1
  %conv49 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_complete_rx_pkt.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.21, i32 noundef %conv49) #5
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %if.end28
  tail call fastcc void @bcsp_pkt_cull(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pass_up.1)
  %cmp53.not = icmp eq i32 %pass_up.1, 2
  %33 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_skb, align 4
  br i1 %cmp53.not, label %if.else187, label %if.then55

if.then55:                                        ; preds = %do.end52
  %data57 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data57, align 4
  %arrayidx58 = getelementptr i8, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx58, align 1
  %trunc = trunc i8 %38 to i4
  %39 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.41)
  switch i4 %trunc, label %if.then55.if.then128_crit_edge [
    i4 6, label %land.lhs.true
    i4 5, label %land.lhs.true79
    i4 7, label %if.then55.if.then181_crit_edge
    i4 1, label %land.lhs.true112
  ]

if.then55.if.then181_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then181

if.then55.if.then128_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then128

land.lhs.true:                                    ; preds = %if.then55
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool68.not = icmp sgt i8 %41, -1
  br i1 %tobool68.not, label %land.lhs.true.if.then128_crit_edge, label %land.lhs.true.if.then181_crit_edge

land.lhs.true.if.then181_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then181

land.lhs.true.if.then128_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then128

land.lhs.true79:                                  ; preds = %if.then55
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %tobool85.not = icmp sgt i8 %43, -1
  br i1 %tobool85.not, label %land.lhs.true79.if.then128_crit_edge, label %land.lhs.true79.if.then181_crit_edge

land.lhs.true79.if.then181_crit_edge:             ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then181

land.lhs.true79.if.then128_crit_edge:             ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then128

land.lhs.true112:                                 ; preds = %if.then55
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %tobool118.not = icmp sgt i8 %45, -1
  br i1 %tobool118.not, label %if.then119, label %land.lhs.true112.if.then128_crit_edge

land.lhs.true112.if.then128_crit_edge:            ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then128

if.then119:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcsp_handle_le_pkt(ptr noundef %hu)
  br label %if.then128

if.then128:                                       ; preds = %if.then119, %land.lhs.true112.if.then128_crit_edge, %land.lhs.true79.if.then128_crit_edge, %land.lhs.true.if.then128_crit_edge, %if.then55.if.then128_crit_edge
  %46 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_skb, align 4
  %data130 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 19
  %48 = ptrtoint ptr %data130 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data130, align 4
  %arrayidx131 = getelementptr i8, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx131, align 1
  %52 = and i8 %51, 15
  %and133 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %switch = icmp ult i8 %52, 2
  br i1 %switch, label %if.else175, label %if.then142

if.then142:                                       ; preds = %if.then128
  %53 = load i8, ptr @hciextn, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool143.not = icmp eq i8 %53, 0
  br i1 %tobool143.not, label %if.else161, label %if.then144

if.then144:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #7
  %54 = or i8 %52, -64
  %call148 = tail call ptr @skb_pull(ptr noundef %47, i32 noundef 4) #5
  %55 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_skb, align 4
  %call150 = tail call ptr @skb_push(ptr noundef %56, i32 noundef 1) #5
  %57 = ptrtoint ptr %call150 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %54, ptr %call150, align 1
  %58 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len, align 4
  %conv152 = trunc i32 %61 to i8
  %call154 = tail call ptr @skb_push(ptr noundef %59, i32 noundef 2) #5
  %62 = ptrtoint ptr %call154 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %call154, align 1
  %hdr.sroa.5.0.call154.sroa_idx = getelementptr inbounds i8, ptr %call154, i32 1
  %63 = ptrtoint ptr %hdr.sroa.5.0.call154.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv152, ptr %hdr.sroa.5.0.call154.sroa_idx, align 1
  %64 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_skb, align 4
  %cb156 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cb156 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 4, ptr %cb156, align 8
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %67 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hdev, align 4
  %69 = load ptr, ptr %rx_skb, align 4
  %call160 = tail call i32 @hci_recv_frame(ptr noundef %68, ptr noundef %69) #5
  br label %if.end190

if.else161:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %tobool172.not = icmp sgt i8 %71, -1
  %cond = select i1 %tobool172.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, i32 noundef %and133, ptr noundef nonnull %cond) #5
  %72 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %73, i32 noundef 0) #5
  br label %if.end190

if.else175:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %47, i32 noundef 0) #5
  br label %if.end190

if.then181:                                       ; preds = %land.lhs.true79.if.then181_crit_edge, %land.lhs.true.if.then181_crit_edge, %if.then55.if.then181_crit_edge
  %.sink = phi i8 [ 2, %land.lhs.true.if.then181_crit_edge ], [ 4, %land.lhs.true79.if.then181_crit_edge ], [ 3, %if.then55.if.then181_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3
  %74 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %.sink, ptr %cb, align 8
  %75 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_skb, align 4
  %call183 = tail call ptr @skb_pull(ptr noundef %76, i32 noundef 4) #5
  %hdev184 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %77 = ptrtoint ptr %hdev184 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hdev184, align 4
  %79 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_skb, align 4
  %call186 = tail call i32 @hci_recv_frame(ptr noundef %78, ptr noundef %80) #5
  br label %if.end190

if.else187:                                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %34, i32 noundef 0) #5
  br label %if.end190

if.end190:                                        ; preds = %if.else187, %if.then181, %if.else175, %if.else161, %if.then144
  %rx_state = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 9
  %81 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %rx_state, align 4
  %82 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %rx_skb, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcsp_pkt_cull(ptr noundef %bcsp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sk_buff_head, ptr %bcsp, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %bcsp, i32 0, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  %msgq_txseq = getelementptr inbounds %struct.bcsp_struct, ptr %bcsp, i32 0, i32 14
  %2 = ptrtoint ptr %msgq_txseq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msgq_txseq, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not88 = icmp eq i32 %1, 0
  br i1 %tobool.not88, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rxack = getelementptr inbounds %struct.bcsp_struct, ptr %bcsp, i32 0, i32 6
  %4 = ptrtoint ptr %rxack to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rxack, align 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %seqno.090 = phi i8 [ %3, %while.body.lr.ph ], [ %7, %if.end.while.body_crit_edge ]
  %pkts_to_be_removed.089 = phi i32 [ %1, %while.body.lr.ph ], [ %dec, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %seqno.090)
  %cmp10 = icmp eq i8 %5, %seqno.090
  br i1 %cmp10, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %dec = add i32 %pkts_to_be_removed.089, -1
  %6 = add i8 %seqno.090, 7
  %7 = and i8 %6, 7
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %pkts_to_be_removed.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %pkts_to_be_removed.089, %while.body.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %seqno.0.lcssa = phi i8 [ %3, %entry.while.end_crit_edge ], [ %5, %while.body.while.end_crit_edge ], [ %7, %if.end.while.end_crit_edge ]
  %rxack14 = getelementptr inbounds %struct.bcsp_struct, ptr %bcsp, i32 0, i32 6
  %8 = ptrtoint ptr %rxack14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rxack14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %seqno.0.lcssa)
  %cmp17.not = icmp eq i8 %9, %seqno.0.lcssa
  br i1 %cmp17.not, label %while.end.do.body21_crit_edge, label %if.then19

while.end.do.body21_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

if.then19:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25) #5
  br label %do.body21

do.body21:                                        ; preds = %if.then19, %while.end.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_pkt_cull.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_pkt_cull, %if.then27)) #5
          to label %do.end35 [label %if.then27], !srcloc !107

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i, align 4
  %12 = add i8 %seqno.0.lcssa, 7
  %13 = and i8 %12, 7
  %and32 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_pkt_cull.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.27, i32 noundef %pkts_to_be_removed.0.lcssa, i32 noundef %11, i32 noundef %and32) #5
  br label %do.end35

do.end35:                                         ; preds = %if.then27, %do.body21
  %14 = ptrtoint ptr %bcsp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bcsp, align 4
  %cmp39.not94 = icmp ne ptr %15, %bcsp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkts_to_be_removed.0.lcssa)
  %cmp41.not95 = icmp sgt i32 %pkts_to_be_removed.0.lcssa, 0
  %or.cond96 = select i1 %cmp39.not94, i1 %cmp41.not95, i1 false
  br i1 %or.cond96, label %do.end35.if.end44_crit_edge, label %do.end35.for.end_crit_edge

do.end35.for.end_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end35.if.end44_crit_edge:                      ; preds = %do.end35
  br label %if.end44

if.end44:                                         ; preds = %if.end44.if.end44_crit_edge, %do.end35.if.end44_crit_edge
  %skb.098 = phi ptr [ %tmp.0, %if.end44.if.end44_crit_edge ], [ %15, %do.end35.if.end44_crit_edge ]
  %i.097 = phi i32 [ %inc, %if.end44.if.end44_crit_edge ], [ 0, %do.end35.if.end44_crit_edge ]
  %16 = ptrtoint ptr %skb.098 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.0 = load ptr, ptr %skb.098, align 8
  %inc = add nuw nsw i32 %i.097, 1
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %18, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %19 = load ptr, ptr %skb.098, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %skb.098, i32 0, i32 1
  %20 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.098, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %prev17.i, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %21, align 8
  tail call void @kfree_skb_reason(ptr noundef %skb.098, i32 noundef 0) #5
  %cmp39.not = icmp ne ptr %tmp.0, %bcsp
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %pkts_to_be_removed.0.lcssa)
  %cmp41.not = icmp slt i32 %inc, %pkts_to_be_removed.0.lcssa
  %or.cond = select i1 %cmp39.not, i1 %cmp41.not, i1 false
  br i1 %or.cond, label %if.end44.if.end44_crit_edge, label %if.end44.for.end_crit_edge

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end44.if.end44_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %do.end35.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %do.end35.for.end_crit_edge ], [ %inc, %if.end44.for.end_crit_edge ]
  %24 = ptrtoint ptr %bcsp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bcsp, align 4
  %cmp.i.not = icmp eq ptr %25, %bcsp
  br i1 %cmp.i.not, label %if.then50, label %for.end.if.end52_crit_edge

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %tbcsp = getelementptr inbounds %struct.bcsp_struct, ptr %bcsp, i32 0, i32 7
  %call51 = tail call i32 @del_timer(ptr noundef %tbcsp) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.end.if.end52_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %pkts_to_be_removed.0.lcssa)
  %cmp55.not = icmp eq i32 %i.0.lcssa, %pkts_to_be_removed.0.lcssa
  br i1 %cmp55.not, label %if.end52.if.end58_crit_edge, label %if.then57

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.28, i32 noundef %i.0.lcssa, i32 noundef %pkts_to_be_removed.0.lcssa) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end52.if.end58_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcsp_handle_le_pkt(ptr noundef %hu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rx_skb = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %.mask = and i8 %7, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %.mask)
  %cmp = icmp eq i8 %.mask, 64
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup49_crit_edge

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

land.lhs.true:                                    ; preds = %entry
  %arrayidx4 = getelementptr i8, ptr %5, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6 = icmp eq i8 %9, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.cleanup49_crit_edge

land.lhs.true.cleanup49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

land.lhs.true8:                                   ; preds = %land.lhs.true
  %arrayidx11 = getelementptr i8, ptr %5, i32 4
  %bcmp66 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx11, ptr noundef nonnull dereferenceable(4) @__const.bcsp_handle_le_pkt.conf_pkt, i32 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp66)
  %tobool.not = icmp eq i32 %bcmp66, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true32

if.then:                                          ; preds = %land.lhs.true8
  %call.i = tail call ptr @__alloc_skb(i32 noundef 4, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_handle_le_pkt.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_handle_le_pkt, %if.then17)) #5
          to label %do.end [label %if.then17], !srcloc !107

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_handle_le_pkt.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.30) #5
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.then
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %do.end.cleanup49_crit_edge, label %if.end20

do.end.cleanup49_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i67 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #5
  %10 = ptrtoint ptr %call.i67 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 -559034160, ptr %call.i67, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %cb, align 8
  %unrel = getelementptr inbounds %struct.bcsp_struct, ptr %1, i32 0, i32 2
  tail call void @skb_queue_head(ptr noundef %unrel, ptr noundef nonnull %call.i) #5
  %call24 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %hu) #5
  br label %cleanup49

land.lhs.true32:                                  ; preds = %land.lhs.true8
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp37 = icmp eq i8 %.pr, 0
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true32.cleanup49_crit_edge

land.lhs.true32.cleanup49_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

land.lhs.true39:                                  ; preds = %land.lhs.true32
  %arrayidx42 = getelementptr i8, ptr %5, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx42, ptr noundef nonnull dereferenceable(4) @__const.bcsp_handle_le_pkt.sync_pkt, i32 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool45.not = icmp eq i32 %bcmp, 0
  br i1 %tobool45.not, label %if.then46, label %land.lhs.true39.cleanup49_crit_edge

land.lhs.true39.cleanup49_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.then46:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31) #5
  br label %cleanup49

cleanup49:                                        ; preds = %if.then46, %land.lhs.true39.cleanup49_crit_edge, %land.lhs.true32.cleanup49_crit_edge, %if.end20, %do.end.cleanup49_crit_edge, %land.lhs.true.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bcsp_prepare_pkt(ptr nocapture noundef %bcsp, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %pkt_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pkt_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %pkt_type, label %sw.default [
    i32 2, label %entry.if.end20_crit_edge
    i32 1, label %sw.epilog
    i32 3, label %sw.bb2
    i32 6, label %sw.bb3
    i32 5, label %sw.bb4
  ]

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33) #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %1 = load i8, ptr @hciextn, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %sw.epilog.if.end20_crit_edge, label %if.then

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then:                                          ; preds = %sw.epilog
  %2 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %data, align 1
  %4 = and i16 %3, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 252, i16 %4)
  %cmp8 = icmp eq i16 %4, 252
  br i1 %cmp8, label %if.then10, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %data, i32 3
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  %7 = and i8 %6, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %7)
  %cmp12 = icmp eq i8 %7, -64
  %sub = add i32 %len, -4
  %and17 = and i8 %6, 15
  %chan.1 = select i1 %cmp12, i8 %and17, i8 5
  %len.addr.0 = select i1 %cmp12, i32 %sub, i32 %len
  %data.addr.0.idx = select i1 %cmp12, i32 4, i32 0
  %data.addr.0 = getelementptr i8, ptr %data, i32 %data.addr.0.idx
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %if.then.if.end20_crit_edge, %sw.epilog.if.end20_crit_edge, %sw.bb4, %sw.bb3, %sw.bb2, %entry.if.end20_crit_edge
  %tobool37.not260 = phi i1 [ false, %sw.epilog.if.end20_crit_edge ], [ false, %if.then10 ], [ false, %if.then.if.end20_crit_edge ], [ false, %entry.if.end20_crit_edge ], [ true, %sw.bb2 ], [ true, %sw.bb3 ], [ true, %sw.bb4 ]
  %chan.3 = phi i8 [ 5, %sw.epilog.if.end20_crit_edge ], [ %chan.1, %if.then10 ], [ 5, %if.then.if.end20_crit_edge ], [ 6, %entry.if.end20_crit_edge ], [ 7, %sw.bb2 ], [ 1, %sw.bb3 ], [ 0, %sw.bb4 ]
  %len.addr.2 = phi i32 [ %len, %sw.epilog.if.end20_crit_edge ], [ %len.addr.0, %if.then10 ], [ %len, %if.then.if.end20_crit_edge ], [ %len, %entry.if.end20_crit_edge ], [ %len, %sw.bb2 ], [ %len, %sw.bb3 ], [ %len, %sw.bb4 ]
  %data.addr.2 = phi ptr [ %data, %sw.epilog.if.end20_crit_edge ], [ %data.addr.0, %if.then10 ], [ %data, %if.then.if.end20_crit_edge ], [ %data, %entry.if.end20_crit_edge ], [ %data, %sw.bb2 ], [ %data, %sw.bb3 ], [ %data, %sw.bb4 ]
  %add = shl i32 %len.addr.2, 1
  %add21 = add i32 %add, 14
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add21, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %conv25 = trunc i32 %pkt_type to i8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv25, ptr %cb, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -64, ptr %call.i.i, align 1
  %rxseq_txack = getelementptr inbounds %struct.bcsp_struct, ptr %bcsp, i32 0, i32 5
  %10 = ptrtoint ptr %rxseq_txack to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rxseq_txack, align 4
  %shl = shl i8 %11, 3
  %txack_req = getelementptr inbounds %struct.bcsp_struct, ptr %bcsp, i32 0, i32 13
  %12 = ptrtoint ptr %txack_req to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %txack_req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_prepare_pkt.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_prepare_pkt, %if.then33)) #5
          to label %do.end [label %if.then33], !srcloc !107

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %rxseq_txack to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rxseq_txack, align 4
  %conv35 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_prepare_pkt.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.36, i32 noundef %conv35) #5
  br label %do.end

do.end:                                           ; preds = %if.then33, %if.end24
  br i1 %tobool37.not260, label %do.end.if.end68_crit_edge, label %if.then38

do.end.if.end68_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then38:                                        ; preds = %do.end
  %msgq_txseq = getelementptr inbounds %struct.bcsp_struct, ptr %bcsp, i32 0, i32 14
  %15 = ptrtoint ptr %msgq_txseq to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %msgq_txseq, align 1
  %add40 = xor i8 %16, -128
  %or = or i8 %add40, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcsp_prepare_pkt.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcsp_prepare_pkt, %if.then56)) #5
          to label %do.end61 [label %if.then56], !srcloc !107

if.then56:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %msgq_txseq to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %msgq_txseq, align 1
  %conv58 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcsp_prepare_pkt.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.37, i32 noundef %conv58) #5
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %if.then38
  %19 = ptrtoint ptr %msgq_txseq to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %msgq_txseq, align 1
  %21 = add i8 %20, 1
  %22 = and i8 %21, 7
  store i8 %22, ptr %msgq_txseq, align 1
  br label %if.end68

if.end68:                                         ; preds = %do.end61, %do.end.if.end68_crit_edge
  %hdr.sroa.0.0 = phi i8 [ %shl, %do.end.if.end68_crit_edge ], [ %or, %do.end61 ]
  %use_crc = getelementptr inbounds %struct.bcsp_struct, ptr %bcsp, i32 0, i32 11
  %23 = ptrtoint ptr %use_crc to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool69.not = icmp eq i8 %24, 0
  %25 = or i8 %hdr.sroa.0.0, 64
  %spec.select = select i1 %tobool69.not, i8 %hdr.sroa.0.0, i8 %25
  %len.addr.2.tr = trunc i32 %len.addr.2 to i8
  %26 = shl i8 %len.addr.2.tr, 4
  %conv80 = or i8 %26, %chan.3
  %27 = lshr i32 %len.addr.2, 4
  %conv83 = trunc i32 %27 to i8
  %28 = add i8 %conv80, %conv83
  %29 = add i8 %28, %spec.select
  %conv93 = xor i8 %29, -1
  %30 = zext i8 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %spec.select, label %sw.default.i [
    i8 -64, label %sw.bb.i
    i8 -37, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i217 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %31 = ptrtoint ptr %call.i.i217 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 -9252, ptr %call.i.i217, align 1
  br label %bcsp_slip_one_byte.exit

sw.bb1.i:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %call.i6.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %32 = ptrtoint ptr %call.i6.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 -9251, ptr %call.i6.i, align 1
  br label %bcsp_slip_one_byte.exit

sw.default.i:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %33 = ptrtoint ptr %call.i7.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select, ptr %call.i7.i, align 1
  br label %bcsp_slip_one_byte.exit

bcsp_slip_one_byte.exit:                          ; preds = %sw.default.i, %sw.bb1.i, %sw.bb.i
  %34 = ptrtoint ptr %use_crc to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool99.not = icmp eq i8 %35, 0
  br i1 %tobool99.not, label %bcsp_slip_one_byte.exit.for.inc_crit_edge, label %if.then100

bcsp_slip_one_byte.exit.for.inc_crit_edge:        ; preds = %bcsp_slip_one_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then100:                                       ; preds = %bcsp_slip_one_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i = zext i8 %spec.select to i32
  %xor.i = and i32 %conv2.i, 15
  %and.i = xor i32 %xor.i, 15
  %arrayidx.i = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i, align 2
  %xor4.i = xor i16 %37, 4095
  %38 = lshr i16 %xor4.i, 4
  %39 = lshr i32 %conv2.i, 4
  %40 = and i16 %xor4.i, 15
  %conv6.masked.i = zext i16 %40 to i32
  %and12.i = xor i32 %39, %conv6.masked.i
  %arrayidx13.i = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and12.i
  %41 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx13.i, align 2
  %xor15.i = xor i16 %38, %42
  br label %for.inc

for.inc:                                          ; preds = %if.then100, %bcsp_slip_one_byte.exit.for.inc_crit_edge
  %bcsp_txmsg_crc.1 = phi i16 [ -1, %bcsp_slip_one_byte.exit.for.inc_crit_edge ], [ %xor15.i, %if.then100 ]
  %43 = zext i8 %conv80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %conv80, label %sw.default.i.1 [
    i8 -64, label %sw.bb.i.1
    i8 -37, label %sw.bb1.i.1
  ]

sw.bb1.i.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call.i6.i.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %44 = ptrtoint ptr %call.i6.i.1 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 -9251, ptr %call.i6.i.1, align 1
  br label %bcsp_slip_one_byte.exit.1

sw.bb.i.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i217.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %45 = ptrtoint ptr %call.i.i217.1 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 -9252, ptr %call.i.i217.1, align 1
  br label %bcsp_slip_one_byte.exit.1

sw.default.i.1:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7.i.1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %46 = ptrtoint ptr %call.i7.i.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv80, ptr %call.i7.i.1, align 1
  br label %bcsp_slip_one_byte.exit.1

bcsp_slip_one_byte.exit.1:                        ; preds = %sw.default.i.1, %sw.bb.i.1, %sw.bb1.i.1
  %47 = ptrtoint ptr %use_crc to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %use_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool99.not.1 = icmp eq i8 %48, 0
  br i1 %tobool99.not.1, label %bcsp_slip_one_byte.exit.1.for.inc.1_crit_edge, label %if.then100.1

bcsp_slip_one_byte.exit.1.for.inc.1_crit_edge:    ; preds = %bcsp_slip_one_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then100.1:                                     ; preds = %bcsp_slip_one_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.1 = zext i16 %bcsp_txmsg_crc.1 to i32
  %49 = lshr i16 %bcsp_txmsg_crc.1, 4
  %conv2.i.1 = zext i8 %conv80 to i32
  %xor.i.1 = xor i32 %conv2.i.1, %conv.i.1
  %and.i.1 = and i32 %xor.i.1, 15
  %arrayidx.i.1 = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and.i.1
  %50 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i.1, align 2
  %xor4.i.1 = xor i16 %51, %49
  %52 = lshr i16 %xor4.i.1, 4
  %53 = lshr i32 %conv2.i.1, 4
  %54 = and i16 %xor4.i.1, 15
  %conv6.masked.i.1 = zext i16 %54 to i32
  %and12.i.1 = xor i32 %53, %conv6.masked.i.1
  %arrayidx13.i.1 = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and12.i.1
  %55 = ptrtoint ptr %arrayidx13.i.1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx13.i.1, align 2
  %xor15.i.1 = xor i16 %52, %56
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then100.1, %bcsp_slip_one_byte.exit.1.for.inc.1_crit_edge
  %bcsp_txmsg_crc.1.1 = phi i16 [ %bcsp_txmsg_crc.1, %bcsp_slip_one_byte.exit.1.for.inc.1_crit_edge ], [ %xor15.i.1, %if.then100.1 ]
  %57 = zext i8 %conv83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %conv83, label %sw.default.i.2 [
    i8 -64, label %sw.bb.i.2
    i8 -37, label %sw.bb1.i.2
  ]

sw.bb1.i.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.i6.i.2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %58 = ptrtoint ptr %call.i6.i.2 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 -9251, ptr %call.i6.i.2, align 1
  br label %bcsp_slip_one_byte.exit.2

sw.bb.i.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i217.2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %59 = ptrtoint ptr %call.i.i217.2 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 -9252, ptr %call.i.i217.2, align 1
  br label %bcsp_slip_one_byte.exit.2

sw.default.i.2:                                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7.i.2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %60 = ptrtoint ptr %call.i7.i.2 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv83, ptr %call.i7.i.2, align 1
  br label %bcsp_slip_one_byte.exit.2

bcsp_slip_one_byte.exit.2:                        ; preds = %sw.default.i.2, %sw.bb.i.2, %sw.bb1.i.2
  %61 = ptrtoint ptr %use_crc to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %use_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool99.not.2 = icmp eq i8 %62, 0
  br i1 %tobool99.not.2, label %bcsp_slip_one_byte.exit.2.for.inc.2_crit_edge, label %if.then100.2

bcsp_slip_one_byte.exit.2.for.inc.2_crit_edge:    ; preds = %bcsp_slip_one_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then100.2:                                     ; preds = %bcsp_slip_one_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.2 = zext i16 %bcsp_txmsg_crc.1.1 to i32
  %63 = lshr i16 %bcsp_txmsg_crc.1.1, 4
  %xor.i.2 = xor i32 %27, %conv.i.2
  %and.i.2 = and i32 %xor.i.2, 15
  %arrayidx.i.2 = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and.i.2
  %64 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i.2, align 2
  %xor4.i.2 = xor i16 %65, %63
  %66 = lshr i16 %xor4.i.2, 4
  %conv2.i.2 = lshr i32 %len.addr.2, 8
  %67 = and i32 %conv2.i.2, 15
  %68 = and i16 %xor4.i.2, 15
  %conv6.masked.i.2 = zext i16 %68 to i32
  %and12.i.2 = xor i32 %67, %conv6.masked.i.2
  %arrayidx13.i.2 = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and12.i.2
  %69 = ptrtoint ptr %arrayidx13.i.2 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx13.i.2, align 2
  %xor15.i.2 = xor i16 %66, %70
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then100.2, %bcsp_slip_one_byte.exit.2.for.inc.2_crit_edge
  %bcsp_txmsg_crc.1.2 = phi i16 [ %bcsp_txmsg_crc.1.1, %bcsp_slip_one_byte.exit.2.for.inc.2_crit_edge ], [ %xor15.i.2, %if.then100.2 ]
  %71 = zext i8 %conv93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %conv93, label %sw.default.i.3 [
    i8 -64, label %sw.bb.i.3
    i8 -37, label %sw.bb1.i.3
  ]

sw.bb1.i.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %call.i6.i.3 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %72 = ptrtoint ptr %call.i6.i.3 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 -9251, ptr %call.i6.i.3, align 1
  br label %bcsp_slip_one_byte.exit.3

sw.bb.i.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i217.3 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %73 = ptrtoint ptr %call.i.i217.3 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 -9252, ptr %call.i.i217.3, align 1
  br label %bcsp_slip_one_byte.exit.3

sw.default.i.3:                                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7.i.3 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %74 = ptrtoint ptr %call.i7.i.3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv93, ptr %call.i7.i.3, align 1
  br label %bcsp_slip_one_byte.exit.3

bcsp_slip_one_byte.exit.3:                        ; preds = %sw.default.i.3, %sw.bb.i.3, %sw.bb1.i.3
  %75 = ptrtoint ptr %use_crc to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %use_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool99.not.3 = icmp eq i8 %76, 0
  br i1 %tobool99.not.3, label %bcsp_slip_one_byte.exit.3.for.inc.3_crit_edge, label %if.then100.3

bcsp_slip_one_byte.exit.3.for.inc.3_crit_edge:    ; preds = %bcsp_slip_one_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then100.3:                                     ; preds = %bcsp_slip_one_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.3 = zext i16 %bcsp_txmsg_crc.1.2 to i32
  %77 = lshr i16 %bcsp_txmsg_crc.1.2, 4
  %conv2.i.3 = zext i8 %conv93 to i32
  %xor.i.3 = xor i32 %conv2.i.3, %conv.i.3
  %and.i.3 = and i32 %xor.i.3, 15
  %arrayidx.i.3 = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and.i.3
  %78 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.i.3, align 2
  %xor4.i.3 = xor i16 %79, %77
  %80 = lshr i16 %xor4.i.3, 4
  %81 = lshr i32 %conv2.i.3, 4
  %82 = and i16 %xor4.i.3, 15
  %conv6.masked.i.3 = zext i16 %82 to i32
  %and12.i.3 = xor i32 %81, %conv6.masked.i.3
  %arrayidx13.i.3 = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and12.i.3
  %83 = ptrtoint ptr %arrayidx13.i.3 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx13.i.3, align 2
  %xor15.i.3 = xor i16 %80, %84
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then100.3, %bcsp_slip_one_byte.exit.3.for.inc.3_crit_edge
  %bcsp_txmsg_crc.1.3 = phi i16 [ %bcsp_txmsg_crc.1.2, %bcsp_slip_one_byte.exit.3.for.inc.3_crit_edge ], [ %xor15.i.3, %if.then100.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2)
  %cmp104269 = icmp sgt i32 %len.addr.2, 0
  br i1 %cmp104269, label %for.inc.3.for.body106_crit_edge, label %for.inc.3.for.end115_crit_edge

for.inc.3.for.end115_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end115

for.inc.3.for.body106_crit_edge:                  ; preds = %for.inc.3
  br label %for.body106

for.body106:                                      ; preds = %for.inc113.for.body106_crit_edge, %for.inc.3.for.body106_crit_edge
  %i.1271 = phi i32 [ %inc114, %for.inc113.for.body106_crit_edge ], [ 0, %for.inc.3.for.body106_crit_edge ]
  %bcsp_txmsg_crc.2270 = phi i16 [ %bcsp_txmsg_crc.3, %for.inc113.for.body106_crit_edge ], [ %bcsp_txmsg_crc.1.3, %for.inc.3.for.body106_crit_edge ]
  %arrayidx107 = getelementptr i8, ptr %data.addr.2, i32 %i.1271
  %85 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx107, align 1
  %87 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %86, label %sw.default.i223 [
    i8 -64, label %sw.bb.i219
    i8 -37, label %sw.bb1.i221
  ]

sw.bb.i219:                                       ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i218 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %88 = ptrtoint ptr %call.i.i218 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 -9252, ptr %call.i.i218, align 1
  br label %bcsp_slip_one_byte.exit224

sw.bb1.i221:                                      ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #7
  %call.i6.i220 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %89 = ptrtoint ptr %call.i6.i220 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 -9251, ptr %call.i6.i220, align 1
  br label %bcsp_slip_one_byte.exit224

sw.default.i223:                                  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7.i222 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %90 = ptrtoint ptr %call.i7.i222 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %86, ptr %call.i7.i222, align 1
  br label %bcsp_slip_one_byte.exit224

bcsp_slip_one_byte.exit224:                       ; preds = %sw.default.i223, %sw.bb1.i221, %sw.bb.i219
  %91 = ptrtoint ptr %use_crc to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %use_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool109.not = icmp eq i8 %92, 0
  br i1 %tobool109.not, label %bcsp_slip_one_byte.exit224.for.inc113_crit_edge, label %if.then110

bcsp_slip_one_byte.exit224.for.inc113_crit_edge:  ; preds = %bcsp_slip_one_byte.exit224
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc113

if.then110:                                       ; preds = %bcsp_slip_one_byte.exit224
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx107, align 1
  %conv.i225 = zext i16 %bcsp_txmsg_crc.2270 to i32
  %95 = lshr i16 %bcsp_txmsg_crc.2270, 4
  %conv2.i226 = zext i8 %94 to i32
  %xor.i227 = xor i32 %conv2.i226, %conv.i225
  %and.i228 = and i32 %xor.i227, 15
  %arrayidx.i229 = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and.i228
  %96 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx.i229, align 2
  %xor4.i230 = xor i16 %97, %95
  %98 = lshr i16 %xor4.i230, 4
  %99 = lshr i32 %conv2.i226, 4
  %100 = and i16 %xor4.i230, 15
  %conv6.masked.i231 = zext i16 %100 to i32
  %and12.i232 = xor i32 %99, %conv6.masked.i231
  %arrayidx13.i233 = getelementptr [16 x i16], ptr @crc_table, i32 0, i32 %and12.i232
  %101 = ptrtoint ptr %arrayidx13.i233 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx13.i233, align 2
  %xor15.i234 = xor i16 %98, %102
  br label %for.inc113

for.inc113:                                       ; preds = %if.then110, %bcsp_slip_one_byte.exit224.for.inc113_crit_edge
  %bcsp_txmsg_crc.3 = phi i16 [ %bcsp_txmsg_crc.2270, %bcsp_slip_one_byte.exit224.for.inc113_crit_edge ], [ %xor15.i234, %if.then110 ]
  %inc114 = add nuw nsw i32 %i.1271, 1
  %exitcond.not = icmp eq i32 %inc114, %len.addr.2
  br i1 %exitcond.not, label %for.inc113.for.end115_crit_edge, label %for.inc113.for.body106_crit_edge

for.inc113.for.body106_crit_edge:                 ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body106

for.inc113.for.end115_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end115

for.end115:                                       ; preds = %for.inc113.for.end115_crit_edge, %for.inc.3.for.end115_crit_edge
  %bcsp_txmsg_crc.2.lcssa = phi i16 [ %bcsp_txmsg_crc.1.3, %for.inc.3.for.end115_crit_edge ], [ %bcsp_txmsg_crc.3, %for.inc113.for.end115_crit_edge ]
  %103 = ptrtoint ptr %use_crc to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %use_crc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool117.not = icmp eq i8 %104, 0
  br i1 %tobool117.not, label %for.end115.if.end162_crit_edge, label %cond.false

for.end115.if.end162_crit_edge:                   ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162

cond.false:                                       ; preds = %for.end115
  %105 = and i16 %bcsp_txmsg_crc.2.lcssa, 255
  %idxprom.i.i = zext i16 %105 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.i, align 1
  %108 = lshr i16 %bcsp_txmsg_crc.2.lcssa, 8
  %conv4.i = zext i16 %108 to i32
  %arrayidx.i10.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i
  %109 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i10.i, align 1
  %111 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %107, label %sw.default.i241 [
    i8 -64, label %sw.bb.i237
    i8 -37, label %sw.bb1.i239
  ]

sw.bb.i237:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i236 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %112 = ptrtoint ptr %call.i.i236 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 -9252, ptr %call.i.i236, align 1
  br label %bcsp_slip_one_byte.exit242

sw.bb1.i239:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %call.i6.i238 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %113 = ptrtoint ptr %call.i6.i238 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 -9251, ptr %call.i6.i238, align 1
  br label %bcsp_slip_one_byte.exit242

sw.default.i241:                                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7.i240 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %114 = ptrtoint ptr %call.i7.i240 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %107, ptr %call.i7.i240, align 1
  br label %bcsp_slip_one_byte.exit242

bcsp_slip_one_byte.exit242:                       ; preds = %sw.default.i241, %sw.bb1.i239, %sw.bb.i237
  %115 = zext i8 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %110, label %sw.default.i248 [
    i8 -64, label %sw.bb.i244
    i8 -37, label %sw.bb1.i246
  ]

sw.bb.i244:                                       ; preds = %bcsp_slip_one_byte.exit242
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i243 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %116 = ptrtoint ptr %call.i.i243 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 -9252, ptr %call.i.i243, align 1
  br label %if.end162

sw.bb1.i246:                                      ; preds = %bcsp_slip_one_byte.exit242
  call void @__sanitizer_cov_trace_pc() #7
  %call.i6.i245 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %117 = ptrtoint ptr %call.i6.i245 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 -9251, ptr %call.i6.i245, align 1
  br label %if.end162

sw.default.i248:                                  ; preds = %bcsp_slip_one_byte.exit242
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7.i247 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %118 = ptrtoint ptr %call.i7.i247 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %110, ptr %call.i7.i247, align 1
  br label %if.end162

if.end162:                                        ; preds = %sw.default.i248, %sw.bb1.i246, %sw.bb.i244, %for.end115.if.end162_crit_edge
  %call.i.i250 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %119 = ptrtoint ptr %call.i.i250 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -64, ptr %call.i.i250, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %if.end20.cleanup_crit_edge, %sw.default
  %retval.0 = phi ptr [ null, %sw.default ], [ %call.i, %if.end162 ], [ null, %if.end20.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !75, !76, !77, !79, !81, !83, !85, !87, !88, !89, !91, !92, !93, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__param_txcrc, !1, !"__param_txcrc", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 780, i32 1}
!2 = !{ptr @__UNIQUE_ID_txcrctype490, !1, !"__UNIQUE_ID_txcrctype490", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_txcrc491, !4, !"__UNIQUE_ID_txcrc491", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 781, i32 1}
!5 = !{ptr @__param_hciextn, !6, !"__param_hciextn", i1 false, i1 false}
!6 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 783, i32 1}
!7 = !{ptr @__UNIQUE_ID_hciextntype492, !6, !"__UNIQUE_ID_hciextntype492", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_hciextn493, !9, !"__UNIQUE_ID_hciextn493", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 784, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 761, i32 11}
!12 = !{ptr @bcsp, !13, !"bcsp", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 759, i32 36}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 714, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bcsp_open.__UNIQUE_ID_ddebug488, !15, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!20 = !{ptr @bcsp_open.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 726, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @skb_queue_head_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 696, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bcsp_timed_event.__UNIQUE_ID_ddebug487, !27, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 744, i32 2}
!32 = !{ptr @bcsp_close.__UNIQUE_ID_ddebug489, !31, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 343, i32 2}
!35 = !{ptr @bcsp_flush.__UNIQUE_ID_ddebug481, !34, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 585, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bcsp_recv.__UNIQUE_ID_ddebug486, !37, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 592, i32 5}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 608, i32 5}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 630, i32 5}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 675, i32 6}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 465, i32 4}
!50 = !{ptr @crc_table, !51, !"crc_table", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 82, i32 18}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 480, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bcsp_complete_rx_pkt.__UNIQUE_ID_ddebug484, !53, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 490, i32 4}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 505, i32 2}
!60 = !{ptr @bcsp_complete_rx_pkt.__UNIQUE_ID_ddebug485, !59, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 550, i32 5}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 368, i32 3}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 370, i32 2}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bcsp_pkt_cull.__UNIQUE_ID_ddebug482, !68, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 390, i32 3}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 409, i32 3}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @bcsp_handle_le_pkt.__UNIQUE_ID_ddebug483, !74, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 421, i32 3}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 139, i32 3}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 155, i32 3}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 292, i32 4}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 228, i32 2}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @bcsp_prepare_pkt.__UNIQUE_ID_ddebug479, !86, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 232, i32 3}
!91 = !{ptr @bcsp_prepare_pkt.__UNIQUE_ID_ddebug480, !90, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!92 = !{ptr @__param_str_txcrc, !1, !"__param_str_txcrc", i1 false, i1 false}
!93 = !{ptr @txcrc, !94, !"txcrc", i1 false, i1 false}
!94 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 35, i32 13}
!95 = !{ptr @__param_str_hciextn, !6, !"__param_str_hciextn", i1 false, i1 false}
!96 = !{ptr @hciextn, !97, !"hciextn", i1 false, i1 false}
!97 = !{!"../drivers/bluetooth/hci_bcsp.c", i32 36, i32 13}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 2148970122, i64 2148970127, i64 2148970140, i64 2148970184, i64 2148970218, i64 2148970239}
!108 = !{i8 0, i8 2}
