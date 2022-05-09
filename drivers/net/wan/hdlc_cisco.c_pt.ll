; ModuleID = '/llk/IR_all_yes/drivers/net/wan/hdlc_cisco.c_pt.bc'
source_filename = "../drivers/net/wan/hdlc_cisco.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cisco_state = type { %struct.cisco_proto, %struct.timer_list, ptr, %struct.spinlock, i32, i32, i32, i32 }
%struct.cisco_proto = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.if_settings = type { i32, i32, %union.anon.21 }
%union.anon.21 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }

@proto = internal global { %struct.hdlc_proto, [52 x i8] } { %struct.hdlc_proto { ptr null, ptr null, ptr @cisco_start, ptr @cisco_stop, ptr null, ptr @cisco_ioctl, ptr @cisco_type_trans, ptr @cisco_rx, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_hdlc_cisco__347_378_hdlc_cisco_init6 = internal global ptr @hdlc_cisco_init, section ".initcall6.init", align 4
@__exitcall_hdlc_cisco_exit = internal global ptr @hdlc_cisco_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author348 = internal constant [51 x i8] c"hdlc_cisco.author=Krzysztof Halasa <khc@pm.waw.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [68 x i8] c"hdlc_cisco.description=Cisco HDLC protocol support for generic HDLC\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [43 x i8] c"hdlc_cisco.file=drivers/net/wan/hdlc_cisco\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [26 x i8] c"hdlc_cisco.license=GPL v2\00", section ".modinfo", align 1
@cisco_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&st->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link down\0A\00", [21 x i8] zeroinitializer }, align 32
@cisco_ioctl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&state(hdlc)->lock\00", [45 x i8] zeroinitializer }, align 32
@cisco_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @cisco_hard_header, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid length of Cisco control packet (%d bytes)\0A\00", [45 x i8] zeroinitializer }, align 32
@cisco_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/wan/hdlc_cisco.c\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cisco_rx.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected Cisco IP address reply\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Link up (peer uptime %ud%uh%um%us)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported protocol %x\0A\00", [39 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8194]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 15, i64 143]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 33079, i64 34525]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 15, i64 143]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 32821]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 22, i64 24]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 296, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 277, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 254, i32 20 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 355, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"cisco_header_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 305, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 174, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 169, i32 21 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 187, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 204, i32 21 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 222, i32 23 }
@___asan_gen_.63 = private constant [32 x i8] c"../drivers/net/wan/hdlc_cisco.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 235, i32 19 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 695, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 232, i32 9 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 723, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_hdlc_cisco_exit, ptr @__initcall__kmod_hdlc_cisco__347_378_hdlc_cisco_init6, ptr @hdlc_cisco_exit, ptr @proto, ptr @cisco_start.__key, ptr @.str, ptr @.str.1, ptr @cisco_ioctl.__key, ptr @.str.2, ptr @cisco_header_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proto to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cisco_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cisco_ioctl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cisco_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdlc_cisco_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_hdlc_protocol(ptr noundef nonnull @proto) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlc_cisco_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_hdlc_protocol(ptr noundef nonnull @proto) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cisco_start(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %lock = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %rxseq = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rxseq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rxseq, align 4
  %txseq = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %txseq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %txseq, align 4
  %up = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %up, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %dev8 = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev8, align 4
  %timer = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @cisco_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @cisco_start.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 100
  %expires = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cisco_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %timer = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  %lock = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %state.i14 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.netif_dormant_on.exit_crit_edge

entry.netif_dormant_on.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_dormant_on.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @linkwatch_fire_event(ptr noundef %dev) #8
  br label %netif_dormant_on.exit

netif_dormant_on.exit:                            ; preds = %if.then.i, %entry.netif_dormant_on.exit_crit_edge
  %txseq = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %txseq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %txseq, align 4
  %up = getelementptr inbounds %struct.cisco_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %up, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cisco_ioctl(ptr noundef %dev, ptr nocapture noundef %ifs) #2 align 64 {
entry:
  %new_settings = alloca %struct.cisco_proto, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ifs_ifsu = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %0 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifs_ifsu, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_settings) #8
  %2 = ptrtoint ptr %new_settings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new_settings, align 8, !annotation !63
  %3 = getelementptr inbounds %struct.cisco_proto, ptr %new_settings, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !63
  %add.ptr.i.i74 = getelementptr i8, ptr %dev, i32 2304
  %5 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifs, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8194, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %proto = getelementptr i8, ptr %dev, i32 2312
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proto, align 4
  %cmp.not = icmp eq ptr %9, @proto
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %10 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8194, ptr %ifs, align 4
  %size3 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %11 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp4 = icmp ult i32 %12, 8
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %size3, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end7.cleanup_crit_edge, label %if.end.i.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end7
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1226833920) #11, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %15, i32 noundef 8) #8
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %15, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %call13 = tail call zeroext i1 @capable(i32 noundef 12) #8
  br i1 %call13, label %if.end15, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %sw.bb12
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then.i68, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i68:                                      ; preds = %if.end15
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #8
  %call.i.i67 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i67, label %if.then.i68.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i68.if.then11.i.i_crit_edge:              ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i68
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1226833920) #11, !srcloc !65
  %asmresult.i.i69 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i69)
  %cmp.i.i70 = icmp eq i32 %asmresult.i.i69, 0
  br i1 %cmp.i.i70, label %if.end.i.i72, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !66

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i72:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i71 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_settings, i32 noundef 8) #8
  %20 = call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !67
  %and.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_settings, ptr noundef %1, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #8, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end22, label %if.end.i.i72.if.then11.i.i_crit_edge, !prof !66

if.end.i.i72.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i72.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i68.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i72.if.then11.i.i_crit_edge ], [ 8, %if.then.i68.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %new_settings, i32 %sub.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end22:                                         ; preds = %if.end.i.i72
  %24 = ptrtoint ptr %new_settings to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %new_settings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp23 = icmp eq i32 %25, 0
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %lor.lhs.false

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end22
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp24 = icmp ult i32 %27, 2
  br i1 %cmp24, label %lor.lhs.false.cleanup_crit_edge, label %if.end26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %add.ptr.i.i74 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i.i74, align 4
  %call27 = call i32 %29(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %call31 = call i32 @attach_hdlc_protocol(ptr noundef %dev, ptr noundef nonnull @proto, i32 noundef 120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %state.i76 = getelementptr i8, ptr %dev, i32 2368
  %30 = ptrtoint ptr %state.i76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state.i76, align 4
  %32 = ptrtoint ptr %new_settings to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %new_settings, align 8
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %31, align 4
  %35 = load ptr, ptr %state.i76, align 4
  %lock = getelementptr inbounds %struct.cisco_state, ptr %35, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @cisco_ioctl.__key, i16 noundef signext 3) #8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %36 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @cisco_header_ops, ptr %header_ops, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %37 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 4, ptr %hard_header_len, align 2
  %type39 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %38 = ptrtoint ptr %type39 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 513, ptr %type39, align 16
  %call40 = call i32 @call_netdevice_notifiers(i32 noundef 16, ptr noundef %dev) #8
  call fastcc void @netif_dormant_on(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then11.i.i, %if.end15.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -105, %if.then5 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb12.cleanup_crit_edge ], [ -16, %if.end15.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end7.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_settings) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @cisco_type_trans(ptr noundef %skb, ptr nocapture noundef readnone %dev) #2 align 64 {
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
  %5 = load i8, ptr %1, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 -113, label %if.end.if.end9_crit_edge
    i8 15, label %if.end.if.end9_crit_edge17
  ]

if.end.if.end9_crit_edge17:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.if.end9_crit_edge17
  %protocol = getelementptr inbounds %struct.hdlc_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %protocol, align 1
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %8, label %if.end9.cleanup_crit_edge [
    i16 2048, label %if.end9.sw.bb_crit_edge
    i16 -32457, label %if.end9.sw.bb_crit_edge18
    i16 -31011, label %if.end9.sw.bb_crit_edge19
  ]

if.end9.sw.bb_crit_edge19:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.bb_crit_edge18:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge18, %if.end9.sw.bb_crit_edge19
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #8
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %protocol, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %11, %sw.bb ], [ 25, %entry.cleanup_crit_edge ], [ 25, %if.end.cleanup_crit_edge ], [ 25, %if.end9.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cisco_rx(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %state.i = getelementptr i8, ptr %2, i32 2368
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %data2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp ult i32 %8, 4
  br i1 %cmp, label %entry.rx_error_crit_edge, label %if.end

entry.rx_error_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_error

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %10, label %if.end.rx_error_crit_edge [
    i8 -113, label %if.end.if.end10_crit_edge
    i8 15, label %if.end.if.end10_crit_edge176
  ]

if.end.if.end10_crit_edge176:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.rx_error_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_error

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.end.if.end10_crit_edge176
  %protocol = getelementptr inbounds %struct.hdlc_header, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %protocol, align 1
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %13, label %if.end10.sw.epilog90_crit_edge [
    i16 8192, label %if.end10.cleanup_crit_edge
    i16 -32715, label %sw.bb12
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.sw.epilog90_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog90

sw.bb12:                                          ; preds = %if.end10
  %15 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %8, label %if.then20 [
    i32 22, label %sw.bb12.if.end22_crit_edge
    i32 24, label %sw.bb12.if.end22_crit_edge177
  ]

sw.bb12.if.end22_crit_edge177:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

sw.bb12.if.end22_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %8) #12
  br label %rx_error

if.end22:                                         ; preds = %sw.bb12.if.end22_crit_edge, %sw.bb12.if.end22_crit_edge177
  %add.ptr = getelementptr i8, ptr %6, i32 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr, align 1
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %17, label %if.end22.sw.epilog90_crit_edge [
    i32 0, label %sw.bb24
    i32 1, label %sw.bb66
    i32 2, label %sw.bb67
  ]

if.end22.sw.epilog90_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog90

sw.bb24:                                          ; preds = %if.end22
  %19 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %sw.bb24.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb24.rcu_read_lock.exit_crit_edge:             ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb24
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb24.rcu_read_lock.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 78
  %23 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i155 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool.not.i156 = icmp eq i32 %call.i155, 0
  br i1 %tobool.not.i156, label %land.lhs.true.i157, label %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge

rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in_dev_get_rcu.exit

land.lhs.true.i157:                               ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i157.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i157.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i157
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i158

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__in_dev_get_rcu.exit

if.then.i158:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 232, ptr noundef nonnull @.str.8) #8
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i158, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i157.__in_dev_get_rcu.exit_crit_edge, %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge
  %cmp26.not = icmp eq ptr %24, null
  br i1 %cmp26.not, label %__in_dev_get_rcu.exit.if.end65_crit_edge, label %if.then28

__in_dev_get_rcu.exit.if.end65_crit_edge:         ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then28:                                        ; preds = %__in_dev_get_rcu.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %ifa_list, align 4
  %call30 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %land.lhs.true31, label %if.then28.do.end39_crit_edge

if.then28.do.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

land.lhs.true31:                                  ; preds = %if.then28
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b154 = load i1, ptr @cisco_rx.__warned, align 1
  br i1 %.b154, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cisco_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 187, ptr noundef nonnull @.str.8) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %if.then28.do.end39_crit_edge
  %tobool41.not169 = icmp eq ptr %26, null
  br i1 %tobool41.not169, label %do.end39.for.end_crit_edge, label %do.end39.for.body_crit_edge

do.end39.for.body_crit_edge:                      ; preds = %do.end39
  br label %for.body

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %do.end63.for.body_crit_edge, %do.end39.for.body_crit_edge
  %ifa.0170 = phi ptr [ %32, %do.end63.for.body_crit_edge ], [ %26, %do.end39.for.body_crit_edge ]
  %ifa_label = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0170, i32 0, i32 12
  %call43 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %ifa_label) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %for.inc

if.then46:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %ifa_local = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0170, i32 0, i32 4
  %27 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ifa_local, align 4
  %ifa_mask = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0170, i32 0, i32 6
  %29 = ptrtoint ptr %ifa_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifa_mask, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %ifa_next = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0170, i32 0, i32 1
  %31 = ptrtoint ptr %ifa_next to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %ifa_next, align 4
  %call53 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %for.inc.do.end63_crit_edge

for.inc.do.end63_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

land.lhs.true55:                                  ; preds = %for.inc
  %call56 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.do.end63_crit_edge, label %land.lhs.true58

land.lhs.true55.do.end63_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %.b152153 = load i1, ptr @cisco_rx.__warned.9, align 1
  br i1 %.b152153, label %land.lhs.true58.do.end63_crit_edge, label %if.then60

land.lhs.true58.do.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

if.then60:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cisco_rx.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 187, ptr noundef nonnull @.str.8) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %land.lhs.true58.do.end63_crit_edge, %land.lhs.true55.do.end63_crit_edge, %for.inc.do.end63_crit_edge
  %tobool41.not = icmp eq ptr %32, null
  br i1 %tobool41.not, label %do.end63.for.end_crit_edge, label %do.end63.for.body_crit_edge

do.end63.for.body_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end63.for.end_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.end63.for.end_crit_edge, %if.then46, %do.end39.for.end_crit_edge
  %mask.0 = phi i32 [ %30, %if.then46 ], [ -1, %do.end39.for.end_crit_edge ], [ -1, %do.end63.for.end_crit_edge ]
  %addr.0 = phi i32 [ %28, %if.then46 ], [ 0, %do.end39.for.end_crit_edge ], [ 0, %do.end63.for.end_crit_edge ]
  tail call fastcc void @cisco_keepalive_send(ptr noundef %2, i32 noundef 1, i32 noundef %addr.0, i32 noundef %mask.0)
  br label %if.end65

if.end65:                                         ; preds = %for.end, %__in_dev_get_rcu.exit.if.end65_crit_edge
  %call.i159 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i159, label %if.end65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i162

if.end65.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i162:                               ; preds = %if.end65
  %call1.i160 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool.not.i161 = icmp eq i32 %call1.i160, 0
  br i1 %tobool.not.i161, label %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i164

land.lhs.true.i162.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i164:                              ; preds = %land.lhs.true.i162
  %.b4.i163 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i163, label %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, label %if.then.i165

land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i165:                                     ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i165, %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, %if.end65.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  %33 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i166 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i166 to ptr
  %preempt_count.i.i.i.i167 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i167, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i167, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

sw.bb66:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.10) #12
  br label %rx_error

sw.bb67:                                          ; preds = %if.end22
  %lock = getelementptr inbounds %struct.cisco_state, ptr %4, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %par1 = getelementptr i8, ptr %6, i32 8
  %37 = ptrtoint ptr %par1 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %par1, align 1
  %rxseq = getelementptr inbounds %struct.cisco_state, ptr %4, i32 0, i32 7
  %39 = ptrtoint ptr %rxseq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rxseq, align 4
  %par2 = getelementptr i8, ptr %6, i32 12
  %40 = ptrtoint ptr %par2 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %par2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool68.not = icmp eq i32 %41, 0
  br i1 %tobool68.not, label %sw.bb67.if.end88_crit_edge, label %land.lhs.true69

sw.bb67.if.end88_crit_edge:                       ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

land.lhs.true69:                                  ; preds = %sw.bb67
  %txseq = getelementptr inbounds %struct.cisco_state, ptr %4, i32 0, i32 6
  %42 = ptrtoint ptr %txseq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %txseq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp70 = icmp eq i32 %41, %43
  %sub = add i32 %43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %sub)
  %cmp73 = icmp eq i32 %41, %sub
  %or.cond = or i1 %cmp70, %cmp73
  br i1 %or.cond, label %if.then75, label %land.lhs.true69.if.end88_crit_edge

land.lhs.true69.if.end88_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then75:                                        ; preds = %land.lhs.true69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %last_poll = getelementptr inbounds %struct.cisco_state, ptr %4, i32 0, i32 4
  %45 = ptrtoint ptr %last_poll to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %last_poll, align 4
  %up = getelementptr inbounds %struct.cisco_state, ptr %4, i32 0, i32 5
  %46 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool76.not = icmp eq i32 %47, 0
  br i1 %tobool76.not, label %if.then77, label %if.then75.if.end88_crit_edge

if.then75.if.end88_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %time = getelementptr i8, ptr %6, i32 18
  %48 = ptrtoint ptr %time to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %time, align 1
  %div = udiv i32 %49, 1000
  %div78 = udiv i32 %49, 60000
  %mul.neg = mul nsw i32 %div78, -60
  %sub79 = add nsw i32 %mul.neg, %div
  %div80 = udiv i32 %49, 3600000
  %mul81.neg = mul nsw i32 %div80, -60
  %sub82 = add nsw i32 %mul81.neg, %div78
  %div83 = udiv i32 %49, 86400000
  %mul84.neg = mul nsw i32 %div83, -24
  %sub85 = add nsw i32 %mul84.neg, %div80
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %div83, i32 noundef %sub85, i32 noundef %sub82, i32 noundef %sub79) #12
  tail call fastcc void @netif_dormant_off(ptr noundef %2)
  %50 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %up, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then77, %if.then75.if.end88_crit_edge, %land.lhs.true69.if.end88_crit_edge, %sw.bb67.if.end88_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

sw.epilog90:                                      ; preds = %if.end22.sw.epilog90_crit_edge, %if.end10.sw.epilog90_crit_edge
  %conv92 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %conv92) #12
  br label %cleanup

rx_error:                                         ; preds = %sw.bb66, %if.then20, %if.end.rx_error_crit_edge, %entry.rx_error_crit_edge
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 4
  %51 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %cleanup

cleanup:                                          ; preds = %rx_error, %sw.epilog90, %if.end88, %rcu_read_unlock.exit, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rx_error ], [ 1, %sw.epilog90 ], [ 0, %if.end88 ], [ 0, %rcu_read_unlock.exit ], [ 0, %if.end10.cleanup_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cisco_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %lock = getelementptr i8, ptr %t, i32 52
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %up = getelementptr i8, ptr %t, i32 100
  %2 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_poll = getelementptr i8, ptr %t, i32 96
  %4 = ptrtoint ptr %last_poll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_poll, align 4
  %timeout = getelementptr i8, ptr %t, i32 -4
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout, align 4
  %mul = mul i32 %7, 100
  %add = add i32 %mul, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %up, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.1) #12
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @linkwatch_fire_event(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %txseq = getelementptr i8, ptr %t, i32 104
  %10 = ptrtoint ptr %txseq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txseq, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %txseq, align 4
  %rxseq = getelementptr i8, ptr %t, i32 108
  %12 = ptrtoint ptr %rxseq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxseq, align 4
  tail call fastcc void @cisco_keepalive_send(ptr noundef %1, i32 noundef 2, i32 noundef %inc, i32 noundef %13)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %mul5 = mul i32 %16, 100
  %add6 = add i32 %mul5, %14
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %17 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add6, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_dormant_on(ptr noundef %dev) unnamed_addr #5 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cisco_keepalive_send(ptr noundef %dev, i32 noundef %type, i32 noundef %par1, i32 noundef %par2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 22, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -113, ptr %5, align 1
  %control.i = getelementptr inbounds %struct.hdlc_header, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %control.i, align 1
  %protocol.i = getelementptr inbounds %struct.hdlc_header, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 -32715, ptr %protocol.i, align 1
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %type, ptr %add.ptr, align 1
  %par14 = getelementptr i8, ptr %9, i32 8
  %11 = ptrtoint ptr %par14 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %par1, ptr %par14, align 1
  %par25 = getelementptr i8, ptr %9, i32 12
  %12 = ptrtoint ptr %par25 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %par2, ptr %par25, align 1
  %rel = getelementptr i8, ptr %9, i32 16
  %13 = ptrtoint ptr %rel to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 -1, ptr %rel, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = mul i32 %14, 10
  %mul = add i32 %15, 300000
  %time = getelementptr i8, ptr %9, i32 18
  %16 = ptrtoint ptr %time to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %mul, ptr %time, align 1
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 18) #8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %17 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %priority, align 4
  %18 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %18, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 25, ptr %protocol, align 8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %network_header.i, align 4
  %call7 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cisco_hard_header(ptr noundef %skb, ptr nocapture noundef readnone %dev, i16 noundef zeroext %type, ptr nocapture noundef readnone %daddr, ptr nocapture noundef readnone %saddr, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #8
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32715, i16 %type)
  %cmp = icmp eq i16 %type, -32715
  %. = select i1 %cmp, i8 -113, i8 15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %., ptr %1, align 1
  %control = getelementptr inbounds %struct.hdlc_header, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %control, align 1
  %protocol = getelementptr inbounds %struct.hdlc_header, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %type, ptr %protocol, align 1
  ret i32 4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attach_hdlc_protocol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_dormant_off(ptr noundef %dev) unnamed_addr #5 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_hdlc_cisco__347_378_hdlc_cisco_init6, !1, !"__initcall__kmod_hdlc_cisco__347_378_hdlc_cisco_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 378, i32 1}
!2 = !{ptr @__exitcall_hdlc_cisco_exit, !3, !"__exitcall_hdlc_cisco_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 379, i32 1}
!4 = !{ptr @__UNIQUE_ID_author348, !5, !"__UNIQUE_ID_author348", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 381, i32 1}
!6 = !{ptr @__UNIQUE_ID_description349, !7, !"__UNIQUE_ID_description349", i1 false, i1 false}
!7 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 382, i32 1}
!8 = !{ptr @__UNIQUE_ID_file350, !9, !"__UNIQUE_ID_file350", i1 false, i1 false}
!9 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 383, i32 1}
!10 = !{ptr @__UNIQUE_ID_license351, !9, !"__UNIQUE_ID_license351", i1 false, i1 false}
!11 = !{ptr @proto, !12, !"proto", i1 false, i1 false}
!12 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 296, i32 26}
!13 = !{ptr @cisco_start.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 277, i32 2}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 254, i32 20}
!18 = !{ptr @cisco_ioctl.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 355, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!28 = !{ptr @cisco_header_ops, !29, !"cisco_header_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 305, i32 32}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 169, i32 21}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 187, i32 5}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 204, i32 21}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 222, i32 23}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wan/hdlc_cisco.c", i32 235, i32 19}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 2152333263, i64 2152333288}
!65 = !{i64 2152332582, i64 2152332607}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 4828137}
!68 = !{i64 4828334}
!69 = !{i64 2152313567}
!70 = !{i64 2149656200}
!71 = !{i64 2149656466}
