; ModuleID = '/llk/IR_all_yes/drivers/net/wan/hdlc_ppp.c_pt.bc'
source_filename = "../drivers/net/wan/hdlc_ppp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, %struct.timer_list, i32, i16, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.ppp = type { [3 x %struct.proto], %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.hdlc_header = type { i8, i8, i16 }
%struct.cp_header = type { i8, i8, i16 }

@proto = internal global { %struct.hdlc_proto, [52 x i8] } { %struct.hdlc_proto { ptr null, ptr @ppp_close, ptr @ppp_start, ptr @ppp_stop, ptr null, ptr @ppp_ioctl, ptr @ppp_type_trans, ptr @ppp_rx, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_hdlc_ppp__343_720_hdlc_ppp_init6 = internal global ptr @hdlc_ppp_init, section ".initcall6.init", align 4
@__exitcall_hdlc_ppp_exit = internal global ptr @hdlc_ppp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author344 = internal constant [49 x i8] c"hdlc_ppp.author=Krzysztof Halasa <khc@pm.waw.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description345 = internal constant [59 x i8] c"hdlc_ppp.description=PPP protocol support for generic HDLC\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [39 x i8] c"hdlc_ppp.file=drivers/net/wan/hdlc_ppp\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [24 x i8] c"hdlc_ppp.license=GPL v2\00", section ".modinfo", align 1
@tx_queue = internal global { %struct.sk_buff_head, [40 x i8] } zeroinitializer, align 32
@ppp_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&proto->timer)\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link down\0A\00", [21 x i8] zeroinitializer }, align 32
@ppp_tx_cp.magic = internal constant { i32, [28 x i8] } zeroinitializer, align 32
@cp_table = internal constant { [13 x [7 x i32]], [84 x i8] } { [13 x [7 x i32]] [[7 x i32] [i32 163, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], [7 x i32] [i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 16, i32 16, i32 1026, i32 131, i32 131, i32 133, i32 16], [7 x i32] [i32 16, i32 16, i32 1, i32 1, i32 1, i32 1, i32 16], [7 x i32] [i32 2048, i32 421, i32 2, i32 261, i32 262, i32 261, i32 389], [7 x i32] [i32 2048, i32 675, i32 2, i32 515, i32 516, i32 515, i32 643], [7 x i32] [i32 2048, i32 2049, i32 2, i32 36, i32 131, i32 6, i32 131], [7 x i32] [i32 2048, i32 2049, i32 2, i32 163, i32 131, i32 165, i32 131], [7 x i32] [i32 2048, i32 2049, i32 2050, i32 2051, i32 2051, i32 2051, i32 2114], [7 x i32] [i32 0, i32 1, i32 1, i32 3, i32 3, i32 5, i32 131], [7 x i32] [i32 4096, i32 4097, i32 4098, i32 4099, i32 4100, i32 4101, i32 4102], [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 5, i32 6], [7 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1058]], [84 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s up\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s down\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LCP\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IPCP\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IPV6CP\00", [25 x i8] zeroinitializer }, align 32
@ppp_ioctl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ppp->lock\00", [21 x i8] zeroinitializer }, align 32
@ppp_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @ppp_hard_header, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ppp_cp_parse_cr.valid_accm = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\06\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8193]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 33, i64 87]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 16, i64 32801, i64 32855, i64 49185]
@__sancov_gen_cov_switch_values.11 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 16, i64 32801, i64 32855, i64 49185]
@__sancov_gen_cov_switch_values.13 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 16, i64 32801, i64 32855, i64 49185]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 16, i64 32801, i64 32855, i64 49185]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 16, i64 32801, i64 32855, i64 49185]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 16, i64 2048, i64 32801, i64 32855, i64 34525, i64 49185]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 16, i64 2048, i64 32801, i64 32855, i64 34525, i64 49185]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 5]
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 644, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"tx_queue\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 101, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 624, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 598, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 210, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"cp_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 277, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 342, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 353, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 130, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 132, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 134, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 690, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"ppp_header_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 654, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"valid_accm\00", align 1
@___asan_gen_.68 = private constant [30 x i8] c"../drivers/net/wan/hdlc_ppp.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 372, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1984, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__exitcall_hdlc_ppp_exit, ptr @__initcall__kmod_hdlc_ppp__343_720_hdlc_ppp_init6, ptr @hdlc_ppp_exit, ptr @proto, ptr @tx_queue, ptr @ppp_start.__key, ptr @.str, ptr @.str.1, ptr @ppp_tx_cp.magic, ptr @cp_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ppp_ioctl.__key, ptr @.str.7, ptr @ppp_header_ops, ptr @ppp_cp_parse_cr.valid_accm, ptr @skb_queue_head_init.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proto to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_queue to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_tx_cp.magic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_table to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_ioctl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_cp_parse_cr.valid_accm to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdlc_ppp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_hdlc_protocol(ptr noundef nonnull @proto) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlc_ppp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.sk_buff_head, ptr @tx_queue, i32 0, i32 2), ptr noundef nonnull @.str.8, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  store ptr @tx_queue, ptr @tx_queue, align 4
  store ptr @tx_queue, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @tx_queue, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @tx_queue, i32 0, i32 1), align 4
  tail call void @register_hdlc_protocol(ptr noundef nonnull @proto) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_close(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call ptr @skb_dequeue(ptr noundef nonnull @tx_queue) #8
  %cmp.not3.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not3.i, label %entry.ppp_tx_flush.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.ppp_tx_flush.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ppp_tx_flush.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %entry.while.body.i_crit_edge ]
  %call1.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call4.i) #8
  %call.i = tail call ptr @skb_dequeue(ptr noundef nonnull @tx_queue) #8
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.body.i.ppp_tx_flush.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.ppp_tx_flush.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ppp_tx_flush.exit

ppp_tx_flush.exit:                                ; preds = %while.body.i.ppp_tx_flush.exit_crit_edge, %entry.ppp_tx_flush.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_start(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %1, align 4
  %timer = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ppp_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @ppp_start.__key) #8
  %state = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 0, i32 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %state, align 2
  %arrayidx.1 = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %arrayidx.1, align 4
  %timer.1 = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer.1, ptr noundef nonnull @ppp_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @ppp_start.__key) #8
  %state.1 = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %state.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %state.1, align 2
  %arrayidx.2 = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %arrayidx.2, align 4
  %timer.2 = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer.2, ptr noundef nonnull @ppp_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @ppp_start.__key) #8
  %state.2 = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %state.2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %state.2, align 2
  %pid = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -16351, ptr %pid, align 4
  %pid6 = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %pid6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -32735, ptr %pid6, align 4
  %pid9 = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %pid9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -32681, ptr %pid9, align 4
  tail call fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext -16351, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext -16351, i16 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_ioctl(ptr noundef %dev, ptr nocapture noundef %ifs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ifs, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8193, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %proto = getelementptr i8, ptr %dev, i32 2312
  %3 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proto, align 4
  %cmp.not = icmp eq ptr %4, @proto
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8193, ptr %ifs, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = tail call zeroext i1 @capable(i32 noundef 12) #8
  br i1 %call4, label %if.end6, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %sw.bb3
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %call9 = tail call i32 %9(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @attach_hdlc_protocol(ptr noundef %dev, ptr noundef nonnull @proto, i32 noundef 264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i, align 4
  %lock = getelementptr inbounds %struct.ppp, ptr %11, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ppp_ioctl.__key, i16 noundef signext 3) #8
  %req_timeout = getelementptr inbounds %struct.ppp, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %req_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %req_timeout, align 4
  %cr_retries = getelementptr inbounds %struct.ppp, ptr %11, i32 0, i32 4
  %13 = ptrtoint ptr %cr_retries to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %cr_retries, align 4
  %term_retries = getelementptr inbounds %struct.ppp, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %term_retries to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %term_retries, align 4
  %keepalive_interval = getelementptr inbounds %struct.ppp, ptr %11, i32 0, i32 6
  %15 = ptrtoint ptr %keepalive_interval to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 10, ptr %keepalive_interval, align 4
  %keepalive_timeout = getelementptr inbounds %struct.ppp, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %keepalive_timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 60, ptr %keepalive_timeout, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4, ptr %hard_header_len, align 2
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %18 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ppp_header_ops, ptr %header_ops, align 4
  %type19 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %19 = ptrtoint ptr %type19 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 512, ptr %type19, align 16
  %call20 = tail call i32 @call_netdevice_notifiers(i32 noundef 16, ptr noundef %dev) #8
  tail call fastcc void @netif_dormant_on(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb3.cleanup_crit_edge ], [ -16, %if.end6.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ppp_type_trans(ptr noundef %skb, ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp2.not = icmp eq i8 %5, -1
  br i1 %cmp2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %control = getelementptr inbounds %struct.hdlc_header, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %control, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp5.not = icmp eq i8 %7, 3
  br i1 %cmp5.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %protocol = getelementptr inbounds %struct.hdlc_header, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %9, label %if.end8.cleanup_crit_edge [
    i16 33, label %if.end8.cleanup.sink.split_crit_edge
    i16 87, label %sw.bb10
  ]

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb10, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i16 [ -31011, %sw.bb10 ], [ 2048, %if.end8.cleanup.sink.split_crit_edge ]
  %call11 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 25, %entry.cleanup_crit_edge ], [ 25, %lor.lhs.false.cleanup_crit_edge ], [ 25, %if.end.cleanup_crit_edge ], [ 25, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_rx(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %state.i = getelementptr i8, ptr %4, i32 2368
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state.i, align 4
  %lock = getelementptr inbounds %struct.ppp, ptr %6, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp7 = icmp ult i32 %8, 4
  br i1 %cmp7, label %entry.rx_error_crit_edge, label %if.end

entry.rx_error_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_error

if.end:                                           ; preds = %entry
  %call9 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp11.not = icmp eq i8 %10, -1
  br i1 %cmp11.not, label %lor.lhs.false, label %if.end.rx_error_crit_edge

if.end.rx_error_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_error

lor.lhs.false:                                    ; preds = %if.end
  %control = getelementptr inbounds %struct.hdlc_header, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %control, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp14.not = icmp eq i8 %12, 3
  br i1 %cmp14.not, label %if.end17, label %lor.lhs.false.rx_error_crit_edge

lor.lhs.false.rx_error_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_error

if.end17:                                         ; preds = %lor.lhs.false
  %protocol = getelementptr inbounds %struct.hdlc_header, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 2
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state.i, align 4
  %17 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %14, label %if.end17.if.then19_crit_edge [
    i16 -16351, label %if.end17.get_proto.exit_crit_edge
    i16 -32735, label %sw.bb1.i
    i16 -32681, label %sw.bb4.i
  ]

if.end17.get_proto.exit_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_proto.exit

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

sw.bb1.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i = getelementptr [3 x %struct.proto], ptr %16, i32 0, i32 1
  br label %get_proto.exit

sw.bb4.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6.i = getelementptr [3 x %struct.proto], ptr %16, i32 0, i32 2
  br label %get_proto.exit

get_proto.exit:                                   ; preds = %sw.bb4.i, %sw.bb1.i, %if.end17.get_proto.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx6.i, %sw.bb4.i ], [ %arrayidx3.i, %sw.bb1.i ], [ %16, %if.end17.get_proto.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %get_proto.exit.if.then19_crit_edge, label %if.end27

get_proto.exit.if.then19_crit_edge:               ; preds = %get_proto.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.then19:                                        ; preds = %get_proto.exit.if.then19_crit_edge, %if.end17.if.then19_crit_edge
  %state = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %cmp21 = icmp eq i8 %19, 6
  br i1 %cmp21, label %if.then23, label %if.then19.rx_error_crit_edge

if.then19.rx_error_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_error

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.ppp, ptr %6, i32 0, i32 8
  %20 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %seq, align 4
  %inc = add i8 %21, 1
  store i8 %inc, ptr %seq, align 4
  %22 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len6, align 4
  %add = add i32 %23, 2
  tail call fastcc void @ppp_tx_cp(ptr noundef %4, i16 noundef zeroext -16351, i8 noundef zeroext 8, i8 noundef zeroext %inc, i32 noundef %add, ptr noundef %protocol)
  br label %rx_error

if.end27:                                         ; preds = %get_proto.exit
  %len28 = getelementptr inbounds %struct.cp_header, ptr %call9, i32 0, i32 2
  %24 = ptrtoint ptr %len28 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len28, align 2
  %conv29 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %25)
  %cmp30 = icmp ult i16 %25, 4
  br i1 %cmp30, label %if.end27.rx_error_crit_edge, label %lor.lhs.false32

if.end27.rx_error_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_error

lor.lhs.false32:                                  ; preds = %if.end27
  %26 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv29)
  %cmp34 = icmp ult i32 %27, %conv29
  br i1 %cmp34, label %lor.lhs.false32.rx_error_crit_edge, label %if.end37

lor.lhs.false32.rx_error_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_error

if.end37:                                         ; preds = %lor.lhs.false32
  %call38 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #8
  %sub = add nsw i32 %conv29, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16351, i16 %14)
  %cmp40 = icmp eq i16 %14, -16351
  %28 = ptrtoint ptr %call9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %call9, align 2
  br i1 %cmp40, label %if.then42, label %if.end78

if.then42:                                        ; preds = %if.end37
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %29, label %if.then42.sw.default_crit_edge [
    i8 8, label %sw.bb
    i8 9, label %sw.bb58
    i8 10, label %sw.bb69
    i8 11, label %if.then42.out_crit_edge
    i8 1, label %if.then42.sw.bb81_crit_edge
    i8 2, label %if.then42.sw.bb84_crit_edge
    i8 4, label %if.then42.sw.bb92_crit_edge
    i8 3, label %if.then42.sw.bb92_crit_edge181
    i8 5, label %if.then42.sw.bb101_crit_edge
    i8 6, label %if.then42.sw.bb103_crit_edge
    i8 7, label %if.then42.sw.bb104_crit_edge
  ]

if.then42.sw.bb104_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb104

if.then42.sw.bb103_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb103

if.then42.sw.bb101_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb101

if.then42.sw.bb92_crit_edge181:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb92

if.then42.sw.bb92_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb92

if.then42.sw.bb84_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb84

if.then42.sw.bb81_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then42.sw.default_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb:                                            ; preds = %if.then42
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 2
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %34, label %sw.bb.out_crit_edge [
    i16 -16351, label %sw.bb.if.then56_crit_edge
    i16 -32735, label %sw.bb.if.then56_crit_edge182
    i16 -32681, label %sw.bb.if.then56_crit_edge183
  ]

sw.bb.if.then56_crit_edge183:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

sw.bb.if.then56_crit_edge182:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

sw.bb.if.then56_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then56:                                        ; preds = %sw.bb.if.then56_crit_edge, %sw.bb.if.then56_crit_edge182, %sw.bb.if.then56_crit_edge183
  tail call fastcc void @ppp_cp_event(ptr noundef %4, i16 noundef zeroext %34, i16 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  br label %out

sw.bb58:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp59 = icmp ugt i32 %sub, 3
  br i1 %cmp59, label %land.lhs.true, label %sw.bb58.out_crit_edge

sw.bb58.out_crit_edge:                            ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %sw.bb58
  %state61 = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 4
  %36 = ptrtoint ptr %state61 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %state61, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %37)
  %cmp63 = icmp eq i8 %37, 6
  br i1 %cmp63, label %if.then65, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.cp_header, ptr %call9, i32 0, i32 1
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id, align 1
  %sub66 = add nsw i32 %conv29, -8
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 4
  tail call fastcc void @ppp_tx_cp(ptr noundef %4, i16 noundef zeroext -16351, i8 noundef zeroext 10, i8 noundef zeroext %39, i32 noundef %sub66, ptr noundef %add.ptr)
  br label %out

sw.bb69:                                          ; preds = %if.then42
  %id70 = getelementptr inbounds %struct.cp_header, ptr %call9, i32 0, i32 1
  %42 = ptrtoint ptr %id70 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %id70, align 1
  %echo_id = getelementptr inbounds %struct.ppp, ptr %6, i32 0, i32 9
  %44 = ptrtoint ptr %echo_id to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %echo_id, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp73 = icmp eq i8 %43, %45
  br i1 %cmp73, label %if.then75, label %sw.bb69.out_crit_edge

sw.bb69.out_crit_edge:                            ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then75:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %last_pong = getelementptr inbounds %struct.ppp, ptr %6, i32 0, i32 2
  %47 = ptrtoint ptr %last_pong to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %last_pong, align 4
  br label %out

if.end78:                                         ; preds = %if.end37
  %48 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %29, label %if.end78.sw.default_crit_edge [
    i8 1, label %if.end78.sw.bb81_crit_edge
    i8 2, label %if.end78.sw.bb84_crit_edge
    i8 4, label %if.end78.sw.bb92_crit_edge
    i8 3, label %if.end78.sw.bb92_crit_edge184
    i8 5, label %if.end78.sw.bb101_crit_edge
    i8 6, label %if.end78.sw.bb103_crit_edge
    i8 7, label %if.end78.sw.bb104_crit_edge
  ]

if.end78.sw.bb104_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb104

if.end78.sw.bb103_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb103

if.end78.sw.bb101_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb101

if.end78.sw.bb92_crit_edge184:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb92

if.end78.sw.bb92_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb92

if.end78.sw.bb84_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb84

if.end78.sw.bb81_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81

if.end78.sw.default_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb81:                                          ; preds = %if.end78.sw.bb81_crit_edge, %if.then42.sw.bb81_crit_edge
  %id82 = getelementptr inbounds %struct.cp_header, ptr %call9, i32 0, i32 1
  %49 = ptrtoint ptr %id82 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %id82, align 1
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  tail call fastcc void @ppp_cp_parse_cr(ptr noundef %4, i16 noundef zeroext %14, i8 noundef zeroext %50, i32 noundef %sub, ptr noundef %52)
  br label %out

sw.bb84:                                          ; preds = %if.end78.sw.bb84_crit_edge, %if.then42.sw.bb84_crit_edge
  %id85 = getelementptr inbounds %struct.cp_header, ptr %call9, i32 0, i32 1
  %53 = ptrtoint ptr %id85 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %id85, align 1
  %cr_id = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 5
  %55 = ptrtoint ptr %cr_id to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cr_id, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp88 = icmp eq i8 %54, %56
  br i1 %cmp88, label %if.then90, label %sw.bb84.out_crit_edge

sw.bb84.out_crit_edge:                            ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then90:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_cp_event(ptr noundef %4, i16 noundef zeroext %14, i16 noundef zeroext 6, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  br label %out

sw.bb92:                                          ; preds = %if.end78.sw.bb92_crit_edge, %if.end78.sw.bb92_crit_edge184, %if.then42.sw.bb92_crit_edge, %if.then42.sw.bb92_crit_edge181
  %id93 = getelementptr inbounds %struct.cp_header, ptr %call9, i32 0, i32 1
  %57 = ptrtoint ptr %id93 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %id93, align 1
  %cr_id95 = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 5
  %59 = ptrtoint ptr %cr_id95 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cr_id95, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp97 = icmp eq i8 %58, %60
  br i1 %cmp97, label %if.then99, label %sw.bb92.out_crit_edge

sw.bb92.out_crit_edge:                            ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then99:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_cp_event(ptr noundef %4, i16 noundef zeroext %14, i16 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  br label %out

sw.bb101:                                         ; preds = %if.end78.sw.bb101_crit_edge, %if.then42.sw.bb101_crit_edge
  %id102 = getelementptr inbounds %struct.cp_header, ptr %call9, i32 0, i32 1
  %61 = ptrtoint ptr %id102 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %id102, align 1
  tail call fastcc void @ppp_cp_event(ptr noundef %4, i16 noundef zeroext %14, i16 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext %62, i32 noundef 0, ptr noundef null)
  br label %out

sw.bb103:                                         ; preds = %if.end78.sw.bb103_crit_edge, %if.then42.sw.bb103_crit_edge
  tail call fastcc void @ppp_cp_event(ptr noundef %4, i16 noundef zeroext %14, i16 noundef zeroext 9, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  br label %out

sw.bb104:                                         ; preds = %if.end78.sw.bb104_crit_edge, %if.then42.sw.bb104_crit_edge
  tail call fastcc void @ppp_cp_event(ptr noundef %4, i16 noundef zeroext %14, i16 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  br label %out

sw.default:                                       ; preds = %if.end78.sw.default_crit_edge, %if.then42.sw.default_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %63 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mtu, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 %conv29)
  tail call fastcc void @ppp_cp_event(ptr noundef %4, i16 noundef zeroext %14, i16 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %65, ptr noundef %call9)
  br label %out

rx_error:                                         ; preds = %lor.lhs.false32.rx_error_crit_edge, %if.end27.rx_error_crit_edge, %if.then23, %if.then19.rx_error_crit_edge, %lor.lhs.false.rx_error_crit_edge, %if.end.rx_error_crit_edge, %entry.rx_error_crit_edge
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 4
  %66 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_errors, align 8
  %inc112 = add i32 %67, 1
  store i32 %inc112, ptr %rx_errors, align 8
  br label %out

out:                                              ; preds = %rx_error, %sw.default, %sw.bb104, %sw.bb103, %sw.bb101, %if.then99, %sw.bb92.out_crit_edge, %if.then90, %sw.bb84.out_crit_edge, %sw.bb81, %if.then75, %sw.bb69.out_crit_edge, %if.then65, %land.lhs.true.out_crit_edge, %sw.bb58.out_crit_edge, %if.then56, %sw.bb.out_crit_edge, %if.then42.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  %call2.i = tail call ptr @skb_dequeue(ptr noundef nonnull @tx_queue) #8
  %cmp.not3.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not3.i, label %out.ppp_tx_flush.exit_crit_edge, label %out.while.body.i_crit_edge

out.while.body.i_crit_edge:                       ; preds = %out
  br label %while.body.i

out.ppp_tx_flush.exit_crit_edge:                  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %ppp_tx_flush.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %out.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %out.while.body.i_crit_edge ]
  %call1.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call4.i) #8
  %call.i = tail call ptr @skb_dequeue(ptr noundef nonnull @tx_queue) #8
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.body.i.ppp_tx_flush.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.ppp_tx_flush.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ppp_tx_flush.exit

ppp_tx_flush.exit:                                ; preds = %while.body.i.ppp_tx_flush.exit_crit_edge, %out.ppp_tx_flush.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %state.i = getelementptr i8, ptr %1, i32 2368
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %lock = getelementptr inbounds %struct.ppp, ptr %3, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %t, i32 54
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %7, label %if.end.sw.epilog_crit_edge [
    i8 2, label %if.end.sw.bb_crit_edge
    i8 3, label %if.end.sw.bb_crit_edge76
    i8 4, label %if.end.sw.bb_crit_edge77
    i8 5, label %if.end.sw.bb_crit_edge78
    i8 6, label %sw.bb24
  ]

if.end.sw.bb_crit_edge78:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge77:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge76:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge76, %if.end.sw.bb_crit_edge77, %if.end.sw.bb_crit_edge78
  %restart_counter = getelementptr i8, ptr %t, i32 56
  %9 = ptrtoint ptr %restart_counter to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %restart_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %pid = getelementptr i8, ptr %t, i32 52
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pid, align 4
  tail call fastcc void @ppp_cp_event(ptr noundef %12, i16 noundef zeroext %14, i16 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  %15 = ptrtoint ptr %restart_counter to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %restart_counter, align 4
  %dec = add i8 %16, -1
  store i8 %dec, ptr %restart_counter, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %state.i75 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 6
  %17 = ptrtoint ptr %state.i75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i75, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  %pid18 = getelementptr i8, ptr %t, i32 52
  %20 = ptrtoint ptr %pid18 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pid18, align 4
  br i1 %tobool.not.i, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_cp_event(ptr noundef %12, i16 noundef zeroext %21, i16 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  br label %sw.epilog

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_cp_event(ptr noundef %12, i16 noundef zeroext %21, i16 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %pid25 = getelementptr i8, ptr %t, i32 52
  %22 = ptrtoint ptr %pid25 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pid25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16351, i16 %23)
  %cmp27.not = icmp eq i16 %23, -16351
  br i1 %cmp27.not, label %if.end30, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end30:                                         ; preds = %sw.bb24
  %last_pong = getelementptr inbounds %struct.ppp, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %last_pong to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_pong, align 4
  %keepalive_timeout = getelementptr inbounds %struct.ppp, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %keepalive_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %keepalive_timeout, align 4
  %mul = mul i32 %27, 100
  %add = add i32 %mul, %25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp31 = icmp slt i32 %sub, 0
  br i1 %cmp31, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %30, ptr noundef nonnull @.str.1) #11
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  tail call fastcc void @ppp_cp_event(ptr noundef %32, i16 noundef zeroext -16351, i16 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  tail call fastcc void @ppp_cp_event(ptr noundef %34, i16 noundef zeroext -16351, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  br label %sw.epilog

if.else37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.ppp, ptr %3, i32 0, i32 8
  %35 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %seq, align 4
  %inc = add i8 %36, 1
  store i8 %inc, ptr %seq, align 4
  %echo_id = getelementptr inbounds %struct.ppp, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %echo_id to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %inc, ptr %echo_id, align 1
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  tail call fastcc void @ppp_tx_cp(ptr noundef %39, i16 noundef zeroext -16351, i8 noundef zeroext 9, i8 noundef zeroext %inc, i32 noundef 0, ptr noundef null)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %keepalive_interval = getelementptr inbounds %struct.ppp, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %keepalive_interval to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %keepalive_interval, align 4
  %mul40 = mul i32 %42, 100
  %add41 = add i32 %mul40, %40
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %43 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add41, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else37, %if.then33, %sw.bb24.sw.epilog_crit_edge, %if.else19, %if.then16, %if.then11, %if.end.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %call2.i = tail call ptr @skb_dequeue(ptr noundef nonnull @tx_queue) #8
  %cmp.not3.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not3.i, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.while.body.i_crit_edge

sw.epilog.while.body.i_crit_edge:                 ; preds = %sw.epilog
  br label %while.body.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.epilog.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %sw.epilog.while.body.i_crit_edge ]
  %call1.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call4.i) #8
  %call.i = tail call ptr @skb_dequeue(ptr noundef nonnull @tx_queue) #8
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext %pid, i16 noundef zeroext %event, i8 noundef zeroext %code, i8 noundef zeroext %id, i32 noundef %len, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %2 = zext i16 %pid to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %pid, label %sw.default.i [
    i16 -16351, label %entry.get_proto.exit_crit_edge
    i16 -32735, label %sw.bb1.i
    i16 -32681, label %sw.bb4.i
  ]

entry.get_proto.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_proto.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 1
  br label %get_proto.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6.i = getelementptr [3 x %struct.proto], ptr %1, i32 0, i32 2
  br label %get_proto.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_proto.exit

get_proto.exit:                                   ; preds = %sw.default.i, %sw.bb4.i, %sw.bb1.i, %entry.get_proto.exit_crit_edge
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %arrayidx6.i, %sw.bb4.i ], [ %arrayidx3.i, %sw.bb1.i ], [ %1, %entry.get_proto.exit_crit_edge ]
  %state = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp ugt i8 %4, 6
  br i1 %cmp, label %do.body4, label %do.end29, !prof !53

do.body4:                                         ; preds = %get_proto.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wan/hdlc_ppp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

do.end29:                                         ; preds = %get_proto.exit
  %conv = zext i8 %4 to i32
  %conv11 = zext i16 %event to i32
  %arrayidx30 = getelementptr [13 x [7 x i32]], ptr @cp_table, i32 0, i32 %conv11, i32 %conv
  %5 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx30, align 4
  %7 = trunc i32 %6 to i8
  %conv31 = and i8 %7, 15
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv31, ptr %state, align 2
  %and33 = and i32 %6, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end29.if.end37_crit_edge, label %if.then35

do.end29.if.end37_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %req_timeout = getelementptr inbounds %struct.ppp, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %req_timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req_timeout, align 4
  %mul = mul i32 %11, 100
  %add = add i32 %mul, %9
  %timeout = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %timeout, align 4
  %call36 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.end29.if.end37_crit_edge
  %and38 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %restart_counter = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 6
  %13 = ptrtoint ptr %restart_counter to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %restart_counter, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  %and42 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end51_crit_edge, label %if.then44

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp47 = icmp eq i8 %15, 2
  %term_retries = getelementptr inbounds %struct.ppp, ptr %1, i32 0, i32 5
  %cr_retries = getelementptr inbounds %struct.ppp, ptr %1, i32 0, i32 4
  %cond.in = select i1 %cmp47, ptr %term_retries, ptr %cr_retries
  %16 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond = load i32, ptr %cond.in, align 4
  %conv49 = trunc i32 %cond to i8
  %restart_counter50 = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 6
  %17 = ptrtoint ptr %restart_counter50 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv49, ptr %restart_counter50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.end41.if.end51_crit_edge
  %and52 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.ppp, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %seq, align 4
  %inc = add i8 %19, 1
  store i8 %inc, ptr %seq, align 4
  %cr_id = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 5
  %20 = ptrtoint ptr %cr_id to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %inc, ptr %cr_id, align 1
  tail call fastcc void @ppp_tx_cp(ptr noundef %dev, i16 noundef zeroext %pid, i8 noundef zeroext 1, i8 noundef zeroext %inc, i32 noundef 0, ptr noundef null)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51.if.end55_crit_edge
  %and56 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end59_crit_edge, label %if.then58

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_tx_cp(ptr noundef %dev, i16 noundef zeroext %pid, i8 noundef zeroext 2, i8 noundef zeroext %id, i32 noundef %len, ptr noundef %data)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end55.if.end59_crit_edge
  %and60 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end63_crit_edge, label %if.then62

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_tx_cp(ptr noundef %dev, i16 noundef zeroext %pid, i8 noundef zeroext %code, i8 noundef zeroext %id, i32 noundef %len, ptr noundef %data)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59.if.end63_crit_edge
  %and64 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end69_crit_edge, label %if.then66

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %seq67 = getelementptr inbounds %struct.ppp, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %seq67 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %seq67, align 4
  %inc68 = add i8 %22, 1
  store i8 %inc68, ptr %seq67, align 4
  tail call fastcc void @ppp_tx_cp(ptr noundef %dev, i16 noundef zeroext %pid, i8 noundef zeroext 5, i8 noundef zeroext %inc68, i32 noundef 0, ptr noundef null)
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end63.if.end69_crit_edge
  %and70 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end73_crit_edge, label %if.then72

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_tx_cp(ptr noundef %dev, i16 noundef zeroext %pid, i8 noundef zeroext 6, i8 noundef zeroext %id, i32 noundef 0, ptr noundef null)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end69.if.end73_crit_edge
  %and74 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end79_crit_edge, label %if.then76

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %seq77 = getelementptr inbounds %struct.ppp, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %seq77 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %seq77, align 4
  %inc78 = add i8 %24, 1
  store i8 %inc78, ptr %seq77, align 4
  tail call fastcc void @ppp_tx_cp(ptr noundef %dev, i16 noundef zeroext %pid, i8 noundef zeroext 7, i8 noundef zeroext %inc78, i32 noundef %len, ptr noundef %data)
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end73.if.end79_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cond190 = icmp eq i8 %4, 6
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %26)
  %cmp104.not = icmp eq i8 %26, 6
  br i1 %cond190, label %land.lhs.true101, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end79
  br i1 %cmp104.not, label %if.then86, label %land.lhs.true.if.end98_crit_edge

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then86:                                        ; preds = %land.lhs.true
  %27 = zext i16 %pid to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %pid, label %proto_name.exit [
    i16 -16351, label %proto_name.exit.thread201
    i16 -32735, label %if.then86.proto_name.exit.thread_crit_edge
    i16 -32681, label %sw.bb2.i
  ]

if.then86.proto_name.exit.thread_crit_edge:       ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %proto_name.exit.thread

proto_name.exit.thread201:                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #11
  tail call fastcc void @netif_dormant_off(ptr noundef %dev)
  tail call fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext -32735, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  tail call fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext -32681, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %last_pong = getelementptr inbounds %struct.ppp, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %last_pong to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_pong, align 4
  %timer92 = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 1
  %30 = load volatile i32, ptr @jiffies, align 128
  %keepalive_interval = getelementptr inbounds %struct.ppp, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %keepalive_interval to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %keepalive_interval, align 4
  %mul93 = mul i32 %32, 100
  %add94 = add i32 %mul93, %30
  %timeout95 = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 2
  %33 = ptrtoint ptr %timeout95 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add94, ptr %timeout95, align 4
  %call96 = tail call i32 @mod_timer(ptr noundef %timer92, i32 noundef %add94) #8
  br label %if.end98

sw.bb2.i:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %proto_name.exit.thread

proto_name.exit.thread:                           ; preds = %sw.bb2.i, %if.then86.proto_name.exit.thread_crit_edge
  %retval.0.i193.ph = phi ptr [ @.str.6, %sw.bb2.i ], [ @.str.5, %if.then86.proto_name.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull %retval.0.i193.ph) #11
  br label %if.end98

proto_name.exit:                                  ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef null) #11
  br label %if.end98

if.end98:                                         ; preds = %proto_name.exit, %proto_name.exit.thread, %proto_name.exit.thread201, %land.lhs.true.if.end98_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cond210 = icmp eq i8 %4, 0
  br i1 %cond210, label %if.end98.if.end124_crit_edge, label %if.end98.land.lhs.true116_crit_edge

if.end98.land.lhs.true116_crit_edge:              ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true116

if.end98.if.end124_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

land.lhs.true101:                                 ; preds = %if.end79
  br i1 %cmp104.not, label %land.lhs.true101.if.end124_crit_edge, label %if.then106

land.lhs.true101.if.end124_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then106:                                       ; preds = %land.lhs.true101
  %34 = zext i16 %pid to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %pid, label %proto_name.exit198 [
    i16 -16351, label %proto_name.exit198.thread206
    i16 -32735, label %if.then106.proto_name.exit198.thread_crit_edge
    i16 -32681, label %sw.bb2.i195
  ]

if.then106.proto_name.exit198.thread_crit_edge:   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %proto_name.exit198.thread

proto_name.exit198.thread206:                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  tail call fastcc void @netif_dormant_on(ptr noundef %dev)
  tail call fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext -32735, i16 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  tail call fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext -32681, i16 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  br label %land.lhs.true116

sw.bb2.i195:                                      ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %proto_name.exit198.thread

proto_name.exit198.thread:                        ; preds = %sw.bb2.i195, %if.then106.proto_name.exit198.thread_crit_edge
  %retval.0.i197.ph = phi ptr [ @.str.6, %sw.bb2.i195 ], [ @.str.5, %if.then106.proto_name.exit198.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull %retval.0.i197.ph) #11
  br label %land.lhs.true116

proto_name.exit198:                               ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef null) #11
  br label %land.lhs.true116

land.lhs.true116:                                 ; preds = %proto_name.exit198, %proto_name.exit198.thread, %proto_name.exit198.thread206, %if.end98.land.lhs.true116_crit_edge
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr = load i8, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp119 = icmp eq i8 %.pr, 0
  br i1 %cmp119, label %if.then121, label %land.lhs.true116.if.end124_crit_edge

land.lhs.true116.if.end124_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then121:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #10
  %timer122 = getelementptr inbounds %struct.proto, ptr %retval.0.i, i32 0, i32 1
  %call123 = tail call i32 @del_timer(ptr noundef %timer122) #8
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %land.lhs.true116.if.end124_crit_edge, %land.lhs.true101.if.end124_crit_edge, %if.end98.if.end124_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppp_tx_cp(ptr noundef %dev, i16 noundef zeroext %pid, i8 noundef zeroext %code, i8 noundef zeroext %id, i32 noundef %len, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16351, i16 %pid)
  %cmp = icmp eq i16 %pid, -16351
  %code.off = add i8 %code, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %code.off)
  %switch = icmp ult i8 %code.off, 2
  %or.cond = and i1 %cmp, %switch
  %spec.select51 = select i1 %or.cond, i32 4, i32 0
  %add = add i32 %len, 8
  %add8 = add i32 %add, %spec.select51
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add8, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %call11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %code, ptr %call11, align 2
  %id13 = getelementptr inbounds %struct.cp_header, ptr %call11, i32 0, i32 1
  %5 = ptrtoint ptr %id13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %id, ptr %id13, align 1
  %add14 = add i32 %len, 4
  %add15 = add i32 %add14, %spec.select51
  %conv16 = trunc i32 %add15 to i16
  %len17 = getelementptr inbounds %struct.cp_header, ptr %call11, i32 0, i32 2
  %6 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv16, ptr %len17, align 2
  br i1 %or.cond, label %if.then19, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %spec.select51) #8
  %7 = call ptr @memcpy(ptr %call.i, ptr @ppp_tx_cp.magic, i32 %spec.select51)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end10.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool22.not = icmp eq i32 %len, 0
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call.i52 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len) #8
  %8 = call ptr @memcpy(ptr %call.i52, ptr %data, i32 %len)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %call.i53 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 2
  %control.i = getelementptr inbounds %struct.hdlc_header, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %control.i, align 1
  %13 = zext i16 %pid to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %pid, label %sw.default.i [
    i16 2048, label %if.end25.ppp_hard_header.exit_crit_edge
    i16 -31011, label %sw.bb2.i
    i16 -16351, label %if.end25.sw.bb4.i_crit_edge
    i16 -32735, label %if.end25.sw.bb4.i_crit_edge55
    i16 -32681, label %if.end25.sw.bb4.i_crit_edge56
  ]

if.end25.sw.bb4.i_crit_edge56:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

if.end25.sw.bb4.i_crit_edge55:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

if.end25.sw.bb4.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

if.end25.ppp_hard_header.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %ppp_hard_header.exit

sw.bb2.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %ppp_hard_header.exit

sw.bb4.i:                                         ; preds = %if.end25.sw.bb4.i_crit_edge, %if.end25.sw.bb4.i_crit_edge55, %if.end25.sw.bb4.i_crit_edge56
  br label %ppp_hard_header.exit

sw.default.i:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %ppp_hard_header.exit

ppp_hard_header.exit:                             ; preds = %sw.default.i, %sw.bb4.i, %sw.bb2.i, %if.end25.ppp_hard_header.exit_crit_edge
  %.sink.i = phi i16 [ 0, %sw.default.i ], [ %pid, %sw.bb4.i ], [ 87, %sw.bb2.i ], [ 33, %if.end25.ppp_hard_header.exit_crit_edge ]
  %protocol6.i = getelementptr inbounds %struct.hdlc_header, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %protocol6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %.sink.i, ptr %protocol6.i, align 2
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %15 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7, ptr %priority, align 4
  %16 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %16, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 25, ptr %protocol, align 8
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %network_header.i, align 4
  tail call void @skb_queue_tail(ptr noundef nonnull @tx_queue, ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ppp_hard_header.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_hard_header(ptr noundef %skb, ptr nocapture noundef readnone %dev, i16 noundef zeroext %type, ptr nocapture noundef readnone %daddr, ptr nocapture noundef readnone %saddr, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #8
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 2
  %control = getelementptr inbounds %struct.hdlc_header, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %control, align 1
  %4 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %type, label %sw.default [
    i16 2048, label %entry.sw.epilog_crit_edge
    i16 -31011, label %sw.bb2
    i16 -16351, label %entry.sw.bb4_crit_edge
    i16 -32735, label %entry.sw.bb4_crit_edge14
    i16 -32681, label %entry.sw.bb4_crit_edge15
  ]

entry.sw.bb4_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge14, %entry.sw.bb4_crit_edge15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i16 [ 0, %sw.default ], [ %type, %sw.bb4 ], [ 87, %sw.bb2 ], [ 33, %entry.sw.epilog_crit_edge ]
  %protocol6 = getelementptr inbounds %struct.hdlc_header, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %protocol6 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %.sink, ptr %protocol6, align 2
  ret i32 4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_dormant_off(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @linkwatch_fire_event(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_dormant_on(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @linkwatch_fire_event(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attach_hdlc_protocol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppp_cp_parse_cr(ptr noundef %dev, i16 noundef zeroext %pid, i8 noundef zeroext %id, i32 noundef %req_len, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %req_len, i32 noundef 2592) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16351, i16 %pid)
  %cmp12 = icmp eq i16 %pid, -16351
  br label %for.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %0 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %opt.0 = phi ptr [ %add.ptr64, %for.inc ], [ %data, %for.cond.preheader ]
  %len.0 = phi i32 [ %sub, %for.inc ], [ %req_len, %for.cond.preheader ]
  %nak_len.0 = phi i32 [ %nak_len.1, %for.inc ], [ 0, %for.cond.preheader ]
  %rej_len.0 = phi i32 [ %rej_len.1, %for.inc ], [ 0, %for.cond.preheader ]
  %2 = zext i32 %len.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %len.0, label %lor.lhs.false [
    i32 0, label %for.end
    i32 1, label %for.cond.err_out_crit_edge
  ]

for.cond.err_out_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

lor.lhs.false:                                    ; preds = %for.cond
  %arrayidx = getelementptr i8, ptr %opt.0, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp2 = icmp ult i8 %4, 2
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %conv)
  %cmp7 = icmp ult i32 %len.0, %conv
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp7
  br i1 %or.cond, label %lor.lhs.false.err_out_crit_edge, label %if.end10

lor.lhs.false.err_out_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end10:                                         ; preds = %lor.lhs.false
  br i1 %cmp12, label %if.then14, label %if.end10.if.end53_crit_edge

if.end10.if.end53_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then14:                                        ; preds = %if.end10
  %5 = ptrtoint ptr %opt.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %opt.0, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %6, label %if.then14.if.end53_crit_edge [
    i8 1, label %if.then14.for.inc_crit_edge
    i8 2, label %sw.bb17
    i8 5, label %sw.bb31
  ]

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then14.if.end53_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

sw.bb17:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp20 = icmp ult i8 %4, 6
  br i1 %cmp20, label %sw.bb17.err_out_crit_edge, label %if.end23

sw.bb17.err_out_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end23:                                         ; preds = %sw.bb17
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %opt.0, ptr noundef nonnull dereferenceable(6) @ppp_cp_parse_cr.valid_accm, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool25.not = icmp eq i32 %bcmp, 0
  br i1 %tobool25.not, label %if.end23.for.inc_crit_edge, label %if.end27

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rej_len.0)
  %tobool28.not = icmp eq i32 %rej_len.0, 0
  br i1 %tobool28.not, label %if.then29, label %if.end27.if.end53_crit_edge

if.end27.if.end53_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %nak_len.0
  %8 = call ptr @memcpy(ptr %add.ptr, ptr @ppp_cp_parse_cr.valid_accm, i32 6)
  %add = add i32 %nak_len.0, 6
  br label %for.inc

sw.bb31:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %len.0)
  %cmp32 = icmp ult i32 %len.0, 6
  br i1 %cmp32, label %sw.bb31.err_out_crit_edge, label %if.end35

sw.bb31.err_out_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end35:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp38.not = icmp eq i8 %4, 6
  br i1 %cmp38.not, label %lor.lhs.false40, label %if.end35.if.end53_crit_edge

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

lor.lhs.false40:                                  ; preds = %if.end35
  %arrayidx41 = getelementptr i8, ptr %opt.0, i32 2
  %9 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool42.not = icmp eq i8 %10, 0
  br i1 %tobool42.not, label %land.lhs.true, label %lor.lhs.false40.for.inc_crit_edge

lor.lhs.false40.for.inc_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false40
  %arrayidx43 = getelementptr i8, ptr %opt.0, i32 3
  %11 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool44.not = icmp eq i8 %12, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true45:                                  ; preds = %land.lhs.true
  %arrayidx46 = getelementptr i8, ptr %opt.0, i32 4
  %13 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool47.not = icmp eq i8 %14, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %land.lhs.true45.for.inc_crit_edge

land.lhs.true45.for.inc_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %arrayidx49 = getelementptr i8, ptr %opt.0, i32 5
  %15 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool50.not = icmp eq i8 %16, 0
  br i1 %tobool50.not, label %land.lhs.true48.if.end53_crit_edge, label %land.lhs.true48.for.inc_crit_edge

land.lhs.true48.for.inc_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true48.if.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true48.if.end53_crit_edge, %if.end35.if.end53_crit_edge, %if.end27.if.end53_crit_edge, %if.then14.if.end53_crit_edge, %if.end10.if.end53_crit_edge
  %add.ptr54 = getelementptr i8, ptr %call9.i, i32 %rej_len.0
  %17 = call ptr @memcpy(ptr %add.ptr54, ptr %opt.0, i32 %conv)
  %add59 = add i32 %rej_len.0, %conv
  br label %for.inc

for.inc:                                          ; preds = %if.end53, %land.lhs.true48.for.inc_crit_edge, %land.lhs.true45.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %lor.lhs.false40.for.inc_crit_edge, %if.then29, %if.end23.for.inc_crit_edge, %if.then14.for.inc_crit_edge
  %nak_len.1 = phi i32 [ %nak_len.0, %if.end53 ], [ %nak_len.0, %lor.lhs.false40.for.inc_crit_edge ], [ %nak_len.0, %land.lhs.true.for.inc_crit_edge ], [ %nak_len.0, %land.lhs.true45.for.inc_crit_edge ], [ %nak_len.0, %land.lhs.true48.for.inc_crit_edge ], [ %add, %if.then29 ], [ %nak_len.0, %if.end23.for.inc_crit_edge ], [ %nak_len.0, %if.then14.for.inc_crit_edge ]
  %rej_len.1 = phi i32 [ %add59, %if.end53 ], [ %rej_len.0, %lor.lhs.false40.for.inc_crit_edge ], [ %rej_len.0, %land.lhs.true.for.inc_crit_edge ], [ %rej_len.0, %land.lhs.true45.for.inc_crit_edge ], [ %rej_len.0, %land.lhs.true48.for.inc_crit_edge ], [ 0, %if.then29 ], [ %rej_len.0, %if.end23.for.inc_crit_edge ], [ %rej_len.0, %if.then14.for.inc_crit_edge ]
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv61 = zext i8 %19 to i32
  %sub = sub i32 %len.0, %conv61
  %add.ptr64 = getelementptr i8, ptr %opt.0, i32 %conv61
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rej_len.0)
  %tobool65.not = icmp eq i32 %rej_len.0, 0
  br i1 %tobool65.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext %pid, i16 noundef zeroext 5, i8 noundef zeroext 4, i8 noundef zeroext %id, i32 noundef %rej_len.0, ptr noundef nonnull %call9.i)
  br label %if.end71

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nak_len.0)
  %tobool67.not = icmp eq i32 %nak_len.0, 0
  br i1 %tobool67.not, label %if.else69, label %if.then68

if.then68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext %pid, i16 noundef zeroext 5, i8 noundef zeroext 3, i8 noundef zeroext %id, i32 noundef %nak_len.0, ptr noundef nonnull %call9.i)
  br label %if.end71

if.else69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ppp_cp_event(ptr noundef %dev, i16 noundef zeroext %pid, i16 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext %id, i32 noundef %req_len, ptr noundef %data)
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then68, %if.then66
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

err_out:                                          ; preds = %sw.bb31.err_out_crit_edge, %sw.bb17.err_out_crit_edge, %lor.lhs.false.err_out_crit_edge, %for.cond.err_out_crit_edge
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %20 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_errors, align 8
  %inc73 = add i32 %21, 1
  store i32 %inc73, ptr %rx_errors, align 8
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end71, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_hdlc_ppp__343_720_hdlc_ppp_init6, !1, !"__initcall__kmod_hdlc_ppp__343_720_hdlc_ppp_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 720, i32 1}
!2 = !{ptr @__exitcall_hdlc_ppp_exit, !3, !"__exitcall_hdlc_ppp_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 721, i32 1}
!4 = !{ptr @__UNIQUE_ID_author344, !5, !"__UNIQUE_ID_author344", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 723, i32 1}
!6 = !{ptr @__UNIQUE_ID_description345, !7, !"__UNIQUE_ID_description345", i1 false, i1 false}
!7 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 724, i32 1}
!8 = !{ptr @__UNIQUE_ID_file346, !9, !"__UNIQUE_ID_file346", i1 false, i1 false}
!9 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 725, i32 1}
!10 = !{ptr @__UNIQUE_ID_license347, !9, !"__UNIQUE_ID_license347", i1 false, i1 false}
!11 = !{ptr @proto, !12, !"proto", i1 false, i1 false}
!12 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 644, i32 26}
!13 = !{ptr @tx_queue, !14, !"tx_queue", i1 false, i1 false}
!14 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 101, i32 28}
!15 = !{ptr @ppp_start.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 624, i32 3}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 598, i32 28}
!20 = !{ptr @ppp_tx_cp.magic, !21, !"magic", i1 false, i1 false}
!21 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 210, i32 13}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 342, i32 20}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 353, i32 20}
!26 = !{ptr @cp_table, !27, !"cp_table", i1 false, i1 false}
!27 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 277, i32 12}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 130, i32 10}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 132, i32 10}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 134, i32 10}
!34 = !{ptr @ppp_ioctl.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 690, i32 3}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ppp_header_ops, !38, !"ppp_header_ops", i1 false, i1 false}
!38 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 654, i32 32}
!39 = !{ptr @ppp_cp_parse_cr.valid_accm, !40, !"valid_accm", i1 false, i1 false}
!40 = !{!"../drivers/net/wan/hdlc_ppp.c", i32 372, i32 18}
!41 = !{ptr @skb_queue_head_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2156005115, i64 2156005606, i64 2156005152, i64 2156005208, i64 2156005242, i64 2156005266, i64 2156005307, i64 2156005328, i64 2156005356, i64 2156005390}
