; ModuleID = '/llk/IR_all_yes/net/hsr/hsr_device.c_pt.bc'
source_filename = "../net/hsr/hsr_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+is_hsr_master\22, \22a\22\09"
module asm "\09.weak\09__crc_is_hsr_master\09\09\09\09"
module asm "\09.long\09__crc_is_hsr_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_hsr_master:\09\09\09\09\09"
module asm "\09.asciz \09\22is_hsr_master\22\09\09\09\09\09"
module asm "__kstrtabns_is_hsr_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hsr_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hsr_port = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.hsr_priv = type { %struct.callback_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, i32, i16, i16, i32, %struct.spinlock, %struct.spinlock, ptr, i8, i8, [6 x i8], ptr }
%struct.callback_head = type { ptr, ptr }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.7, [48 x i8], %union.anon.8, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.10, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%union.anon.6 = type { ptr }
%union.anon.7 = type { i64 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i32, ptr }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.12, i32, i32, i32, i16, i16, %union.anon.14, i32, %union.anon.15, %union.anon.16, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.12 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.16 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hsr_sup_tag = type { i16, i16, %struct.hsr_sup_tlv }
%struct.hsr_sup_tlv = type { i8, i8 }

@hsr_get_max_mtu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/hsr/hsr_device.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@hsr_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @eth_header, ptr @eth_header_parse, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hsr_device_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hsr_dev_open, ptr @hsr_dev_close, ptr @hsr_dev_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hsr_dev_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hsr_fix_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@hsr_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_is_hsr_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_hsr_master = external dso_local constant [0 x i8], align 1
@__ksymtab_is_hsr_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_hsr_master to i32), ptr @__kstrtab_is_hsr_master, ptr @__kstrtabns_is_hsr_master }, section "___ksymtab+is_hsr_master", align 4
@hsr_dev_finalize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&hsr->list_lock\00", [16 x i8] zeroinitializer }, align 32
@prp_ops = internal global { %struct.hsr_proto_ops, [32 x i8] } { %struct.hsr_proto_ops { ptr @send_prp_supervision_frame, ptr @prp_handle_san_frame, ptr @prp_drop_frame, ptr @prp_get_untagged_frame, ptr @prp_create_tagged_frame, ptr @prp_fill_frame_info, ptr null, ptr @prp_update_san_info }, [32 x i8] zeroinitializer }, align 32
@hsr_ops = internal global { %struct.hsr_proto_ops, [32 x i8] } { %struct.hsr_proto_ops { ptr @send_hsr_supervision_frame, ptr null, ptr @hsr_drop_frame, ptr @hsr_get_untagged_frame, ptr @hsr_create_tagged_frame, ptr @hsr_fill_frame_info, ptr @hsr_invalid_dan_ingress_frame, ptr null }, [32 x i8] zeroinitializer }, align 32
@hsr_dev_finalize.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&hsr->seqnr_lock\00", [47 x i8] zeroinitializer }, align 32
@hsr_dev_finalize.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&hsr->announce_timer)\00", [41 x i8] zeroinitializer }, align 32
@hsr_dev_finalize.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&hsr->prune_timer)\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hsr_check_carrier.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@hsr_check_carrier.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dev_base_lock = external dso_local global %struct.rwlock_t, align 4
@hsr_dev_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Slave %c (%s) is not up; please bring it up to get a fully working HSR network\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No slave devices configured\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"A HSR master's MTU cannot be greater than the smallest MTU of its slaves minus the HSR Tag length (%d octets).\0A\00", [48 x i8] zeroinitializer }, align 32
@hsr_features_recompute.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hsr\00", [28 x i8] zeroinitializer }, align 32
@send_prp_supervision_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PRP: Could not send supervision frame\0A\00", [57 x i8] zeroinitializer }, align 32
@send_hsr_supervision_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HSR: Could not send supervision frame\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 115, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"hsr_header_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 230, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"hsr_device_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 407, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"hsr_type\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 415, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 494, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [8 x i8] c"prp_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 428, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [8 x i8] c"hsr_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 419, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 515, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 520, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 521, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 60, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 164, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 169, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 131, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 416, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 340, i32 3 }
@___asan_gen_.85 = private constant [24 x i8] c"../net/hsr/hsr_device.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 293, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 695, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 723, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_is_hsr_master, ptr @.str, ptr @.str.1, ptr @hsr_header_ops, ptr @hsr_device_ops, ptr @hsr_type, ptr @hsr_dev_finalize.__key, ptr @.str.2, ptr @prp_ops, ptr @hsr_ops, ptr @hsr_dev_finalize.__key.3, ptr @.str.4, ptr @hsr_dev_finalize.__key.5, ptr @.str.6, ptr @hsr_dev_finalize.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_device_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_dev_finalize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_dev_finalize.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_dev_finalize.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_dev_finalize.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_check_carrier_and_operstate(ptr noundef %hsr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef 4) #10
  %dev = getelementptr inbounds %struct.hsr_port, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %operstate = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %operstate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operstate, align 8
  %call.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

land.rhs.i:                                       ; preds = %entry
  %.b81.i = load i1, ptr @hsr_check_carrier.__already_done, align 1
  br i1 %.b81.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !70

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_check_carrier.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 60) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %entry.if.end29.i_crit_edge
  %call38.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true.i, label %if.end29.i.do.end47.i_crit_edge

if.end29.i.do.end47.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47.i

land.lhs.true.i:                                  ; preds = %if.end29.i
  %call40.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i.do.end47.i_crit_edge, label %land.lhs.true42.i

land.lhs.true.i.do.end47.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47.i

land.lhs.true42.i:                                ; preds = %land.lhs.true.i
  %.b7980.i = load i1, ptr @hsr_check_carrier.__warned, align 1
  br i1 %.b7980.i, label %land.lhs.true42.i.do.end47.i_crit_edge, label %if.then44.i

land.lhs.true42.i.do.end47.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47.i

if.then44.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_check_carrier.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 62, ptr noundef nonnull @.str.1) #10
  br label %do.end47.i

do.end47.i:                                       ; preds = %if.then44.i, %land.lhs.true42.i.do.end47.i_crit_edge, %land.lhs.true.i.do.end47.i_crit_edge, %if.end29.i.do.end47.i_crit_edge
  %hsr.i = getelementptr inbounds %struct.hsr_port, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %hsr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsr.i, align 4
  %ports.i = getelementptr inbounds %struct.hsr_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %port.084.i = load volatile ptr, ptr %ports.i, align 4
  %cmp.not85.i = icmp eq ptr %port.084.i, %ports.i
  br i1 %cmp.not85.i, label %do.end47.i.for.end.i_crit_edge, label %do.end47.i.for.body.i_crit_edge

do.end47.i.for.body.i_crit_edge:                  ; preds = %do.end47.i
  br label %for.body.i

do.end47.i.for.end.i_crit_edge:                   ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end47.i.for.body.i_crit_edge
  %port.086.i = phi ptr [ %port.0.i, %for.inc.i.for.body.i_crit_edge ], [ %port.084.i, %do.end47.i.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.hsr_port, ptr %port.086.i, i32 0, i32 3
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp55.not.i = icmp eq i32 %8, 4
  br i1 %cmp55.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true56.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true56.i:                                ; preds = %for.body.i
  %dev.i = getelementptr inbounds %struct.hsr_port, ptr %port.086.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %land.lhs.true56.i.for.inc.i_crit_edge, label %is_admin_up.exit.i.i

land.lhs.true56.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

is_admin_up.exit.i.i:                             ; preds = %land.lhs.true56.i
  %flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.i.not.i.i, label %is_admin_up.exit.i.i.for.inc.i_crit_edge, label %is_slave_up.exit.i

is_admin_up.exit.i.i.for.inc.i_crit_edge:         ; preds = %is_admin_up.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

is_slave_up.exit.i:                               ; preds = %is_admin_up.exit.i.i
  %operstate.i.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 50
  %13 = ptrtoint ptr %operstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %operstate.i.i.i, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %is_slave_up.exit.i.for.inc.i_crit_edge [
    i8 6, label %is_slave_up.exit.i.if.then58.i_crit_edge
    i8 0, label %is_slave_up.exit.i.if.then58.i_crit_edge11
  ]

is_slave_up.exit.i.if.then58.i_crit_edge11:       ; preds = %is_slave_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58.i

is_slave_up.exit.i.if.then58.i_crit_edge:         ; preds = %is_slave_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58.i

is_slave_up.exit.i.for.inc.i_crit_edge:           ; preds = %is_slave_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then58.i:                                      ; preds = %is_slave_up.exit.i.if.then58.i_crit_edge, %is_slave_up.exit.i.if.then58.i_crit_edge11
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void @netif_carrier_on(ptr noundef %17) #10
  br label %hsr_check_carrier.exit

for.inc.i:                                        ; preds = %is_slave_up.exit.i.for.inc.i_crit_edge, %is_admin_up.exit.i.i.for.inc.i_crit_edge, %land.lhs.true56.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %port.086.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %port.0.i = load volatile ptr, ptr %port.086.i, align 4
  %cmp.not.i = icmp eq ptr %port.0.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end47.i.for.end.i_crit_edge
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void @netif_carrier_off(ptr noundef %20) #10
  br label %hsr_check_carrier.exit

hsr_check_carrier.exit:                           ; preds = %for.end.i, %if.then58.i
  %cmp.not83.i = phi i1 [ false, %for.end.i ], [ true, %if.then58.i ]
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %tobool.not.i.i7 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i7, label %hsr_check_carrier.exit.if.then.i8_crit_edge, label %is_admin_up.exit.i

hsr_check_carrier.exit.if.then.i8_crit_edge:      ; preds = %hsr_check_carrier.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i8

is_admin_up.exit.i:                               ; preds = %hsr_check_carrier.exit
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.i.not.i, label %is_admin_up.exit.i.if.then.i8_crit_edge, label %if.end.i

is_admin_up.exit.i.if.then.i8_crit_edge:          ; preds = %is_admin_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i8

if.then.i8:                                       ; preds = %is_admin_up.exit.i.if.then.i8_crit_edge, %hsr_check_carrier.exit.if.then.i8_crit_edge
  tail call void @_raw_write_lock(ptr noundef nonnull @dev_base_lock) #10
  %operstate.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 50
  %25 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %operstate.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp.not.i.i = icmp eq i8 %26, 2
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %operstate.i.i, align 8
  tail call void @_raw_write_unlock(ptr noundef nonnull @dev_base_lock) #10
  tail call void @netdev_state_change(ptr noundef %22) #10
  br label %hsr_set_operstate.exit

if.else.i.i:                                      ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock(ptr noundef nonnull @dev_base_lock) #10
  br label %hsr_set_operstate.exit

if.end.i:                                         ; preds = %is_admin_up.exit.i
  tail call void @_raw_write_lock(ptr noundef nonnull @dev_base_lock) #10
  %operstate.i9.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 50
  %28 = ptrtoint ptr %operstate.i9.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %operstate.i9.i, align 8
  br i1 %cmp.not83.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp.not.i11.i = icmp eq i8 %29, 6
  br i1 %cmp.not.i11.i, label %if.else.i13.i, label %if.then.i12.i

if.then.i12.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %operstate.i9.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 6, ptr %operstate.i9.i, align 8
  tail call void @_raw_write_unlock(ptr noundef nonnull @dev_base_lock) #10
  tail call void @netdev_state_change(ptr noundef nonnull %22) #10
  br label %hsr_set_operstate.exit

if.else.i13.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock(ptr noundef nonnull @dev_base_lock) #10
  br label %hsr_set_operstate.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp.not.i17.i = icmp eq i8 %29, 3
  br i1 %cmp.not.i17.i, label %if.else.i19.i, label %if.then.i18.i

if.then.i18.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %operstate.i9.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %operstate.i9.i, align 8
  tail call void @_raw_write_unlock(ptr noundef nonnull @dev_base_lock) #10
  tail call void @netdev_state_change(ptr noundef nonnull %22) #10
  br label %hsr_set_operstate.exit

if.else.i19.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock(ptr noundef nonnull @dev_base_lock) #10
  br label %hsr_set_operstate.exit

hsr_set_operstate.exit:                           ; preds = %if.else.i19.i, %if.then.i18.i, %if.else.i13.i, %if.then.i12.i, %if.else.i.i, %if.then.i.i
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 50
  %34 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %operstate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %35)
  %cmp.i = icmp ne i8 %35, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp3.not.i = icmp eq i8 %3, 6
  %or.cond.i = or i1 %cmp3.not.i, %cmp.i
  br i1 %or.cond.i, label %hsr_set_operstate.exit.if.end.i10_crit_edge, label %if.then.i9

hsr_set_operstate.exit.if.end.i10_crit_edge:      ; preds = %hsr_set_operstate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i10

if.then.i9:                                       ; preds = %hsr_set_operstate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %announce_count.i = getelementptr i8, ptr %33, i32 2432
  %36 = ptrtoint ptr %announce_count.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %announce_count.i, align 4
  %announce_timer.i = getelementptr i8, ptr %33, i32 2336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %37, 10
  %call6.i = tail call i32 @mod_timer(ptr noundef %announce_timer.i, i32 noundef %add.i) #10
  br label %if.end.i10

if.end.i10:                                       ; preds = %if.then.i9, %hsr_set_operstate.exit.if.end.i10_crit_edge
  %38 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %operstate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %39)
  %cmp9.not.i = icmp ne i8 %39, 6
  %or.cond24.i = and i1 %cmp3.not.i, %cmp9.not.i
  br i1 %or.cond24.i, label %if.then15.i, label %if.end.i10.hsr_check_announce.exit_crit_edge

if.end.i10.hsr_check_announce.exit_crit_edge:     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %hsr_check_announce.exit

if.then15.i:                                      ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  %announce_timer16.i = getelementptr i8, ptr %33, i32 2336
  %call17.i = tail call i32 @del_timer(ptr noundef %announce_timer16.i) #10
  br label %hsr_check_announce.exit

hsr_check_announce.exit:                          ; preds = %if.then15.i, %if.end.i10.hsr_check_announce.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsr_port_get_hsr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hsr_get_max_mtu(ptr noundef %hsr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @hsr_get_max_mtu.__warned, align 1
  br i1 %.b36, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_get_max_mtu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %ports = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 1
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %port.037 = load volatile ptr, ptr %ports, align 4
  %cmp.not38 = icmp eq ptr %port.037, %ports
  br i1 %cmp.not38, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %port.040 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.037, %do.end.for.body_crit_edge ]
  %mtu_max.039 = phi i32 [ %mtu_max.1, %for.inc.for.body_crit_edge ], [ 1500, %do.end.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.hsr_port, ptr %port.040, i32 0, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp10.not = icmp eq i32 %2, 4
  br i1 %cmp10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.hsr_port, ptr %port.040, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %mtu_max.039)
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %mtu_max.1 = phi i32 [ %7, %if.then11 ], [ %mtu_max.039, %for.body.for.inc_crit_edge ]
  %8 = ptrtoint ptr %port.040 to i32
  call void @__asan_load4_noabort(i32 %8)
  %port.0 = load volatile ptr, ptr %port.040, align 4
  %cmp.not = icmp eq ptr %port.0, %ports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %mtu_max.0.lcssa = phi i32 [ 1500, %do.end.for.end_crit_edge ], [ %mtu_max.1, %for.inc.for.end_crit_edge ]
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %mtu_max.0.lcssa, i32 6)
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_del_ports(ptr noundef %hsr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hsr_del_port(ptr noundef nonnull %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef 2) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hsr_del_port(ptr noundef nonnull %call1) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef 4) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hsr_del_port(ptr noundef nonnull %call5) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_del_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_dev_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #10
  %0 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %1 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr.i, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #10
  call void @ether_setup(ptr noundef %dev) #10
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %6 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %min_mtu, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %7 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hsr_header_ops, ptr %header_ops, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hsr_device_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hsr_type, ptr %type, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags, align 16
  %or = or i64 %11, 524288
  store i64 %or, ptr %priv_flags, align 16
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %12 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %needs_free_netdev, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %13 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 34359673065, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %14 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 34359686377, ptr %features, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_hsr_master(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %ndo_start_xmit = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ndo_start_xmit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndo_start_xmit, align 4
  %cmp = icmp eq ptr %3, @hsr_dev_xmit
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_dev_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call ptr @hsr_port_get_hsr(ptr noundef %add.ptr.i, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.hsr_port, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  %2 = getelementptr inbounds %struct.anon.4, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %2, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i, align 4
  %sub.i = sub i16 %10, %conv.i
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %11 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %sub.i, ptr %mac_len.i, align 4
  tail call void @hsr_forward_skb(ptr noundef %skb, ptr noundef nonnull %call1) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_dropped, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_dropped, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_dropped, ptr %tx_dropped, i32 1, ptr elementtype(i32) %tx_dropped) #10, !srcloc !71
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hsr_dev_finalize(ptr noundef %hsr_dev, ptr nocapture noundef readonly %slave, i8 noundef zeroext %multicast_spec, i8 noundef zeroext %protocol_version, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hsr_dev, i32 2304
  %ports = getelementptr i8, ptr %hsr_dev, i32 2312
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ports, ptr %ports, align 4
  %prev.i = getelementptr i8, ptr %hsr_dev, i32 2316
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ports, ptr %prev.i, align 4
  %node_db = getelementptr i8, ptr %hsr_dev, i32 2320
  %2 = ptrtoint ptr %node_db to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %node_db, ptr %node_db, align 4
  %prev.i91 = getelementptr i8, ptr %hsr_dev, i32 2324
  %3 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %node_db, ptr %prev.i91, align 4
  %self_node_db = getelementptr i8, ptr %hsr_dev, i32 2328
  %4 = ptrtoint ptr %self_node_db to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %self_node_db, ptr %self_node_db, align 4
  %prev.i92 = getelementptr i8, ptr %hsr_dev, i32 2332
  %5 = ptrtoint ptr %prev.i92 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %self_node_db, ptr %prev.i92, align 4
  %list_lock = getelementptr i8, ptr %hsr_dev, i32 2488
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hsr_dev_finalize.__key, i16 noundef signext 3) #10
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  tail call void @dev_addr_mod(ptr noundef %hsr_dev, i32 noundef 0, ptr noundef %9, i32 noundef 6) #10
  %conv = zext i8 %protocol_version to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %protocol_version)
  %cmp = icmp eq i8 %protocol_version, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net_id = getelementptr i8, ptr %hsr_dev, i32 2536
  %10 = ptrtoint ptr %net_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %net_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hsr_ops.sink = phi ptr [ @prp_ops, %if.then ], [ @hsr_ops, %entry.if.end_crit_edge ]
  %11 = getelementptr i8, ptr %hsr_dev, i32 2532
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hsr_ops.sink, ptr %11, align 4
  %dev_addr4 = getelementptr inbounds %struct.net_device, ptr %hsr_dev, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr4, align 64
  %arrayidx5 = getelementptr ptr, ptr %slave, i32 1
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5, align 4
  %dev_addr6 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr6, align 64
  %call7 = tail call i32 @hsr_create_self_node(ptr noundef %add.ptr.i, ptr noundef %14, ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %do.body12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12:                                        ; preds = %if.end
  %seqnr_lock = getelementptr i8, ptr %hsr_dev, i32 2444
  tail call void @__raw_spin_lock_init(ptr noundef %seqnr_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @hsr_dev_finalize.__key.3, i16 noundef signext 3) #10
  %sequence_nr = getelementptr i8, ptr %hsr_dev, i32 2436
  %19 = ptrtoint ptr %sequence_nr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1025, ptr %sequence_nr, align 4
  %sup_sequence_nr = getelementptr i8, ptr %hsr_dev, i32 2438
  %20 = ptrtoint ptr %sup_sequence_nr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 32255, ptr %sup_sequence_nr, align 2
  %announce_timer = getelementptr i8, ptr %hsr_dev, i32 2336
  tail call void @init_timer_key(ptr noundef %announce_timer, ptr noundef nonnull @hsr_announce, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @hsr_dev_finalize.__key.5) #10
  %prune_timer = getelementptr i8, ptr %hsr_dev, i32 2384
  tail call void @init_timer_key(ptr noundef %prune_timer, ptr noundef nonnull @hsr_prune_nodes, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @hsr_dev_finalize.__key.7) #10
  %sup_multicast_addr = getelementptr i8, ptr %hsr_dev, i32 2538
  %21 = ptrtoint ptr %sup_multicast_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 18173440, ptr %sup_multicast_addr, align 4
  %add.ptr1.i = getelementptr i8, ptr %hsr_dev, i32 2542
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 256, ptr %add.ptr1.i, align 2
  %arrayidx23 = getelementptr i8, ptr %hsr_dev, i32 2543
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %multicast_spec, ptr %arrayidx23, align 1
  %prot_version = getelementptr i8, ptr %hsr_dev, i32 2440
  %24 = ptrtoint ptr %prot_version to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %prot_version, align 4
  tail call void @netif_carrier_off(ptr noundef %hsr_dev) #10
  %call25 = tail call i32 @hsr_add_port(ptr noundef %add.ptr.i, ptr noundef %hsr_dev, i32 noundef 4, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end27, label %err_add_master.thread

err_add_master.thread:                            ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hsr_del_self_node(ptr noundef %add.ptr.i) #10
  br label %cleanup

if.end27:                                         ; preds = %do.body12
  %call28 = tail call i32 @register_netdevice(ptr noundef %hsr_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.err_unregister_crit_edge

if.end27.err_unregister_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unregister

if.end31:                                         ; preds = %if.end27
  %25 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave, align 4
  %call33 = tail call i32 @hsr_add_port(ptr noundef %add.ptr.i, ptr noundef %26, i32 noundef 1, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.err_unregister_crit_edge

if.end31.err_unregister_crit_edge:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unregister

if.end36:                                         ; preds = %if.end31
  %27 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx5, align 4
  %call38 = tail call i32 @hsr_add_port(ptr noundef %add.ptr.i, ptr noundef %28, i32 noundef 2, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.err_unregister_crit_edge

if.end36.err_unregister_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unregister

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hsr_debugfs_init(ptr noundef %add.ptr.i, ptr noundef %hsr_dev) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %29, 300
  %call44 = tail call i32 @mod_timer(ptr noundef %prune_timer, i32 noundef %add) #10
  br label %cleanup

err_unregister:                                   ; preds = %if.end36.err_unregister_crit_edge, %if.end31.err_unregister_crit_edge, %if.end27.err_unregister_crit_edge
  %res.0 = phi i32 [ %call28, %if.end27.err_unregister_crit_edge ], [ %call33, %if.end31.err_unregister_crit_edge ], [ %call38, %if.end36.err_unregister_crit_edge ]
  %call.i = tail call ptr @hsr_port_get_hsr(ptr noundef %add.ptr.i, i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %err_unregister.if.end.i_crit_edge, label %if.then.i

err_unregister.if.end.i_crit_edge:                ; preds = %err_unregister
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %err_unregister
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hsr_del_port(ptr noundef nonnull %call.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %err_unregister.if.end.i_crit_edge
  %call1.i = tail call ptr @hsr_port_get_hsr(ptr noundef %add.ptr.i, i32 noundef 2) #10
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hsr_del_port(ptr noundef nonnull %call1.i) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %call5.i = tail call ptr @hsr_port_get_hsr(ptr noundef %add.ptr.i, i32 noundef 4) #10
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %err_add_master, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  tail call void @hsr_del_port(ptr noundef nonnull %call5.i) #10
  tail call void @hsr_del_self_node(ptr noundef %add.ptr.i) #10
  br i1 %tobool29.not, label %if.then7.i.if.then46_crit_edge, label %if.then7.i.cleanup_crit_edge

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7.i.if.then46_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

err_add_master:                                   ; preds = %if.end4.i
  tail call void @hsr_del_self_node(ptr noundef %add.ptr.i) #10
  br i1 %tobool29.not, label %err_add_master.if.then46_crit_edge, label %err_add_master.cleanup_crit_edge

err_add_master.cleanup_crit_edge:                 ; preds = %err_add_master
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_add_master.if.then46_crit_edge:               ; preds = %err_add_master
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.then46:                                        ; preds = %err_add_master.if.then46_crit_edge, %if.then7.i.if.then46_crit_edge
  tail call void @unregister_netdevice_queue(ptr noundef %hsr_dev, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %err_add_master.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %if.end41, %err_add_master.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call7, %if.end.cleanup_crit_edge ], [ %res.0, %if.then46 ], [ %res.0, %err_add_master.cleanup_crit_edge ], [ %call25, %err_add_master.thread ], [ %res.0, %if.then7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsr_create_self_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hsr_announce(ptr noundef %t) #0 align 64 {
entry:
  %interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval) #10
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %interval, align 4, !annotation !72
  %add.ptr = getelementptr i8, ptr %t, i32 -32
  %1 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @hsr_port_get_hsr(ptr noundef %add.ptr, i32 noundef 4) #10
  %proto_ops = getelementptr i8, ptr %t, i32 196
  %5 = ptrtoint ptr %proto_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proto_ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void %8(ptr noundef %call, ptr noundef nonnull %interval) #10
  %dev = getelementptr inbounds %struct.hsr_port, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %tobool.not.i6 = icmp eq ptr %10, null
  br i1 %tobool.not.i6, label %rcu_read_lock.exit.if.end_crit_edge, label %is_admin_up.exit

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

is_admin_up.exit:                                 ; preds = %rcu_read_lock.exit
  %flags.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.i.not, label %is_admin_up.exit.if.end_crit_edge, label %if.then

is_admin_up.exit.if.end_crit_edge:                ; preds = %is_admin_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %is_admin_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interval, align 4
  %add = add i32 %15, %13
  %call2 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %is_admin_up.exit.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %call.i7 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i7, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.end
  %call1.i8 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %16 = call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i14 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_prune_nodes(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsr_add_port(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_del_self_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header_parse(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_dev_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @hsr_dev_open.__warned, align 1
  br i1 %.b44, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_dev_open.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %ports = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %port.045 = load volatile ptr, ptr %ports, align 4
  %cmp.not46 = icmp eq ptr %port.045, %ports
  br i1 %cmp.not46, label %do.end.if.then33_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.then33_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %port.048 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.045, %do.end.for.body_crit_edge ]
  %designation.047 = phi i8 [ %designation.2, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.hsr_port, ptr %port.048, i32 0, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %2, label %sw.default [
    i32 4, label %for.body.for.inc_crit_edge
    i32 1, label %for.body.sw.epilog_crit_edge
    i32 2, label %sw.bb15
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb15:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %for.body.sw.epilog_crit_edge
  %designation.1 = phi i8 [ 63, %sw.default ], [ 66, %sw.bb15 ], [ 65, %for.body.sw.epilog_crit_edge ]
  %dev16 = getelementptr inbounds %struct.hsr_port, ptr %port.048, i32 0, i32 1
  %4 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev16, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %sw.epilog.if.then18_crit_edge, label %is_admin_up.exit.i

sw.epilog.if.then18_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

is_admin_up.exit.i:                               ; preds = %sw.epilog
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.i.not.i, label %is_admin_up.exit.i.if.then18_crit_edge, label %is_slave_up.exit

is_admin_up.exit.i.if.then18_crit_edge:           ; preds = %is_admin_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

is_slave_up.exit:                                 ; preds = %is_admin_up.exit.i
  %operstate.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 50
  %8 = ptrtoint ptr %operstate.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %operstate.i.i, align 8
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %9, label %is_slave_up.exit.if.then18_crit_edge [
    i8 6, label %is_slave_up.exit.for.inc_crit_edge
    i8 0, label %is_slave_up.exit.for.inc_crit_edge51
  ]

is_slave_up.exit.for.inc_crit_edge51:             ; preds = %is_slave_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

is_slave_up.exit.for.inc_crit_edge:               ; preds = %is_slave_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

is_slave_up.exit.if.then18_crit_edge:             ; preds = %is_slave_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %is_slave_up.exit.if.then18_crit_edge, %is_admin_up.exit.i.if.then18_crit_edge, %sw.epilog.if.then18_crit_edge
  %conv = zext i8 %designation.1 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv, ptr noundef %5) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %is_slave_up.exit.for.inc_crit_edge, %is_slave_up.exit.for.inc_crit_edge51, %for.body.for.inc_crit_edge
  %designation.2 = phi i8 [ %designation.047, %for.body.for.inc_crit_edge ], [ %designation.1, %is_slave_up.exit.for.inc_crit_edge ], [ %designation.1, %if.then18 ], [ %designation.1, %is_slave_up.exit.for.inc_crit_edge51 ]
  %11 = ptrtoint ptr %port.048 to i32
  call void @__asan_load4_noabort(i32 %11)
  %port.0 = load volatile ptr, ptr %port.048, align 4
  %cmp.not = icmp eq ptr %port.0, %ports
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %designation.2)
  %cmp31 = icmp eq i8 %designation.2, 0
  br i1 %cmp31, label %for.end.if.then33_crit_edge, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

for.end.if.then33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.then33:                                        ; preds = %for.end.if.then33_crit_edge, %do.end.if.then33_crit_edge
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %for.end.if.end34_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hsr_dev_close(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsr_dev_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b36.i = load i1, ptr @hsr_get_max_mtu.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_get_max_mtu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @.str.1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ports.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %port.037.i = load volatile ptr, ptr %ports.i, align 4
  %cmp.not38.i = icmp eq ptr %port.037.i, %ports.i
  br i1 %cmp.not38.i, label %do.end.i.hsr_get_max_mtu.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.hsr_get_max_mtu.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hsr_get_max_mtu.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %port.040.i = phi ptr [ %port.0.i, %for.inc.i.for.body.i_crit_edge ], [ %port.037.i, %do.end.i.for.body.i_crit_edge ]
  %mtu_max.039.i = phi i32 [ %mtu_max.1.i, %for.inc.i.for.body.i_crit_edge ], [ 1500, %do.end.i.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.hsr_port, ptr %port.040.i, i32 0, i32 3
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp10.not.i = icmp eq i32 %2, 4
  br i1 %cmp10.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.hsr_port, ptr %port.040.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu.i, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %mtu_max.039.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %for.body.i.for.inc.i_crit_edge
  %mtu_max.1.i = phi i32 [ %7, %if.then11.i ], [ %mtu_max.039.i, %for.body.i.for.inc.i_crit_edge ]
  %8 = ptrtoint ptr %port.040.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %port.0.i = load volatile ptr, ptr %port.040.i, align 4
  %cmp.not.i = icmp eq ptr %port.0.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.hsr_get_max_mtu.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.hsr_get_max_mtu.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hsr_get_max_mtu.exit

hsr_get_max_mtu.exit:                             ; preds = %for.inc.i.hsr_get_max_mtu.exit_crit_edge, %do.end.i.hsr_get_max_mtu.exit_crit_edge
  %mtu_max.0.lcssa.i = phi i32 [ 1500, %do.end.i.hsr_get_max_mtu.exit_crit_edge ], [ %mtu_max.1.i, %for.inc.i.hsr_get_max_mtu.exit_crit_edge ]
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %mtu_max.0.lcssa.i, i32 6) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %new_mtu)
  %cmp = icmp slt i32 %9, %new_mtu
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %hsr_get_max_mtu.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 6) #13
  br label %cleanup

if.end:                                           ; preds = %hsr_get_max_mtu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @hsr_fix_features(ptr noundef %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %features, -26845578338
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @hsr_features_recompute.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_features_recompute.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 196, ptr noundef nonnull @.str.1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ports.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %port.028.i = load volatile ptr, ptr %ports.i, align 4
  %cmp.not29.i = icmp eq ptr %port.028.i, %ports.i
  br i1 %cmp.not29.i, label %do.end.i.hsr_features_recompute.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.hsr_features_recompute.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hsr_features_recompute.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %port.031.i = phi ptr [ %port.0.i, %for.body.i.for.body.i_crit_edge ], [ %port.028.i, %do.end.i.for.body.i_crit_edge ]
  %features.addr.030.i = phi i64 [ %call11.i, %for.body.i.for.body.i_crit_edge ], [ %and.i, %do.end.i.for.body.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.hsr_port, ptr %port.031.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %features10.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %features10.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features10.i, align 16
  %call11.i = tail call i64 @netdev_increment_features(i64 noundef %features.addr.030.i, i64 noundef %4, i64 noundef %features) #10
  %5 = ptrtoint ptr %port.031.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %port.0.i = load volatile ptr, ptr %port.031.i, align 4
  %cmp.not.i = icmp eq ptr %port.0.i, %ports.i
  br i1 %cmp.not.i, label %for.body.i.hsr_features_recompute.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.hsr_features_recompute.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hsr_features_recompute.exit

hsr_features_recompute.exit:                      ; preds = %for.body.i.hsr_features_recompute.exit_crit_edge, %do.end.i.hsr_features_recompute.exit_crit_edge
  %features.addr.0.lcssa.i = phi i64 [ %and.i, %do.end.i.hsr_features_recompute.exit_crit_edge ], [ %call11.i, %for.body.i.hsr_features_recompute.exit_crit_edge ]
  ret i64 %features.addr.0.lcssa.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netdev_increment_features(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_forward_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_prp_supervision_frame(ptr noundef %master, ptr nocapture noundef writeonly %interval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hsr1 = getelementptr inbounds %struct.hsr_port, ptr %master, i32 0, i32 2
  %0 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsr1, align 4
  %call = tail call fastcc ptr @hsr_init_skb(ptr noundef %master)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.end, label %if.end36

land.end:                                         ; preds = %entry
  %.b90 = load i1, ptr @send_prp_supervision_frame.__already_done, align 1
  br i1 %.b90, label %land.end.cleanup_crit_edge, label %if.then7, !prof !70

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @send_prp_supervision_frame.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 340, i32 noundef 9, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end36:                                         ; preds = %entry
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 200, ptr %interval, align 4
  %call38 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 6) #10
  %prot_version = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %prot_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prot_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool39.not = icmp eq i32 %4, 0
  %conv = select i1 %tobool39.not, i16 -4096, i16 0
  %5 = ptrtoint ptr %call38 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %call38, align 1
  %7 = and i16 %6, 4095
  %or.i.i = or i16 %7, %conv
  store i16 %or.i.i, ptr %call38, align 1
  %8 = ptrtoint ptr %prot_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prot_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool41.not = icmp ne i32 %9, 0
  %conv43 = zext i1 %tobool41.not to i16
  %or6.i.i = or i16 %conv, %conv43
  %10 = ptrtoint ptr %call38 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %or6.i.i, ptr %call38, align 1
  %11 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hsr1, align 4
  %seqnr_lock = getelementptr inbounds %struct.hsr_priv, ptr %12, i32 0, i32 10
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %seqnr_lock) #10
  %sup_sequence_nr = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %sup_sequence_nr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sup_sequence_nr, align 2
  %sequence_nr = getelementptr inbounds %struct.hsr_sup_tag, ptr %call38, i32 0, i32 1
  %15 = ptrtoint ptr %sequence_nr to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %sequence_nr, align 1
  %16 = load i16, ptr %sup_sequence_nr, align 2
  %inc = add i16 %16, 1
  store i16 %inc, ptr %sup_sequence_nr, align 2
  %tlv = getelementptr inbounds %struct.hsr_sup_tag, ptr %call38, i32 0, i32 2
  %17 = ptrtoint ptr %tlv to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 20, ptr %tlv, align 1
  %HSR_TLV_length = getelementptr inbounds %struct.hsr_sup_tag, ptr %call38, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %HSR_TLV_length to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %HSR_TLV_length, align 1
  %call57 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 6) #10
  %dev = getelementptr inbounds %struct.hsr_port, ptr %master, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr, align 64
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = ptrtoint ptr %call57 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %call57, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call57, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 2
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %29 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %30)
  %cmp.i.i = icmp ult i32 %30, 60
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end36.if.end63_crit_edge, !prof !75

if.end36.if.end63_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then.i.i:                                      ; preds = %if.end36
  %sub.i.i = sub nuw nsw i32 60, %30
  %call.i.i = tail call i32 @__skb_pad(ptr noundef nonnull %call, i32 noundef %sub.i.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then60

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !70

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !76
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %35 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %36, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end63

if.then60:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hsr1, align 4
  %seqnr_lock62 = getelementptr inbounds %struct.hsr_priv, ptr %38, i32 0, i32 10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %seqnr_lock62, i32 noundef %call50) #10
  br label %cleanup

if.end63:                                         ; preds = %__skb_put.exit.i.i, %if.end36.if.end63_crit_edge
  %39 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hsr1, align 4
  %seqnr_lock65 = getelementptr inbounds %struct.hsr_priv, ptr %40, i32 0, i32 10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %seqnr_lock65, i32 noundef %call50) #10
  tail call void @hsr_forward_skb(ptr noundef nonnull %call, ptr noundef %master) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then60, %if.then7, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prp_handle_san_frame(i1 noundef zeroext, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prp_drop_frame(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prp_get_untagged_frame(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prp_create_tagged_frame(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prp_fill_frame_info(i16 noundef zeroext, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prp_update_san_info(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hsr_init_skb(ptr nocapture noundef readonly %master) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hsr1 = getelementptr inbounds %struct.hsr_port, ptr %master, i32 0, i32 2
  %0 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsr1, align 4
  %dev = getelementptr inbounds %struct.hsr_port, ptr %master, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %5 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %needed_headroom, align 8
  %conv3 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv3, %conv
  %and = and i32 %add, 131056
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %needed_tailroom, align 2
  %conv6 = zext i16 %9 to i32
  %add7 = add nuw nsw i32 %conv6, 28
  %add8 = add nuw nsw i32 %add7, %and
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add8, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add4 = add nuw nsw i32 %and, 16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %add4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = getelementptr inbounds %struct.anon.4, ptr %call.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %16, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %18 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %priority, align 4
  %sup_multicast_addr = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 15
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 49
  %23 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %lor.lhs.false.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool2.not.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.out_crit_edge, label %dev_hard_header.exit

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

dev_hard_header.exit:                             ; preds = %lor.lhs.false.i
  %call.i = tail call i32 %26(ptr noundef nonnull %call.i.i, ptr noundef %15, i16 noundef zeroext -30469, ptr noundef %sup_multicast_addr, ptr noundef %20, i32 noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %dev_hard_header.exit.out_crit_edge, label %if.end13

dev_hard_header.exit.out_crit_edge:               ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13:                                         ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i, align 4
  %sub.i = sub i16 %33, %conv.i
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %sub.i, ptr %mac_len.i, align 4
  store i16 %conv.i, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %35 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %transport_header.i, align 2
  br label %cleanup

out:                                              ; preds = %dev_hard_header.exit.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.end.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out ], [ %call.i.i, %if.end13 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_hsr_supervision_frame(ptr noundef %master, ptr nocapture noundef writeonly %interval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hsr1 = getelementptr inbounds %struct.hsr_port, ptr %master, i32 0, i32 2
  %0 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsr1, align 4
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 200, ptr %interval, align 4
  %announce_count = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %announce_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %announce_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %prot_version = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %prot_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prot_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %interval, align 4
  %8 = ptrtoint ptr %announce_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %announce_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %announce_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %type.0 = phi i8 [ 22, %if.then ], [ 23, %land.lhs.true.if.end_crit_edge ], [ 23, %entry.if.end_crit_edge ]
  %call5 = tail call fastcc ptr @hsr_init_skb(ptr noundef %master)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %land.end, label %if.end42

land.end:                                         ; preds = %if.end
  %.b115 = load i1, ptr @send_hsr_supervision_frame.__already_done, align 1
  br i1 %.b115, label %land.end.cleanup_crit_edge, label %if.then12, !prof !70

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @send_hsr_supervision_frame.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end
  %call43 = tail call ptr @skb_put(ptr noundef nonnull %call5, i32 noundef 6) #10
  %prot_version44 = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %prot_version44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prot_version44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool45.not = icmp eq i32 %11, 0
  %conv = select i1 %tobool45.not, i16 -4096, i16 0
  %12 = ptrtoint ptr %call43 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %call43, align 1
  %14 = and i16 %13, 4095
  %or.i.i = or i16 %14, %conv
  store i16 %or.i.i, ptr %call43, align 1
  %15 = ptrtoint ptr %prot_version44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prot_version44, align 4
  %conv47 = trunc i32 %16 to i16
  %17 = and i16 %conv47, 4095
  %or6.i.i = or i16 %17, %conv
  store i16 %or6.i.i, ptr %call43, align 1
  %18 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hsr1, align 4
  %seqnr_lock = getelementptr inbounds %struct.hsr_priv, ptr %19, i32 0, i32 10
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %seqnr_lock) #10
  %20 = ptrtoint ptr %prot_version44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prot_version44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp61.not = icmp eq i32 %21, 0
  br i1 %cmp61.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %sup_sequence_nr = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %sup_sequence_nr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sup_sequence_nr, align 2
  %sequence_nr = getelementptr inbounds %struct.hsr_sup_tag, ptr %call43, i32 0, i32 1
  %24 = ptrtoint ptr %sequence_nr to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %sequence_nr, align 1
  %25 = load i16, ptr %sup_sequence_nr, align 2
  %inc65 = add i16 %25, 1
  store i16 %inc65, ptr %sup_sequence_nr, align 2
  br label %if.end70

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %sequence_nr66 = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %sequence_nr66 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sequence_nr66, align 4
  %sequence_nr67 = getelementptr inbounds %struct.hsr_sup_tag, ptr %call43, i32 0, i32 1
  %28 = ptrtoint ptr %sequence_nr67 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %sequence_nr67, align 1
  %29 = load i16, ptr %sequence_nr66, align 4
  %inc69 = add i16 %29, 1
  store i16 %inc69, ptr %sequence_nr66, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then63
  %30 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hsr1, align 4
  %seqnr_lock72 = getelementptr inbounds %struct.hsr_priv, ptr %31, i32 0, i32 10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %seqnr_lock72, i32 noundef %call55) #10
  %tlv = getelementptr inbounds %struct.hsr_sup_tag, ptr %call43, i32 0, i32 2
  %32 = ptrtoint ptr %tlv to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %type.0, ptr %tlv, align 1
  %33 = ptrtoint ptr %prot_version44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prot_version44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool74.not = icmp eq i32 %34, 0
  %conv76 = select i1 %tobool74.not, i8 12, i8 6
  %HSR_TLV_length = getelementptr inbounds %struct.hsr_sup_tag, ptr %call43, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %HSR_TLV_length to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv76, ptr %HSR_TLV_length, align 1
  %call78 = tail call ptr @skb_put(ptr noundef nonnull %call5, i32 noundef 6) #10
  %dev = getelementptr inbounds %struct.hsr_port, ptr %master, i32 0, i32 1
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr, align 64
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = ptrtoint ptr %call78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %call78, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call78, i32 4
  %45 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr1.i, align 2
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 6
  %46 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %47)
  %cmp.i.i = icmp ult i32 %47, 60
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end70.if.end82_crit_edge, !prof !75

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then.i.i:                                      ; preds = %if.end70
  %sub.i.i = sub nuw nsw i32 60, %47
  %call.i.i = tail call i32 @__skb_pad(ptr noundef nonnull %call5, i32 noundef %sub.i.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 7
  %48 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !70

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !76
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %52 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %53, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end82

if.end82:                                         ; preds = %__skb_put.exit.i.i, %if.end70.if.end82_crit_edge
  tail call void @hsr_forward_skb(ptr noundef nonnull %call5, ptr noundef %master) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then.i.i.cleanup_crit_edge, %if.then12, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hsr_drop_frame(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsr_get_untagged_frame(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsr_create_tagged_frame(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsr_fill_frame_info(i16 noundef zeroext, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hsr_invalid_dan_ingress_frame(i16 noundef zeroext) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !50, !51, !53, !54, !55, !57, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/hsr/hsr_device.c", i32 115, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_is_hsr_master, !5, !"__ksymtab_is_hsr_master", i1 false, i1 false}
!5 = !{!"../net/hsr/hsr_device.c", i32 475, i32 1}
!6 = !{ptr @hsr_dev_finalize.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/hsr/hsr_device.c", i32 494, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hsr_dev_finalize.__key.3, !10, !"__key", i1 false, i1 false}
!10 = !{!"../net/hsr/hsr_device.c", i32 515, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hsr_dev_finalize.__key.5, !13, !"__key", i1 false, i1 false}
!13 = !{!"../net/hsr/hsr_device.c", i32 520, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hsr_dev_finalize.__key.7, !16, !"__key", i1 false, i1 false}
!16 = !{!"../net/hsr/hsr_device.c", i32 521, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../net/hsr/hsr_device.c", i32 60, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/hsr/hsr_device.c", i32 62, i32 2}
!23 = !{ptr @hsr_header_ops, !24, !"hsr_header_ops", i1 false, i1 false}
!24 = !{!"../net/hsr/hsr_device.c", i32 230, i32 32}
!25 = !{ptr @hsr_device_ops, !26, !"hsr_device_ops", i1 false, i1 false}
!26 = !{!"../net/hsr/hsr_device.c", i32 407, i32 36}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/hsr/hsr_device.c", i32 150, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/hsr/hsr_device.c", i32 164, i32 21}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/hsr/hsr_device.c", i32 169, i32 20}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/hsr/hsr_device.c", i32 131, i32 20}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/hsr/hsr_device.c", i32 196, i32 2}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/hsr/hsr_device.c", i32 416, i32 10}
!39 = !{ptr @hsr_type, !40, !"hsr_type", i1 false, i1 false}
!40 = !{!"../net/hsr/hsr_device.c", i32 415, i32 27}
!41 = !{ptr @prp_ops, !42, !"prp_ops", i1 false, i1 false}
!42 = !{!"../net/hsr/hsr_device.c", i32 428, i32 29}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../net/hsr/hsr_device.c", i32 340, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hsr_ops, !47, !"hsr_ops", i1 false, i1 false}
!47 = !{!"../net/hsr/hsr_device.c", i32 419, i32 29}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../net/hsr/hsr_device.c", i32 293, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"def_multicast_addr", i1 false, i1 false}
!59 = !{!"../net/hsr/hsr_device.c", i32 478, i32 28}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2148494249, i64 2148494275, i64 2148494304, i64 2148494338, i64 2148494369, i64 2148494392}
!72 = !{!"auto-init"}
!73 = !{i64 2149600274}
!74 = !{i64 2149600540}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2154949289, i64 2154949777, i64 2154949326, i64 2154949382, i64 2154949416, i64 2154949440, i64 2154949481, i64 2154949502, i64 2154949530, i64 2154949564}
