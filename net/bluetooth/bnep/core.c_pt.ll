; ModuleID = '/llk/IR_all_yes/net/bluetooth/bnep/core.c_pt.bc'
source_filename = "../net/bluetooth/bnep/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.116 }
%union.anon.116 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bnep_connadd_req = type { i32, i32, i16, [16 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.l2cap_pinfo = type { %struct.bt_sock, ptr, ptr }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.79 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.80 = type { ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.kref = type { %struct.refcount_struct }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bnep_session = type { %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, %struct.ethhdr, %struct.msghdr, [5 x %struct.bnep_proto_filter], i64, ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.bnep_proto_filter = type { i16, i16 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.bnep_conndel_req = type { i32, [6 x i8] }
%struct.bnep_conninfo = type { i32, i16, i16, [6 x i8], [16 x i8] }
%struct.bnep_connlist_req = type { i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.bnep_control_rsp = type { i8, i8, i16 }
%struct.bnep_ext_hdr = type { i8, i8, [0 x i8] }

@bnep_add_connection.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bnep\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnep_add_connection\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/bluetooth/bnep/core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bnep%d\00", [25 x i8] zeroinitializer }, align 32
@bnep_session_sem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @bnep_session_sem, i64 56), ptr getelementptr (i8, ptr @bnep_session_sem, i64 56) }, ptr @bnep_session_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@bnep_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kbnepd %s\00", [22 x i8] zeroinitializer }, align 32
@bnep_del_connection.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnep_del_connection\00", [44 x i8] zeroinitializer }, align 32
@bnep_session_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bnep_session_list, ptr @bnep_session_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_bnep__489_756_bnep_init6 = internal global ptr @bnep_init, section ".initcall6.init", align 4
@__exitcall_bnep_exit = internal global ptr @bnep_exit, section ".exitcall.exit", align 4
@__param_str_compress_src = internal constant [18 x i8] c"bnep.compress_src\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@compress_src = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_compress_src = internal constant %struct.kernel_param { ptr @__param_str_compress_src, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.116 { ptr @compress_src } }, section "__param", align 4
@__UNIQUE_ID_compress_srctype490 = internal constant [32 x i8] c"bnep.parmtype=compress_src:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_compress_src491 = internal constant [48 x i8] c"bnep.parm=compress_src:Compress sources headers\00", section ".modinfo", align 1
@__param_str_compress_dst = internal constant [18 x i8] c"bnep.compress_dst\00", align 1
@compress_dst = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_compress_dst = internal constant %struct.kernel_param { ptr @__param_str_compress_dst, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.116 { ptr @compress_dst } }, section "__param", align 4
@__UNIQUE_ID_compress_dsttype492 = internal constant [32 x i8] c"bnep.parmtype=compress_dst:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_compress_dst493 = internal constant [52 x i8] c"bnep.parm=compress_dst:Compress destination headers\00", section ".modinfo", align 1
@__UNIQUE_ID_author494 = internal constant [50 x i8] c"bnep.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description495 = internal constant [40 x i8] c"bnep.description=Bluetooth BNEP ver 1.3\00", section ".modinfo", align 1
@__UNIQUE_ID_version496 = internal constant [17 x i8] c"bnep.version=1.3\00", section ".modinfo", align 1
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.8 }, section "__modver", align 4
@__UNIQUE_ID_file497 = internal constant [34 x i8] c"bnep.file=net/bluetooth/bnep/bnep\00", section ".modinfo", align 1
@__UNIQUE_ID_license498 = internal constant [17 x i8] c"bnep.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias499 = internal constant [22 x i8] c"bnep.alias=bt-proto-4\00", section ".modinfo", align 1
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnep_session_sem.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnep_session_sem\00", [47 x i8] zeroinitializer }, align 32
@__bnep_get_session.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__bnep_get_session\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@bnep_session.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bnep_session\00", [19 x i8] zeroinitializer }, align 32
@__bnep_rx_hlen = internal unnamed_addr constant [5 x i8] c"\0E\00\02\08\08", align 1
@bnep_ctrl_set_netfilter.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnep_ctrl_set_netfilter\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"filter len %d\0A\00", [17 x i8] zeroinitializer }, align 32
@bnep_ctrl_set_netfilter.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"proto filter start %u end %u\0A\00", [34 x i8] zeroinitializer }, align 32
@bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.15, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnep_ctrl_set_mcfilter\00", [41 x i8] zeroinitializer }, align 32
@bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mc filter %pMR -> %pMR\0A\00", [40 x i8] zeroinitializer }, align 32
@bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mc filter hash 0x%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@bnep_rx_extension.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnep_rx_extension\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"type 0x%x len %u\0A\00", [46 x i8] zeroinitializer }, align 32
@bnep_tx_frame.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bnep_tx_frame\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"skb %p dev %p type %u\0A\00", [41 x i8] zeroinitializer }, align 32
@__bnep_tx_types = internal unnamed_addr constant [4 x i8] c"\00\03\04\02", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"protocol \00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"multicast\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BNEP (Ethernet Emulation) ver %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BNEP filters: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 564, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 576, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"bnep_session_sem\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"bnep_type\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 552, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 630, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 656, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"bnep_session_list\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 45, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"compress_src\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 42, i32 13 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"compress_dst\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 43, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 767, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 46, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 52, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 553, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 486, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 117, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 129, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 163, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 185, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 200, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 269, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 427, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 174, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 736, i32 14 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 740, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 743, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [29 x i8] c"../net/bluetooth/bnep/core.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 745, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias499, ptr @__UNIQUE_ID_author494, ptr @__UNIQUE_ID_compress_dst493, ptr @__UNIQUE_ID_compress_dsttype492, ptr @__UNIQUE_ID_compress_src491, ptr @__UNIQUE_ID_compress_srctype490, ptr @__UNIQUE_ID_description495, ptr @__UNIQUE_ID_file497, ptr @__UNIQUE_ID_license498, ptr @__UNIQUE_ID_version496, ptr @__exitcall_bnep_exit, ptr @__initcall__kmod_bnep__489_756_bnep_init6, ptr @__modver_attr, ptr @__param_compress_dst, ptr @__param_compress_src, ptr @bnep_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bnep_session_sem, ptr @bnep_type, ptr @.str.5, ptr @.str.6, ptr @bnep_session_list, ptr @compress_src, ptr @compress_dst, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnep_session_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnep_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnep_session_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compress_src to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compress_dst to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnep_add_connection(ptr noundef %req, ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  %dst = alloca [6 x i8], align 4
  %src = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dst) #13
  %0 = getelementptr inbounds [6 x i8], ptr %dst, i32 0, i32 4
  %1 = call ptr @memset(ptr %dst, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #13
  %2 = call ptr @memset(ptr %src, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_add_connection.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_add_connection, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_add_connection.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call zeroext i1 @l2cap_is_socket(ptr noundef %sock) #13
  br i1 %call3, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %flags = getelementptr inbounds %struct.bnep_connadd_req, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %tobool6.not = icmp ult i32 %4, 2
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %5 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk, align 16
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan, align 8
  %dst9 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 6
  call void @baswap(ptr noundef nonnull %dst, ptr noundef %dst9) #13
  %9 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk, align 16
  %chan12 = getelementptr inbounds %struct.l2cap_pinfo, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %chan12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan12, align 8
  %src13 = getelementptr inbounds %struct.l2cap_chan, ptr %12, i32 0, i32 8
  call void @baswap(ptr noundef nonnull %src, ptr noundef %src13) #13
  %device = getelementptr inbounds %struct.bnep_connadd_req, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool15.not, ptr @.str.4, ptr %device
  %call18 = call ptr @alloc_netdev_mqs(i32 noundef 144, ptr noundef %spec.select, i8 noundef zeroext 0, ptr noundef nonnull @bnep_net_setup, i32 noundef 1, i32 noundef 1) #13
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end8.cleanup_crit_edge, label %if.end21

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  call void @down_write(ptr noundef nonnull @bnep_session_sem) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__bnep_get_session.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_add_connection, %if.then.i)) #13
          to label %for.cond.i [label %if.then.i], !srcloc !116

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__bnep_get_session.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.3) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i, %if.end21
  %s.0.in.i = phi ptr [ %s.0.i, %for.body.i.for.cond.i_crit_edge ], [ @bnep_session_list, %if.then.i ], [ @bnep_session_list, %if.end21 ]
  %15 = ptrtoint ptr %s.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %s.0.i = load ptr, ptr %s.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, @bnep_session_list
  br i1 %cmp.not.i, label %for.cond.i.if.end27_crit_edge, label %for.body.i

for.cond.i.if.end27_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.i:                                       ; preds = %for.cond.i
  %h_source.i = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst, align 4
  %18 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h_source.i, align 4
  %xor.i.i = xor i32 %19, %17
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %0, align 4
  %add.ptr1.i.i = getelementptr %struct.bnep_session, ptr %s.0.i, i32 0, i32 6, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %23, %21
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %__bnep_get_session.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__bnep_get_session.exit:                          ; preds = %for.body.i
  %tobool24.not = icmp eq ptr %s.0.i, null
  br i1 %tobool24.not, label %__bnep_get_session.exit.if.end27_crit_edge, label %land.lhs.true

__bnep_get_session.exit.if.end27_crit_edge:       ; preds = %__bnep_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true:                                    ; preds = %__bnep_get_session.exit
  %state = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp = icmp eq i32 %25, 1
  br i1 %cmp, label %land.lhs.true.failed_crit_edge, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true.failed_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %__bnep_get_session.exit.if.end27_crit_edge, %for.cond.i.if.end27_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call18, i32 2304
  %eh = getelementptr i8, ptr %call18, i32 2332
  %26 = call ptr @memcpy(ptr %eh, ptr %src, i32 6)
  %h_source = getelementptr i8, ptr %call18, i32 2338
  %27 = call ptr @memcpy(ptr %h_source, ptr %dst, i32 6)
  call void @dev_addr_mod(ptr noundef nonnull %call18, i32 noundef 0, ptr noundef %eh, i32 noundef 6) #13
  %dev35 = getelementptr i8, ptr %call18, i32 2444
  %28 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call18, ptr %dev35, align 4
  %sock36 = getelementptr i8, ptr %call18, i32 2440
  %29 = ptrtoint ptr %sock36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sock, ptr %sock36, align 8
  %role = getelementptr inbounds %struct.bnep_connadd_req, ptr %req, i32 0, i32 2
  %30 = ptrtoint ptr %role to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %role, align 4
  %conv37 = zext i16 %31 to i32
  %role38 = getelementptr i8, ptr %call18, i32 2312
  %32 = ptrtoint ptr %role38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv37, ptr %role38, align 8
  %state39 = getelementptr i8, ptr %call18, i32 2316
  %33 = ptrtoint ptr %state39 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %state39, align 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %flags41 = getelementptr i8, ptr %call18, i32 2320
  %36 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %flags41, align 8
  %msg_flags = getelementptr i8, ptr %call18, i32 2396
  %37 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16384, ptr %msg_flags, align 4
  %mc_filter = getelementptr i8, ptr %call18, i32 2432
  %38 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %mc_filter, align 8
  %proto_filter.i = getelementptr i8, ptr %call18, i32 2408
  %39 = ptrtoint ptr %proto_filter.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2048, ptr %proto_filter.i, align 8
  %end.i = getelementptr i8, ptr %call18, i32 2410
  %40 = ptrtoint ptr %end.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2054, ptr %end.i, align 2
  %arrayidx4.i = getelementptr i8, ptr %call18, i32 2412
  %41 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -32715, ptr %arrayidx4.i, align 4
  %end8.i = getelementptr i8, ptr %call18, i32 2414
  %42 = ptrtoint ptr %end8.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -32525, ptr %end8.i, align 2
  %arrayidx10.i = getelementptr i8, ptr %call18, i32 2416
  %43 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -32457, ptr %arrayidx10.i, align 8
  %end14.i = getelementptr i8, ptr %call18, i32 2418
  %44 = ptrtoint ptr %end14.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -31011, ptr %end14.i, align 2
  %45 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk, align 16
  %chan.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chan.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %if.end27.bnep_get_device.exit_crit_edge, label %lor.lhs.false.i

if.end27.bnep_get_device.exit_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnep_get_device.exit

lor.lhs.false.i:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool2.not.i = icmp eq ptr %52, null
  %dev.i = getelementptr inbounds %struct.hci_conn, ptr %52, i32 0, i32 63
  %spec.select.i = select i1 %tobool2.not.i, ptr null, ptr %dev.i
  br label %bnep_get_device.exit

bnep_get_device.exit:                             ; preds = %lor.lhs.false.i, %if.end27.bnep_get_device.exit_crit_edge
  %retval.0.i113 = phi ptr [ null, %if.end27.bnep_get_device.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %parent = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 133, i32 1
  %53 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %retval.0.i113, ptr %parent, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 133, i32 4
  %54 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @bnep_type, ptr %type, align 4
  %call45 = call i32 @register_netdev(ptr noundef nonnull %call18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %bnep_get_device.exit.failed_crit_edge

bnep_get_device.exit.failed_crit_edge:            ; preds = %bnep_get_device.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed

if.end48:                                         ; preds = %bnep_get_device.exit
  %55 = load ptr, ptr @bnep_session_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef nonnull @bnep_session_list, ptr noundef %55) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end48.__bnep_link_session.exit_crit_edge

if.end48.__bnep_link_session.exit_crit_edge:      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %__bnep_link_session.exit

if.end.i.i.i:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr.i, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %add.ptr.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %call18, i32 2308
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @bnep_session_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %add.ptr.i, ptr @bnep_session_list, align 4
  br label %__bnep_link_session.exit

__bnep_link_session.exit:                         ; preds = %if.end.i.i.i, %if.end48.__bnep_link_session.exit_crit_edge
  call void @__module_get(ptr noundef null) #13
  %call50 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bnep_session, ptr noundef %add.ptr.i, i32 noundef -1, ptr noundef nonnull @.str.5, ptr noundef nonnull %call18) #13
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then58, label %if.end61

if.then58:                                        ; preds = %__bnep_link_session.exit
  %task120 = getelementptr i8, ptr %call18, i32 2328
  %59 = ptrtoint ptr %task120 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call50, ptr %task120, align 8
  call void @module_put(ptr noundef null) #13
  call void @unregister_netdev(ptr noundef nonnull %call18) #13
  %call.i.i.i115 = call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #13
  br i1 %call.i.i.i115, label %if.end.i.i.i116, label %if.then58.__bnep_unlink_session.exit_crit_edge

if.then58.__bnep_unlink_session.exit_crit_edge:   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %__bnep_unlink_session.exit

if.end.i.i.i116:                                  ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr i8, ptr %call18, i32 2308
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i, align 4
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %__bnep_unlink_session.exit

__bnep_unlink_session.exit:                       ; preds = %if.end.i.i.i116, %if.then58.__bnep_unlink_session.exit_crit_edge
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i, align 4
  %prev.i.i = getelementptr i8, ptr %call18, i32 2308
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %68 = ptrtoint ptr %task120 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task120, align 8
  %70 = ptrtoint ptr %69 to i32
  br label %failed

if.end61:                                         ; preds = %__bnep_link_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call53 = call i32 @wake_up_process(ptr noundef %call50) #13
  %task = getelementptr i8, ptr %call18, i32 2328
  %71 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call50, ptr %task, align 8
  call void @up_write(ptr noundef nonnull @bnep_session_sem) #13
  %call66 = call ptr @strcpy(ptr noundef %device, ptr noundef nonnull %call18) #16
  br label %cleanup

failed:                                           ; preds = %__bnep_unlink_session.exit, %bnep_get_device.exit.failed_crit_edge, %land.lhs.true.failed_crit_edge
  %err.0 = phi i32 [ %call45, %bnep_get_device.exit.failed_crit_edge ], [ %70, %__bnep_unlink_session.exit ], [ -17, %land.lhs.true.failed_crit_edge ]
  call void @up_write(ptr noundef nonnull @bnep_session_sem) #13
  call void @free_netdev(ptr noundef nonnull %call18) #13
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end61, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %failed ], [ 0, %if.end61 ], [ -77, %do.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dst) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @l2cap_is_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @baswap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnep_net_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnep_session(ptr noundef %arg) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.bnep_session, ptr %arg, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %sock = getelementptr inbounds %struct.bnep_session, ptr %arg, i32 0, i32 10
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock, align 8
  %sk2 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk2, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !106) #13
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @woken_wake_function, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %8, ptr %9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_session.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_session, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_session.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  call void @set_user_nice(ptr noundef %20, i32 noundef -15) #13
  %21 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 17
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %21, align 8
  call void @add_wait_queue(ptr noundef %23, ptr noundef nonnull %wait) #13
  %terminate = getelementptr inbounds %struct.bnep_session, ptr %arg, i32 0, i32 4
  %call.i.i80 = call zeroext i1 @__kasan_check_read(ptr noundef %terminate, i32 noundef 4) #13
  %24 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %terminate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not81 = icmp eq i32 %25, 0
  br i1 %tobool13.not81, label %while.cond16.preheader.lr.ph, label %do.end.while.end38_crit_edge

do.end.while.end38_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end38

while.cond16.preheader.lr.ph:                     ; preds = %do.end
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %h_proto.i = getelementptr inbounds %struct.bnep_session, ptr %arg, i32 0, i32 6, i32 2
  %eh59.i = getelementptr inbounds %struct.bnep_session, ptr %arg, i32 0, i32 6
  %h_source.i = getelementptr inbounds %struct.bnep_session, ptr %arg, i32 0, i32 6, i32 1
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 26
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %while.cond16.preheader

while.cond16.preheader:                           ; preds = %while.end36.while.cond16.preheader_crit_edge, %while.cond16.preheader.lr.ph
  %call1771 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool18.not72 = icmp eq ptr %call1771, null
  br i1 %tobool18.not72, label %while.cond16.preheader.while.end_crit_edge, label %while.cond16.preheader.while.body19_crit_edge

while.cond16.preheader.while.body19_crit_edge:    ; preds = %while.cond16.preheader
  br label %while.body19

while.cond16.preheader.while.end_crit_edge:       ; preds = %while.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body19:                                     ; preds = %if.end24.while.body19_crit_edge, %while.cond16.preheader.while.body19_crit_edge
  %call1773 = phi ptr [ %call17, %if.end24.while.body19_crit_edge ], [ %call1771, %while.cond16.preheader.while.body19_crit_edge ]
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #15
  call void %27(ptr noundef nonnull %call1773) #13
  %28 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %destructor.i, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %29, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %while.body19
  %31 = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !117

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #13, !srcloc !118
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i, label %skb_orphan.exit.if.then22_crit_edge, label %cond.true.i

skb_orphan.exit.if.then22_crit_edge:              ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

cond.true.i:                                      ; preds = %skb_orphan.exit
  %call.i.i64 = call ptr @__pskb_pull_tail(ptr noundef nonnull %call1773, i32 noundef %35) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i64, null
  br i1 %tobool.not.i.i, label %if.else, label %cond.true.i.if.then22_crit_edge

cond.true.i.if.then22_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

if.then22:                                        ; preds = %cond.true.i.if.then22_crit_edge, %skb_orphan.exit.if.then22_crit_edge
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 6
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %stats.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 2
  %40 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %41, %39
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 19
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %call.i = call ptr @skb_pull(ptr noundef nonnull %call1773, i32 noundef 1) #13
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  %conv.i = zext i8 %45 to i32
  %and.i65 = and i32 %conv.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i65)
  %cmp.i = icmp ugt i32 %and.i65, 4
  br i1 %cmp.i, label %if.then22.badframe.i_crit_edge, label %if.end.i

if.then22.badframe.i_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %badframe.i

if.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i65)
  %cmp6.i = icmp eq i32 %and.i65, 1
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  %call11.i = call fastcc i32 @bnep_rx_control(ptr noundef %arg, ptr noundef %47, i32 noundef %51) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 5
  %52 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call1773, i32 noundef 0) #13
  br label %if.end24

if.end16.i:                                       ; preds = %if.then8.i
  %and18.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not.i66 = icmp eq i32 %and18.i, 0
  br i1 %tobool.not.i66, label %if.then19.i, label %if.end20.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef nonnull %call1773, i32 noundef 0) #13
  br label %if.end24

if.end20.i:                                       ; preds = %if.end16.i
  %54 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i8 %49, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 5, label %if.end20.i.sw.bb29.i_crit_edge
    i8 3, label %if.end20.i.sw.bb29.i_crit_edge82
  ]

if.end20.i.sw.bb29.i_crit_edge82:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb29.i

if.end20.i.sw.bb29.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb29.i

sw.bb.i:                                          ; preds = %if.end20.i
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 1
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr.i, align 1
  %conv23.i = zext i8 %58 to i32
  %mul.i = shl nuw nsw i32 %conv23.i, 1
  %add24.i = add nuw nsw i32 %mul.i, 2
  %call25.i = call ptr @skb_pull(ptr noundef nonnull %call1773, i32 noundef %add24.i) #13
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %sw.bb.i.badframe.i_crit_edge, label %sw.bb.i.if.then52.i_crit_edge

sw.bb.i.if.then52.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52.i

sw.bb.i.badframe.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %badframe.i

sw.bb29.i:                                        ; preds = %if.end20.i.sw.bb29.i_crit_edge, %if.end20.i.sw.bb29.i_crit_edge82
  %59 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %60, i32 1
  %61 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %add.ptr31.i, align 2
  %conv32.i = zext i16 %62 to i32
  %mul33.i = shl nuw nsw i32 %conv32.i, 1
  %add34.i = add nuw nsw i32 %mul33.i, 3
  %call35.i = call ptr @skb_pull(ptr noundef nonnull %call1773, i32 noundef %add34.i) #13
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %sw.bb29.i.badframe.i_crit_edge, label %sw.bb29.i.if.then52.i_crit_edge

sw.bb29.i.if.then52.i_crit_edge:                  ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52.i

sw.bb29.i.badframe.i_crit_edge:                   ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %badframe.i

sw.default.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef nonnull %call1773, i32 noundef 0) #13
  br label %if.end24

if.else.i:                                        ; preds = %if.end.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 18
  %63 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 15, i32 0, i32 21
  %65 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %arrayidx.i = getelementptr [5 x i8], ptr @__bnep_rx_hlen, i32 0, i32 %and.i65
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i, align 1
  %conv41.i = zext i8 %67 to i32
  %call42.i = call ptr @skb_pull(ptr noundef nonnull %call1773, i32 noundef %conv41.i) #13
  %tobool43.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool43.not.i, label %if.else.i.badframe.i_crit_edge, label %if.end48.i

if.else.i.badframe.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %badframe.i

if.end48.i:                                       ; preds = %if.else.i
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %69, i32 -2
  %70 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %add.ptr47.i, align 1
  %72 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %h_proto.i, align 4
  %.pre.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool51.not.i = icmp eq i32 %.pre.i, 0
  br i1 %tobool51.not.i, label %if.end48.i.if.end58.i_crit_edge, label %if.end48.i.if.then52.i_crit_edge

if.end48.i.if.then52.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52.i

if.end48.i.if.end58.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

if.then52.i:                                      ; preds = %if.end48.i.if.then52.i_crit_edge, %sw.bb29.i.if.then52.i_crit_edge, %sw.bb.i.if.then52.i_crit_edge
  %call53.i = call fastcc i32 @bnep_rx_extension(ptr noundef %arg, ptr noundef nonnull %call1773) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.then52.i.badframe.i_crit_edge, label %if.end58.ithread-pre-split

if.then52.i.badframe.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %badframe.i

if.end58.ithread-pre-split:                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %.pr = load i16, ptr %h_proto.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end58.ithread-pre-split, %if.end48.i.if.end58.i_crit_edge
  %74 = phi i16 [ %.pr, %if.end58.ithread-pre-split ], [ %71, %if.end48.i.if.end58.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %74)
  %cmp62.i = icmp eq i16 %74, -32512
  br i1 %cmp62.i, label %if.then64.i, label %if.end58.i.if.end76.i_crit_edge

if.end58.i.if.end76.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

if.then64.i:                                      ; preds = %if.end58.i
  %call65.i = call ptr @skb_pull(ptr noundef nonnull %call1773, i32 noundef 4) #13
  %tobool66.not.i = icmp eq ptr %call65.i, null
  br i1 %tobool66.not.i, label %if.then64.i.badframe.i_crit_edge, label %if.end68.i

if.then64.i.badframe.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %badframe.i

if.end68.i:                                       ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %76, i32 -2
  %77 = ptrtoint ptr %add.ptr71.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %add.ptr71.i, align 1
  %79 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %h_proto.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.end68.i, %if.end58.i.if.end76.i_crit_edge
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  %add78.i = add i32 %81, 16
  %call.i.i67 = call ptr @__alloc_skb(i32 noundef %add78.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool80.not.i = icmp eq ptr %call.i.i67, null
  br i1 %tobool80.not.i, label %if.then81.i, label %if.end84.i

if.then81.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #15
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 6
  %82 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_dropped.i, align 8
  %inc83.i = add i32 %83, 1
  store i32 %inc83.i, ptr %rx_dropped.i, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %call1773, i32 noundef 0) #13
  br label %if.end24

if.end84.i:                                       ; preds = %if.end76.i
  %data.i1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 19
  %84 = ptrtoint ptr %data.i1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %85, i32 2
  store ptr %add.ptr.i.i, ptr %data.i1.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 16
  %86 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %87, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %88 = zext i32 %and.i65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and.i65, label %if.end84.i.sw.epilog117.i_crit_edge [
    i32 2, label %sw.bb87.i
    i32 3, label %sw.bb90.i
    i32 4, label %sw.bb100.i
    i32 0, label %sw.bb106.i
  ]

if.end84.i.sw.epilog117.i_crit_edge:              ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog117.i

sw.bb87.i:                                        ; preds = %if.end84.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 7
  %89 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.i.not.i.i.i = icmp eq i32 %90, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put_data.exit.i, label %do.body3.i.i.i, !prof !117

do.body3.i.i.i:                                   ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

__skb_put_data.exit.i:                            ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i = getelementptr i8, ptr %87, i32 16
  %91 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 6
  %92 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %93, 14
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %94 = call ptr @memcpy(ptr %add.ptr1.i.i, ptr %eh59.i, i32 14)
  br label %sw.epilog117.i

sw.bb90.i:                                        ; preds = %if.end84.i
  %data_len.i.i.i2.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 7
  %95 = ptrtoint ptr %data_len.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data_len.i.i.i2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.i.not.i.i3.i = icmp eq i32 %96, 0
  br i1 %tobool.i.not.i.i3.i, label %__skb_put_data.exit9.i, label %do.body3.i.i4.i, !prof !117

do.body3.i.i4.i:                                  ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

__skb_put_data.exit9.i:                           ; preds = %sw.bb90.i
  %add.ptr.i.i6.i = getelementptr i8, ptr %87, i32 8
  %97 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr.i.i6.i, ptr %tail.i.i, align 8
  %len9.i.i7.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 6
  %98 = ptrtoint ptr %len9.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len9.i.i7.i, align 4
  %add.i.i8.i = add i32 %99, 6
  store i32 %add.i.i8.i, ptr %len9.i.i7.i, align 4
  %100 = call ptr @memcpy(ptr %add.ptr1.i.i, ptr %eh59.i, i32 6)
  %101 = ptrtoint ptr %data_len.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_len.i.i.i2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.i.not.i.i15.i = icmp eq i32 %102, 0
  br i1 %tobool.i.not.i.i15.i, label %__skb_put_data.exit21.i, label %do.body3.i.i16.i, !prof !117

do.body3.i.i16.i:                                 ; preds = %__skb_put_data.exit9.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

__skb_put_data.exit21.i:                          ; preds = %__skb_put_data.exit9.i
  %head.i10.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 18
  %103 = ptrtoint ptr %head.i10.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %head.i10.i, align 8
  %mac_header.i11.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 15, i32 0, i32 21
  %105 = ptrtoint ptr %mac_header.i11.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %mac_header.i11.i, align 2
  %conv.i12.i = zext i16 %106 to i32
  %add.ptr.i13.i = getelementptr i8, ptr %104, i32 %conv.i12.i
  %107 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i18.i = getelementptr i8, ptr %108, i32 6
  store ptr %add.ptr.i.i18.i, ptr %tail.i.i, align 8
  %109 = ptrtoint ptr %len9.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len9.i.i7.i, align 4
  %add.i.i20.i = add i32 %110, 6
  store i32 %add.i.i20.i, ptr %len9.i.i7.i, align 4
  %111 = call ptr @memcpy(ptr %108, ptr %add.ptr.i13.i, i32 6)
  %112 = ptrtoint ptr %data_len.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %data_len.i.i.i2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.i.not.i.i = icmp eq i32 %113, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !117

do.body3.i.i:                                     ; preds = %__skb_put_data.exit21.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

__skb_put.exit.i:                                 ; preds = %__skb_put_data.exit21.i
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %115, i32 2
  store ptr %add.ptr.i22.i, ptr %tail.i.i, align 8
  %116 = ptrtoint ptr %len9.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len9.i.i7.i, align 4
  %add.i.i = add i32 %117, 2
  store i32 %add.i.i, ptr %len9.i.i7.i, align 4
  %118 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %h_proto.i, align 4
  %120 = ptrtoint ptr %115 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %115, align 1
  br label %sw.epilog117.i

sw.bb100.i:                                       ; preds = %if.end84.i
  %data_len.i.i.i27.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 7
  %121 = ptrtoint ptr %data_len.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %data_len.i.i.i27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.i.not.i.i28.i = icmp eq i32 %122, 0
  br i1 %tobool.i.not.i.i28.i, label %__skb_put_data.exit34.i, label %do.body3.i.i29.i, !prof !117

do.body3.i.i29.i:                                 ; preds = %sw.bb100.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

__skb_put_data.exit34.i:                          ; preds = %sw.bb100.i
  %head.i23.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 18
  %123 = ptrtoint ptr %head.i23.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %head.i23.i, align 8
  %mac_header.i24.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 15, i32 0, i32 21
  %125 = ptrtoint ptr %mac_header.i24.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %mac_header.i24.i, align 2
  %conv.i25.i = zext i16 %126 to i32
  %add.ptr.i26.i = getelementptr i8, ptr %124, i32 %conv.i25.i
  %add.ptr.i.i31.i = getelementptr i8, ptr %87, i32 8
  %127 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr.i.i31.i, ptr %tail.i.i, align 8
  %len9.i.i32.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 6
  %128 = ptrtoint ptr %len9.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len9.i.i32.i, align 4
  %add.i.i33.i = add i32 %129, 6
  store i32 %add.i.i33.i, ptr %len9.i.i32.i, align 4
  %130 = call ptr @memcpy(ptr %add.ptr1.i.i, ptr %add.ptr.i26.i, i32 6)
  %131 = ptrtoint ptr %data_len.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %data_len.i.i.i27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.i.not.i.i36.i = icmp eq i32 %132, 0
  br i1 %tobool.i.not.i.i36.i, label %__skb_put_data.exit42.i, label %do.body3.i.i37.i, !prof !117

do.body3.i.i37.i:                                 ; preds = %__skb_put_data.exit34.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

__skb_put_data.exit42.i:                          ; preds = %__skb_put_data.exit34.i
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i39.i = getelementptr i8, ptr %134, i32 8
  store ptr %add.ptr.i.i39.i, ptr %tail.i.i, align 8
  %135 = ptrtoint ptr %len9.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len9.i.i32.i, align 4
  %add.i.i41.i = add i32 %136, 8
  store i32 %add.i.i41.i, ptr %len9.i.i32.i, align 4
  %137 = ptrtoint ptr %h_source.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 8)
  %138 = load i64, ptr %h_source.i, align 1
  %139 = ptrtoint ptr %134 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 8)
  store i64 %138, ptr %134, align 1
  br label %sw.epilog117.i

sw.bb106.i:                                       ; preds = %if.end84.i
  %data_len.i.i.i47.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 7
  %140 = ptrtoint ptr %data_len.i.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %data_len.i.i.i47.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.i.not.i.i48.i = icmp eq i32 %141, 0
  br i1 %tobool.i.not.i.i48.i, label %__skb_put_data.exit54.i, label %do.body3.i.i49.i, !prof !117

do.body3.i.i49.i:                                 ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

__skb_put_data.exit54.i:                          ; preds = %sw.bb106.i
  %head.i43.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 18
  %142 = ptrtoint ptr %head.i43.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %head.i43.i, align 8
  %mac_header.i44.i = getelementptr inbounds %struct.sk_buff, ptr %call1773, i32 0, i32 15, i32 0, i32 21
  %144 = ptrtoint ptr %mac_header.i44.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %mac_header.i44.i, align 2
  %conv.i45.i = zext i16 %145 to i32
  %add.ptr.i46.i = getelementptr i8, ptr %143, i32 %conv.i45.i
  %add.ptr.i.i51.i = getelementptr i8, ptr %87, i32 14
  %146 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %add.ptr.i.i51.i, ptr %tail.i.i, align 8
  %len9.i.i52.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 6
  %147 = ptrtoint ptr %len9.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len9.i.i52.i, align 4
  %add.i.i53.i = add i32 %148, 12
  store i32 %add.i.i53.i, ptr %len9.i.i52.i, align 4
  %149 = call ptr @memcpy(ptr %add.ptr1.i.i, ptr %add.ptr.i46.i, i32 12)
  %150 = ptrtoint ptr %data_len.i.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %data_len.i.i.i47.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.i.not.i56.i = icmp eq i32 %151, 0
  br i1 %tobool.i.not.i56.i, label %__skb_put.exit62.i, label %do.body3.i57.i, !prof !117

do.body3.i57.i:                                   ; preds = %__skb_put_data.exit54.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

__skb_put.exit62.i:                               ; preds = %__skb_put_data.exit54.i
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i59.i = getelementptr i8, ptr %153, i32 2
  store ptr %add.ptr.i59.i, ptr %tail.i.i, align 8
  %154 = ptrtoint ptr %len9.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %len9.i.i52.i, align 4
  %add.i61.i = add i32 %155, 2
  store i32 %add.i61.i, ptr %len9.i.i52.i, align 4
  %156 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %h_proto.i, align 4
  %158 = ptrtoint ptr %153 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 %157, ptr %153, align 1
  br label %sw.epilog117.i

sw.epilog117.i:                                   ; preds = %__skb_put.exit62.i, %__skb_put_data.exit42.i, %__skb_put.exit.i, %__skb_put_data.exit.i, %if.end84.i.sw.epilog117.i_crit_edge
  %data_len.i.i63.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 7
  %159 = ptrtoint ptr %data_len.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %data_len.i.i63.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.i.not.i64.i = icmp eq i32 %160, 0
  br i1 %tobool.i.not.i64.i, label %__skb_put.exit70.i, label %do.body3.i65.i, !prof !117

do.body3.i65.i:                                   ; preds = %sw.epilog117.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

__skb_put.exit70.i:                               ; preds = %sw.epilog117.i
  call void @__sanitizer_cov_trace_pc() #15
  %161 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %len.i, align 4
  %163 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i67.i = getelementptr i8, ptr %164, i32 %162
  store ptr %add.ptr.i67.i, ptr %tail.i.i, align 8
  %len9.i68.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 6
  %165 = ptrtoint ptr %len9.i68.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len9.i68.i, align 4
  %add.i69.i = add i32 %166, %162
  store i32 %add.i69.i, ptr %len9.i68.i, align 4
  %167 = load i32, ptr %len.i, align 4
  %168 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %data.i, align 4
  %170 = call ptr @memcpy(ptr %164, ptr %169, i32 %167)
  call void @kfree_skb_reason(ptr noundef nonnull %call1773, i32 noundef 0) #13
  %171 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %stats.i, align 8
  %inc122.i = add i32 %172, 1
  store i32 %inc122.i, ptr %stats.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 15
  %173 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %call123.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i67, ptr noundef %37) #13
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i67, i32 0, i32 15, i32 0, i32 18
  %174 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %call123.i, ptr %protocol.i, align 8
  %call124.i = call i32 @netif_rx_ni(ptr noundef nonnull %call.i.i67) #13
  br label %if.end24

badframe.i:                                       ; preds = %if.then64.i.badframe.i_crit_edge, %if.then52.i.badframe.i_crit_edge, %if.else.i.badframe.i_crit_edge, %sw.bb29.i.badframe.i_crit_edge, %sw.bb.i.badframe.i_crit_edge, %if.then22.badframe.i_crit_edge
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 4
  %175 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rx_errors.i, align 8
  %inc126.i = add i32 %176, 1
  store i32 %inc126.i, ptr %rx_errors.i, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %call1773, i32 noundef 0) #13
  br label %if.end24

if.else:                                          ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef nonnull %call1773, i32 noundef 0) #13
  br label %if.end24

if.end24:                                         ; preds = %if.else, %badframe.i, %__skb_put.exit70.i, %if.then81.i, %sw.default.i, %if.then19.i, %if.then14.i
  %call17 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end24.while.end_crit_edge, label %if.end24.while.body19_crit_edge

if.end24.while.body19_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body19

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %while.cond16.preheader.while.end_crit_edge
  %177 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %178)
  %cmp.not = icmp eq i8 %178, 1
  br i1 %cmp.not, label %while.end.while.cond28_crit_edge, label %while.end.while.end38_crit_edge

while.end.while.end38_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end38

while.end.while.cond28_crit_edge:                 ; preds = %while.end
  br label %while.cond28

while.cond28:                                     ; preds = %while.body31.while.cond28_crit_edge, %while.end.while.cond28_crit_edge
  %call29 = call ptr @skb_dequeue(ptr noundef %sk_write_queue) #13
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %while.cond28.while.end36_crit_edge, label %while.body31

while.cond28.while.end36_crit_edge:               ; preds = %while.cond28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end36

while.body31:                                     ; preds = %while.cond28
  %call32 = call fastcc i32 @bnep_tx_frame(ptr noundef %arg, ptr noundef nonnull %call29)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %while.body31.while.cond28_crit_edge, label %while.body31.while.end36_crit_edge

while.body31.while.end36_crit_edge:               ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end36

while.body31.while.cond28_crit_edge:              ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond28

while.end36:                                      ; preds = %while.body31.while.end36_crit_edge, %while.cond28.while.end36_crit_edge
  %179 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %180) #13
  %call37 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef 2147483647) #13
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %terminate, i32 noundef 4) #13
  %181 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %terminate, align 4
  %tobool13.not = icmp eq i32 %182, 0
  br i1 %tobool13.not, label %while.end36.while.cond16.preheader_crit_edge, label %while.end36.while.end38_crit_edge

while.end36.while.end38_crit_edge:                ; preds = %while.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end38

while.end36.while.cond16.preheader_crit_edge:     ; preds = %while.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond16.preheader

while.end38:                                      ; preds = %while.end36.while.end38_crit_edge, %while.end.while.end38_crit_edge, %do.end.while.end38_crit_edge
  %183 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile ptr, ptr %21, align 8
  call void @remove_wait_queue(ptr noundef %184, ptr noundef nonnull %wait) #13
  call void @down_write(ptr noundef nonnull @bnep_session_sem) #13
  call void @unregister_netdev(ptr noundef %1) #13
  %185 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sock, align 8
  %sk41 = getelementptr inbounds %struct.socket, ptr %186, i32 0, i32 4
  %187 = ptrtoint ptr %sk41 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sk41, align 16
  %sk_err = getelementptr inbounds %struct.sock, ptr %188, i32 0, i32 51
  %189 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 49, ptr %sk_err, align 4
  %190 = load ptr, ptr %sock, align 8
  %sk43 = getelementptr inbounds %struct.socket, ptr %190, i32 0, i32 4
  %191 = ptrtoint ptr %sk43 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sk43, align 16
  %193 = getelementptr inbounds %struct.sock, ptr %192, i32 0, i32 17
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile ptr, ptr %193, align 8
  call void @__wake_up(ptr noundef %195, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  %196 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sock, align 8
  %file = getelementptr inbounds %struct.socket, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %199) #13
  call fastcc void @__bnep_unlink_session(ptr noundef %arg)
  call void @up_write(ptr noundef nonnull @bnep_session_sem) #13
  call void @free_netdev(ptr noundef %1) #13
  call void @__asan_handle_no_return()
  call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #17
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bnep_unlink_session(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %s, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnep_del_connection(ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_del_connection.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_del_connection, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_del_connection.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  tail call void @down_read(ptr noundef nonnull @bnep_session_sem) #13
  %dst = getelementptr inbounds %struct.bnep_conndel_req, ptr %req, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__bnep_get_session.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_del_connection, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !116

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__bnep_get_session.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end5
  %add.ptr.i.i = getelementptr %struct.bnep_conndel_req, ptr %req, i32 0, i32 1, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %s.0.in.i = phi ptr [ @bnep_session_list, %do.end.i ], [ %s.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %s.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %s.0.i = load ptr, ptr %s.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, @bnep_session_list
  br i1 %cmp.not.i, label %for.cond.i.if.end10_crit_edge, label %for.body.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.body.i:                                       ; preds = %for.cond.i
  %h_source.i = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dst, align 4
  %5 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_source.i, align 4
  %xor.i.i = xor i32 %6, %4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.bnep_session, ptr %s.0.i, i32 0, i32 6, i32 1, i32 4
  %9 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %10, %8
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %__bnep_get_session.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__bnep_get_session.exit:                          ; preds = %for.body.i
  %tobool7.not = icmp eq ptr %s.0.i, null
  br i1 %tobool7.not, label %__bnep_get_session.exit.if.end10_crit_edge, label %if.then8

__bnep_get_session.exit.if.end10_crit_edge:       ; preds = %__bnep_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %__bnep_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  %terminate = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminate, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %terminate, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate, ptr %terminate, i32 1, ptr elementtype(i32) %terminate) #13, !srcloc !120
  %sock = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 10
  %12 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sock, align 8
  %sk = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %16 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 17
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %16, align 8
  tail call void @__wake_up(ptr noundef %18, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %__bnep_get_session.exit.if.end10_crit_edge, %for.cond.i.if.end10_crit_edge
  %err.0 = phi i32 [ 0, %if.then8 ], [ -2, %__bnep_get_session.exit.if.end10_crit_edge ], [ -2, %for.cond.i.if.end10_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bnep_session_sem) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end10 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnep_get_connlist(ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %ci = alloca %struct.bnep_conninfo, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bnep_session_sem) #13
  %s.027 = load ptr, ptr @bnep_session_list, align 4
  %cmp.not28 = icmp eq ptr %s.027, @bnep_session_list
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dst.i = getelementptr inbounds %struct.bnep_conninfo, ptr %ci, i32 0, i32 3
  %device.i = getelementptr inbounds %struct.bnep_conninfo, ptr %ci, i32 0, i32 4
  %state5.i = getelementptr inbounds %struct.bnep_conninfo, ptr %ci, i32 0, i32 2
  %role7.i = getelementptr inbounds %struct.bnep_conninfo, ptr %ci, i32 0, i32 1
  %ci1 = getelementptr inbounds %struct.bnep_connlist_req, ptr %req, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %s.030 = phi ptr [ %s.027, %for.body.lr.ph ], [ %s.0, %cleanup.for.body_crit_edge ]
  %n.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ci) #13
  %0 = call ptr @memset(ptr %ci, i32 0, i32 32)
  %h_source.i = getelementptr inbounds %struct.bnep_session, ptr %s.030, i32 0, i32 6, i32 1
  %1 = call ptr @memcpy(ptr %dst.i, ptr %h_source.i, i32 6)
  %dev.i = getelementptr inbounds %struct.bnep_session, ptr %s.030, i32 0, i32 11
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = call ptr @strcpy(ptr noundef %device.i, ptr noundef %3) #18
  %flags.i = getelementptr inbounds %struct.bnep_session, ptr %s.030, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 1
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i, ptr %ci, align 4
  %state.i = getelementptr inbounds %struct.bnep_session, ptr %s.030, i32 0, i32 2
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  %conv.i = trunc i32 %8 to i16
  %9 = ptrtoint ptr %state5.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %state5.i, align 2
  %role.i = getelementptr inbounds %struct.bnep_session, ptr %s.030, i32 0, i32 1
  %10 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %role.i, align 8
  %conv6.i = trunc i32 %11 to i16
  %12 = ptrtoint ptr %role7.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6.i, ptr %role7.i, align 4
  %13 = ptrtoint ptr %ci1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci1, align 4
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %for.body.cleanup.thread_crit_edge, label %if.end.i.i

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %for.body
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 32, i32 -1226833920) #19, !srcloc !121
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup.thread_crit_edge

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ci, i32 noundef 32) #13
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %14, ptr noundef nonnull %ci, i32 noundef 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.cleanup.thread_crit_edge

copy_to_user.exit.cleanup.thread_crit_edge:       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end:                                           ; preds = %copy_to_user.exit
  %inc = add nuw i32 %n.029, 1
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %17)
  %cmp2.not = icmp ult i32 %inc, %17
  br i1 %cmp2.not, label %cleanup, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %copy_to_user.exit.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %n.1.ph = phi i32 [ %inc, %if.end.cleanup.thread_crit_edge ], [ %n.029, %copy_to_user.exit.cleanup.thread_crit_edge ], [ %n.029, %for.body.cleanup.thread_crit_edge ], [ %n.029, %if.end.i.i.cleanup.thread_crit_edge ]
  %err.1.ph = phi i32 [ 0, %if.end.cleanup.thread_crit_edge ], [ -14, %copy_to_user.exit.cleanup.thread_crit_edge ], [ -14, %for.body.cleanup.thread_crit_edge ], [ -14, %if.end.i.i.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ci) #13
  br label %for.end

cleanup:                                          ; preds = %if.end
  %18 = ptrtoint ptr %ci1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ci1, align 4
  %incdec.ptr = getelementptr %struct.bnep_conninfo, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %ci1, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ci) #13
  %20 = ptrtoint ptr %s.030 to i32
  call void @__asan_load4_noabort(i32 %20)
  %s.0 = load ptr, ptr %s.030, align 4
  %cmp.not = icmp eq ptr %s.0, @bnep_session_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.thread, %entry.for.end_crit_edge
  %n.2 = phi i32 [ %n.1.ph, %cleanup.thread ], [ 0, %entry.for.end_crit_edge ], [ %inc, %cleanup.for.end_crit_edge ]
  %err.2 = phi i32 [ %err.1.ph, %cleanup.thread ], [ 0, %entry.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  %21 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %n.2, ptr %req, align 4
  call void @up_read(ptr noundef nonnull @bnep_session_sem) #13
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnep_get_conninfo(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bnep_session_sem) #13
  %dst = getelementptr inbounds %struct.bnep_conninfo, ptr %ci, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__bnep_get_session.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_get_conninfo, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !116

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__bnep_get_session.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %add.ptr.i.i = getelementptr %struct.bnep_conninfo, ptr %ci, i32 0, i32 3, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %s.0.in.i = phi ptr [ @bnep_session_list, %do.end.i ], [ %s.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %s.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %s.0.i = load ptr, ptr %s.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, @bnep_session_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %h_source.i = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst, align 4
  %3 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %h_source.i, align 4
  %xor.i.i = xor i32 %4, %2
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.bnep_session, ptr %s.0.i, i32 0, i32 6, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %8, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %__bnep_get_session.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__bnep_get_session.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %s.0.i, null
  br i1 %tobool.not, label %__bnep_get_session.exit.if.end_crit_edge, label %if.then

__bnep_get_session.exit.if.end_crit_edge:         ; preds = %__bnep_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %__bnep_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = call ptr @memset(ptr %ci, i32 0, i32 32)
  %10 = call ptr @memcpy(ptr %dst, ptr %h_source.i, i32 6)
  %device.i = getelementptr inbounds %struct.bnep_conninfo, ptr %ci, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 11
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %call.i = tail call ptr @strcpy(ptr noundef %device.i, ptr noundef %12) #18
  %flags.i = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %14, 1
  %15 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %ci, align 4
  %state.i = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  %conv.i = trunc i32 %17 to i16
  %state5.i = getelementptr inbounds %struct.bnep_conninfo, ptr %ci, i32 0, i32 2
  %18 = ptrtoint ptr %state5.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %state5.i, align 2
  %role.i = getelementptr inbounds %struct.bnep_session, ptr %s.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %role.i, align 8
  %conv6.i = trunc i32 %20 to i16
  %role7.i = getelementptr inbounds %struct.bnep_conninfo, ptr %ci, i32 0, i32 1
  %21 = ptrtoint ptr %role7.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv6.i, ptr %role7.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %__bnep_get_session.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then ], [ -2, %__bnep_get_session.exit.if.end_crit_edge ], [ -2, %for.cond.i.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bnep_session_sem) #13
  ret i32 %err.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bnep_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bnep_sock_cleanup() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnep_sock_cleanup() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bnep_init() #5 section ".init.text" align 64 {
entry:
  %flt = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %flt) #13
  %0 = call ptr @memset(ptr %flt, i32 0, i32 50)
  %strlen = call i32 @strlen(ptr noundef nonnull %flt) #16
  %endptr = getelementptr i8, ptr %flt, i32 %strlen
  %1 = call ptr @memcpy(ptr %endptr, ptr @.str.27, i32 10)
  %strlen5 = call i32 @strlen(ptr noundef nonnull %flt) #16
  %endptr6 = getelementptr i8, ptr %flt, i32 %strlen5
  %2 = call ptr @memcpy(ptr %endptr6, ptr @.str.28, i32 10)
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.8) #13
  %3 = ptrtoint ptr %flt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.30, ptr noundef nonnull %flt) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = call i32 @bnep_sock_init() #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %flt) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnep_tx_frame(ptr noundef %s, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %iv = alloca [3 x %struct.kvec], align 4
  %type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %sock1 = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 10
  %2 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iv) #13
  %4 = getelementptr inbounds %struct.kvec, ptr %iv, i32 0, i32 1
  %5 = getelementptr inbounds [3 x %struct.kvec], ptr %iv, i32 0, i32 1
  %6 = getelementptr inbounds [3 x %struct.kvec], ptr %iv, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %iv, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #13
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %type, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_tx_frame.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_tx_frame, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = getelementptr inbounds %struct.anon.49, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %12 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr = lshr i16 %bf.load, 13
  %bf.cast = zext i16 %bf.lshr to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_tx_frame.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.23, ptr noundef %skb, ptr noundef %11, i32 noundef %bf.cast) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = getelementptr inbounds %struct.anon.49, ptr %skb, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %do.end.send_crit_edge, label %if.end6

do.end.send_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %send

if.end6:                                          ; preds = %do.end
  %16 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %type, ptr %iv, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %4, align 4
  %18 = load i8, ptr @compress_src, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not = icmp eq i8 %18, 0
  br i1 %tobool8.not, label %if.end6.if.end17_crit_edge, label %land.lhs.true

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end6
  %h_source = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %21 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %h_source, align 4
  %xor.i = xor i32 %22, %20
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 6, i32 1, i32 4
  %25 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %26, %24
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then14, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type, align 1
  %29 = or i8 %28, 1
  store i8 %29, ptr %type, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %30 = load i8, ptr @compress_dst, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool18.not = icmp eq i8 %30, 0
  br i1 %tobool18.not, label %if.end17.if.end32_crit_edge, label %land.lhs.true20

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true20:                                  ; preds = %if.end17
  %h_source21 = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 1
  %eh23 = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 6
  %31 = ptrtoint ptr %h_source21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %h_source21, align 4
  %33 = ptrtoint ptr %eh23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %eh23, align 4
  %xor.i106 = xor i32 %34, %32
  %add.ptr.i107 = getelementptr %struct.ethhdr, ptr %1, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i107, align 2
  %add.ptr1.i108 = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 6, i32 0, i32 4
  %37 = ptrtoint ptr %add.ptr1.i108 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr1.i108, align 2
  %xor37.i109 = xor i16 %38, %36
  %xor3.i110 = zext i16 %xor37.i109 to i32
  %or.i111 = or i32 %xor.i106, %xor3.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i111)
  %cmp.i112 = icmp eq i32 %or.i111, 0
  br i1 %cmp.i112, label %if.end32.thread, label %land.lhs.true20.if.end32_crit_edge

land.lhs.true20.if.end32_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end32.thread:                                  ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type, align 1
  %41 = or i8 %40, 2
  store i8 %41, ptr %type, align 1
  br label %if.then34

if.end32:                                         ; preds = %land.lhs.true20.if.end32_crit_edge, %if.end17.if.end32_crit_edge
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %42)
  %.pr = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool33.not = icmp eq i8 %.pr, 0
  br i1 %tobool33.not, label %if.end32.if.end36_crit_edge, label %if.end32.if.then34_crit_edge

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then34:                                        ; preds = %if.end32.if.then34_crit_edge, %if.end32.thread
  %call35 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 12) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type, align 1
  %idxprom = zext i8 %44 to i32
  %arrayidx37 = getelementptr [4 x i8], ptr @__bnep_tx_types, i32 0, i32 %idxprom
  %45 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx37, align 1
  store i8 %46, ptr %type, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %46, label %if.end36.send_crit_edge [
    i8 3, label %sw.bb
    i8 4, label %if.end36.send.sink.split_crit_edge
  ]

if.end36.send.sink.split_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %send.sink.split

if.end36.send_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %send

sw.bb:                                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %h_source43 = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 1
  br label %send.sink.split

send.sink.split:                                  ; preds = %sw.bb, %if.end36.send.sink.split_crit_edge
  %h_source43.sink = phi ptr [ %h_source43, %sw.bb ], [ %1, %if.end36.send.sink.split_crit_edge ]
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %h_source43.sink, ptr %5, align 4
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 6, ptr %6, align 4
  br label %send

send:                                             ; preds = %send.sink.split, %if.end36.send_crit_edge, %do.end.send_crit_edge
  %il.0 = phi i32 [ 1, %if.end36.send_crit_edge ], [ 0, %do.end.send_crit_edge ], [ 2, %send.sink.split ]
  %len.0 = phi i32 [ 1, %if.end36.send_crit_edge ], [ 0, %do.end.send_crit_edge ], [ 7, %send.sink.split ]
  %inc55 = add nuw nsw i32 %il.0, 1
  %arrayidx56 = getelementptr [3 x %struct.kvec], ptr %iv, i32 0, i32 %il.0
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %len61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len61, align 4
  %54 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %arrayidx56, align 4
  %.compoundliteral57.sroa.2.0.arrayidx56.sroa_idx = getelementptr inbounds i8, ptr %arrayidx56, i32 4
  %55 = ptrtoint ptr %.compoundliteral57.sroa.2.0.arrayidx56.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %.compoundliteral57.sroa.2.0.arrayidx56.sroa_idx, align 4
  %add63 = add i32 %53, %len.0
  %msg = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 7
  %call65 = call i32 @kernel_sendmsg(ptr noundef %3, ptr noundef %msg, ptr noundef nonnull %iv, i32 noundef %inc55, i32 noundef %add63) #13
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp = icmp sgt i32 %call65, 0
  br i1 %cmp, label %if.then67, label %send.cleanup_crit_edge

send.cleanup_crit_edge:                           ; preds = %send
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then67:                                        ; preds = %send
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 11
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 36, i32 3
  %58 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_bytes, align 4
  %add68 = add i32 %59, %call65
  store i32 %add68, ptr %tx_bytes, align 4
  %60 = load ptr, ptr %dev, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 36, i32 1
  %61 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_packets, align 4
  %inc71 = add i32 %62, 1
  store i32 %inc71, ptr %tx_packets, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %send.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then67 ], [ %call65, %send.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iv) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnep_rx_control(ptr noundef %s, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %iv.i.i26 = alloca %struct.kvec, align 4
  %rsp.i27 = alloca %struct.bnep_control_rsp, align 1
  %iv.i.i = alloca %struct.kvec, align 4
  %rsp.i = alloca %struct.bnep_control_rsp, align 1
  %pkt = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %dec = add i32 %len, -1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %1, label %sw.default [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 2, label %entry.sw.epilog_crit_edge31
    i8 4, label %entry.sw.epilog_crit_edge32
    i8 6, label %entry.sw.epilog_crit_edge33
    i8 3, label %sw.bb1
    i8 5, label %sw.bb2
    i8 1, label %sw.bb4
  ]

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @bnep_ctrl_set_netfilter(ptr noundef %s, ptr noundef %incdec.ptr, i32 noundef %dec)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call fastcc i32 @bnep_ctrl_set_mcfilter(ptr noundef %s, ptr noundef %incdec.ptr, i32 noundef %dec)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %sw.bb4.if.else_crit_edge, label %land.lhs.true

sw.bb4.if.else_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb4
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp.i) #13
  %5 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i, i32 0, i32 2
  %7 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %rsp.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %5, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 0, ptr %6, align 1
  %sock1.i.i = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 10
  %10 = ptrtoint ptr %sock1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sock1.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i) #13
  %12 = getelementptr inbounds %struct.kvec, ptr %iv.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rsp.i, ptr %iv.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %12, align 4
  %msg.i.i = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 7
  %call.i.i = call i32 @kernel_sendmsg(ptr noundef %11, ptr noundef %msg.i.i, ptr noundef nonnull %iv.i.i, i32 noundef 1, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i) #13
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb4.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp.i27) #13
  %15 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i27, i32 0, i32 1
  %16 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i27, i32 0, i32 2
  %17 = ptrtoint ptr %rsp.i27 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %rsp.i27, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 4, ptr %16, align 1
  %sock1.i.i28 = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 10
  %20 = ptrtoint ptr %sock1.i.i28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sock1.i.i28, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i26) #13
  %22 = getelementptr inbounds %struct.kvec, ptr %iv.i.i26, i32 0, i32 1
  %23 = ptrtoint ptr %iv.i.i26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rsp.i27, ptr %iv.i.i26, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %22, align 4
  %msg.i.i29 = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 7
  %call.i.i30 = call i32 @kernel_sendmsg(ptr noundef %21, ptr noundef %msg.i.i29, ptr noundef nonnull %iv.i.i26, i32 noundef 1, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i26) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i27) #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %pkt) #13
  %25 = getelementptr inbounds [3 x i8], ptr %pkt, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i8], ptr %pkt, i32 0, i32 2
  %27 = ptrtoint ptr %pkt to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %pkt, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %25, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %1, ptr %26, align 1
  %sock1.i = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 10
  %30 = ptrtoint ptr %sock1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sock1.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #13
  %32 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %33 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pkt, ptr %iv.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %32, align 4
  %msg.i = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 7
  %call.i = call i32 @kernel_sendmsg(ptr noundef %31, ptr noundef %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %pkt) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %if.then, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge31, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33
  %err.0 = phi i32 [ %call.i, %sw.default ], [ %call.i.i30, %if.else ], [ %call.i.i, %if.then ], [ %call3, %sw.bb2 ], [ %call, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge31 ], [ 0, %entry.sw.epilog_crit_edge32 ], [ 0, %entry.sw.epilog_crit_edge33 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnep_rx_extension(ptr noundef %s, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body.do.end26_crit_edge, label %do.body1

do.body.do.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

do.body1:                                         ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_rx_extension.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_rx_extension, %if.then6)) #13
          to label %do.end [label %if.then6], !srcloc !116

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %len = getelementptr inbounds %struct.bnep_ext_hdr, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv7 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_rx_extension.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %conv7) #13
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %8 = and i8 %7, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cond = icmp eq i8 %8, 0
  br i1 %cond, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len12, align 4
  %call13 = tail call fastcc i32 @bnep_rx_control(ptr noundef %s, ptr noundef %10, i32 noundef %12)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  %len14 = getelementptr inbounds %struct.bnep_ext_hdr, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %len14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len14, align 1
  %conv15 = zext i8 %14 to i32
  %call16 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv15) #13
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %sw.epilog.do.end26_crit_edge, label %land.rhs

sw.epilog.do.end26_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

land.rhs:                                         ; preds = %sw.epilog
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 1
  %tobool25.not = icmp sgt i8 %16, -1
  br i1 %tobool25.not, label %land.rhs.do.end26_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.rhs.do.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

do.end26:                                         ; preds = %land.rhs.do.end26_crit_edge, %sw.epilog.do.end26_crit_edge, %do.body.do.end26_crit_edge
  %err.0 = phi i32 [ 0, %land.rhs.do.end26_crit_edge ], [ -84, %do.body.do.end26_crit_edge ], [ -84, %sw.epilog.do.end26_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnep_ctrl_set_netfilter(ptr noundef %s, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %iv.i.i81 = alloca %struct.kvec, align 4
  %rsp.i82 = alloca %struct.bnep_control_rsp, align 1
  %iv.i.i = alloca %struct.kvec, align 4
  %rsp.i = alloca %struct.bnep_control_rsp, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp slt i32 %len, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %data, align 1
  %conv = zext i16 %1 to i32
  %sub = add nsw i32 %len, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp1 = icmp ult i32 %sub, %conv
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_ctrl_set_netfilter.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_ctrl_set_netfilter, %if.then8)) #13
          to label %do.end [label %if.then8], !srcloc !116

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_ctrl_set_netfilter.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.15, i32 noundef %conv) #13
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %div77 = lshr i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %1)
  %cmp10 = icmp ult i16 %1, 24
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %do.end
  %proto_filter = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp1388.not = icmp ult i16 %1, 4
  br i1 %cmp1388.not, label %if.then12.if.then44_crit_edge, label %for.body.preheader

if.then12.if.then44_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

for.body.preheader:                               ; preds = %if.then12
  %umax = call i32 @llvm.umax.i32(i32 %div77, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %data.pn90 = phi ptr [ %incdec.ptr15, %for.inc.for.body_crit_edge ], [ %data, %for.body.preheader ]
  %i.089 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %data.addr.0 = getelementptr i16, ptr %data.pn90, i32 1
  %incdec.ptr15 = getelementptr i16, ptr %data.pn90, i32 2
  %2 = ptrtoint ptr %data.addr.0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %data.addr.0, align 1
  %arrayidx = getelementptr %struct.bnep_proto_filter, ptr %proto_filter, i32 %i.089
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %arrayidx, align 2
  %5 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %incdec.ptr15, align 1
  %end = getelementptr %struct.bnep_proto_filter, ptr %proto_filter, i32 %i.089, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %end, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_ctrl_set_netfilter.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_ctrl_set_netfilter, %if.then32)) #13
          to label %for.inc [label %if.then32], !srcloc !116

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv35 = zext i16 %9 to i32
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %end, align 2
  %conv38 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_ctrl_set_netfilter.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.16, i32 noundef %conv35, i32 noundef %conv38) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %for.body
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umax)
  %cmp42 = icmp ult i32 %umax, 5
  br i1 %cmp42, label %for.end.if.then44_crit_edge, label %for.end.if.end45_crit_edge

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

for.end.if.then44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

if.then44:                                        ; preds = %for.end.if.then44_crit_edge, %if.then12.if.then44_crit_edge
  %i.0.lcssa93 = phi i32 [ %umax, %for.end.if.then44_crit_edge ], [ 0, %if.then12.if.then44_crit_edge ]
  %add.ptr = getelementptr %struct.bnep_proto_filter, ptr %proto_filter, i32 %i.0.lcssa93
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %add.ptr, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %for.end.if.end45_crit_edge
  br i1 %cmp1388.not, label %if.then48, label %if.end45.if.end49_crit_edge

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %proto_filter to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2048, ptr %proto_filter, align 8
  %end.i = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 8, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2054, ptr %end.i, align 2
  %arrayidx4.i = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -32715, ptr %arrayidx4.i, align 4
  %end8.i = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 1, i32 1
  %16 = ptrtoint ptr %end8.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -32525, ptr %end8.i, align 2
  %arrayidx10.i = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -32457, ptr %arrayidx10.i, align 8
  %end14.i = getelementptr %struct.bnep_session, ptr %s, i32 0, i32 8, i32 2, i32 1
  %18 = ptrtoint ptr %end14.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -31011, ptr %end14.i, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp.i) #13
  %19 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i, i32 0, i32 2
  %21 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %rsp.i, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %19, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 0, ptr %20, align 1
  %sock1.i.i = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 10
  %24 = ptrtoint ptr %sock1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock1.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i) #13
  %26 = getelementptr inbounds %struct.kvec, ptr %iv.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rsp.i, ptr %iv.i.i, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %26, align 4
  %msg.i.i = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 7
  %call.i.i = call i32 @kernel_sendmsg(ptr noundef %25, ptr noundef %msg.i.i, ptr noundef nonnull %iv.i.i, i32 noundef 1, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i) #13
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp.i82) #13
  %29 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i82, i32 0, i32 1
  %30 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i82, i32 0, i32 2
  %31 = ptrtoint ptr %rsp.i82 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %rsp.i82, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %29, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 3, ptr %30, align 1
  %sock1.i.i83 = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 10
  %34 = ptrtoint ptr %sock1.i.i83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sock1.i.i83, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i81) #13
  %36 = getelementptr inbounds %struct.kvec, ptr %iv.i.i81, i32 0, i32 1
  %37 = ptrtoint ptr %iv.i.i81 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %rsp.i82, ptr %iv.i.i81, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %36, align 4
  %msg.i.i84 = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 7
  %call.i.i85 = call i32 @kernel_sendmsg(ptr noundef %35, ptr noundef %msg.i.i84, ptr noundef nonnull %iv.i.i81, i32 noundef 1, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i81) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i82) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end49, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -84, %entry.cleanup_crit_edge ], [ -84, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnep_ctrl_set_mcfilter(ptr noundef %s, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %iv.i.i = alloca %struct.kvec, align 4
  %rsp.i = alloca %struct.bnep_control_rsp, align 1
  %a1 = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp slt i32 %len, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %data, align 1
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %sub = add nsw i32 %len, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp1 = icmp ult i32 %sub, %conv
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_ctrl_set_mcfilter, %if.then8)) #13
          to label %do.end [label %if.then8], !srcloc !116

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.15, i32 noundef %conv) #13
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %2 = icmp ult i16 %1, 12
  br i1 %2, label %do.end.do.body62_crit_edge, label %for.body.lr.ph

do.end.do.body62_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

for.body.lr.ph:                                   ; preds = %do.end
  %mc_filter = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 9
  %3 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %mc_filter, align 8
  %dev = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %broadcast = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 99
  %call.i = tail call i32 @crc32_be(i32 noundef -1, ptr noundef %broadcast, i32 noundef 6) #20
  %shr.i = lshr i32 %call.i, 26
  tail call void @_set_bit(i32 noundef %shr.i, ptr noundef %mc_filter) #13
  %div114 = udiv i16 %1, 12
  %div.zext = zext i16 %div114 to i32
  %6 = getelementptr inbounds [6 x i8], ptr %a1, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %a1, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %a1, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %a1, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %a1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %while.end59.for.body_crit_edge, %for.body.lr.ph
  %data.addr.0119 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr19, %while.end59.for.body_crit_edge ]
  %n.0118 = phi i32 [ %div.zext, %for.body.lr.ph ], [ %dec60, %while.end59.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %a1) #13
  %11 = call ptr @memcpy(ptr %a1, ptr %data.addr.0119, i32 6)
  %add.ptr18 = getelementptr i8, ptr %data.addr.0119, i32 6
  %add.ptr19 = getelementptr i8, ptr %data.addr.0119, i32 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_ctrl_set_mcfilter, %if.then32)) #13
          to label %do.end36 [label %if.then32], !srcloc !116

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.18, ptr noundef nonnull %a1, ptr noundef %add.ptr18) #13
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %for.body
  %call.i107 = call i32 @crc32_be(i32 noundef -1, ptr noundef nonnull %a1, i32 noundef 6) #20
  %shr.i108 = lshr i32 %call.i107, 26
  call void @_set_bit(i32 noundef %shr.i108, ptr noundef %mc_filter) #13
  %call41115 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %a1, ptr noundef dereferenceable(6) %add.ptr18, i32 noundef 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41115)
  %cmp42116 = icmp slt i32 %call41115, 0
  br i1 %cmp42116, label %do.end36.land.rhs_crit_edge, label %do.end36.while.end59_crit_edge

do.end36.while.end59_crit_edge:                   ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end59

do.end36.land.rhs_crit_edge:                      ; preds = %do.end36
  br label %land.rhs

land.rhs:                                         ; preds = %while.end.land.rhs_crit_edge, %do.end36.land.rhs_crit_edge
  %12 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mc_filter, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp45.not = icmp eq i64 %13, -1
  br i1 %cmp45.not, label %land.rhs.while.end59_crit_edge, label %while.cond47.preheader

land.rhs.while.end59_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end59

while.cond47.preheader:                           ; preds = %land.rhs
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %10, align 1
  %inc = add i8 %15, 1
  store i8 %inc, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %cmp52 = icmp eq i8 %inc, 0
  br i1 %cmp52, label %while.cond47.1, label %while.cond47.preheader.while.end_crit_edge

while.cond47.preheader.while.end_crit_edge:       ; preds = %while.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond47.1:                                   ; preds = %while.cond47.preheader
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %9, align 1
  %inc.1 = add i8 %17, 1
  store i8 %inc.1, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.1)
  %cmp52.1 = icmp eq i8 %inc.1, 0
  br i1 %cmp52.1, label %while.cond47.2, label %while.cond47.1.while.end_crit_edge

while.cond47.1.while.end_crit_edge:               ; preds = %while.cond47.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond47.2:                                   ; preds = %while.cond47.1
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  %inc.2 = add i8 %19, 1
  store i8 %inc.2, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.2)
  %cmp52.2 = icmp eq i8 %inc.2, 0
  br i1 %cmp52.2, label %while.cond47.3, label %while.cond47.2.while.end_crit_edge

while.cond47.2.while.end_crit_edge:               ; preds = %while.cond47.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond47.3:                                   ; preds = %while.cond47.2
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %7, align 1
  %inc.3 = add i8 %21, 1
  store i8 %inc.3, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.3)
  %cmp52.3 = icmp eq i8 %inc.3, 0
  br i1 %cmp52.3, label %while.cond47.4, label %while.cond47.3.while.end_crit_edge

while.cond47.3.while.end_crit_edge:               ; preds = %while.cond47.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond47.4:                                   ; preds = %while.cond47.3
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %6, align 1
  %inc.4 = add i8 %23, 1
  store i8 %inc.4, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.4)
  %cmp52.4 = icmp eq i8 %inc.4, 0
  br i1 %cmp52.4, label %while.cond47.5, label %while.cond47.4.while.end_crit_edge

while.cond47.4.while.end_crit_edge:               ; preds = %while.cond47.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond47.5:                                   ; preds = %while.cond47.4
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %a1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %a1, align 1
  %inc.5 = add i8 %25, 1
  store i8 %inc.5, ptr %a1, align 1
  br label %while.end

while.end:                                        ; preds = %while.cond47.5, %while.cond47.4.while.end_crit_edge, %while.cond47.3.while.end_crit_edge, %while.cond47.2.while.end_crit_edge, %while.cond47.1.while.end_crit_edge, %while.cond47.preheader.while.end_crit_edge
  %call.i109 = call i32 @crc32_be(i32 noundef -1, ptr noundef nonnull %a1, i32 noundef 6) #20
  %shr.i110 = lshr i32 %call.i109, 26
  call void @_set_bit(i32 noundef %shr.i110, ptr noundef %mc_filter) #13
  %call41 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %a1, ptr noundef dereferenceable(6) %add.ptr18, i32 noundef 6) #16
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %while.end.land.rhs_crit_edge, label %while.end.while.end59_crit_edge

while.end.while.end59_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end59

while.end.land.rhs_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.end59:                                      ; preds = %while.end.while.end59_crit_edge, %land.rhs.while.end59_crit_edge, %do.end36.while.end59_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %a1) #13
  %dec60 = add nsw i32 %n.0118, -1
  %cmp15 = icmp sgt i32 %n.0118, 1
  br i1 %cmp15, label %while.end59.for.body_crit_edge, label %while.end59.do.body62_crit_edge

while.end59.do.body62_crit_edge:                  ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

while.end59.for.body_crit_edge:                   ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body62:                                        ; preds = %while.end59.do.body62_crit_edge, %do.end.do.body62_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnep_ctrl_set_mcfilter, %if.then74)) #13
          to label %do.end78 [label %if.then74], !srcloc !116

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #15
  %mc_filter75 = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 9
  %26 = ptrtoint ptr %mc_filter75 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %mc_filter75, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.19, i64 noundef %27) #13
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %do.body62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp.i) #13
  %28 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.bnep_control_rsp, ptr %rsp.i, i32 0, i32 2
  %30 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %rsp.i, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %28, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 0, ptr %29, align 1
  %sock1.i.i = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 10
  %33 = ptrtoint ptr %sock1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sock1.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i.i) #13
  %35 = getelementptr inbounds %struct.kvec, ptr %iv.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rsp.i, ptr %iv.i.i, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %35, align 4
  %msg.i.i = getelementptr inbounds %struct.bnep_session, ptr %s, i32 0, i32 7
  %call.i.i = call i32 @kernel_sendmsg(ptr noundef %34, ptr noundef %msg.i.i, ptr noundef nonnull %iv.i.i, i32 noundef 1, i32 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end78 ], [ -84, %entry.cleanup_crit_edge ], [ -84, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnep_sock_init() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { noreturn nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !48, !50, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !101, !103, !104}
!llvm.named.register.sp = !{!106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/bnep/core.c", i32 564, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bnep_add_connection.__UNIQUE_ID_ddebug487, !1, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/bnep/core.c", i32 576, i32 8}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bluetooth/bnep/core.c", i32 630, i32 12}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/bluetooth/bnep/core.c", i32 656, i32 2}
!12 = !{ptr @bnep_del_connection.__UNIQUE_ID_ddebug488, !11, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_bnep__489_756_bnep_init6, !14, !"__initcall__kmod_bnep__489_756_bnep_init6", i1 false, i1 false}
!14 = !{!"../net/bluetooth/bnep/core.c", i32 756, i32 1}
!15 = !{ptr @__exitcall_bnep_exit, !16, !"__exitcall_bnep_exit", i1 false, i1 false}
!16 = !{!"../net/bluetooth/bnep/core.c", i32 757, i32 1}
!17 = !{ptr @__param_compress_src, !18, !"__param_compress_src", i1 false, i1 false}
!18 = !{!"../net/bluetooth/bnep/core.c", i32 759, i32 1}
!19 = !{ptr @__UNIQUE_ID_compress_srctype490, !18, !"__UNIQUE_ID_compress_srctype490", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_compress_src491, !21, !"__UNIQUE_ID_compress_src491", i1 false, i1 false}
!21 = !{!"../net/bluetooth/bnep/core.c", i32 760, i32 1}
!22 = !{ptr @__param_compress_dst, !23, !"__param_compress_dst", i1 false, i1 false}
!23 = !{!"../net/bluetooth/bnep/core.c", i32 762, i32 1}
!24 = !{ptr @__UNIQUE_ID_compress_dsttype492, !23, !"__UNIQUE_ID_compress_dsttype492", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_compress_dst493, !26, !"__UNIQUE_ID_compress_dst493", i1 false, i1 false}
!26 = !{!"../net/bluetooth/bnep/core.c", i32 763, i32 1}
!27 = !{ptr @__UNIQUE_ID_author494, !28, !"__UNIQUE_ID_author494", i1 false, i1 false}
!28 = !{!"../net/bluetooth/bnep/core.c", i32 765, i32 1}
!29 = !{ptr @__UNIQUE_ID_description495, !30, !"__UNIQUE_ID_description495", i1 false, i1 false}
!30 = !{!"../net/bluetooth/bnep/core.c", i32 766, i32 1}
!31 = !{ptr @__UNIQUE_ID_version496, !32, !"__UNIQUE_ID_version496", i1 false, i1 false}
!32 = !{!"../net/bluetooth/bnep/core.c", i32 767, i32 1}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__modver_attr, !32, !"__modver_attr", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_file497, !37, !"__UNIQUE_ID_file497", i1 false, i1 false}
!37 = !{!"../net/bluetooth/bnep/core.c", i32 768, i32 1}
!38 = !{ptr @__UNIQUE_ID_license498, !37, !"__UNIQUE_ID_license498", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_alias499, !40, !"__UNIQUE_ID_alias499", i1 false, i1 false}
!40 = !{!"../net/bluetooth/bnep/core.c", i32 769, i32 1}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/bluetooth/bnep/core.c", i32 46, i32 8}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @bnep_session_sem, !42, !"bnep_session_sem", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/bluetooth/bnep/core.c", i32 52, i32 2}
!47 = !{ptr @__bnep_get_session.__UNIQUE_ID_ddebug478, !46, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/bluetooth/bnep/core.c", i32 553, i32 10}
!50 = !{ptr @bnep_type, !51, !"bnep_type", i1 false, i1 false}
!51 = !{!"../net/bluetooth/bnep/core.c", i32 552, i32 27}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/bluetooth/bnep/core.c", i32 486, i32 2}
!54 = !{ptr @bnep_session.__UNIQUE_ID_ddebug486, !53, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/bluetooth/bnep/core.c", i32 117, i32 2}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @bnep_ctrl_set_netfilter.__UNIQUE_ID_ddebug479, !56, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/bluetooth/bnep/core.c", i32 129, i32 4}
!61 = !{ptr @bnep_ctrl_set_netfilter.__UNIQUE_ID_ddebug480, !60, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/bluetooth/bnep/core.c", i32 163, i32 2}
!64 = !{ptr @bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug481, !63, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/bluetooth/bnep/core.c", i32 185, i32 4}
!67 = !{ptr @bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug482, !66, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/bluetooth/bnep/core.c", i32 200, i32 2}
!70 = !{ptr @bnep_ctrl_set_mcfilter.__UNIQUE_ID_ddebug483, !69, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!71 = !{ptr @__bnep_rx_hlen, !72, !"__bnep_rx_hlen", i1 false, i1 false}
!72 = !{!"../net/bluetooth/bnep/core.c", i32 290, i32 11}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/bluetooth/bnep/core.c", i32 269, i32 3}
!75 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @bnep_rx_extension.__UNIQUE_ID_ddebug484, !74, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/bluetooth/bnep/core.c", i32 427, i32 2}
!79 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @bnep_tx_frame.__UNIQUE_ID_ddebug485, !78, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!81 = !{ptr @__bnep_tx_types, !82, !"__bnep_tx_types", i1 false, i1 false}
!82 = !{!"../net/bluetooth/bnep/core.c", i32 412, i32 11}
!83 = !{ptr @bnep_session_list, !84, !"bnep_session_list", i1 false, i1 false}
!84 = !{!"../net/bluetooth/bnep/core.c", i32 45, i32 8}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!87 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!92 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/bluetooth/bnep/core.c", i32 736, i32 14}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/bluetooth/bnep/core.c", i32 740, i32 14}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/bluetooth/bnep/core.c", i32 743, i32 2}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/bluetooth/bnep/core.c", i32 745, i32 3}
!100 = !{ptr @__param_str_compress_src, !18, !"__param_str_compress_src", i1 false, i1 false}
!101 = !{ptr @compress_src, !102, !"compress_src", i1 false, i1 false}
!102 = !{!"../net/bluetooth/bnep/core.c", i32 42, i32 13}
!103 = !{ptr @__param_str_compress_dst, !23, !"__param_str_compress_dst", i1 false, i1 false}
!104 = !{ptr @compress_dst, !105, !"compress_dst", i1 false, i1 false}
!105 = !{!"../net/bluetooth/bnep/core.c", i32 43, i32 13}
!106 = !{!"sp"}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2148968485, i64 2148968490, i64 2148968503, i64 2148968547, i64 2148968581, i64 2148968602}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2154630398, i64 2154630886, i64 2154630435, i64 2154630491, i64 2154630525, i64 2154630549, i64 2154630590, i64 2154630611, i64 2154630639, i64 2154630673}
!119 = !{i64 2154608319, i64 2154608807, i64 2154608356, i64 2154608412, i64 2154608446, i64 2154608470, i64 2154608511, i64 2154608532, i64 2154608560, i64 2154608594}
!120 = !{i64 2148355108, i64 2148355134, i64 2148355163, i64 2148355197, i64 2148355228, i64 2148355251}
!121 = !{i64 2152609159, i64 2152609184}
!122 = !{i8 0, i8 2}
