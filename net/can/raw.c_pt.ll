; ModuleID = '/llk/IR_all_yes/net/can/raw.c_pt.bc'
source_filename = "../net/can/raw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_proto = type { i32, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.70, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.70 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.raw_sock = type { %struct.sock, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, %struct.can_filter, ptr, i32, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.can_filter = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.144 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sockaddr_can = type { i16, i32, %union.anon.146 }
%union.anon.146 = type { %struct.anon.148 }
%struct.anon.148 = type { i64, i32, i8 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
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
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.149, i8, i8, i8, [8 x i8] }
%union.anon.149 = type { i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.uniqframe = type { i32, ptr, i32 }

@__UNIQUE_ID_description457 = internal constant [40 x i8] c"can_raw.description=PF_CAN raw protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file458 = internal constant [29 x i8] c"can_raw.file=net/can/can-raw\00", section ".modinfo", align 1
@__UNIQUE_ID_license459 = internal constant [29 x i8] c"can_raw.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author460 = internal constant [59 x i8] c"can_raw.author=Urs Thuermann <urs.thuermann@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias461 = internal constant [26 x i8] c"can_raw.alias=can-proto-1\00", section ".modinfo", align 1
@raw_can_proto = internal constant { %struct.can_proto, [16 x i8] } { %struct.can_proto { i32 3, i32 1, ptr @raw_ops, ptr @raw_proto }, [16 x i8] zeroinitializer }, align 32
@canraw_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @raw_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_can_raw__466_956_raw_module_init6 = internal global ptr @raw_module_init, section ".initcall6.init", align 4
@__exitcall_raw_module_exit = internal global ptr @raw_module_exit, section ".exitcall.exit", align 4
@raw_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 29, ptr null, ptr @raw_release, ptr @raw_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @raw_getname, ptr @datagram_poll, ptr @raw_sock_no_ioctlcmd, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @raw_setsockopt, ptr @raw_getsockopt, ptr null, ptr @raw_sendmsg, ptr @raw_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@raw_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raw_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1016, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.70 zeroinitializer, ptr null, [32 x i8] c"CAN_RAW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, section ".data..read_mostly", align 4
@raw_notifier_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@raw_busy_notifier = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raw_notifier_lock\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/can/raw.c\00", [18 x i8] zeroinitializer }, align 32
@raw_notifier_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @raw_notifier_list, ptr @raw_notifier_list }, [24 x i8] zeroinitializer }, align 32
@raw_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016can: raw protocol\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"raw_module_init\00", [16 x i8] zeroinitializer }, align 32
@raw_module_init._entry_ptr = internal global ptr @raw_module_init._entry, section ".printk_index", align 4
@raw_module_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013can: registration of raw protocol failed\0A\00", [52 x i8] zeroinitializer }, align 32
@raw_module_init._entry_ptr.10 = internal global ptr @raw_module_init._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.11 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 72]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"raw_can_proto\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 924, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"canraw_notifier\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 931, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [8 x i8] c"raw_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 896, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"raw_notifier_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"raw_busy_notifier\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 100, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 99, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 195, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 230, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 214, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 156, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 698, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"raw_notifier_list\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 98, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 939, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [17 x i8] c"../net/can/raw.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 943, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias461, ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description457, ptr @__UNIQUE_ID_file458, ptr @__UNIQUE_ID_license459, ptr @__exitcall_raw_module_exit, ptr @__initcall__kmod_can_raw__466_956_raw_module_init6, ptr @raw_module_exit, ptr @raw_module_init._entry, ptr @raw_module_init._entry.8, ptr @raw_module_init._entry_ptr, ptr @raw_module_init._entry_ptr.10, ptr @raw_can_proto, ptr @canraw_notifier, ptr @raw_ops, ptr @raw_notifier_lock, ptr @raw_busy_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @raw_notifier_list, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_can_proto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @canraw_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_notifier_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_busy_notifier to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_notifier_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_module_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @raw_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @can_proto_unregister(ptr noundef nonnull @raw_can_proto) #13
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @canraw_notifier) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  %call1 = tail call i32 @can_proto_register(ptr noundef nonnull @raw_can_proto) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end4, label %if.else

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @canraw_notifier) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #13
  %2 = load ptr, ptr @raw_busy_notifier, align 4
  %cmp64 = icmp eq ptr %2, %1
  br i1 %cmp64, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @raw_notifier_lock) #13
  %call2 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #13
  %3 = load ptr, ptr @raw_busy_notifier, align 4
  %cmp = icmp eq ptr %3, %1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %notifier = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %notifier) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.end.list_del.exit_crit_edge

while.end.list_del.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %notifier, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %notifier, align 4
  %prev.i = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @raw_notifier_lock) #13
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %bound = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %list_del.exit.if.end16_crit_edge, label %if.then4

list_del.exit.if.end16_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then4:                                         ; preds = %list_del.exit
  %ifindex = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  %skc_net.i48 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %skc_net.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i48, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %call9 = tail call ptr @dev_get_by_index(ptr noundef %17, i32 noundef %15) #13
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then6.if.end16_crit_edge, label %if.then11

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then11:                                        ; preds = %if.then6
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 127
  %18 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nd_net.i, align 4
  %filter.i = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %filter.i, align 4
  %count.i = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp6.i.i = icmp sgt i32 %23, 0
  br i1 %cmp6.i.i, label %if.then11.for.body.i.i_crit_edge, label %if.then11.raw_disable_filters.exit.i_crit_edge

if.then11.raw_disable_filters.exit.i_crit_edge:   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_disable_filters.exit.i

if.then11.for.body.i.i_crit_edge:                 ; preds = %if.then11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then11.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then11.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.can_filter, ptr %21, i32 %i.07.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %can_mask.i.i = getelementptr %struct.can_filter, ptr %21, i32 %i.07.i.i, i32 1
  %26 = ptrtoint ptr %can_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %can_mask.i.i, align 4
  tail call void @can_rx_unregister(ptr noundef %19, ptr noundef nonnull %call9, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @raw_rcv, ptr noundef %1) #13
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %23
  br i1 %exitcond.not.i.i, label %for.body.i.i.raw_disable_filters.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.raw_disable_filters.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_disable_filters.exit.i

raw_disable_filters.exit.i:                       ; preds = %for.body.i.i.raw_disable_filters.exit.i_crit_edge, %if.then11.raw_disable_filters.exit.i_crit_edge
  %err_mask.i = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %raw_disable_filters.exit.i.do.body1.i_crit_edge, label %if.then.i.i

raw_disable_filters.exit.i.do.body1.i_crit_edge:  ; preds = %raw_disable_filters.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i

if.then.i.i:                                      ; preds = %raw_disable_filters.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i.i = or i32 %29, 536870912
  tail call void @can_rx_unregister(ptr noundef %19, ptr noundef nonnull %call9, i32 noundef 0, i32 noundef %or.i.i, ptr noundef nonnull @raw_rcv, ptr noundef %1) #13
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i.i, %raw_disable_filters.exit.i.do.body1.i_crit_edge
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !58
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 118
  %31 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcpu_refcnt.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %39, %33
  %40 = inttoptr i32 %add.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add13.i = add i32 %42, -1
  store i32 %add13.i, ptr %40, align 4
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !59
  %and.i.i.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !60

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #13, !srcloc !61
  br label %if.end16

if.else:                                          ; preds = %if.then4
  %filter.i49 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %filter.i49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %filter.i49, align 4
  %count.i50 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %count.i50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count.i50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp6.i.i51 = icmp sgt i32 %47, 0
  br i1 %cmp6.i.i51, label %if.else.for.body.i.i57_crit_edge, label %if.else.raw_disable_filters.exit.i60_crit_edge

if.else.raw_disable_filters.exit.i60_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_disable_filters.exit.i60

if.else.for.body.i.i57_crit_edge:                 ; preds = %if.else
  br label %for.body.i.i57

for.body.i.i57:                                   ; preds = %for.body.i.i57.for.body.i.i57_crit_edge, %if.else.for.body.i.i57_crit_edge
  %i.07.i.i52 = phi i32 [ %inc.i.i55, %for.body.i.i57.for.body.i.i57_crit_edge ], [ 0, %if.else.for.body.i.i57_crit_edge ]
  %arrayidx.i.i53 = getelementptr %struct.can_filter, ptr %45, i32 %i.07.i.i52
  %48 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i53, align 4
  %can_mask.i.i54 = getelementptr %struct.can_filter, ptr %45, i32 %i.07.i.i52, i32 1
  %50 = ptrtoint ptr %can_mask.i.i54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %can_mask.i.i54, align 4
  tail call void @can_rx_unregister(ptr noundef %17, ptr noundef null, i32 noundef %49, i32 noundef %51, ptr noundef nonnull @raw_rcv, ptr noundef %1) #13
  %inc.i.i55 = add nuw nsw i32 %i.07.i.i52, 1
  %exitcond.not.i.i56 = icmp eq i32 %inc.i.i55, %47
  br i1 %exitcond.not.i.i56, label %for.body.i.i57.raw_disable_filters.exit.i60_crit_edge, label %for.body.i.i57.for.body.i.i57_crit_edge

for.body.i.i57.for.body.i.i57_crit_edge:          ; preds = %for.body.i.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i57

for.body.i.i57.raw_disable_filters.exit.i60_crit_edge: ; preds = %for.body.i.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_disable_filters.exit.i60

raw_disable_filters.exit.i60:                     ; preds = %for.body.i.i57.raw_disable_filters.exit.i60_crit_edge, %if.else.raw_disable_filters.exit.i60_crit_edge
  %err_mask.i58 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %err_mask.i58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %err_mask.i58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i59 = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i59, label %raw_disable_filters.exit.i60.if.end16_crit_edge, label %if.then.i.i62

raw_disable_filters.exit.i60.if.end16_crit_edge:  ; preds = %raw_disable_filters.exit.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then.i.i62:                                    ; preds = %raw_disable_filters.exit.i60
  call void @__sanitizer_cov_trace_pc() #15
  %or.i.i61 = or i32 %53, 536870912
  tail call void @can_rx_unregister(ptr noundef %17, ptr noundef null, i32 noundef 0, i32 noundef %or.i.i61, ptr noundef nonnull @raw_rcv, ptr noundef %1) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then.i.i62, %raw_disable_filters.exit.i60.if.end16_crit_edge, %dev_put.exit, %if.then6.if.end16_crit_edge, %list_del.exit.if.end16_crit_edge
  %count = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp17 = icmp sgt i32 %55, 1
  br i1 %cmp17, label %if.then18, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %filter = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %filter, align 4
  tail call void @kfree(ptr noundef %57) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %ifindex20 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %ifindex20 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %ifindex20, align 4
  %59 = ptrtoint ptr %bound to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %bound, align 8
  %60 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %count, align 8
  %uniq = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %uniq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %uniq, align 4
  tail call void @free_percpu(ptr noundef %62) #13
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #13
  %63 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %or.i.i.i = or i32 %65, 1
  store i32 %or.i.i.i, ptr %63, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %66 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %sk_socket.i.i, align 8
  %67 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %67, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #13
  %69 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %sk1, align 16
  tail call void @release_sock(ptr noundef nonnull %1) #13
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !64

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !65
  tail call void @sk_free(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %uaddr, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp = icmp ult i32 %len, 8
  br i1 %cmp, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %3)
  %cmp2.not = icmp eq i16 %3, 29
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup63_crit_edge

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63

if.end5:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %bound = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end5.if.end10_crit_edge, label %land.lhs.true

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 1
  %6 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_ifindex, align 4
  %ifindex6 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ifindex6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp7 = icmp eq i32 %7, %9
  br i1 %cmp7, label %land.lhs.true.out.thread_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true.out.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %can_ifindex11 = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 1
  %10 = ptrtoint ptr %can_ifindex11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %can_ifindex11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  %skc_net.i117 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i117 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i117, align 4
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call16 = tail call ptr @dev_get_by_index(ptr noundef %13, i32 noundef %11) #13
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then13.out.thread_crit_edge, label %if.end19

if.then13.out.thread_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end19:                                         ; preds = %if.then13
  %type = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 32
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %15)
  %cmp21.not = icmp eq i16 %15, 280
  br i1 %cmp21.not, label %do.body1.i113, label %do.body1.i

do.body1.i:                                       ; preds = %if.end19
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !58
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 118
  %17 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcpu_refcnt.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add13.i = add i32 %28, -1
  store i32 %add13.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !59
  %and.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !60

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #13, !srcloc !61
  br label %out.thread

do.body1.i113:                                    ; preds = %if.end19
  %flags = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 14
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 8
  %and = and i32 %31, 1
  %32 = xor i32 %and, 1
  %ifindex28 = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 17
  %33 = ptrtoint ptr %ifindex28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ifindex28, align 4
  %35 = ptrtoint ptr %skc_net.i117 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skc_net.i117, align 4
  %call30 = tail call fastcc i32 @raw_enable_allfilters(ptr noundef %36, ptr noundef nonnull %call16, ptr noundef %1)
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !58
  %pcpu_refcnt.i105 = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 118
  %38 = ptrtoint ptr %pcpu_refcnt.i105 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcpu_refcnt.i105, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i106 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i106 to ptr
  %cpu.i107 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i107 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i107, align 4
  %arrayidx.i108 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i108, align 4
  %add.i109 = add i32 %46, %40
  %47 = inttoptr i32 %add.i109 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add13.i110 = add i32 %49, -1
  store i32 %add13.i110, ptr %47, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !59
  %and.i.i.i111 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i111)
  %tobool24.not.i112 = icmp eq i32 %and.i.i.i111, 0
  br i1 %tobool24.not.i112, label %if.then28.i114, label %do.body1.i113.cleanup_crit_edge, !prof !60

do.body1.i113.cleanup_crit_edge:                  ; preds = %do.body1.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then28.i114:                                   ; preds = %do.body1.i113
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %cleanup

cleanup:                                          ; preds = %if.then28.i114, %do.body1.i113.cleanup_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #13, !srcloc !61
  br label %if.end33

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = tail call fastcc i32 @raw_enable_allfilters(ptr noundef %13, ptr noundef null, ptr noundef %1)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %cleanup
  %ifindex.1 = phi i32 [ %34, %cleanup ], [ 0, %if.else ]
  %err.1 = phi i32 [ %call30, %cleanup ], [ %call32, %if.else ]
  %notify_enetdown.2 = phi i32 [ %32, %cleanup ], [ 0, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool34.not = icmp eq i32 %err.1, 0
  br i1 %tobool34.not, label %if.then35, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then35:                                        ; preds = %if.end33
  %51 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool37.not = icmp eq i32 %52, 0
  br i1 %tobool37.not, label %if.then35.if.end53_crit_edge, label %if.then38

if.then35.if.end53_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then38:                                        ; preds = %if.then35
  %ifindex39 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %ifindex39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ifindex39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool40.not = icmp eq i32 %54, 0
  %skc_net.i119 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %55 = ptrtoint ptr %skc_net.i119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skc_net.i119, align 4
  br i1 %tobool40.not, label %if.else50, label %if.then41

if.then41:                                        ; preds = %if.then38
  %call45 = tail call ptr @dev_get_by_index(ptr noundef %56, i32 noundef %54) #13
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.then41.if.end53_crit_edge, label %if.then47

if.then41.if.end53_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call45, i32 0, i32 127
  %57 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nd_net.i, align 4
  tail call fastcc void @raw_disable_allfilters(ptr noundef %58, ptr noundef nonnull %call45, ptr noundef %1)
  tail call fastcc void @dev_put(ptr noundef nonnull %call45)
  br label %if.end53

if.else50:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @raw_disable_allfilters(ptr noundef %56, ptr noundef null, ptr noundef %1)
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then47, %if.then41.if.end53_crit_edge, %if.then35.if.end53_crit_edge
  %ifindex54 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %ifindex54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %ifindex.1, ptr %ifindex54, align 4
  %60 = ptrtoint ptr %bound to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %bound, align 8
  br label %out

out.thread:                                       ; preds = %dev_put.exit, %if.then13.out.thread_crit_edge, %land.lhs.true.out.thread_crit_edge
  %err.2.ph = phi i32 [ 0, %land.lhs.true.out.thread_crit_edge ], [ -19, %dev_put.exit ], [ -19, %if.then13.out.thread_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #13
  br label %cleanup63

out:                                              ; preds = %if.end53, %if.end33.out_crit_edge
  tail call void @release_sock(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notify_enetdown.2)
  %tobool57.not = icmp eq i32 %notify_enetdown.2, 0
  br i1 %tobool57.not, label %out.cleanup63_crit_edge, label %if.then58

out.cleanup63_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63

if.then58:                                        ; preds = %out
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %61 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 100, ptr %sk_err, align 4
  %62 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %65 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not = icmp eq i32 %65, 0
  br i1 %tobool.i.not, label %if.then60, label %if.then58.cleanup63_crit_edge

if.then58.cleanup63_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup63

if.then60:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sk_error_report(ptr noundef %1) #13
  br label %cleanup63

cleanup63:                                        ; preds = %if.then60, %if.then58.cleanup63_crit_edge, %out.cleanup63_crit_edge, %out.thread, %if.end.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup63_crit_edge ], [ -22, %if.end.cleanup63_crit_edge ], [ %err.1, %if.then58.cleanup63_crit_edge ], [ %err.1, %if.then60 ], [ %err.1, %out.cleanup63_crit_edge ], [ %err.2.ph, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raw_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 8162774324609024, ptr %uaddr, align 8
  %ifindex = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex, align 4
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 1
  %5 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %can_ifindex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raw_sock_no_ioctlcmd(ptr nocapture noundef readnone %sock, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -515
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #2 align 64 {
entry:
  %sfilter = alloca %struct.can_filter, align 8
  %err_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sfilter) #13
  %2 = ptrtoint ptr %sfilter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sfilter, align 8, !annotation !66
  %3 = getelementptr inbounds %struct.can_filter, ptr %sfilter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_mask) #13
  %5 = ptrtoint ptr %err_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %err_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %level)
  %cmp.not = icmp eq i32 %level, 101
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %optname, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb67
    i32 3, label %sw.bb100
    i32 4, label %sw.bb108
    i32 5, label %sw.bb116
    i32 6, label %sw.bb124
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %rem = and i32 %optlen, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %optlen)
  %cmp5 = icmp ugt i32 %optlen, 4096
  %or.cond = or i1 %cmp5, %cmp2.not
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %div259 = lshr i32 %optlen, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %optlen)
  %cmp8 = icmp ugt i32 %optlen, 15
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %call10 = tail call fastcc ptr @memdup_sockptr([2 x i32] %optval.coerce, i32 noundef %optlen)
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.then9.if.end21_crit_edge

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div259)
  %cmp15 = icmp eq i32 %div259, 1
  br i1 %cmp15, label %if.then16, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then16:                                        ; preds = %if.else
  %call17 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %sfilter, [2 x i32] %optval.coerce, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then16.if.end21_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.then9.if.end21_crit_edge
  %filter.0 = phi ptr [ %call10, %if.then9.if.end21_crit_edge ], [ null, %if.then16.if.end21_crit_edge ], [ null, %if.else.if.end21_crit_edge ]
  call void @rtnl_lock() #13
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %bound = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool22.not = icmp eq i32 %9, 0
  br i1 %tobool22.not, label %if.end21.if.end55_crit_edge, label %land.lhs.true

if.end21.if.end55_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end21
  %ifindex = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end34_crit_edge, label %if.then24

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then24:                                        ; preds = %land.lhs.true
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %call27 = call ptr @dev_get_by_index(ptr noundef %13, i32 noundef %11) #13
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.then24.if.end34_crit_edge

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then29:                                        ; preds = %if.then24
  br i1 %cmp8, label %if.then31, label %if.then29.dev_put.exit_crit_edge

if.then29.dev_put.exit_crit_edge:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %filter.0) #13
  br label %dev_put.exit

if.end34:                                         ; preds = %if.then24.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge
  %dev.0.ph = phi ptr [ null, %land.lhs.true.if.end34_crit_edge ], [ %call27, %if.then24.if.end34_crit_edge ]
  %14 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool36.not = icmp eq i32 %.pr, 0
  br i1 %tobool36.not, label %if.end34.if.end55_crit_edge, label %if.then37

if.end34.if.end55_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div259)
  %cmp38 = icmp eq i32 %div259, 1
  %skc_net.i260 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i260 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i260, align 4
  br i1 %cmp38, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %call41 = call fastcc i32 @raw_enable_filters(ptr noundef %16, ptr noundef %dev.0.ph, ptr noundef %1, ptr noundef nonnull %sfilter, i32 noundef 1)
  br label %if.end45

if.else42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = call fastcc i32 @raw_enable_filters(ptr noundef %16, ptr noundef %dev.0.ph, ptr noundef %1, ptr noundef %filter.0, i32 noundef %div259)
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then39
  %err.0 = phi i32 [ %call41, %if.then39 ], [ %call44, %if.else42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool46.not = icmp eq i32 %err.0, 0
  br i1 %tobool46.not, label %if.end51, label %if.then47

if.then47:                                        ; preds = %if.end45
  br i1 %cmp8, label %if.then49, label %if.then47.out_fil_crit_edge

if.then47.out_fil_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fil

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %filter.0) #13
  br label %out_fil

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %skc_net.i262 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %skc_net.i262 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i262, align 4
  %filter53 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %filter53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %filter53, align 4
  %count54 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %count54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count54, align 8
  call fastcc void @raw_disable_filters(ptr noundef %18, ptr noundef %dev.0.ph, ptr noundef %1, ptr noundef %20, i32 noundef %22)
  br label %if.end55

if.end55:                                         ; preds = %if.end51, %if.end34.if.end55_crit_edge, %if.end21.if.end55_crit_edge
  %dev.0385 = phi ptr [ %dev.0.ph, %if.end51 ], [ %dev.0.ph, %if.end34.if.end55_crit_edge ], [ null, %if.end21.if.end55_crit_edge ]
  %count56 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %count56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp57 = icmp sgt i32 %24, 1
  br i1 %cmp57, label %if.then58, label %if.end55.if.end60_crit_edge

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %filter59 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %filter59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %filter59, align 4
  call void @kfree(ptr noundef %26) #13
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div259)
  %cmp61 = icmp eq i32 %div259, 1
  br i1 %cmp61, label %if.then62, label %if.end60.if.end64_crit_edge

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %dfilter = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %sfilter to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sfilter, align 8
  %29 = ptrtoint ptr %dfilter to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %dfilter, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60.if.end64_crit_edge
  %filter.1 = phi ptr [ %dfilter, %if.then62 ], [ %filter.0, %if.end60.if.end64_crit_edge ]
  %filter65 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %filter65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %filter.1, ptr %filter65, align 4
  %31 = ptrtoint ptr %count56 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div259, ptr %count56, align 8
  br label %out_fil

out_fil:                                          ; preds = %if.end64, %if.then49, %if.then47.out_fil_crit_edge
  %dev.1 = phi ptr [ %dev.0.ph, %if.then49 ], [ %dev.0.ph, %if.then47.out_fil_crit_edge ], [ %dev.0385, %if.end64 ]
  %err.2 = phi i32 [ %err.0, %if.then49 ], [ %err.0, %if.then47.out_fil_crit_edge ], [ 0, %if.end64 ]
  %tobool.not.i = icmp eq ptr %dev.1, null
  br i1 %tobool.not.i, label %out_fil.dev_put.exit_crit_edge, label %do.body1.i

out_fil.dev_put.exit_crit_edge:                   ; preds = %out_fil
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

do.body1.i:                                       ; preds = %out_fil
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !58
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 118
  %33 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcpu_refcnt.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add13.i = add i32 %44, -1
  store i32 %add13.i, ptr %42, align 4
  %45 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !59
  %and.i.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !60

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #13, !srcloc !61
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %out_fil.dev_put.exit_crit_edge, %if.then31, %if.then29.dev_put.exit_crit_edge
  %err.2389 = phi i32 [ %err.2, %out_fil.dev_put.exit_crit_edge ], [ %err.2, %do.end30.i ], [ -19, %if.then31 ], [ -19, %if.then29.dev_put.exit_crit_edge ]
  call void @release_sock(ptr noundef %1) #13
  call void @rtnl_unlock() #13
  br label %cleanup

sw.bb67:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp68.not = icmp eq i32 %optlen, 4
  br i1 %cmp68.not, label %if.end70, label %sw.bb67.cleanup_crit_edge

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end70:                                         ; preds = %sw.bb67
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %46 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end70
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %46, i32 4, i32 -1226833920) #17, !srcloc !67
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !64

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %err_mask, i32 noundef 4) #13
  %48 = call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !68
  %and.i.i.i.i.i.i = and i32 %50, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %err_mask, ptr noundef %46, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #13, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end74_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !64

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end74_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i392 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i392
  %add.ptr.i.i.i.i = getelementptr i8, ptr %err_mask, i32 %sub.i.i.i.i
  %51 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i392)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %46, align 1
  %54 = ptrtoint ptr %err_mask to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %err_mask, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end74_crit_edge
  %55 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %err_mask, align 4
  %and = and i32 %56, 536870911
  store i32 %and, ptr %err_mask, align 4
  call void @rtnl_lock() #13
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %bound75 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %bound75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bound75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool76.not = icmp eq i32 %58, 0
  br i1 %tobool76.not, label %if.end74.if.end98_crit_edge, label %land.lhs.true77

if.end74.if.end98_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

land.lhs.true77:                                  ; preds = %if.end74
  %ifindex78 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %ifindex78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ifindex78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool79.not = icmp eq i32 %60, 0
  br i1 %tobool79.not, label %land.lhs.true77.if.end87_crit_edge, label %if.then80

land.lhs.true77.if.end87_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then80:                                        ; preds = %land.lhs.true77
  %skc_net.i263 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %61 = ptrtoint ptr %skc_net.i263 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %skc_net.i263, align 4
  %call83 = call ptr @dev_get_by_index(ptr noundef %62, i32 noundef %60) #13
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.then80.out_err_crit_edge, label %if.then80.if.end87_crit_edge

if.then80.if.end87_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then80.out_err_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

if.end87:                                         ; preds = %if.then80.if.end87_crit_edge, %land.lhs.true77.if.end87_crit_edge
  %dev.2.ph = phi ptr [ null, %land.lhs.true77.if.end87_crit_edge ], [ %call83, %if.then80.if.end87_crit_edge ]
  %63 = ptrtoint ptr %bound75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr395 = load i32, ptr %bound75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr395)
  %tobool89.not = icmp eq i32 %.pr395, 0
  br i1 %tobool89.not, label %if.end87.if.end98_crit_edge, label %if.then90

if.end87.if.end98_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

if.then90:                                        ; preds = %if.end87
  %skc_net.i264 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %64 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %err_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i265 = icmp eq i32 %65, 0
  br i1 %tobool.not.i265, label %if.then90.if.end95_crit_edge, label %raw_enable_errfilter.exit

if.then90.if.end95_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

raw_enable_errfilter.exit:                        ; preds = %if.then90
  %66 = ptrtoint ptr %skc_net.i264 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skc_net.i264, align 4
  %or.i = or i32 %65, 536870912
  %call.i = call i32 @can_rx_register(ptr noundef %67, ptr noundef %dev.2.ph, i32 noundef 0, i32 noundef %or.i, ptr noundef nonnull @raw_rcv, ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool93.not = icmp eq i32 %call.i, 0
  br i1 %tobool93.not, label %raw_enable_errfilter.exit.if.end95_crit_edge, label %raw_enable_errfilter.exit.out_err_crit_edge

raw_enable_errfilter.exit.out_err_crit_edge:      ; preds = %raw_enable_errfilter.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

raw_enable_errfilter.exit.if.end95_crit_edge:     ; preds = %raw_enable_errfilter.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.end95:                                         ; preds = %raw_enable_errfilter.exit.if.end95_crit_edge, %if.then90.if.end95_crit_edge
  %err_mask97 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 11
  %68 = ptrtoint ptr %err_mask97 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %err_mask97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i267 = icmp eq i32 %69, 0
  br i1 %tobool.not.i267, label %if.end95.if.end98_crit_edge, label %if.then.i269

if.end95.if.end98_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

if.then.i269:                                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %skc_net.i264 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %skc_net.i264, align 4
  %or.i268 = or i32 %69, 536870912
  call void @can_rx_unregister(ptr noundef %71, ptr noundef %dev.2.ph, i32 noundef 0, i32 noundef %or.i268, ptr noundef nonnull @raw_rcv, ptr noundef %1) #13
  br label %if.end98

if.end98:                                         ; preds = %if.then.i269, %if.end95.if.end98_crit_edge, %if.end87.if.end98_crit_edge, %if.end74.if.end98_crit_edge
  %dev.2398 = phi ptr [ %dev.2.ph, %if.end87.if.end98_crit_edge ], [ %dev.2.ph, %if.end95.if.end98_crit_edge ], [ %dev.2.ph, %if.then.i269 ], [ null, %if.end74.if.end98_crit_edge ]
  %72 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %err_mask, align 4
  %err_mask99 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 11
  %74 = ptrtoint ptr %err_mask99 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %err_mask99, align 8
  br label %out_err

out_err:                                          ; preds = %if.end98, %raw_enable_errfilter.exit.out_err_crit_edge, %if.then80.out_err_crit_edge
  %dev.3 = phi ptr [ %dev.2.ph, %raw_enable_errfilter.exit.out_err_crit_edge ], [ %dev.2398, %if.end98 ], [ null, %if.then80.out_err_crit_edge ]
  %err.4 = phi i32 [ %call.i, %raw_enable_errfilter.exit.out_err_crit_edge ], [ 0, %if.end98 ], [ -19, %if.then80.out_err_crit_edge ]
  call fastcc void @dev_put(ptr noundef %dev.3)
  call void @release_sock(ptr noundef %1) #13
  call void @rtnl_unlock() #13
  br label %cleanup

sw.bb100:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp101.not = icmp eq i32 %optlen, 4
  br i1 %cmp101.not, label %if.end103, label %sw.bb100.cleanup_crit_edge

sw.bb100.cleanup_crit_edge:                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end103:                                        ; preds = %sw.bb100
  %loopback = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 4
  %src.coerce.fca.0.extract.i.i270 = extractvalue [2 x i32] %optval.coerce, 0
  %75 = inttoptr i32 %src.coerce.fca.0.extract.i.i270 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i271 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i271)
  %bf.cast.i.i.i272 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i271, 0
  br i1 %bf.cast.i.i.i272, label %if.end.i.i295, label %if.end8.i.i.i.i277

if.end8.i.i.i.i277:                               ; preds = %if.end103
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #13
  %call.i.i.i.i278 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i278, label %if.end8.i.i.i.i277.if.then11.i.i.i.i294_crit_edge, label %land.lhs.true.i.i.i.i281

if.end8.i.i.i.i277.if.then11.i.i.i.i294_crit_edge: ; preds = %if.end8.i.i.i.i277
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i294

land.lhs.true.i.i.i.i281:                         ; preds = %if.end8.i.i.i.i277
  %76 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %75, i32 4, i32 -1226833920) #17, !srcloc !67
  %asmresult.i.i.i.i279 = extractvalue { i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i279)
  %cmp.i6.i.i.i280 = icmp eq i32 %asmresult.i.i.i.i279, 0
  br i1 %cmp.i6.i.i.i280, label %if.end.i.i.i.i291, label %land.lhs.true.i.i.i.i281.if.then11.i.i.i.i294_crit_edge, !prof !64

land.lhs.true.i.i.i.i281.if.then11.i.i.i.i294_crit_edge: ; preds = %land.lhs.true.i.i.i.i281
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i294

if.end.i.i.i.i291:                                ; preds = %land.lhs.true.i.i.i.i281
  %call.i.i.i.i.i282 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loopback, i32 noundef 4) #13
  %77 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i.i.i.i.i.i283 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i.i.i283 to ptr
  %cpu_domain.i.i.i.i.i.i.i284 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i284) #7, !srcloc !68
  %and.i.i.i.i.i.i285 = and i32 %79, -13
  %or.i.i.i.i.i.i286 = or i32 %and.i.i.i.i.i.i285, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i286) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %call1.i.i.i.i.i287 = tail call i32 @arm_copy_from_user(ptr noundef %loopback, ptr noundef %75, i32 noundef 4) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i287)
  %tobool4.not.i.i.i.i290 = icmp eq i32 %call1.i.i.i.i.i287, 0
  br i1 %tobool4.not.i.i.i.i290, label %if.end.i.i.i.i291.cleanup_crit_edge, label %if.end.i.i.i.i291.if.then11.i.i.i.i294_crit_edge, !prof !64

if.end.i.i.i.i291.if.then11.i.i.i.i294_crit_edge: ; preds = %if.end.i.i.i.i291
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i294

if.end.i.i.i.i291.cleanup_crit_edge:              ; preds = %if.end.i.i.i.i291
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11.i.i.i.i294:                             ; preds = %if.end.i.i.i.i291.if.then11.i.i.i.i294_crit_edge, %land.lhs.true.i.i.i.i281.if.then11.i.i.i.i294_crit_edge, %if.end8.i.i.i.i277.if.then11.i.i.i.i294_crit_edge
  %res.0.i.i.i.i289403 = phi i32 [ %call1.i.i.i.i.i287, %if.end.i.i.i.i291.if.then11.i.i.i.i294_crit_edge ], [ 4, %if.end8.i.i.i.i277.if.then11.i.i.i.i294_crit_edge ], [ 4, %land.lhs.true.i.i.i.i281.if.then11.i.i.i.i294_crit_edge ]
  %sub.i.i.i.i292 = sub i32 4, %res.0.i.i.i.i289403
  %add.ptr.i.i.i.i293 = getelementptr i8, ptr %loopback, i32 %sub.i.i.i.i292
  %80 = call ptr @memset(ptr %add.ptr.i.i.i.i293, i32 0, i32 %res.0.i.i.i.i289403)
  br label %cleanup

if.end.i.i295:                                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %75, align 1
  %83 = ptrtoint ptr %loopback to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %loopback, align 1
  br label %cleanup

sw.bb108:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp109.not = icmp eq i32 %optlen, 4
  br i1 %cmp109.not, label %if.end111, label %sw.bb108.cleanup_crit_edge

sw.bb108.cleanup_crit_edge:                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end111:                                        ; preds = %sw.bb108
  %recv_own_msgs = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 5
  %src.coerce.fca.0.extract.i.i298 = extractvalue [2 x i32] %optval.coerce, 0
  %84 = inttoptr i32 %src.coerce.fca.0.extract.i.i298 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i299 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i299)
  %bf.cast.i.i.i300 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i299, 0
  br i1 %bf.cast.i.i.i300, label %if.end.i.i323, label %if.end8.i.i.i.i305

if.end8.i.i.i.i305:                               ; preds = %if.end111
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #13
  %call.i.i.i.i306 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i306, label %if.end8.i.i.i.i305.if.then11.i.i.i.i322_crit_edge, label %land.lhs.true.i.i.i.i309

if.end8.i.i.i.i305.if.then11.i.i.i.i322_crit_edge: ; preds = %if.end8.i.i.i.i305
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i322

land.lhs.true.i.i.i.i309:                         ; preds = %if.end8.i.i.i.i305
  %85 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %84, i32 4, i32 -1226833920) #17, !srcloc !67
  %asmresult.i.i.i.i307 = extractvalue { i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i307)
  %cmp.i6.i.i.i308 = icmp eq i32 %asmresult.i.i.i.i307, 0
  br i1 %cmp.i6.i.i.i308, label %if.end.i.i.i.i319, label %land.lhs.true.i.i.i.i309.if.then11.i.i.i.i322_crit_edge, !prof !64

land.lhs.true.i.i.i.i309.if.then11.i.i.i.i322_crit_edge: ; preds = %land.lhs.true.i.i.i.i309
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i322

if.end.i.i.i.i319:                                ; preds = %land.lhs.true.i.i.i.i309
  %call.i.i.i.i.i310 = tail call zeroext i1 @__kasan_check_write(ptr noundef %recv_own_msgs, i32 noundef 4) #13
  %86 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i.i.i.i.i.i311 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i.i.i.i311 to ptr
  %cpu_domain.i.i.i.i.i.i.i312 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 4
  %88 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i312) #7, !srcloc !68
  %and.i.i.i.i.i.i313 = and i32 %88, -13
  %or.i.i.i.i.i.i314 = or i32 %and.i.i.i.i.i.i313, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i314) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %call1.i.i.i.i.i315 = tail call i32 @arm_copy_from_user(ptr noundef %recv_own_msgs, ptr noundef %84, i32 noundef 4) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i315)
  %tobool4.not.i.i.i.i318 = icmp eq i32 %call1.i.i.i.i.i315, 0
  br i1 %tobool4.not.i.i.i.i318, label %if.end.i.i.i.i319.cleanup_crit_edge, label %if.end.i.i.i.i319.if.then11.i.i.i.i322_crit_edge, !prof !64

if.end.i.i.i.i319.if.then11.i.i.i.i322_crit_edge: ; preds = %if.end.i.i.i.i319
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i322

if.end.i.i.i.i319.cleanup_crit_edge:              ; preds = %if.end.i.i.i.i319
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11.i.i.i.i322:                             ; preds = %if.end.i.i.i.i319.if.then11.i.i.i.i322_crit_edge, %land.lhs.true.i.i.i.i309.if.then11.i.i.i.i322_crit_edge, %if.end8.i.i.i.i305.if.then11.i.i.i.i322_crit_edge
  %res.0.i.i.i.i317408 = phi i32 [ %call1.i.i.i.i.i315, %if.end.i.i.i.i319.if.then11.i.i.i.i322_crit_edge ], [ 4, %if.end8.i.i.i.i305.if.then11.i.i.i.i322_crit_edge ], [ 4, %land.lhs.true.i.i.i.i309.if.then11.i.i.i.i322_crit_edge ]
  %sub.i.i.i.i320 = sub i32 4, %res.0.i.i.i.i317408
  %add.ptr.i.i.i.i321 = getelementptr i8, ptr %recv_own_msgs, i32 %sub.i.i.i.i320
  %89 = call ptr @memset(ptr %add.ptr.i.i.i.i321, i32 0, i32 %res.0.i.i.i.i317408)
  br label %cleanup

if.end.i.i323:                                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %84 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %84, align 1
  %92 = ptrtoint ptr %recv_own_msgs to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %recv_own_msgs, align 1
  br label %cleanup

sw.bb116:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp117.not = icmp eq i32 %optlen, 4
  br i1 %cmp117.not, label %if.end119, label %sw.bb116.cleanup_crit_edge

sw.bb116.cleanup_crit_edge:                       ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end119:                                        ; preds = %sw.bb116
  %fd_frames = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 6
  %src.coerce.fca.0.extract.i.i326 = extractvalue [2 x i32] %optval.coerce, 0
  %93 = inttoptr i32 %src.coerce.fca.0.extract.i.i326 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i327 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i327)
  %bf.cast.i.i.i328 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i327, 0
  br i1 %bf.cast.i.i.i328, label %if.end.i.i351, label %if.end8.i.i.i.i333

if.end8.i.i.i.i333:                               ; preds = %if.end119
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #13
  %call.i.i.i.i334 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i334, label %if.end8.i.i.i.i333.if.then11.i.i.i.i350_crit_edge, label %land.lhs.true.i.i.i.i337

if.end8.i.i.i.i333.if.then11.i.i.i.i350_crit_edge: ; preds = %if.end8.i.i.i.i333
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i350

land.lhs.true.i.i.i.i337:                         ; preds = %if.end8.i.i.i.i333
  %94 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %93, i32 4, i32 -1226833920) #17, !srcloc !67
  %asmresult.i.i.i.i335 = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i335)
  %cmp.i6.i.i.i336 = icmp eq i32 %asmresult.i.i.i.i335, 0
  br i1 %cmp.i6.i.i.i336, label %if.end.i.i.i.i347, label %land.lhs.true.i.i.i.i337.if.then11.i.i.i.i350_crit_edge, !prof !64

land.lhs.true.i.i.i.i337.if.then11.i.i.i.i350_crit_edge: ; preds = %land.lhs.true.i.i.i.i337
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i350

if.end.i.i.i.i347:                                ; preds = %land.lhs.true.i.i.i.i337
  %call.i.i.i.i.i338 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fd_frames, i32 noundef 4) #13
  %95 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i.i.i.i.i.i339 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i.i.i.i339 to ptr
  %cpu_domain.i.i.i.i.i.i.i340 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 4
  %97 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i340) #7, !srcloc !68
  %and.i.i.i.i.i.i341 = and i32 %97, -13
  %or.i.i.i.i.i.i342 = or i32 %and.i.i.i.i.i.i341, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i342) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %call1.i.i.i.i.i343 = tail call i32 @arm_copy_from_user(ptr noundef %fd_frames, ptr noundef %93, i32 noundef 4) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i343)
  %tobool4.not.i.i.i.i346 = icmp eq i32 %call1.i.i.i.i.i343, 0
  br i1 %tobool4.not.i.i.i.i346, label %if.end.i.i.i.i347.cleanup_crit_edge, label %if.end.i.i.i.i347.if.then11.i.i.i.i350_crit_edge, !prof !64

if.end.i.i.i.i347.if.then11.i.i.i.i350_crit_edge: ; preds = %if.end.i.i.i.i347
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i350

if.end.i.i.i.i347.cleanup_crit_edge:              ; preds = %if.end.i.i.i.i347
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11.i.i.i.i350:                             ; preds = %if.end.i.i.i.i347.if.then11.i.i.i.i350_crit_edge, %land.lhs.true.i.i.i.i337.if.then11.i.i.i.i350_crit_edge, %if.end8.i.i.i.i333.if.then11.i.i.i.i350_crit_edge
  %res.0.i.i.i.i345413 = phi i32 [ %call1.i.i.i.i.i343, %if.end.i.i.i.i347.if.then11.i.i.i.i350_crit_edge ], [ 4, %if.end8.i.i.i.i333.if.then11.i.i.i.i350_crit_edge ], [ 4, %land.lhs.true.i.i.i.i337.if.then11.i.i.i.i350_crit_edge ]
  %sub.i.i.i.i348 = sub i32 4, %res.0.i.i.i.i345413
  %add.ptr.i.i.i.i349 = getelementptr i8, ptr %fd_frames, i32 %sub.i.i.i.i348
  %98 = call ptr @memset(ptr %add.ptr.i.i.i.i349, i32 0, i32 %res.0.i.i.i.i345413)
  br label %cleanup

if.end.i.i351:                                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %93, align 1
  %101 = ptrtoint ptr %fd_frames to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %100, ptr %fd_frames, align 1
  br label %cleanup

sw.bb124:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp125.not = icmp eq i32 %optlen, 4
  br i1 %cmp125.not, label %if.end127, label %sw.bb124.cleanup_crit_edge

sw.bb124.cleanup_crit_edge:                       ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end127:                                        ; preds = %sw.bb124
  %join_filters = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 7
  %src.coerce.fca.0.extract.i.i354 = extractvalue [2 x i32] %optval.coerce, 0
  %102 = inttoptr i32 %src.coerce.fca.0.extract.i.i354 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i355 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i355)
  %bf.cast.i.i.i356 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i355, 0
  br i1 %bf.cast.i.i.i356, label %if.end.i.i379, label %if.end8.i.i.i.i361

if.end8.i.i.i.i361:                               ; preds = %if.end127
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #13
  %call.i.i.i.i362 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i362, label %if.end8.i.i.i.i361.if.then11.i.i.i.i378_crit_edge, label %land.lhs.true.i.i.i.i365

if.end8.i.i.i.i361.if.then11.i.i.i.i378_crit_edge: ; preds = %if.end8.i.i.i.i361
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i378

land.lhs.true.i.i.i.i365:                         ; preds = %if.end8.i.i.i.i361
  %103 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %102, i32 4, i32 -1226833920) #17, !srcloc !67
  %asmresult.i.i.i.i363 = extractvalue { i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i363)
  %cmp.i6.i.i.i364 = icmp eq i32 %asmresult.i.i.i.i363, 0
  br i1 %cmp.i6.i.i.i364, label %if.end.i.i.i.i375, label %land.lhs.true.i.i.i.i365.if.then11.i.i.i.i378_crit_edge, !prof !64

land.lhs.true.i.i.i.i365.if.then11.i.i.i.i378_crit_edge: ; preds = %land.lhs.true.i.i.i.i365
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i378

if.end.i.i.i.i375:                                ; preds = %land.lhs.true.i.i.i.i365
  %call.i.i.i.i.i366 = tail call zeroext i1 @__kasan_check_write(ptr noundef %join_filters, i32 noundef 4) #13
  %104 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i.i.i.i.i.i367 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i.i.i.i367 to ptr
  %cpu_domain.i.i.i.i.i.i.i368 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i368) #7, !srcloc !68
  %and.i.i.i.i.i.i369 = and i32 %106, -13
  %or.i.i.i.i.i.i370 = or i32 %and.i.i.i.i.i.i369, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i370) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %call1.i.i.i.i.i371 = tail call i32 @arm_copy_from_user(ptr noundef %join_filters, ptr noundef %102, i32 noundef 4) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i371)
  %tobool4.not.i.i.i.i374 = icmp eq i32 %call1.i.i.i.i.i371, 0
  br i1 %tobool4.not.i.i.i.i374, label %if.end.i.i.i.i375.cleanup_crit_edge, label %if.end.i.i.i.i375.if.then11.i.i.i.i378_crit_edge, !prof !64

if.end.i.i.i.i375.if.then11.i.i.i.i378_crit_edge: ; preds = %if.end.i.i.i.i375
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i378

if.end.i.i.i.i375.cleanup_crit_edge:              ; preds = %if.end.i.i.i.i375
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11.i.i.i.i378:                             ; preds = %if.end.i.i.i.i375.if.then11.i.i.i.i378_crit_edge, %land.lhs.true.i.i.i.i365.if.then11.i.i.i.i378_crit_edge, %if.end8.i.i.i.i361.if.then11.i.i.i.i378_crit_edge
  %res.0.i.i.i.i373418 = phi i32 [ %call1.i.i.i.i.i371, %if.end.i.i.i.i375.if.then11.i.i.i.i378_crit_edge ], [ 4, %if.end8.i.i.i.i361.if.then11.i.i.i.i378_crit_edge ], [ 4, %land.lhs.true.i.i.i.i365.if.then11.i.i.i.i378_crit_edge ]
  %sub.i.i.i.i376 = sub i32 4, %res.0.i.i.i.i373418
  %add.ptr.i.i.i.i377 = getelementptr i8, ptr %join_filters, i32 %sub.i.i.i.i376
  %107 = call ptr @memset(ptr %add.ptr.i.i.i.i377, i32 0, i32 %res.0.i.i.i.i373418)
  br label %cleanup

if.end.i.i379:                                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %102 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %102, align 1
  %110 = ptrtoint ptr %join_filters to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %109, ptr %join_filters, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i379, %if.then11.i.i.i.i378, %if.end.i.i.i.i375.cleanup_crit_edge, %sw.bb124.cleanup_crit_edge, %if.end.i.i351, %if.then11.i.i.i.i350, %if.end.i.i.i.i347.cleanup_crit_edge, %sw.bb116.cleanup_crit_edge, %if.end.i.i323, %if.then11.i.i.i.i322, %if.end.i.i.i.i319.cleanup_crit_edge, %sw.bb108.cleanup_crit_edge, %if.end.i.i295, %if.then11.i.i.i.i294, %if.end.i.i.i.i291.cleanup_crit_edge, %sw.bb100.cleanup_crit_edge, %out_err, %if.then11.i.i.i.i, %sw.bb67.cleanup_crit_edge, %dev_put.exit, %if.then16.cleanup_crit_edge, %if.then12, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -14, %if.then16.cleanup_crit_edge ], [ -22, %sw.bb67.cleanup_crit_edge ], [ -22, %sw.bb100.cleanup_crit_edge ], [ -22, %sw.bb108.cleanup_crit_edge ], [ -22, %sw.bb116.cleanup_crit_edge ], [ -22, %sw.bb124.cleanup_crit_edge ], [ -92, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i.i.i294 ], [ -14, %if.then11.i.i.i.i322 ], [ -14, %if.then11.i.i.i.i350 ], [ -14, %if.then11.i.i.i.i378 ], [ %err.4, %out_err ], [ %err.2389, %dev_put.exit ], [ 0, %if.end.i.i295 ], [ 0, %if.end.i.i.i.i291.cleanup_crit_edge ], [ 0, %if.end.i.i323 ], [ 0, %if.end.i.i.i.i319.cleanup_crit_edge ], [ 0, %if.end.i.i351 ], [ 0, %if.end.i.i.i.i347.cleanup_crit_edge ], [ 0, %if.end.i.i379 ], [ 0, %if.end.i.i.i.i375.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_mask) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sfilter) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %level)
  %cmp.not = icmp eq i32 %level, 101
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 698) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !68
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #13, !srcloc !71
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult3 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3)
  %cmp7 = icmp slt i32 %asmresult3, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %optname, label %if.end9.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb55
    i32 3, label %sw.bb59
    i32 4, label %sw.bb63
    i32 5, label %sw.bb67
    i32 6, label %sw.bb71
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #13
  %count = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp sgt i32 %8, 0
  br i1 %cmp10, label %if.then11, label %sw.bb.if.then38_crit_edge

sw.bb.if.then38_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.then11:                                        ; preds = %sw.bb
  %mul = shl i32 %8, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3, i32 %mul)
  %cmp13 = icmp slt i32 %asmresult3, %mul
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 713) #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i136 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i136 to ptr
  %cpu_domain.i.i137 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i137) #7, !srcloc !68
  %and.i138 = and i32 %11, -13
  %or.i139 = or i32 %and.i138, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i139) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %mul, i32 -1226833921) #13, !srcloc !72
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool24.not = icmp eq i32 %12, 0
  %spec.select = select i1 %tobool24.not, i32 -34, i32 -14
  br label %if.end36

if.else:                                          ; preds = %if.then11
  %filter = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.else
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.end36_crit_edge, label %if.then27.i.i, !prof !64

land.rhs16.i.i.if.end36_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.end36

if.then.i.i.i:                                    ; preds = %if.else
  tail call void @__check_object_size(ptr noundef %14, i32 noundef %mul, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %mul, i32 -1226833920) #17, !srcloc !73
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %14, i32 noundef %mul) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %14, i32 noundef %mul) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool31.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool31.not, label %copy_to_user.exit.if.then38_crit_edge, label %copy_to_user.exit.if.end36_crit_edge

copy_to_user.exit.if.end36_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

copy_to_user.exit.if.then38_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.end36:                                         ; preds = %copy_to_user.exit.if.end36_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.end36_crit_edge, %if.then14
  %err.1 = phi i32 [ %spec.select, %if.then14 ], [ -14, %copy_to_user.exit.if.end36_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end36_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #13
  br label %cleanup

if.then38:                                        ; preds = %copy_to_user.exit.if.then38_crit_edge, %sw.bb.if.then38_crit_edge
  %len.2.ph = phi i32 [ 0, %sw.bb.if.then38_crit_edge ], [ %mul, %copy_to_user.exit.if.then38_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 727) #13
  %16 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i140 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i140 to ptr
  %cpu_domain.i.i141 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i141) #7, !srcloc !68
  %and.i142 = and i32 %18, -13
  %or.i143 = or i32 %and.i142, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i143) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %len.2.ph, i32 -1226833921) #13, !srcloc !74
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  br label %cleanup

sw.bb55:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %20 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 4)
  %err_mask = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 11
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %21 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 4)
  %loopback = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %22 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 4)
  %recv_own_msgs = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 5
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %23 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 4)
  %fd_frames = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 6
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %24 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 4)
  %join_filters = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb71, %sw.bb67, %sw.bb63, %sw.bb59, %sw.bb55
  %val.0 = phi ptr [ %join_filters, %sw.bb71 ], [ %fd_frames, %sw.bb67 ], [ %recv_own_msgs, %sw.bb63 ], [ %loopback, %sw.bb59 ], [ %err_mask, %sw.bb55 ]
  %len.8 = phi i32 [ %24, %sw.bb71 ], [ %23, %sw.bb67 ], [ %22, %sw.bb63 ], [ %21, %sw.bb59 ], [ %20, %sw.bb55 ]
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 764) #13
  %25 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i144 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i144 to ptr
  %cpu_domain.i.i145 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i145) #7, !srcloc !68
  %and.i146 = and i32 %27, -13
  %or.i147 = or i32 %and.i146, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i147) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %28 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %len.8, i32 -1226833921) #13, !srcloc !75
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool90.not = icmp eq i32 %28, 0
  br i1 %tobool90.not, label %if.then.i.i.i156, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i.i156:                                 ; preds = %sw.epilog
  tail call void @__check_object_size(ptr noundef %val.0, i32 noundef %len.8, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #13
  %call.i.i157 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i157, label %if.then.i.i.i156.copy_to_user.exit166_crit_edge, label %if.end.i.i161

if.then.i.i.i156.copy_to_user.exit166_crit_edge:  ; preds = %if.then.i.i.i156
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit166

if.end.i.i161:                                    ; preds = %if.then.i.i.i156
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %len.8, i32 -1226833920) #17, !srcloc !73
  %asmresult.i.i159 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i159)
  %cmp.i6.i160 = icmp eq i32 %asmresult.i.i159, 0
  br i1 %cmp.i6.i160, label %if.then2.i.i164, label %if.end.i.i161.copy_to_user.exit166_crit_edge

if.end.i.i161.copy_to_user.exit166_crit_edge:     ; preds = %if.end.i.i161
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit166

if.then2.i.i164:                                  ; preds = %if.end.i.i161
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i162 = tail call zeroext i1 @__kasan_check_read(ptr noundef %val.0, i32 noundef %len.8) #13
  %call.i12.i.i163 = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %val.0, i32 noundef %len.8) #13
  br label %copy_to_user.exit166

copy_to_user.exit166:                             ; preds = %if.then2.i.i164, %if.end.i.i161.copy_to_user.exit166_crit_edge, %if.then.i.i.i156.copy_to_user.exit166_crit_edge
  %n.addr.0.i165 = phi i32 [ %len.8, %if.then.i.i.i156.copy_to_user.exit166_crit_edge ], [ %call.i12.i.i163, %if.then2.i.i164 ], [ %len.8, %if.end.i.i161.copy_to_user.exit166_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i165)
  %tobool94.not = icmp eq i32 %n.addr.0.i165, 0
  %spec.select175 = select i1 %tobool94.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit166, %sw.epilog.cleanup_crit_edge, %if.then38, %if.end36, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %err.1, %if.end36 ], [ %19, %if.then38 ], [ -92, %if.end9.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ %spec.select175, %copy_to_user.exit166 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp ult i32 %5, 8
  br i1 %cmp, label %if.then.cleanup57_crit_edge, label %if.end

if.then.cleanup57_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %7)
  %cmp4.not = icmp eq i16 %7, 29
  br i1 %cmp4.not, label %cleanup, label %if.end.cleanup57_crit_edge

if.end.cleanup57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, ptr %3, i32 0, i32 1
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ifindex8 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 2
  br label %if.end9

if.end9:                                          ; preds = %if.else, %cleanup
  %ifindex.1.in = phi ptr [ %can_ifindex, %cleanup ], [ %ifindex8, %if.else ]
  %8 = ptrtoint ptr %ifindex.1.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %ifindex.1 = load i32, ptr %ifindex.1.in, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i, align 4
  %call11 = tail call ptr @dev_get_by_index(ptr noundef %10, i32 noundef %ifindex.1) #13
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.cleanup57_crit_edge, label %if.end14

if.end9.cleanup57_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

if.end14:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %err, align 4
  %fd_frames = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %fd_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fd_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %if.end14.if.else27_crit_edge, label %land.lhs.true

if.end14.if.else27_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else27

land.lhs.true:                                    ; preds = %if.end14
  %mtu = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 20
  %14 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %15)
  %cmp16 = icmp eq i32 %15, 72
  br i1 %cmp16, label %if.then18, label %land.lhs.true.if.else27_crit_edge

land.lhs.true.if.else27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else27

if.then18:                                        ; preds = %land.lhs.true
  %16 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %size, label %if.then18.do.body1.i107_crit_edge [
    i32 72, label %if.then18.if.end38_crit_edge
    i32 16, label %if.then18.if.end38_crit_edge115
  ]

if.then18.if.end38_crit_edge115:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then18.if.end38_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then18.do.body1.i107_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i107

if.else27:                                        ; preds = %land.lhs.true.if.else27_crit_edge, %if.end14.if.else27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp28.not = icmp eq i32 %size, 16
  br i1 %cmp28.not, label %if.else27.if.end38_crit_edge, label %if.else27.do.body1.i107_crit_edge, !prof !64

if.else27.do.body1.i107_crit_edge:                ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i107

if.else27.if.end38_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end38:                                         ; preds = %if.else27.if.end38_crit_edge, %if.then18.if.end38_crit_edge, %if.then18.if.end38_crit_edge115
  %add = add nuw nsw i32 %size, 16
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %17 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_flags, align 4
  %and = and i32 %18, 64
  %call39 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add, i32 noundef %and, ptr noundef nonnull %err) #13
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.do.body1.i107_crit_edge, label %if.end42

if.end38.do.body1.i107_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i107

if.end42:                                         ; preds = %if.end38
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 16
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %22, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %ifindex43 = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 17
  %23 = ptrtoint ptr %ifindex43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex43, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 18
  %25 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %26, align 8
  %28 = load ptr, ptr %head.i, align 8
  %skbcnt = getelementptr inbounds %struct.can_skb_priv, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %skbcnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %skbcnt, align 4
  %call47 = call ptr @skb_put(ptr noundef nonnull %call39, i32 noundef %size) #13
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef %call47, i32 noundef %size, i1 noundef zeroext false) #13
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call47, i32 noundef %size, ptr noundef %msg_iter.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %size)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %size
  br i1 %cmp.i.i, label %if.end52, label %free_skb, !prof !64

if.end52:                                         ; preds = %if.end42
  %30 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %err, align 4
  %sk_tsflags = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %31 = ptrtoint ptr %sk_tsflags to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sk_tsflags, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 17
  %36 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 3
  %tskey.i = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i.i, label %if.end52.if.end10.i.i_crit_edge, label %if.then.i.i, !prof !64

if.end52.if.end10.i.i_crit_edge:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end52
  call void @__sock_tx_timestamp(i16 noundef zeroext %32, ptr noundef %tx_flags.i) #13
  %conv.i.i = zext i16 %32 to i32
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %and7.i.i = and i32 %conv.i.i, 771
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %or.cond28.i.i = or i1 %tobool8.not.i.i, %tobool3.not.i.i
  br i1 %or.cond28.i.i, label %if.then.i.i.if.end10.i.i_crit_edge, label %if.then9.i.i

if.then.i.i.if.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sk_tskey.i.i = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 67
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_tskey.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !76
  call void @llvm.prefetch.p0(ptr %sk_tskey.i.i, i32 1, i32 3, i32 1) #13
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_tskey.i.i, ptr %sk_tskey.i.i, i32 1, ptr elementtype(i32) %sk_tskey.i.i) #13, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !78
  %sub.i.i = add i32 %asmresult.i.i.i.i.i.i, -1
  %39 = ptrtoint ptr %tskey.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.i.i, ptr %tskey.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %if.then.i.i.if.end10.i.i_crit_edge, %if.end52.if.end10.i.i_crit_edge
  %40 = getelementptr inbounds %struct.sock_common, ptr %35, i32 0, i32 13
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i.i, label %if.end10.i.i.do.body1.i_crit_edge, label %if.then18.i.i, !prof !64

if.end10.i.i.do.body1.i_crit_edge:                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i

if.then18.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_flags.i, align 1
  %46 = or i8 %45, 16
  store i8 %46, ptr %tx_flags.i, align 1
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then18.i.i, %if.end10.i.i.do.body1.i_crit_edge
  %47 = getelementptr inbounds %struct.anon.51, ptr %call39, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call11, ptr %47, align 8
  %49 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %1, ptr %33, align 4
  %sk_priority = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %50 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_priority, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 15, i32 0, i32 6
  %52 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %priority, align 4
  %loopback = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %loopback to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %loopback, align 8
  %call53 = call i32 @can_send(ptr noundef nonnull %call39, i32 noundef %54) #13
  %55 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call53, ptr %err, align 4
  %56 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !58
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 118
  %57 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcpu_refcnt.i, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i97 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i97 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %65, %59
  %66 = inttoptr i32 %add.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add13.i = add i32 %68, -1
  store i32 %add13.i, ptr %66, align 4
  %69 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !59
  %and.i.i.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !60

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #13, !srcloc !61
  %70 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool54.not = icmp eq i32 %71, 0
  br i1 %tobool54.not, label %dev_put.exit.cleanup57_crit_edge, label %dev_put.exit.send_failed_crit_edge

dev_put.exit.send_failed_crit_edge:               ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %send_failed

dev_put.exit.cleanup57_crit_edge:                 ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

free_skb:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #13
  %72 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -14, ptr %err, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call39, i32 noundef 0) #13
  br label %do.body1.i107

do.body1.i107:                                    ; preds = %free_skb, %if.end38.do.body1.i107_crit_edge, %if.else27.do.body1.i107_crit_edge, %if.then18.do.body1.i107_crit_edge
  %73 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !58
  %pcpu_refcnt.i99 = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 118
  %74 = ptrtoint ptr %pcpu_refcnt.i99 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pcpu_refcnt.i99, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i100 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i100 to ptr
  %cpu.i101 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %cpu.i101 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu.i101, align 4
  %arrayidx.i102 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i102, align 4
  %add.i103 = add i32 %82, %76
  %83 = inttoptr i32 %add.i103 to ptr
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add13.i104 = add i32 %85, -1
  store i32 %add13.i104, ptr %83, align 4
  %86 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !59
  %and.i.i.i105 = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105)
  %tobool24.not.i106 = icmp eq i32 %and.i.i.i105, 0
  br i1 %tobool24.not.i106, label %if.then28.i108, label %do.body1.i107.dev_put.exit110_crit_edge, !prof !60

do.body1.i107.dev_put.exit110_crit_edge:          ; preds = %do.body1.i107
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit110

if.then28.i108:                                   ; preds = %do.body1.i107
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit110

dev_put.exit110:                                  ; preds = %if.then28.i108, %do.body1.i107.dev_put.exit110_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %73) #13, !srcloc !61
  br label %send_failed

send_failed:                                      ; preds = %dev_put.exit110, %dev_put.exit.send_failed_crit_edge
  %87 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %err, align 4
  br label %cleanup57

cleanup57:                                        ; preds = %send_failed, %dev_put.exit.cleanup57_crit_edge, %if.end9.cleanup57_crit_edge, %if.end.cleanup57_crit_edge, %if.then.cleanup57_crit_edge
  %retval.1 = phi i32 [ %88, %send_failed ], [ -6, %if.end9.cleanup57_crit_edge ], [ %size, %dev_put.exit.cleanup57_crit_edge ], [ -22, %if.then.cleanup57_crit_edge ], [ -22, %if.end.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %and3 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @sock_recv_errqueue(ptr noundef %1, ptr noundef %msg, i32 noundef %size, i32 noundef 101, i32 noundef 1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %flags, -65
  %and = and i32 %flags, 64
  %call4 = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and2, i32 noundef %and, ptr noundef nonnull %err) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %size)
  %cmp = icmp ugt i32 %6, %size
  br i1 %cmp, label %if.then8, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %or = or i32 %8, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end7.if.end10_crit_edge
  %size.addr.0 = phi i32 [ %size, %if.then8 ], [ %6, %if.end7.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %cmp9.i.i.i = icmp slt i32 %size.addr.0, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end10
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge, label %if.then27.i.i.i, !prof !64

land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge:    ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %memcpy_to_msg.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %memcpy_to_msg.exit

if.then.i.i.i.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void @__check_object_size(ptr noundef %10, i32 noundef %size.addr.0, i1 noundef zeroext true) #13
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef %10, i32 noundef %size.addr.0, ptr noundef %msg_iter.i) #13
  br label %memcpy_to_msg.exit

memcpy_to_msg.exit:                               ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %size.addr.0)
  %cmp.i = icmp eq i32 %retval.0.i.i, %size.addr.0
  %cond.i = select i1 %cmp.i, i32 0, i32 -14
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %err, align 4
  br i1 %cmp.i, label %if.end14, label %if.then13

if.then13:                                        ; preds = %memcpy_to_msg.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call4) #13
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err, align 4
  br label %cleanup

if.end14:                                         ; preds = %memcpy_to_msg.exit
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %and.i = and i32 %16, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end14.if.then.i_crit_edge

if.end14.if.then.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end14
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %17 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sk_tsflags.i, align 8
  %19 = and i16 %18, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool2.not.i = icmp eq i16 %19, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end14.if.then.i_crit_edge
  call void @__sock_recv_ts_and_drops(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call4) #13
  br label %sock_recv_ts_and_drops.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %14, align 4
  %22 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %if.else6.i, label %if.then5.i, !prof !64

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %23, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %1, i64 noundef %25) #13
  br label %sock_recv_ts_and_drops.exit

if.else6.i:                                       ; preds = %if.else.i
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  %26 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sk_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000000, i64 %27)
  %cmp.i52 = icmp eq i64 %27, -1000000000
  br i1 %cmp.i52, label %if.then14.i, label %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, !prof !60

if.else6.i.sock_recv_ts_and_drops.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_recv_ts_and_drops.exit

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @sock_write_timestamp(ptr noundef %1, i64 noundef 0) #13
  br label %sock_recv_ts_and_drops.exit

sock_recv_ts_and_drops.exit:                      ; preds = %if.then14.i, %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, %if.then5.i, %if.then.i
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %msg, align 8
  %tobool15.not = icmp eq ptr %29, null
  br i1 %tobool15.not, label %sock_recv_ts_and_drops.exit.if.end19_crit_edge, label %do.end

sock_recv_ts_and_drops.exit.if.end19_crit_edge:   ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.end:                                           ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #15
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %30 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %msg_namelen, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 3
  %31 = ptrtoint ptr %cb to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %cb, align 8
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %29, align 1
  br label %if.end19

if.end19:                                         ; preds = %do.end, %sock_recv_ts_and_drops.exit.if.end19_crit_edge
  %arrayidx.i = getelementptr %struct.sk_buff, ptr %call4, i32 0, i32 3, i32 24
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %msg_flags21 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %36 = ptrtoint ptr %msg_flags21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_flags21, align 4
  %or22 = or i32 %37, %35
  store i32 %or22, ptr %msg_flags21, align 4
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then13, %if.then6, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %13, %if.then13 ], [ %size.addr.0, %if.end19 ], [ %4, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @raw_disable_allfilters(ptr noundef %net, ptr noundef %dev, ptr noundef %sk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %filter = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter, align 4
  %count = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.i = icmp sgt i32 %3, 0
  br i1 %cmp6.i, label %entry.for.body.i_crit_edge, label %entry.raw_disable_filters.exit_crit_edge

entry.raw_disable_filters.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_disable_filters.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.can_filter, ptr %1, i32 %i.07.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %can_mask.i = getelementptr %struct.can_filter, ptr %1, i32 %i.07.i, i32 1
  %6 = ptrtoint ptr %can_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_mask.i, align 4
  tail call void @can_rx_unregister(ptr noundef %net, ptr noundef %dev, i32 noundef %5, i32 noundef %7, ptr noundef nonnull @raw_rcv, ptr noundef %sk) #13
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.body.i.raw_disable_filters.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.raw_disable_filters.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_disable_filters.exit

raw_disable_filters.exit:                         ; preds = %for.body.i.raw_disable_filters.exit_crit_edge, %entry.raw_disable_filters.exit_crit_edge
  %err_mask = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 11
  %8 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %raw_disable_filters.exit.raw_disable_errfilter.exit_crit_edge, label %if.then.i

raw_disable_filters.exit.raw_disable_errfilter.exit_crit_edge: ; preds = %raw_disable_filters.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_disable_errfilter.exit

if.then.i:                                        ; preds = %raw_disable_filters.exit
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %9, 536870912
  tail call void @can_rx_unregister(ptr noundef %net, ptr noundef %dev, i32 noundef 0, i32 noundef %or.i, ptr noundef nonnull @raw_rcv, ptr noundef %sk) #13
  br label %raw_disable_errfilter.exit

raw_disable_errfilter.exit:                       ; preds = %if.then.i, %raw_disable_filters.exit.raw_disable_errfilter.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !58
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !59
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !60

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !61
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @raw_disable_filters(ptr noundef %net, ptr noundef %dev, ptr noundef %sk, ptr nocapture noundef readonly %filter, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6 = icmp sgt i32 %count, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.can_filter, ptr %filter, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %can_mask = getelementptr %struct.can_filter, ptr %filter, i32 %i.07, i32 1
  %2 = ptrtoint ptr %can_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_mask, align 4
  tail call void @can_rx_unregister(ptr noundef %net, ptr noundef %dev, i32 noundef %1, i32 noundef %3, ptr noundef nonnull @raw_rcv, ptr noundef %sk) #13
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raw_rcv(ptr noundef %oskb, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_own_msgs = getelementptr inbounds %struct.raw_sock, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %recv_own_msgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %recv_own_msgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp = icmp eq ptr %4, %data
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %fd_frames = getelementptr inbounds %struct.raw_sock, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %fd_frames to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fd_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true2:                                   ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp3.not = icmp eq i32 %8, 16
  br i1 %cmp3.not, label %land.lhs.true2.do.body_crit_edge, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true2.do.body_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %land.lhs.true2.do.body_crit_edge, %if.end.do.body_crit_edge
  %uniq = getelementptr inbounds %struct.raw_sock, ptr %data, i32 0, i32 12
  %9 = ptrtoint ptr %uniq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uniq, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, %11
  %18 = inttoptr i32 %add to ptr
  %skb8 = getelementptr inbounds %struct.uniqframe, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %skb8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb8, align 4
  %cmp9 = icmp eq ptr %20, %oskb
  br i1 %cmp9, label %do.body11, label %do.body.if.else97_crit_edge

do.body.if.else97_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else97

do.body11:                                        ; preds = %do.body
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %skbcnt24 = getelementptr inbounds %struct.can_skb_priv, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %skbcnt24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %skbcnt24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp25 = icmp eq i32 %22, %26
  br i1 %cmp25, label %if.then26, label %do.body11.if.else97_crit_edge

do.body11.if.else97_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else97

if.then26:                                        ; preds = %do.body11
  %join_filters = getelementptr inbounds %struct.raw_sock, ptr %data, i32 0, i32 7
  %27 = ptrtoint ptr %join_filters to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %join_filters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool27.not = icmp eq i32 %28, 0
  br i1 %tobool27.not, label %if.then26.cleanup_crit_edge, label %do.body30

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body30:                                        ; preds = %if.then26
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !58
  %30 = ptrtoint ptr %uniq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %uniq, align 4
  %join_rx_count = getelementptr inbounds %struct.uniqframe, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %join_rx_count to i32
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu, align 4
  %arrayidx52 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %36, %32
  %37 = inttoptr i32 %add53 to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add54 = add i32 %39, 1
  store i32 %add54, ptr %37, align 4
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !59
  %and.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool65.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool65.not, label %if.then69, label %do.body30.do.end72_crit_edge, !prof !60

do.body30.do.end72_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end72

if.then69:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body30.do.end72_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #13, !srcloc !61
  %41 = ptrtoint ptr %uniq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %uniq, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu, align 4
  %arrayidx89 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx89, align 4
  %add90 = add i32 %47, %43
  %48 = inttoptr i32 %add90 to ptr
  %join_rx_count91 = getelementptr inbounds %struct.uniqframe, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %join_rx_count91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %join_rx_count91, align 4
  %count = getelementptr inbounds %struct.raw_sock, ptr %data, i32 0, i32 8
  %51 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp92 = icmp ult i32 %50, %52
  br i1 %cmp92, label %do.end72.cleanup_crit_edge, label %do.end72.if.end147_crit_edge

do.end72.if.end147_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

do.end72.cleanup_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else97:                                        ; preds = %do.body11.if.else97_crit_edge, %do.body.if.else97_crit_edge
  %53 = ptrtoint ptr %skb8 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %oskb, ptr %skb8, align 4
  %head.i205 = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 18
  %54 = ptrtoint ptr %head.i205 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i205, align 8
  %skbcnt112 = getelementptr inbounds %struct.can_skb_priv, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %skbcnt112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %skbcnt112, align 4
  %58 = ptrtoint ptr %uniq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %uniq, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu, align 4
  %arrayidx123 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx123, align 4
  %add124 = add i32 %64, %60
  %65 = inttoptr i32 %add124 to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %57, ptr %65, align 4
  %67 = load ptr, ptr %uniq, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = load i32, ptr %cpu, align 4
  %arrayidx136 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx136, align 4
  %add137 = add i32 %71, %68
  %72 = inttoptr i32 %add137 to ptr
  %join_rx_count138 = getelementptr inbounds %struct.uniqframe, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %join_rx_count138 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %join_rx_count138, align 4
  %join_filters139 = getelementptr inbounds %struct.raw_sock, ptr %data, i32 0, i32 7
  %74 = ptrtoint ptr %join_filters139 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %join_filters139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool140.not = icmp eq i32 %75, 0
  br i1 %tobool140.not, label %if.else97.if.end147_crit_edge, label %land.lhs.true141

if.else97.if.end147_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

land.lhs.true141:                                 ; preds = %if.else97
  %count142 = getelementptr inbounds %struct.raw_sock, ptr %data, i32 0, i32 8
  %76 = ptrtoint ptr %count142 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp143 = icmp sgt i32 %77, 1
  br i1 %cmp143, label %land.lhs.true141.cleanup_crit_edge, label %land.lhs.true141.if.end147_crit_edge

land.lhs.true141.if.end147_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

land.lhs.true141.cleanup_crit_edge:               ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end147:                                        ; preds = %land.lhs.true141.if.end147_crit_edge, %if.else97.if.end147_crit_edge, %do.end72.if.end147_crit_edge
  %call148 = tail call ptr @skb_clone(ptr noundef %oskb, i32 noundef 2592) #13
  %tobool149.not = icmp eq ptr %call148, null
  br i1 %tobool149.not, label %if.end147.cleanup_crit_edge, label %do.end154

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end154:                                        ; preds = %if.end147
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call148, i32 0, i32 3
  %78 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %79 = ptrtoint ptr %cb to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 29, ptr %cb, align 8
  %80 = getelementptr inbounds %struct.anon.51, ptr %call148, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 17
  %83 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ifindex, align 4
  %can_ifindex = getelementptr inbounds %struct.sk_buff, ptr %call148, i32 0, i32 3, i32 4
  %85 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %can_ifindex, align 4
  %arrayidx.i = getelementptr %struct.sk_buff, ptr %call148, i32 0, i32 3, i32 24
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %arrayidx.i, align 4
  %87 = getelementptr inbounds %struct.sk_buff, ptr %oskb, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %tobool156.not = icmp eq ptr %89, null
  %spec.store.select = select i1 %tobool156.not, i32 0, i32 4
  store i32 %spec.store.select, ptr %arrayidx.i, align 4
  %90 = load ptr, ptr %87, align 4
  %cmp159 = icmp eq ptr %90, %data
  br i1 %cmp159, label %if.then161, label %do.end154.if.end163_crit_edge

do.end154.if.end163_crit_edge:                    ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end163

if.then161:                                       ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #15
  %or162 = or i32 %spec.store.select, 2048
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or162, ptr %arrayidx.i, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %do.end154.if.end163_crit_edge
  %call164 = tail call i32 @sock_queue_rcv_skb(ptr noundef %data, ptr noundef nonnull %call148) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.end163.cleanup_crit_edge

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call148, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then167, %if.end163.cleanup_crit_edge, %if.end147.cleanup_crit_edge, %land.lhs.true141.cleanup_crit_edge, %do.end72.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_enable_allfilters(ptr noundef %net, ptr noundef %dev, ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter, align 4
  %count = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.can_filter, ptr %1, i32 %i.024.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %can_mask.i = getelementptr %struct.can_filter, ptr %1, i32 %i.024.i, i32 1
  %6 = ptrtoint ptr %can_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_mask.i, align 4
  %call.i = tail call i32 @can_rx_register(ptr noundef %net, ptr noundef %dev, i32 noundef %5, i32 noundef %7, ptr noundef nonnull @raw_rcv, ptr noundef %sk, ptr noundef nonnull @.str.1, ptr noundef %sk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i)
  %cmp226.not.i = icmp eq i32 %i.024.i, 0
  br i1 %cmp226.not.i, label %while.cond.preheader.i.if.end7_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end7_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec27.in.i = phi i32 [ %dec27.i, %while.body.i.while.body.i_crit_edge ], [ %i.024.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec27.i = add nsw i32 %dec27.in.i, -1
  %arrayidx3.i = getelementptr %struct.can_filter, ptr %1, i32 %dec27.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %can_mask6.i = getelementptr %struct.can_filter, ptr %1, i32 %dec27.i, i32 1
  %10 = ptrtoint ptr %can_mask6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %can_mask6.i, align 4
  tail call void @can_rx_unregister(ptr noundef %net, ptr noundef %dev, i32 noundef %9, i32 noundef %11, ptr noundef nonnull @raw_rcv, ptr noundef %sk) #13
  %cmp2.i = icmp sgt i32 %dec27.in.i, 1
  br i1 %cmp2.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end7_crit_edge

while.body.i.if.end7_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %err_mask = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 11
  %12 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i21 = icmp eq i32 %13, 0
  br i1 %tobool.not.i21, label %if.then.if.end7_crit_edge, label %raw_enable_errfilter.exit

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

raw_enable_errfilter.exit:                        ; preds = %if.then
  %or.i = or i32 %13, 536870912
  %call.i22 = tail call i32 @can_rx_register(ptr noundef %net, ptr noundef %dev, i32 noundef 0, i32 noundef %or.i, ptr noundef nonnull @raw_rcv, ptr noundef %sk, ptr noundef nonnull @.str.1, ptr noundef %sk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool3.not = icmp eq i32 %call.i22, 0
  br i1 %tobool3.not, label %raw_enable_errfilter.exit.if.end7_crit_edge, label %if.then4

raw_enable_errfilter.exit.if.end7_crit_edge:      ; preds = %raw_enable_errfilter.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %raw_enable_errfilter.exit
  %14 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %filter, align 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.i = icmp sgt i32 %17, 0
  br i1 %cmp6.i, label %if.then4.for.body.i27_crit_edge, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4.for.body.i27_crit_edge:                  ; preds = %if.then4
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %if.then4.for.body.i27_crit_edge
  %i.07.i = phi i32 [ %inc.i25, %for.body.i27.for.body.i27_crit_edge ], [ 0, %if.then4.for.body.i27_crit_edge ]
  %arrayidx.i23 = getelementptr %struct.can_filter, ptr %15, i32 %i.07.i
  %18 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i23, align 4
  %can_mask.i24 = getelementptr %struct.can_filter, ptr %15, i32 %i.07.i, i32 1
  %20 = ptrtoint ptr %can_mask.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %can_mask.i24, align 4
  tail call void @can_rx_unregister(ptr noundef %net, ptr noundef %dev, i32 noundef %19, i32 noundef %21, ptr noundef nonnull @raw_rcv, ptr noundef %sk) #13
  %inc.i25 = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i26 = icmp eq i32 %inc.i25, %17
  br i1 %exitcond.not.i26, label %for.body.i27.if.end7_crit_edge, label %for.body.i27.for.body.i27_crit_edge

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i27

for.body.i27.if.end7_crit_edge:                   ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end7:                                          ; preds = %for.body.i27.if.end7_crit_edge, %if.then4.if.end7_crit_edge, %raw_enable_errfilter.exit.if.end7_crit_edge, %if.then.if.end7_crit_edge, %while.body.i.if.end7_crit_edge, %while.cond.preheader.i.if.end7_crit_edge
  %err.0 = phi i32 [ 0, %raw_enable_errfilter.exit.if.end7_crit_edge ], [ %call.i22, %if.then4.if.end7_crit_edge ], [ %call.i, %while.cond.preheader.i.if.end7_crit_edge ], [ 0, %if.then.if.end7_crit_edge ], [ %call.i22, %for.body.i27.if.end7_crit_edge ], [ %call.i, %while.body.i.if.end7_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_enable_filters(ptr noundef %net, ptr noundef %dev, ptr noundef %sk, ptr nocapture noundef readonly %filter, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp23 = icmp sgt i32 %count, 0
  br i1 %cmp23, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.can_filter, ptr %filter, i32 %i.024
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %can_mask = getelementptr %struct.can_filter, ptr %filter, i32 %i.024, i32 1
  %2 = ptrtoint ptr %can_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_mask, align 4
  %call = tail call i32 @can_rx_register(ptr noundef %net, ptr noundef %dev, i32 noundef %1, i32 noundef %3, ptr noundef nonnull @raw_rcv, ptr noundef %sk, ptr noundef nonnull @.str.1, ptr noundef %sk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024)
  %cmp226.not = icmp eq i32 %i.024, 0
  br i1 %cmp226.not, label %while.cond.preheader.for.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.end_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec27.in = phi i32 [ %dec27, %while.body.while.body_crit_edge ], [ %i.024, %while.cond.preheader.while.body_crit_edge ]
  %dec27 = add nsw i32 %dec27.in, -1
  %arrayidx3 = getelementptr %struct.can_filter, ptr %filter, i32 %dec27
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %can_mask6 = getelementptr %struct.can_filter, ptr %filter, i32 %dec27, i32 1
  %6 = ptrtoint ptr %can_mask6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_mask6, align 4
  tail call void @can_rx_unregister(ptr noundef %net, ptr noundef %dev, i32 noundef %5, i32 noundef %7, ptr noundef nonnull @raw_rcv, ptr noundef %sk) #13
  %cmp2 = icmp sgt i32 %dec27.in, 1
  br i1 %cmp2, label %while.body.while.body_crit_edge, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge, %while.cond.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %err.1 = phi i32 [ %call, %while.cond.preheader.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %call, %while.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @memdup_sockptr([2 x i32] %src.coerce, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call ptr @__kmalloc_track_caller(i32 noundef %len, i32 noundef 1060032, i32 noundef %1) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %call, [2 x i32] %src.coerce, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then4 ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp9.i.i.i = icmp slt i32 %size, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then27.i.i.i, !prof !64

land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_from_sockptr_offset.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %copy_from_sockptr_offset.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #17, !srcloc !67
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !64

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !48) #13
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !68
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !70
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !64

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ], [ %size, %if.then27.i.i.i ], [ %size, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_send(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recv_errqueue(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %kt) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %sk_stamp_seq = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %0 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !79
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #13
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #13
  %sk_stamp = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %4 = ptrtoint ptr %sk_stamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %kt, ptr %sk_stamp, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !80
  %5 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_init(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bound = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %bound to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bound, align 8
  %ifindex = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 2
  %1 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ifindex, align 4
  %dfilter = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %dfilter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dfilter, align 4
  %can_mask = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %can_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %can_mask, align 4
  %filter = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 10
  %4 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dfilter, ptr %filter, align 4
  %count = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 8
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %count, align 8
  %loopback = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %loopback to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %loopback, align 8
  %recv_own_msgs = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 5
  %7 = ptrtoint ptr %recv_own_msgs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %recv_own_msgs, align 4
  %fd_frames = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 6
  %8 = ptrtoint ptr %fd_frames to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fd_frames, align 8
  %join_filters = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 7
  %9 = ptrtoint ptr %join_filters to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %join_filters, align 4
  %call3 = tail call noalias ptr @__alloc_percpu(i32 noundef 12, i32 noundef 4) #18
  %uniq = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 12
  %10 = ptrtoint ptr %uniq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %uniq, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !60

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #13
  %notifier = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 3
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @raw_notifier_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %notifier, ptr noundef %11, ptr noundef nonnull @raw_notifier_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %notifier, ptr getelementptr inbounds (%struct.list_head, ptr @raw_notifier_list, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @raw_notifier_list, ptr %notifier, align 4
  %prev3.i.i = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %notifier, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @raw_notifier_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_notifier(ptr nocapture noundef readnone %nb, i32 noundef %msg, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %3)
  %cmp.not = icmp eq i16 %3, 280
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %msg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %msg, label %if.end.cleanup_crit_edge [
    i32 6, label %if.end.if.end7_crit_edge
    i32 2, label %if.end.if.end7_crit_edge26
  ]

if.end.if.end7_crit_edge26:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge26
  %5 = load ptr, ptr @raw_busy_notifier, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end11, label %if.end7.cleanup_crit_edge, !prof !64

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #13
  %.pn23 = load ptr, ptr @raw_notifier_list, align 4
  %storemerge24 = getelementptr i8, ptr %.pn23, i32 -968
  store ptr %storemerge24, ptr @raw_busy_notifier, align 4
  %cmp12.not25 = icmp eq ptr %.pn23, @raw_notifier_list
  br i1 %cmp12.not25, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %ifindex4.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %raw_notify.exit.for.body_crit_edge, %for.body.lr.ph
  tail call void @_raw_spin_unlock(ptr noundef nonnull @raw_notifier_lock) #13
  %6 = load ptr, ptr @raw_busy_notifier, align 4
  %7 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %10
  br i1 %cmp.i.not.i, label %if.end.i, label %for.body.raw_notify.exit_crit_edge

for.body.raw_notify.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_notify.exit

if.end.i:                                         ; preds = %for.body
  %ifindex.i = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex.i, align 4
  %13 = ptrtoint ptr %ifindex4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp eq i32 %12, %14
  br i1 %cmp.not.i, label %if.end6.i, label %if.end.i.raw_notify.exit_crit_edge

if.end.i.raw_notify.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_notify.exit

if.end6.i:                                        ; preds = %if.end.i
  %15 = zext i32 %msg to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %msg, label %if.end6.i.raw_notify.exit_crit_edge [
    i32 6, label %sw.bb.i
    i32 2, label %sw.bb20.i
  ]

if.end6.i.raw_notify.exit_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_notify.exit

sw.bb.i:                                          ; preds = %if.end6.i
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #13
  %bound.i = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bound.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.i = icmp eq i32 %17, 0
  br i1 %tobool7.not.i, label %sw.bb.i.if.end10.i_crit_edge, label %if.then8.i

sw.bb.i.if.end10.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then8.i:                                       ; preds = %sw.bb.i
  %18 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nd_net.i.i, align 4
  %filter.i.i = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 10
  %20 = ptrtoint ptr %filter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %filter.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 8
  %22 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp6.i.i.i = icmp sgt i32 %23, 0
  br i1 %cmp6.i.i.i, label %if.then8.i.for.body.i.i.i_crit_edge, label %if.then8.i.raw_disable_filters.exit.i.i_crit_edge

if.then8.i.raw_disable_filters.exit.i.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_disable_filters.exit.i.i

if.then8.i.for.body.i.i.i_crit_edge:              ; preds = %if.then8.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then8.i.for.body.i.i.i_crit_edge
  %i.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then8.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.can_filter, ptr %21, i32 %i.07.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i, align 4
  %can_mask.i.i.i = getelementptr %struct.can_filter, ptr %21, i32 %i.07.i.i.i, i32 1
  %26 = ptrtoint ptr %can_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %can_mask.i.i.i, align 4
  tail call void @can_rx_unregister(ptr noundef %19, ptr noundef %1, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @raw_rcv, ptr noundef %6) #13
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %23
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.raw_disable_filters.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.body.i.i.i.raw_disable_filters.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_disable_filters.exit.i.i

raw_disable_filters.exit.i.i:                     ; preds = %for.body.i.i.i.raw_disable_filters.exit.i.i_crit_edge, %if.then8.i.raw_disable_filters.exit.i.i_crit_edge
  %err_mask.i.i = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 11
  %28 = ptrtoint ptr %err_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err_mask.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i, label %raw_disable_filters.exit.i.i.if.end10.i_crit_edge, label %if.then.i.i.i

raw_disable_filters.exit.i.i.if.end10.i_crit_edge: ; preds = %raw_disable_filters.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then.i.i.i:                                    ; preds = %raw_disable_filters.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i.i.i = or i32 %29, 536870912
  tail call void @can_rx_unregister(ptr noundef %19, ptr noundef %1, i32 noundef 0, i32 noundef %or.i.i.i, ptr noundef nonnull @raw_rcv, ptr noundef %6) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i.i.i, %raw_disable_filters.exit.i.i.if.end10.i_crit_edge, %sw.bb.i.if.end10.i_crit_edge
  %count.i = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 8
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp11.i = icmp sgt i32 %31, 1
  br i1 %cmp11.i, label %if.then12.i, label %if.end10.i.if.end13.i_crit_edge

if.end10.i.if.end13.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %filter.i = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 10
  %32 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %filter.i, align 4
  tail call void @kfree(ptr noundef %33) #13
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end13.i_crit_edge
  %34 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ifindex.i, align 4
  %35 = ptrtoint ptr %bound.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %bound.i, align 8
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %count.i, align 8
  tail call void @release_sock(ptr noundef %6) #13
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 51
  %37 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 19, ptr %sk_err.i, align 4
  %38 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %41 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %if.end13.i.cleanup.sink.split.i_crit_edge, label %if.end13.i.raw_notify.exit_crit_edge

if.end13.i.raw_notify.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_notify.exit

if.end13.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

sw.bb20.i:                                        ; preds = %if.end6.i
  %sk_err21.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 51
  %42 = ptrtoint ptr %sk_err21.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 100, ptr %sk_err21.i, align 4
  %43 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %46 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i45.not.i = icmp eq i32 %46, 0
  br i1 %tobool.i45.not.i, label %sw.bb20.i.cleanup.sink.split.i_crit_edge, label %sw.bb20.i.raw_notify.exit_crit_edge

sw.bb20.i.raw_notify.exit_crit_edge:              ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_notify.exit

sw.bb20.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb20.i.cleanup.sink.split.i_crit_edge, %if.end13.i.cleanup.sink.split.i_crit_edge
  tail call void @sk_error_report(ptr noundef %6) #13
  br label %raw_notify.exit

raw_notify.exit:                                  ; preds = %cleanup.sink.split.i, %sw.bb20.i.raw_notify.exit_crit_edge, %if.end13.i.raw_notify.exit_crit_edge, %if.end6.i.raw_notify.exit_crit_edge, %if.end.i.raw_notify.exit_crit_edge, %for.body.raw_notify.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #13
  %47 = load ptr, ptr @raw_busy_notifier, align 4
  %notifier17 = getelementptr inbounds %struct.raw_sock, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %notifier17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn = load ptr, ptr %notifier17, align 4
  %storemerge = getelementptr i8, ptr %.pn, i32 -968
  store ptr %storemerge, ptr @raw_busy_notifier, align 4
  %cmp12.not = icmp eq ptr %.pn, @raw_notifier_list
  br i1 %cmp12.not, label %raw_notify.exit.for.end_crit_edge, label %raw_notify.exit.for.body_crit_edge

raw_notify.exit.for.body_crit_edge:               ; preds = %raw_notify.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

raw_notify.exit.for.end_crit_edge:                ; preds = %raw_notify.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %raw_notify.exit.for.end_crit_edge, %if.end11.for.end_crit_edge
  store ptr null, ptr @raw_busy_notifier, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @raw_notifier_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_proto_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__UNIQUE_ID_description457, !1, !"__UNIQUE_ID_description457", i1 false, i1 false}
!1 = !{!"../net/can/raw.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_file458, !3, !"__UNIQUE_ID_file458", i1 false, i1 false}
!3 = !{!"../net/can/raw.c", i32 59, i32 1}
!4 = !{ptr @__UNIQUE_ID_license459, !3, !"__UNIQUE_ID_license459", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author460, !6, !"__UNIQUE_ID_author460", i1 false, i1 false}
!6 = !{!"../net/can/raw.c", i32 60, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias461, !8, !"__UNIQUE_ID_alias461", i1 false, i1 false}
!8 = !{!"../net/can/raw.c", i32 61, i32 1}
!9 = !{ptr @__initcall__kmod_can_raw__466_956_raw_module_init6, !10, !"__initcall__kmod_can_raw__466_956_raw_module_init6", i1 false, i1 false}
!10 = !{!"../net/can/raw.c", i32 956, i32 1}
!11 = !{ptr @__exitcall_raw_module_exit, !12, !"__exitcall_raw_module_exit", i1 false, i1 false}
!12 = !{!"../net/can/raw.c", i32 957, i32 1}
!13 = !{ptr @raw_can_proto, !14, !"raw_can_proto", i1 false, i1 false}
!14 = !{!"../net/can/raw.c", i32 924, i32 31}
!15 = !{ptr @raw_ops, !16, !"raw_ops", i1 false, i1 false}
!16 = !{!"../net/can/raw.c", i32 896, i32 31}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/can/raw.c", i32 99, i32 8}
!19 = !{ptr @raw_notifier_lock, !18, !"raw_notifier_lock", i1 false, i1 false}
!20 = !{ptr @raw_busy_notifier, !21, !"raw_busy_notifier", i1 false, i1 false}
!21 = !{!"../net/can/raw.c", i32 100, i32 25}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/can/raw.c", i32 195, i32 24}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/can/raw.c", i32 698, i32 6}
!33 = !{ptr @raw_proto, !34, !"raw_proto", i1 false, i1 false}
!34 = !{!"../net/can/raw.c", i32 917, i32 21}
!35 = !{ptr @raw_notifier_list, !36, !"raw_notifier_list", i1 false, i1 false}
!36 = !{!"../net/can/raw.c", i32 98, i32 8}
!37 = !{ptr @canraw_notifier, !38, !"canraw_notifier", i1 false, i1 false}
!38 = !{!"../net/can/raw.c", i32 931, i32 30}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/can/raw.c", i32 939, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @raw_module_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @raw_module_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/can/raw.c", i32 943, i32 3}
!46 = !{ptr @raw_module_init._entry.8, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @raw_module_init._entry_ptr.10, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 764191, i64 764252}
!59 = !{i64 766923}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i64 767208}
!62 = !{i64 2148450046}
!63 = !{i64 2148364486, i64 2148364518, i64 2148364547, i64 2148364581, i64 2148364612, i64 2148364635}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2149326160}
!66 = !{!"auto-init"}
!67 = !{i64 2152486625, i64 2152486650}
!68 = !{i64 4982180}
!69 = !{i64 4982377}
!70 = !{i64 2152467610}
!71 = !{i64 2156897506, i64 2156897786, i64 2156898120, i64 2156898454}
!72 = !{i64 2156906978, i64 2156907258, i64 2156907592, i64 2156907926}
!73 = !{i64 2152487306, i64 2152487331}
!74 = !{i64 2156915760, i64 2156916040, i64 2156916374, i64 2156916708}
!75 = !{i64 2156924539, i64 2156924819, i64 2156925153, i64 2156925487}
!76 = !{i64 2148445926}
!77 = !{i64 2148361211, i64 2148361243, i64 2148361272, i64 2148361306, i64 2148361337, i64 2148361360}
!78 = !{i64 2148446155}
!79 = !{i64 2149992642}
!80 = !{i64 2149992967}
