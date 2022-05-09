; ModuleID = '/llk/IR_all_yes/net/nfc/nci/data.c_pt.bc'
source_filename = "../net/nfc/nci/data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nci_conn_max_data_pkt_payload_size\22, \22a\22\09"
module asm "\09.weak\09__crc_nci_conn_max_data_pkt_payload_size\09\09\09\09"
module asm "\09.long\09__crc_nci_conn_max_data_pkt_payload_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_conn_max_data_pkt_payload_size:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_conn_max_data_pkt_payload_size\22\09\09\09\09\09"
module asm "__kstrtabns_nci_conn_max_data_pkt_payload_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nci_send_data\22, \22a\22\09"
module asm "\09.weak\09__crc_nci_send_data\09\09\09\09"
module asm "\09.long\09__crc_nci_send_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_send_data:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_send_data\22\09\09\09\09\09"
module asm "__kstrtabns_nci_send_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nci_conn_info = type { %struct.list_head, ptr, i8, i8, i8, %struct.atomic_t, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nci_data_hdr = type { i8, i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }

@nci_data_exchange_complete.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nci\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nci_data_exchange_complete\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/nfc/nci/data.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"len %d, err %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nci: %s: len %d, err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nci_data_exchange_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013nci: %s: no rx callback, dropping rx data...\0A\00", [48 x i8] zeroinitializer }, align 32
@nci_data_exchange_complete._entry_ptr = internal global ptr @nci_data_exchange_complete._entry, section ".printk_index", align 4
@__kstrtab_nci_conn_max_data_pkt_payload_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_conn_max_data_pkt_payload_size = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_conn_max_data_pkt_payload_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_conn_max_data_pkt_payload_size to i32), ptr @__kstrtab_nci_conn_max_data_pkt_payload_size, ptr @__kstrtabns_nci_conn_max_data_pkt_payload_size }, section "___ksymtab+nci_conn_max_data_pkt_payload_size", align 4
@nci_send_data.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nci_send_data\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"conn_id 0x%x, plen %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nci: %s: conn_id 0x%x, plen %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nci_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nci: %s: failed to fragment tx data packet\0A\00", [50 x i8] zeroinitializer }, align 32
@nci_send_data._entry_ptr = internal global ptr @nci_send_data._entry, section ".printk_index", align 4
@__kstrtab_nci_send_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_send_data = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_send_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_send_data to i32), ptr @__kstrtab_nci_send_data, ptr @__kstrtabns_nci_send_data }, section "___ksymtab+nci_send_data", align 4
@nci_rx_data_packet.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nci_rx_data_packet\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"len %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nci: %s: len %d\0A\00", [47 x i8] zeroinitializer }, align 32
@nci_rx_data_packet.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NCI RX: MT=data, PBF=%d, conn_id=%d, plen=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nci: %s: NCI RX: MT=data, PBF=%d, conn_id=%d, plen=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@nci_rx_data_packet.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.15, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"frame I/F => remove the status byte\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nci: %s: frame I/F => remove the status byte\0A\00", [50 x i8] zeroinitializer }, align 32
@nci_queue_tx_data_frags.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nci_queue_tx_data_frags\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"conn_id 0x%x, total_len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nci: %s: conn_id 0x%x, total_len %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nci_queue_tx_data_frags.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"frag_len %d, remaining total_len %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nci: %s: frag_len %d, remaining total_len %d\0A\00", [50 x i8] zeroinitializer }, align 32
@nci_add_rx_data_frag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013nci: %s: error adding room for accumulated rx data\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nci_add_rx_data_frag\00", [43 x i8] zeroinitializer }, align 32
@nci_add_rx_data_frag._entry_ptr = internal global ptr @nci_add_rx_data_frag._entry, section ".printk_index", align 4
@nci_add_rx_data_frag._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nci: %s: unable to handle received data\0A\00", [53 x i8] zeroinitializer }, align 32
@nci_add_rx_data_frag._entry_ptr.26 = internal global ptr @nci_add_rx_data_frag._entry.24, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 42, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 52, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 172, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 190, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 274, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 276, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 293, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 105, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 141, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 227, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [22 x i8] c"../net/nfc/nci/data.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 260, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__ksymtab_nci_conn_max_data_pkt_payload_size, ptr @__ksymtab_nci_send_data, ptr @nci_add_rx_data_frag._entry, ptr @nci_add_rx_data_frag._entry.24, ptr @nci_add_rx_data_frag._entry_ptr, ptr @nci_add_rx_data_frag._entry_ptr.26, ptr @nci_data_exchange_complete._entry, ptr @nci_data_exchange_complete._entry_ptr, ptr @nci_send_data._entry, ptr @nci_send_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_data_exchange_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_add_rx_data_frag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_add_rx_data_frag._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nci_data_exchange_complete(ptr noundef %ndev, ptr noundef %skb, i8 noundef zeroext %conn_id, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %conn_id to i32
  %call = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %ndev, i32 noundef %conv) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %exit

if.end:                                           ; preds = %entry
  %data_exchange_cb = getelementptr inbounds %struct.nci_conn_info, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %data_exchange_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_exchange_cb, align 4
  %data_exchange_cb_context = getelementptr inbounds %struct.nci_conn_info, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %data_exchange_cb_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_exchange_cb_context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_data_exchange_complete.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_data_exchange_complete, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !64

if.then5:                                         ; preds = %if.end
  %tobool6.not = icmp eq ptr %skb, null
  br i1 %tobool6.not, label %if.then5.cond.end_crit_edge, label %cond.true

if.then5.cond.end_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then5.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %if.then5.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_data_exchange_complete.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %cond, i32 noundef %err) #5
  br label %do.end

do.end:                                           ; preds = %cond.end, %if.end
  %data_timer = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 12
  %call8 = tail call i32 @del_timer_sync(ptr noundef %data_timer) #5
  %flags = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #5
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %3, ptr noundef %skb, i32 noundef %err) #5
  br label %exit

if.else:                                          ; preds = %do.end
  %tobool11.not = icmp eq ptr %skb, null
  br i1 %tobool11.not, label %if.else.exit_crit_edge, label %do.end15

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #5
  br label %exit

exit:                                             ; preds = %do.end15, %if.else.exit_crit_edge, %if.then10, %if.then
  %flags20 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags20) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_get_conn_info_by_conn_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nci_conn_max_data_pkt_payload_size(ptr noundef %ndev, i8 noundef zeroext %conn_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %conn_id to i32
  %call = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %ndev, i32 noundef %conv) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %max_pkt_payload_len = getelementptr inbounds %struct.nci_conn_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %max_pkt_payload_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_pkt_payload_len, align 2
  %conv1 = zext i8 %1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv1, %if.end ], [ -71, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nci_send_data(ptr noundef %ndev, i8 noundef zeroext %conn_id, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_send_data.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_send_data, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %conn_id to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_send_data.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i8 %conn_id to i32
  %call4 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %ndev, i32 noundef %conv3) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.free_exit_crit_edge, label %if.end7

do.end.free_exit_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_exit

if.end7:                                          ; preds = %do.end
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len8, align 4
  %max_pkt_payload_len = getelementptr inbounds %struct.nci_conn_info, ptr %call4, i32 0, i32 4
  %4 = ptrtoint ptr %max_pkt_payload_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_pkt_payload_len, align 2
  %conv9 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv9)
  %cmp.not = icmp ugt i32 %3, %conv9
  br i1 %cmp.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #5
  %rfu.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %rfu.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rfu.i, align 1
  %conv.i = trunc i32 %3 to i8
  %plen2.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %plen2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %plen2.i, align 1
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conn_id, ptr %call.i, align 1
  %tx_q = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 21
  tail call void @skb_queue_tail(ptr noundef %tx_q, ptr noundef %skb) #5
  br label %if.end21

if.else:                                          ; preds = %if.end7
  %call12 = tail call fastcc i32 @nci_queue_tx_data_frags(ptr noundef %ndev, i8 noundef zeroext %conn_id, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else.if.end21_crit_edge, label %do.end17

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6) #8
  br label %free_exit

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then11
  %cur_conn_id = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 8
  %9 = ptrtoint ptr %cur_conn_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conn_id, ptr %cur_conn_id, align 4
  %tx_wq = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 17
  %10 = ptrtoint ptr %tx_wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_wq, align 4
  %tx_work = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 18
  %call.i40 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %tx_work) #5
  br label %exit

free_exit:                                        ; preds = %do.end17, %do.end.free_exit_crit_edge
  %rc.1 = phi i32 [ %call12, %do.end17 ], [ -71, %do.end.free_exit_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %exit

exit:                                             ; preds = %free_exit, %if.end21
  %rc.2 = phi i32 [ 0, %if.end21 ], [ %rc.1, %free_exit ]
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nci_queue_tx_data_frags(ptr noundef %ndev, i8 noundef zeroext %conn_id, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %frags_q = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %frags_q) #5
  %4 = getelementptr inbounds i8, ptr %frags_q, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 44)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_queue_tx_data_frags.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_queue_tx_data_frags, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %conn_id to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_queue_tx_data_frags.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv4 = zext i8 %conn_id to i32
  %call5 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %ndev, i32 noundef %conv4) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.exit_crit_edge, label %if.end8

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end8:                                          ; preds = %do.end
  %6 = ptrtoint ptr %frags_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %frags_q, ptr %frags_q, align 4
  %prev.i = getelementptr inbounds %struct.anon.79, ptr %frags_q, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %frags_q, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %frags_q, i32 0, i32 1
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool9.not117 = icmp eq i32 %1, 0
  br i1 %tobool9.not117, label %if.end8.do.body40_crit_edge, label %while.body.lr.ph

if.end8.do.body40_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

while.body.lr.ph:                                 ; preds = %if.end8
  %max_pkt_payload_len = getelementptr inbounds %struct.nci_conn_info, ptr %call5, i32 0, i32 4
  %tx_headroom.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 3
  %tx_tailroom.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %do.end38.while.body_crit_edge, %while.body.lr.ph
  %total_len.0119 = phi i32 [ %1, %while.body.lr.ph ], [ %sub, %do.end38.while.body_crit_edge ]
  %data.0118 = phi ptr [ %3, %while.body.lr.ph ], [ %add.ptr, %do.end38.while.body_crit_edge ]
  %9 = ptrtoint ptr %max_pkt_payload_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_pkt_payload_len, align 2
  %conv10 = zext i8 %10 to i32
  %11 = call i32 @llvm.smin.i32(i32 %total_len.0119, i32 %conv10)
  %12 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_headroom.i, align 4
  %14 = ptrtoint ptr %tx_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_tailroom.i, align 4
  %add = add i32 %13, 3
  %add.i = add i32 %add, %11
  %add1.i = add i32 %add.i, %15
  %call.i.i = call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %while.cond59.preheader, label %if.end17

while.cond59.preheader:                           ; preds = %while.body
  %16 = ptrtoint ptr %frags_q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %frags_q, align 4
  %cmp.i.i104120 = icmp eq ptr %17, %frags_q
  %tobool.not.i106115121 = icmp eq ptr %17, null
  %tobool.not.i106122 = or i1 %cmp.i.i104120, %tobool.not.i106115121
  br i1 %tobool.not.i106122, label %while.cond59.preheader.exit_crit_edge, label %while.cond59.preheader.while.body63_crit_edge

while.cond59.preheader.while.body63_crit_edge:    ; preds = %while.cond59.preheader
  br label %while.body63

while.cond59.preheader.exit_crit_edge:            ; preds = %while.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end17:                                         ; preds = %while.body
  %18 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 3
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %23, i32 3
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %19
  store ptr %add.ptr.i, ptr %data.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %19
  store ptr %add.ptr1.i, ptr %tail.i.i, align 8
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %11) #5
  %24 = call ptr @memcpy(ptr %call.i, ptr %data.0118, i32 %11)
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.0119, i32 %conv10)
  %cmp19 = icmp sgt i32 %total_len.0119, %conv10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %call.i97 = call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 3) #5
  %rfu.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call.i97, i32 0, i32 1
  %27 = ptrtoint ptr %rfu.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %rfu.i, align 1
  %conv.i = trunc i32 %26 to i8
  %plen2.i = getelementptr inbounds %struct.nci_data_hdr, ptr %call.i97, i32 0, i32 2
  %28 = ptrtoint ptr %plen2.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %plen2.i, align 1
  %29 = select i1 %cmp19, i8 16, i8 0
  %or101.i = or i8 %29, %conn_id
  %30 = ptrtoint ptr %call.i97 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or101.i, ptr %call.i97, align 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %frags_q, ptr %call.i.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call.i.i, ptr %32, align 4
  %36 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %37, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %add.ptr = getelementptr i8, ptr %data.0118, i32 %11
  %sub = sub i32 %total_len.0119, %11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_queue_tx_data_frags.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_queue_tx_data_frags, %if.then35)) #5
          to label %do.end38 [label %if.then35], !srcloc !64

if.then35:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_queue_tx_data_frags.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.17, i32 noundef %11, i32 noundef %sub) #5
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %if.end17
  %tobool9.not = icmp eq i32 %sub, 0
  br i1 %tobool9.not, label %do.end38.do.body40_crit_edge, label %do.end38.while.body_crit_edge

do.end38.while.body_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end38.do.body40_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

do.body40:                                        ; preds = %do.end38.do.body40_crit_edge, %if.end8.do.body40_crit_edge
  %tx_q = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 21
  %lock = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 21, i32 2
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %38 = ptrtoint ptr %frags_q to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %frags_q, align 4
  %cmp.i.i123 = icmp eq ptr %39, %frags_q
  %tobool.not.i98116124 = icmp eq ptr %39, null
  %tobool.not.i98125 = or i1 %cmp.i.i123, %tobool.not.i98116124
  br i1 %tobool.not.i98125, label %do.body40.while.end56_crit_edge, label %while.body54.lr.ph

do.body40.while.end56_crit_edge:                  ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end56

while.body54.lr.ph:                               ; preds = %do.body40
  %prev.i.i100 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 21, i32 0, i32 0, i32 1
  %qlen.i.i.i102 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 21, i32 1
  br label %while.body54

while.body54:                                     ; preds = %while.body54.while.body54_crit_edge, %while.body54.lr.ph
  %40 = phi ptr [ %39, %while.body54.lr.ph ], [ %55, %while.body54.while.body54_crit_edge ]
  %41 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %40, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %46, ptr %prev17.i.i, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %44, ptr %46, align 8
  %49 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i100, align 4
  store volatile ptr %tx_q, ptr %40, align 8
  store volatile ptr %50, ptr %prev9.i.i, align 4
  store volatile ptr %40, ptr %prev.i.i100, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %40, ptr %50, align 4
  %52 = ptrtoint ptr %qlen.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qlen.i.i.i102, align 4
  %add.i.i.i103 = add i32 %53, 1
  store volatile i32 %add.i.i.i103, ptr %qlen.i.i.i102, align 4
  %54 = ptrtoint ptr %frags_q to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %frags_q, align 4
  %cmp.i.i = icmp eq ptr %55, %frags_q
  %tobool.not.i98116 = icmp eq ptr %55, null
  %tobool.not.i98 = or i1 %cmp.i.i, %tobool.not.i98116
  br i1 %tobool.not.i98, label %while.body54.while.end56_crit_edge, label %while.body54.while.body54_crit_edge

while.body54.while.body54_crit_edge:              ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body54

while.body54.while.end56_crit_edge:               ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end56

while.end56:                                      ; preds = %while.body54.while.end56_crit_edge, %do.body40.while.end56_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call45) #5
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %exit

while.body63:                                     ; preds = %while.body63.while.body63_crit_edge, %while.cond59.preheader.while.body63_crit_edge
  %56 = phi ptr [ %66, %while.body63.while.body63_crit_edge ], [ %17, %while.cond59.preheader.while.body63_crit_edge ]
  %57 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen.i, align 4
  %sub.i.i108 = add i32 %58, -1
  store volatile i32 %sub.i.i108, ptr %qlen.i, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 8
  %prev9.i.i109 = getelementptr inbounds %struct.anon.51, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev9.i.i109 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev9.i.i109, align 4
  store ptr null, ptr %prev9.i.i109, align 4
  store ptr null, ptr %56, align 8
  %prev17.i.i110 = getelementptr inbounds %struct.anon.51, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %prev17.i.i110 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %62, ptr %prev17.i.i110, align 4
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %60, ptr %62, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %56, i32 noundef 0) #5
  %65 = ptrtoint ptr %frags_q to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %frags_q, align 4
  %cmp.i.i104 = icmp eq ptr %66, %frags_q
  %tobool.not.i106115 = icmp eq ptr %66, null
  %tobool.not.i106 = or i1 %cmp.i.i104, %tobool.not.i106115
  br i1 %tobool.not.i106, label %while.body63.exit_crit_edge, label %while.body63.while.body63_crit_edge

while.body63.while.body63_crit_edge:              ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body63

while.body63.exit_crit_edge:                      ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

exit:                                             ; preds = %while.body63.exit_crit_edge, %while.end56, %while.cond59.preheader.exit_crit_edge, %do.end.exit_crit_edge
  %rc.0 = phi i32 [ 0, %while.end56 ], [ -71, %do.end.exit_crit_edge ], [ -12, %while.cond59.preheader.exit_crit_edge ], [ -12, %while.body63.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %frags_q) #5
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nci_rx_data_packet(ptr noundef %ndev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = and i8 %3, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rx_data_packet.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rx_data_packet, %if.then)) #5
          to label %do.body9 [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rx_data_packet.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %6) #5
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rx_data_packet.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rx_data_packet, %if.then21)) #5
          to label %do.end40 [label %if.then21], !srcloc !64

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = lshr i8 %10, 4
  %and26 = and i8 %11, 1
  %conv28 = zext i8 %and26 to i32
  %12 = and i8 %10, 15
  %conv34 = zext i8 %12 to i32
  %arrayidx36 = getelementptr i8, ptr %8, i32 2
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rx_data_packet.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef %conv28, i32 noundef %conv34, i32 noundef %conv37) #5
  br label %do.end40

do.end40:                                         ; preds = %if.then21, %do.body9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %19 = and i8 %18, 15
  %conv46 = zext i8 %19 to i32
  %call47 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %ndev, i32 noundef %conv46) #5
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.end40.cleanup_crit_edge, label %if.end50

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %do.end40
  %call51 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #5
  %target_active_prot = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 28
  %20 = ptrtoint ptr %target_active_prot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target_active_prot, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end50.if.end86_crit_edge [
    i32 2, label %if.end50.do.body65_crit_edge
    i32 1, label %if.end50.do.body65_crit_edge118
    i32 3, label %if.end50.do.body65_crit_edge119
    i32 7, label %if.end50.do.body65_crit_edge120
  ]

if.end50.do.body65_crit_edge120:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

if.end50.do.body65_crit_edge119:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

if.end50.do.body65_crit_edge118:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

if.end50.do.body65_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

do.body65:                                        ; preds = %if.end50.do.body65_crit_edge, %if.end50.do.body65_crit_edge118, %if.end50.do.body65_crit_edge119, %if.end50.do.body65_crit_edge120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rx_data_packet.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rx_data_packet, %if.then77)) #5
          to label %do.end80 [label %if.then77], !srcloc !64

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rx_data_packet.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10) #5
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %do.body65
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %len82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len82, align 4
  %sub = add i32 %26, -1
  %arrayidx83 = getelementptr i8, ptr %24, i32 %sub
  %27 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx83, align 1
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #5
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %status.0 = phi i8 [ %28, %do.end80 ], [ 0, %if.end50.if.end86_crit_edge ]
  %call87 = tail call i32 @nci_to_errno(i8 noundef zeroext %status.0) #5
  %conv88 = trunc i32 %call87 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv88)
  %tobool.not.i = icmp eq i8 %conv88, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = and i32 %call87, 255
  br label %exit.i

if.end.i:                                         ; preds = %if.end86
  %rx_data_reassembly.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 43
  %29 = ptrtoint ptr %rx_data_reassembly.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_data_reassembly.i, align 4
  %tobool1.not.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then2.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then2.i:                                       ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %33 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then2.i.skb_header_cloned.exit.i.i_crit_edge, label %if.end.i.i.i

if.then2.i.skb_header_cloned.exit.i.i_crit_edge:  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_header_cloned.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %34 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #5
  %36 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %37, 65535
  %shr.i.i.i = ashr i32 %37, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i.i.i, %if.then2.i.skb_header_cloned.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i1 [ %cmp.i.not.i.i, %if.end.i.i.i ], [ true, %if.then2.i.skb_header_cloned.exit.i.i_crit_edge ]
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %32)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %32
  %or.cond.i.i.i = and i1 %retval.0.i.i.i, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_header_cloned.exit.i.i.if.end9.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end9.i_crit_edge:   ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %42 = tail call i32 @llvm.usub.sat.i32(i32 %32, i32 %sub.ptr.sub.i.i.i.i) #5
  %add.i.i.i = add i32 %42, 127
  %and.i4.i.i = and i32 %add.i.i.i, -128
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool4.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool4.not.i, label %skb_cow_head.exit.i.if.end9.i_crit_edge, label %do.end.i

skb_cow_head.exit.i.if.end9.i_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

do.end.i:                                         ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  %43 = ptrtoint ptr %rx_data_reassembly.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_data_reassembly.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %44, i32 noundef 0) #5
  %45 = ptrtoint ptr %rx_data_reassembly.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %rx_data_reassembly.i, align 4
  br label %exit.i

if.end9.i:                                        ; preds = %skb_cow_head.exit.i.if.end9.i_crit_edge, %skb_header_cloned.exit.i.i.if.end9.i_crit_edge
  %call10.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %32) #5
  %46 = ptrtoint ptr %rx_data_reassembly.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_data_reassembly.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 19
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %50 = call ptr @memcpy(ptr %call10.i, ptr %49, i32 %32)
  %51 = load ptr, ptr %rx_data_reassembly.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %51, i32 noundef 0) #5
  %52 = ptrtoint ptr %rx_data_reassembly.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %rx_data_reassembly.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end9.i, %if.end.i.if.end14.i_crit_edge
  %53 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp.i.not = icmp eq i8 %53, 0
  br i1 %cmp.i.not, label %if.end14.i.exit.i_crit_edge, label %if.then17.i

if.end14.i.exit.i_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %rx_data_reassembly.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %skb, ptr %rx_data_reassembly.i, align 4
  br label %cleanup

exit.i:                                           ; preds = %if.end14.i.exit.i_crit_edge, %do.end.i, %if.then.i
  %err.0.i = phi i32 [ %conv.i, %if.then.i ], [ -12, %do.end.i ], [ 0, %if.end14.i.exit.i_crit_edge ]
  %skb.addr.0.i = phi ptr [ %skb, %if.then.i ], [ null, %do.end.i ], [ %skb, %if.end14.i.exit.i_crit_edge ]
  %55 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ndev, align 4
  %rf_mode.i = getelementptr inbounds %struct.nfc_dev, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %rf_mode.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rf_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp21.i = icmp eq i8 %58, 1
  br i1 %cmp21.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %exit.i
  %call25.i = tail call i32 @nfc_tm_data_received(ptr noundef %56, ptr noundef %skb.addr.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then23.i.cleanup_crit_edge, label %do.end30.i

if.then23.i.cleanup_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end30.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.else.i:                                        ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nci_data_exchange_complete(ptr noundef %ndev, ptr noundef %skb.addr.0.i, i8 noundef zeroext %4, i32 noundef %err.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.end30.i, %if.then23.i.cleanup_crit_edge, %if.then17.i, %do.end40.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_data_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/nci/data.c", i32 42, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nci_data_exchange_complete.__UNIQUE_ID_ddebug457, !1, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/nfc/nci/data.c", i32 52, i32 3}
!9 = !{ptr @nci_data_exchange_complete._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @nci_data_exchange_complete._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_nci_conn_max_data_pkt_payload_size, !12, !"__ksymtab_nci_conn_max_data_pkt_payload_size", i1 false, i1 false}
!12 = !{!"../net/nfc/nci/data.c", i32 91, i32 1}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/nfc/nci/data.c", i32 172, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nci_send_data.__UNIQUE_ID_ddebug462, !14, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!17 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/nfc/nci/data.c", i32 190, i32 4}
!20 = !{ptr @nci_send_data._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nci_send_data._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_nci_send_data, !23, !"__ksymtab_nci_send_data", i1 false, i1 false}
!23 = !{!"../net/nfc/nci/data.c", i32 206, i32 1}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/nfc/nci/data.c", i32 274, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nci_rx_data_packet.__UNIQUE_ID_ddebug463, !25, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!28 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/nfc/nci/data.c", i32 276, i32 2}
!31 = !{ptr @nci_rx_data_packet.__UNIQUE_ID_ddebug464, !30, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!32 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/nfc/nci/data.c", i32 293, i32 3}
!35 = !{ptr @nci_rx_data_packet.__UNIQUE_ID_ddebug465, !34, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!36 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/nfc/nci/data.c", i32 105, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nci_queue_tx_data_frags.__UNIQUE_ID_ddebug458, !38, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!41 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/nfc/nci/data.c", i32 141, i32 3}
!44 = !{ptr @nci_queue_tx_data_frags.__UNIQUE_ID_ddebug461, !43, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/nfc/nci/data.c", i32 227, i32 4}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @nci_add_rx_data_frag._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @nci_add_rx_data_frag._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/nfc/nci/data.c", i32 260, i32 4}
!53 = !{ptr @nci_add_rx_data_frag._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @nci_add_rx_data_frag._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148722399, i64 2148722404, i64 2148722417, i64 2148722461, i64 2148722495, i64 2148722516}
