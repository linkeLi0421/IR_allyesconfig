; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/trans.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/trans.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qtnf_trans_handle_rx_ctl_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_qtnf_trans_handle_rx_ctl_packet\09\09\09\09"
module asm "\09.long\09__crc_qtnf_trans_handle_rx_ctl_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtnf_trans_handle_rx_ctl_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22qtnf_trans_handle_rx_ctl_packet\22\09\09\09\09\09"
module asm "__kstrtabns_qtnf_trans_handle_rx_ctl_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qtnf_bus = type { ptr, i32, i32, i32, ptr, [3 x ptr], %struct.qtnf_qlink_transport, %struct.qtnf_hw_info, %struct.napi_struct, [32 x i8], %struct.net_device, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.mutex, ptr, %struct.notifier_block, [6 x i8], [2 x i8], [0 x i8], [44 x i8] }
%struct.qtnf_qlink_transport = type { %struct.qtnf_cmd_ctl_node, %struct.sk_buff_head, i32 }
%struct.qtnf_cmd_ctl_node = type { %struct.completion, ptr, i16, i8, %struct.spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.qtnf_hw_info = type { i32, i8, i8, i32, i8, i8, [32 x i8], i32, [2 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.qlink_cmd = type { %struct.qlink_msg_header, i16, i16, i8, i8, [2 x i8] }
%struct.qlink_msg_header = type { i16, i16 }
%struct.qtnf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlink_resp = type { %struct.qlink_msg_header, i16, i16, i16, i8, i8 }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/quantenna/qtnfmac/trans.c\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qtnfmac: response skb not empty\0A\00", [63 x i8] zeroinitializer }, align 32
@qtnf_trans_send_cmd_with_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013qtnfmac: %s: response timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qtnf_trans_send_cmd_with_resp\00", [34 x i8] zeroinitializer }, align 32
@qtnf_trans_send_cmd_with_resp._entry_ptr = internal global ptr @qtnf_trans_send_cmd_with_resp._entry, section ".printk_index", align 4
@qtnf_trans_send_cmd_with_resp.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.3, ptr @.str, ptr @.str.5, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qtnfmac\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interrupted\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnfmac: %s: interrupted\0A\00", [38 x i8] zeroinitializer }, align 32
@qtnf_trans_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&trans->curr_cmd.resp_lock\00", [37 x i8] zeroinitializer }, align 32
@qtnf_trans_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013qtnfmac: %s: invalid bus pointer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qtnf_trans_free\00", [16 x i8] zeroinitializer }, align 32
@qtnf_trans_free._entry_ptr = internal global ptr @qtnf_trans_free._entry, section ".printk_index", align 4
@qtnf_trans_handle_rx_ctl_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014qtnfmac: %s: packet is too small: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qtnf_trans_handle_rx_ctl_packet\00", [32 x i8] zeroinitializer }, align 32
@qtnf_trans_handle_rx_ctl_packet._entry_ptr = internal global ptr @qtnf_trans_handle_rx_ctl_packet._entry, section ".printk_index", align 4
@qtnf_trans_handle_rx_ctl_packet._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014qtnfmac: %s: cmd reply length mismatch: %u != %u\0A\00", [44 x i8] zeroinitializer }, align 32
@qtnf_trans_handle_rx_ctl_packet._entry_ptr.14 = internal global ptr @qtnf_trans_handle_rx_ctl_packet._entry.12, section ".printk_index", align 4
@qtnf_trans_handle_rx_ctl_packet._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014qtnfmac: %s: cmd reply too short: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@qtnf_trans_handle_rx_ctl_packet._entry_ptr.17 = internal global ptr @qtnf_trans_handle_rx_ctl_packet._entry.15, section ".printk_index", align 4
@qtnf_trans_handle_rx_ctl_packet._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014qtnfmac: %s: event too short: %u\0A\00", [60 x i8] zeroinitializer }, align 32
@qtnf_trans_handle_rx_ctl_packet._entry_ptr.20 = internal global ptr @qtnf_trans_handle_rx_ctl_packet._entry.18, section ".printk_index", align 4
@qtnf_trans_handle_rx_ctl_packet._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014qtnfmac: %s: unknown packet type: %x\0A\00", [56 x i8] zeroinitializer }, align 32
@qtnf_trans_handle_rx_ctl_packet._entry_ptr.23 = internal global ptr @qtnf_trans_handle_rx_ctl_packet._entry.21, section ".printk_index", align 4
@__kstrtab_qtnf_trans_handle_rx_ctl_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtnf_trans_handle_rx_ctl_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_qtnf_trans_handle_rx_ctl_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtnf_trans_handle_rx_ctl_packet to i32), ptr @__kstrtab_qtnf_trans_handle_rx_ctl_packet, ptr @__kstrtabns_qtnf_trans_handle_rx_ctl_packet }, section "___ksymtab_gpl+qtnf_trans_handle_rx_ctl_packet", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@qtnf_trans_signal_cmdresp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013qtnfmac: %s: unexpected response\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnf_trans_signal_cmdresp\00", [38 x i8] zeroinitializer }, align 32
@qtnf_trans_signal_cmdresp._entry_ptr = internal global ptr @qtnf_trans_signal_cmdresp._entry, section ".printk_index", align 4
@qtnf_trans_signal_cmdresp._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013qtnfmac: %s: seq num mismatch\0A\00", [63 x i8] zeroinitializer }, align 32
@qtnf_trans_signal_cmdresp._entry_ptr.30 = internal global ptr @qtnf_trans_signal_cmdresp._entry.28, section ".printk_index", align 4
@qtnf_trans_event_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014qtnfmac: %s: event dropped due to queue overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qtnf_trans_event_enqueue\00", [39 x i8] zeroinitializer }, align 32
@qtnf_trans_event_enqueue._entry_ptr = internal global ptr @qtnf_trans_event_enqueue._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 33, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 57, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 60, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 134, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 161, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 174, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 180, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 189, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 198, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 206, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 87, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1984, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 90, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 95, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [50 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/trans.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 121, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__ksymtab_qtnf_trans_handle_rx_ctl_packet, ptr @qtnf_trans_event_enqueue._entry, ptr @qtnf_trans_event_enqueue._entry_ptr, ptr @qtnf_trans_free._entry, ptr @qtnf_trans_free._entry_ptr, ptr @qtnf_trans_handle_rx_ctl_packet._entry, ptr @qtnf_trans_handle_rx_ctl_packet._entry.12, ptr @qtnf_trans_handle_rx_ctl_packet._entry.15, ptr @qtnf_trans_handle_rx_ctl_packet._entry.18, ptr @qtnf_trans_handle_rx_ctl_packet._entry.21, ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr, ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr.14, ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr.17, ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr.20, ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr.23, ptr @qtnf_trans_send_cmd_with_resp._entry, ptr @qtnf_trans_send_cmd_with_resp._entry_ptr, ptr @qtnf_trans_signal_cmdresp._entry, ptr @qtnf_trans_signal_cmdresp._entry.28, ptr @qtnf_trans_signal_cmdresp._entry_ptr, ptr @qtnf_trans_signal_cmdresp._entry_ptr.30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qtnf_trans_init.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @init_completion.__key, ptr @.str.24, ptr @skb_queue_head_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_send_cmd_with_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_handle_rx_ctl_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_handle_rx_ctl_packet._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_handle_rx_ctl_packet._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_handle_rx_ctl_packet._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_handle_rx_ctl_packet._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_signal_cmdresp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_signal_cmdresp._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_trans_event_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_trans_send_cmd_with_resp(ptr noundef %bus, ptr noundef %cmd_skb, ptr noundef writeonly %response_skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6
  %tobool.not = icmp eq ptr %response_skb, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @consume_skb(ptr noundef %cmd_skb) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %cmd_skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %resp_lock = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %resp_lock) #4
  %seq_num = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 2
  %2 = ptrtoint ptr %seq_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %seq_num, align 4
  %inc = add i16 %3, 1
  store i16 %inc, ptr %seq_num, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %inc)
  %seq_num5 = getelementptr inbounds %struct.qlink_cmd, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %seq_num5 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %seq_num5, align 1
  %resp_skb6 = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %resp_skb6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resp_skb6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end.if.end26_crit_edge, label %do.end, !prof !74

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end.if.end26_crit_edge
  %waiting_for_resp = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 3
  %8 = ptrtoint ptr %waiting_for_resp to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %waiting_for_resp, align 2
  tail call void @_raw_spin_unlock(ptr noundef %resp_lock) #4
  %bus_ops.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 4
  %9 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_ops.i, align 16
  %control_tx.i = getelementptr inbounds %struct.qtnf_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %control_tx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %control_tx.i, align 4
  %call.i = tail call i32 %12(ptr noundef %bus, ptr noundef %cmd_skb) #4
  tail call void @consume_skb(ptr noundef %cmd_skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %if.end42, label %if.end26.cleanup_crit_edge, !prof !74

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %if.end26
  %call43 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %trans, i32 noundef 500) #4
  tail call void @_raw_spin_lock(ptr noundef %resp_lock) #4
  %13 = ptrtoint ptr %waiting_for_resp to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %waiting_for_resp, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool46 = icmp ne i8 %14, 0
  %15 = ptrtoint ptr %resp_skb6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resp_skb6, align 4
  store ptr null, ptr %resp_skb6, align 4
  %17 = ptrtoint ptr %waiting_for_resp to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %waiting_for_resp, align 2
  tail call void @_raw_spin_unlock(ptr noundef %resp_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %cmp = icmp slt i32 %call43, 1
  br i1 %cmp, label %if.then57, label %if.end42.if.end81_crit_edge, !prof !73

if.end42.if.end81_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then57:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp58 = icmp eq i32 %call43, 0
  br i1 %cmp58, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  br label %if.end81

if.else:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_trans_send_cmd_with_resp.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_trans_send_cmd_with_resp, %if.then76)) #4
          to label %if.end81 [label %if.then76], !srcloc !76

if.then76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_trans_send_cmd_with_resp.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #4
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.else, %if.then59, %if.end42.if.end81_crit_edge
  %spec.store.select = phi i32 [ -110, %if.then59 ], [ -4, %if.then76 ], [ -14, %if.end42.if.end81_crit_edge ], [ -4, %if.else ]
  %tobool82.not = icmp eq ptr %16, null
  %spec.select = select i1 %tobool82.not, i1 true, i1 %tobool46, !prof !73
  br i1 %spec.select, label %out, label %out.thread, !prof !73

out.thread:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %response_skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %response_skb, align 4
  br label %cleanup

out:                                              ; preds = %if.end81
  %tobool95.not = icmp ne ptr %16, null
  %spec.select136 = select i1 %tobool95.not, i1 %tobool46, i1 false
  br i1 %spec.select136, label %if.then103, label %out.cleanup_crit_edge, !prof !73

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then103:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @consume_skb(ptr noundef nonnull %16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %out.cleanup_crit_edge, %out.thread, %if.end26.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ %spec.store.select, %if.then103 ], [ %spec.store.select, %out.cleanup_crit_edge ], [ %call.i, %if.end26.cleanup_crit_edge ], [ 0, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_trans_init(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %trans1 = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6
  %0 = ptrtoint ptr %trans1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %trans1, align 4
  %wait.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #4
  %resp_lock = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %resp_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @qtnf_trans_init.__key, i16 noundef signext 3) #4
  tail call void @_raw_spin_lock(ptr noundef %resp_lock) #4
  %seq_num = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 2
  %1 = ptrtoint ptr %seq_num to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %seq_num, align 4
  %waiting_for_resp = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 3
  %2 = ptrtoint ptr %waiting_for_resp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %waiting_for_resp, align 2
  %resp_skb = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %resp_skb, align 4
  tail call void @_raw_spin_unlock(ptr noundef %resp_lock) #4
  %event_queue = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 1
  %lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  %4 = ptrtoint ptr %event_queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %event_queue, ptr %event_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %event_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 1, i32 1
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i, align 4
  %event_queue_max_len = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %event_queue_max_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %event_queue_max_len, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_trans_free(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bus, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #7
  br label %return

if.end:                                           ; preds = %entry
  %event_queue1.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 1
  %call.i = tail call ptr @skb_dequeue(ptr noundef %event_queue1.i) #4
  %tobool.not5.i = icmp eq ptr %call.i, null
  br i1 %tobool.not5.i, label %if.end.return_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %current_event_skb.06.i = phi ptr [ %call2.i, %while.body.i.while.body.i_crit_edge ], [ %call.i, %if.end.while.body.i_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %current_event_skb.06.i, i32 noundef 1) #4
  %call2.i = tail call ptr @skb_dequeue(ptr noundef %event_queue1.i) #4
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %while.body.i.return_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.return_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %while.body.i.return_crit_edge, %if.end.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_trans_handle_rx_ctl_packet(ptr noundef %bus, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end, !prof !73

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %len4 = getelementptr inbounds %struct.qlink_msg_header, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %len4, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp5.not = icmp eq i32 %3, %conv
  br i1 %cmp5.not, label %if.end22, label %do.end16, !prof !74

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %conv) #7
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %1, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %do.end62 [
    i16 2, label %sw.bb
    i16 3, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp25 = icmp ult i32 %3, 12
  br i1 %cmp25, label %do.end36, label %if.end40, !prof !73

do.end36:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

if.end40:                                         ; preds = %sw.bb
  %trans.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6
  %seq_num.i = getelementptr inbounds %struct.qlink_resp, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %seq_num.i, align 1
  %resp_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %resp_lock.i) #4
  %waiting_for_resp.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 3
  %13 = ptrtoint ptr %waiting_for_resp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %waiting_for_resp.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end40.out_err.i_crit_edge, label %if.end.i, !prof !73

if.end40.out_err.i_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_err.i

if.end.i:                                         ; preds = %if.end40
  %15 = tail call i16 @llvm.bswap.i16(i16 %12) #4
  %seq_num4.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 2
  %16 = ptrtoint ptr %seq_num4.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %seq_num4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp.not.i = icmp eq i16 %15, %17
  br i1 %cmp.not.i, label %if.end19.i, label %if.end.i.out_err.i_crit_edge, !prof !74

if.end.i.out_err.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_err.i

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %resp_skb.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %skb, ptr %resp_skb.i, align 4
  %19 = ptrtoint ptr %waiting_for_resp.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %waiting_for_resp.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %resp_lock.i) #4
  tail call void @complete(ptr noundef %trans.i) #4
  br label %cleanup

out_err.i:                                        ; preds = %if.end.i.out_err.i_crit_edge, %if.end40.out_err.i_crit_edge
  %.str.29.sink.i = phi ptr [ @.str.26, %if.end40.out_err.i_crit_edge ], [ @.str.29, %if.end.i.out_err.i_crit_edge ]
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink.i, ptr noundef nonnull @.str.27) #7
  tail call void @_raw_spin_unlock(ptr noundef %resp_lock.i) #4
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

sw.bb41:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp43 = icmp ult i32 %3, 8
  br i1 %cmp43, label %do.end54, label %if.end58, !prof !73

do.end54:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #6
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

if.end58:                                         ; preds = %sw.bb41
  %qlen.i.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 1, i32 1
  %20 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i, align 4
  %event_queue_max_len.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %event_queue_max_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event_queue_max_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i = icmp ult i32 %21, %23
  br i1 %cmp.i, label %if.then.i, label %do.end.i, !prof !74

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %event_queue.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 6, i32 1
  tail call void @skb_queue_tail(ptr noundef %event_queue.i, ptr noundef %skb) #4
  %workqueue.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 11
  %24 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %workqueue.i, align 128
  %event_work.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %event_work.i) #4
  br label %cleanup

do.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #7
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

do.end62:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %conv23 = zext i16 %9 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.11, i32 noundef %conv23) #7
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %do.end.i, %if.then.i, %do.end54, %out_err.i, %if.end19.i, %do.end36, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -14, %do.end16 ], [ -1, %do.end62 ], [ -1, %do.end54 ], [ -1, %do.end36 ], [ -1, %if.end19.i ], [ -1, %out_err.i ], [ 0, %if.then.i ], [ -1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 33, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 57, i32 4}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qtnf_trans_send_cmd_with_resp._entry, !4, !"_entry", i1 false, i1 false}
!7 = !{ptr @qtnf_trans_send_cmd_with_resp._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 60, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qtnf_trans_send_cmd_with_resp.__UNIQUE_ID_ddebug463, !9, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @qtnf_trans_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 134, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 161, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qtnf_trans_free._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @qtnf_trans_free._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 174, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 180, i32 3}
!28 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 189, i32 4}
!32 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 198, i32 4}
!36 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 206, i32 3}
!40 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qtnf_trans_handle_rx_ctl_packet._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__ksymtab_qtnf_trans_handle_rx_ctl_packet, !43, !"__ksymtab_qtnf_trans_handle_rx_ctl_packet", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 213, i32 1}
!44 = !{ptr @init_completion.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/completion.h", i32 87, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @skb_queue_head_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 90, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @qtnf_trans_signal_cmdresp._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @qtnf_trans_signal_cmdresp._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 95, i32 3}
!57 = !{ptr @qtnf_trans_signal_cmdresp._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @qtnf_trans_signal_cmdresp._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/quantenna/qtnfmac/trans.c", i32 121, i32 3}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @qtnf_trans_event_enqueue._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @qtnf_trans_event_enqueue._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i8 0, i8 2}
!76 = !{i64 2148204395, i64 2148204400, i64 2148204413, i64 2148204457, i64 2148204491, i64 2148204512}
