; ModuleID = '/llk/IR_all_yes/net/atm/lec.c_pt.bc'
source_filename = "../net/atm/lec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atm_ioctl = type { ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lane2_ops = type { ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.atmlec_ioc = type { i32, [20 x i8], i8 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
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
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.148, i8, %union.anon.150 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { i8, i8 }
%union.anon.150 = type { %struct.anon.153 }
%struct.anon.153 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.154 }
%struct.anon.154 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lec_vcc_priv = type { ptr, i32 }
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
%struct.atmlec_msg = type { i32, i32, %union.anon.156 }
%union.anon.156 = type { %struct.atmlec_config_msg }
%struct.atmlec_config_msg = type { i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lecdatahdr_8023 = type { i16, [6 x i8], [6 x i8], i16 }
%struct.lec_arp_table = type { %struct.hlist_node, [20 x i8], [6 x i8], i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i16, i16, i32, %struct.timer_list, ptr, ptr, i32, %struct.sk_buff_head, %struct.refcount_struct }
%struct.lec_priv = type { i16, %struct.hlist_head, [16 x %struct.hlist_head], %struct.hlist_head, %struct.hlist_head, %struct.spinlock, ptr, ptr, %struct.delayed_work, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32 }
%struct.anon.157 = type { [6 x i8], [20 x i8], i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.lec_state = type { i32, ptr, ptr, ptr, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lec\00", [28 x i8] zeroinitializer }, align 32
@atm_proc_root = external dso_local local_unnamed_addr global ptr, align 4
@lane_ioctl_ops = internal global { %struct.atm_ioctl, [16 x i8] } { %struct.atm_ioctl { ptr null, ptr @lane_ioctl, %struct.list_head zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@dev_lec = internal global { [48 x ptr], [32 x i8] } zeroinitializer, align 32
@__initcall__kmod_lec__582_1064_lane_module_init6 = internal global ptr @lane_module_init, section ".initcall6.init", align 4
@__exitcall_lane_module_cleanup = internal global ptr @lane_module_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file614 = internal constant [21 x i8] c"lec.file=net/atm/lec\00", section ".modinfo", align 1
@__UNIQUE_ID_license615 = internal constant [16 x i8] c"lec.license=GPL\00", section ".modinfo", align 1
@lec_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @lec_open, ptr @lec_close, ptr @lec_start_xmit, ptr null, ptr null, ptr null, ptr @lec_set_multicast_list, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lec_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lec%d\00", [26 x i8] zeroinitializer }, align 32
@lecatm_dev = internal global { %struct.atm_dev, [264 x i8] } { %struct.atm_dev { ptr @lecdev_ops, ptr null, ptr @.str, i32 999, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [6 x i8] zeroinitializer, %struct.atm_cirange zeroinitializer, %struct.k_atm_dev_stats zeroinitializer, i8 0, i32 0, %struct.refcount_struct zeroinitializer, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null, ptr null, %struct.device zeroinitializer, %struct.list_head zeroinitializer }, [264 x i8] zeroinitializer }, align 32
@lec_start_xmit.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lec_start_xmit\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/atm/lec.c\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"called\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lec:%s: called\0A\00", [16 x i8] zeroinitializer }, align 32
@lec_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016lec:%s: %s:No lecd attached\0A\00", [33 x i8] zeroinitializer }, align 32
@lec_start_xmit._entry_ptr = internal global ptr @lec_start_xmit._entry, section ".printk_index", align 4
@lec_start_xmit.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"skbuff head:%lx data:%lx tail:%lx end:%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"lec:%s: skbuff head:%lx data:%lx tail:%lx end:%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@bridge_ula_lec = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\01\80\C2\00\00", [27 x i8] zeroinitializer }, align 32
@lec_start_xmit.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reallocating skb\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lec:%s: reallocating skb\0A\00", [38 x i8] zeroinitializer }, align 32
@lec_start_xmit.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:vcc:%p vcc_flags:%lx, entry:%p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"lec:%s: %s:vcc:%p vcc_flags:%lx, entry:%p\0A\00", [53 x i8] zeroinitializer }, align 32
@lec_start_xmit.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:queuing packet, MAC address %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lec:%s: %s:queuing packet, MAC address %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@lec_start_xmit.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:tx queue full or no arp entry, dropping, MAC address: %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"lec:%s: %s:tx queue full or no arp entry, dropping, MAC address: %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@lec_start_xmit.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"emptying tx queue, MAC address %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lec:%s: emptying tx queue, MAC address %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@bus_mac = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lec_arp_resolve.__UNIQUE_ID_ddebug595 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 1, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lec_arp_resolve\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Flooding..\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lec:%s: Flooding..\0A\00", [44 x i8] zeroinitializer }, align 32
@lec_arp_resolve.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.22, i8 1, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"entry->status %d entry->vcc %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lec:%s: entry->status %d entry->vcc %p\0A\00", [56 x i8] zeroinitializer }, align 32
@lec_arp_resolve.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.24, i8 1, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Making entry\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lec:%s: Making entry\0A\00", [42 x i8] zeroinitializer }, align 32
@lec_arp_find.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 1, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lec_arp_find\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lec:%s: %pM\0A\00", [19 x i8] zeroinitializer }, align 32
@make_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&to_return->timer)\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@lec_arp_add.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 1, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lec_arp_add\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Added entry:%pM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lec:%s: Added entry:%pM\0A\00", [39 x i8] zeroinitializer }, align 32
@send_to_lecd.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_to_lecd\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"about to send %d bytes of data\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lec:%s: about to send %d bytes of data\0A\00", [56 x i8] zeroinitializer }, align 32
@lec_arp_expire_arp.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 1, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lec_arp_expire_arp\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lec:%s: \0A\00", [22 x i8] zeroinitializer }, align 32
@lec_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016lec:%s: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lec_tx_timeout\00", [17 x i8] zeroinitializer }, align 32
@lec_tx_timeout._entry_ptr = internal global ptr @lec_tx_timeout._entry, section ".printk_index", align 4
@lec_arp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->lec_arp_lock\00", [44 x i8] zeroinitializer }, align 32
@lec_arp_init.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&priv->lec_arp_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@lec_arp_init.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->lec_arp_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@lec_arp_check_expire.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 1, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lec_arp_check_expire\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%p\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lec:%s: %p\0A\00", [20 x i8] zeroinitializer }, align 32
@__lec_arp_check_expire.__UNIQUE_ID_ddebug592 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 1, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__lec_arp_check_expire\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"About to expire: %lx - %lx > %lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"lec:%s: About to expire: %lx - %lx > %lx\0A\00", [54 x i8] zeroinitializer }, align 32
@__lec_arp_check_expire.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 1, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Entry timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lec:%s: Entry timed out\0A\00", [39 x i8] zeroinitializer }, align 32
@lec_arp_remove.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lec_arp_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Removed entry:%pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lec:%s: Removed entry:%pM\0A\00", [37 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@lecdev_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr null, ptr @lec_atm_close, ptr null, ptr @lec_atm_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lecatm_dev.lock\00", [16 x i8] zeroinitializer }, align 32
@lec_atm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016lec:%s: %s closing with messages pending\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lec_atm_close\00", [18 x i8] zeroinitializer }, align 32
@lec_atm_close._entry_ptr = internal global ptr @lec_atm_close._entry, section ".printk_index", align 4
@lec_atm_close._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016lec:%s: %s: Shut down!\0A\00", [38 x i8] zeroinitializer }, align 32
@lec_atm_close._entry_ptr.63 = internal global ptr @lec_atm_close._entry.61, section ".printk_index", align 4
@lec_atm_send.zero_addr = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@lec_atm_send.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lec_atm_send\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: msg from zeppelin:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lec:%s: %s: msg from zeppelin:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@lec_atm_send.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.67, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"in l_arp_update\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lec:%s: in l_arp_update\0A\00", [39 x i8] zeroinitializer }, align 32
@lec_atm_send.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.69, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LANE2 3.1.5, got tlvs, size %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lec:%s: LANE2 3.1.5, got tlvs, size %d\0A\00", [56 x i8] zeroinitializer }, align 32
@lane2_ops = internal global { %struct.lane2_ops, [20 x i8] } { %struct.lane2_ops { ptr @lane2_resolve, ptr @lane2_associate_req, ptr null }, [20 x i8] zeroinitializer }, align 32
@lec_atm_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.64, ptr @.str.3, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lec:%s: %s: change_mtu to %d failed\0A\00", [57 x i8] zeroinitializer }, align 32
@lec_atm_send._entry_ptr = internal global ptr @lec_atm_send._entry, section ".printk_index", align 4
@lec_atm_send.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.72, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: bridge zeppelin asks about %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lec:%s: %s: bridge zeppelin asks about %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@br_fdb_test_addr_hook = external dso_local local_unnamed_addr global ptr, align 4
@lec_atm_send.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.74, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: entry found, responding to zeppelin\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"lec:%s: %s: entry found, responding to zeppelin\0A\00", [47 x i8] zeroinitializer }, align 32
@lec_atm_send._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.64, ptr @.str.3, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lec:%s: %s: Unknown message type %d\0A\00", [57 x i8] zeroinitializer }, align 32
@lec_atm_send._entry_ptr.78 = internal global ptr @lec_atm_send._entry.76, section ".printk_index", align 4
@lec_addr_delete.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.38, i8 1, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lec_addr_delete\00", [16 x i8] zeroinitializer }, align 32
@lec_flush_complete.__UNIQUE_ID_ddebug609 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 2, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lec_flush_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lx\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lec:%s: %lx\0A\00", [19 x i8] zeroinitializer }, align 32
@lec_flush_complete.__UNIQUE_ID_ddebug610 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.3, ptr @.str.83, i8 2, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LEC_ARP: Flushed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lec:%s: LEC_ARP: Flushed\0A\00", [38 x i8] zeroinitializer }, align 32
@lec_arp_update.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 1, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lec_arp_update\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%smac:%pM\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lec:%s: %smac:%pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"targetless \00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@lec_arp_update.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.90, i8 1, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"After update\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lec:%s: After update\0A\00", [42 x i8] zeroinitializer }, align 32
@lec_arp_update.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.92, i8 1, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"After update2\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lec:%s: After update2\0A\00", [41 x i8] zeroinitializer }, align 32
@lane2_associate_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016lec:%s: lec.c: lane2_associate_req() failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lane2_associate_req\00", [44 x i8] zeroinitializer }, align 32
@lane2_associate_req._entry_ptr = internal global ptr @lane2_associate_req._entry, section ".printk_index", align 4
@lec_set_flush_tran_id.__UNIQUE_ID_ddebug611 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.3, ptr @.str.97, i8 2, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lec_set_flush_tran_id\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Set flush transaction id to %lx for %p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"lec:%s: Set flush transaction id to %lx for %p\0A\00", [48 x i8] zeroinitializer }, align 32
@lec_pop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016lec:%s: vpriv = NULL!?!?!?\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lec_pop\00", [24 x i8] zeroinitializer }, align 32
@lec_pop._entry_ptr = internal global ptr @lec_pop._entry, section ".printk_index", align 4
@lec_push.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lec_push\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: null skb\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lec:%s: %s: null skb\0A\00", [42 x i8] zeroinitializer }, align 32
@lec_ctrl_magic = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\FF\00\01\01", [28 x i8] zeroinitializer }, align 32
@lec_push.__UNIQUE_ID_ddebug574 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.3, ptr @.str.104, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: To daemon\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lec:%s: %s: To daemon\0A\00", [41 x i8] zeroinitializer }, align 32
@lec_push.__UNIQUE_ID_ddebug575 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.3, ptr @.str.106, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ignoring frame...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lec:%s: Ignoring frame...\0A\00", [37 x i8] zeroinitializer }, align 32
@lec_vcc_close.__UNIQUE_ID_ddebug612 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 2, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lec_vcc_close\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"LEC_ARP: lec_vcc_close vpi:%d vci:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lec:%s: LEC_ARP: lec_vcc_close vpi:%d vci:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@lec_arp_check_empties.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 2, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lec_arp_check_empties\00", [42 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"LEC_ARP: Arp_check_empties: entry not found!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"lec:%s: LEC_ARP: Arp_check_empties: entry not found!\0A\00", [42 x i8] zeroinitializer }, align 32
@lec_vcc_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016lec:%s: copy from user failed for %d bytes\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lec_vcc_attach\00", [17 x i8] zeroinitializer }, align 32
@lec_vcc_attach._entry_ptr = internal global ptr @lec_vcc_attach._entry, section ".printk_index", align 4
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@lec_vcc_added.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.120, i8 1, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lec_vcc_added\00", [18 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"LEC_ARP: Attaching mcast forward\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"lec:%s: LEC_ARP: Attaching mcast forward\0A\00", [54 x i8] zeroinitializer }, align 32
@lec_vcc_added.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.122, i8 1, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"LEC_ARP:Attaching data direct, not default: %*phN\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"lec:%s: LEC_ARP:Attaching data direct, not default: %*phN\0A\00", [37 x i8] zeroinitializer }, align 32
@lec_vcc_added.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.124, i8 1, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"LEC_ARP:Attaching data direct, default: %*phN\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"lec:%s: LEC_ARP:Attaching data direct, default: %*phN\0A\00", [41 x i8] zeroinitializer }, align 32
@lec_vcc_added.__UNIQUE_ID_ddebug605 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.126, i8 1, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LEC_ARP: Attaching data direct\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lec:%s: LEC_ARP: Attaching data direct\0A\00", [56 x i8] zeroinitializer }, align 32
@lec_vcc_added.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.128, i8 1, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Currently -> Vcc: %d, Rvcc:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"lec:%s: Currently -> Vcc: %d, Rvcc:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@lec_vcc_added.__UNIQUE_ID_ddebug607 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.130, i8 1, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"After vcc was added\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lec:%s: After vcc was added\0A\00", [35 x i8] zeroinitializer }, align 32
@lec_vcc_added.__UNIQUE_ID_ddebug608 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.130, i8 1, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lec_arp_expire_vcc.__UNIQUE_ID_ddebug591 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.3, ptr @.str.133, i8 1, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lec_arp_expire_vcc\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%p %p: vpi:%d vci:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lec:%s: %p %p: vpi:%d vci:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@lec_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @lec_seq_start, ptr @lec_seq_stop, ptr @lec_seq_next, ptr @lec_seq_show }, [16 x i8] zeroinitializer }, align 32
@lane_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013lec:%s: Unable to initialize /proc/net/atm/lec\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lane_module_init\00", [47 x i8] zeroinitializer }, align 32
@lane_module_init._entry_ptr = internal global ptr @lane_module_init._entry, section ".printk_index", align 4
@lane_module_init._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.3, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016lec:%s: lec.c: initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@lane_module_init._entry_ptr.139 = internal global ptr @lane_module_init._entry.137, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@lec_seq_show.lec_banner = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Itf  MAC          ATM destination                          Status            Flags VPI/VCI Recv VPI/VCI\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM \00", [27 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*phN \00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %4.4x\00", [23 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%3d %3d \00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"        \00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"     %3d %3d\00", [19 x i8] zeroinitializer }, align 32
@lec_arp_get_status_string.lec_arp_status_string = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ESI_UNKNOWN       \00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ESI_ARP_PENDING   \00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ESI_VC_PENDING    \00", [45 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"<Undefined>       \00", [45 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ESI_FLUSH_PENDING \00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ESI_FORWARD_DIRECT\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 25040, i64 25041, i64 25042]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.155 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1050, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"lane_ioctl_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1022, i32 25 }
@___asan_gen_.163 = private unnamed_addr constant [8 x i8] c"dev_lec\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 126, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"lec_netdev_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 556, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 741, i32 40 }
@___asan_gen_.172 = private unnamed_addr constant [11 x i8] c"lecatm_dev\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 495, i32 23 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 216, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 218, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 225, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"bridge_ula_lec\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 38, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 235, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 284, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 288, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 292, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 305, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [8 x i8] c"bus_mac\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 123, i32 22 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1744, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1755, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1761, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1520, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1540, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1984, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1288, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 539, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1555, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 199, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1242, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1243, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1662, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1603, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1609, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1329, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [11 x i8] c"lecdev_ops\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 490, i32 32 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 499, i32 10 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 480, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 486, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [10 x i8] c"zero_addr\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 343, i32 18 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 355, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 387, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 389, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant [10 x i8] c"lane2_ops\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 117, i32 25 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 416, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 432, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 443, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 459, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1798, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2059, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2078, i32 5 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1830, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1868, i32 5 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1913, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1144, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2101, i32 5 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 668, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 591, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant [15 x i8] c"lec_ctrl_magic\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 564, i32 28 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 610, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 624, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2153, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2232, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 690, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 156, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1934, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1959, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1976, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1984, i32 5 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1985, i32 5 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 2027, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1579, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [12 x i8] c"lec_seq_ops\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 981, i32 36 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1035, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 1041, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [11 x i8] c"lec_banner\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 961, i32 20 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 975, i32 19 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 800, i32 18 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 801, i32 18 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 802, i32 18 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 805, i32 19 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 807, i32 19 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 809, i32 19 }
@___asan_gen_.652 = private unnamed_addr constant [22 x i8] c"lec_arp_status_string\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 784, i32 27 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 785, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 786, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 787, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 788, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 789, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.671 = private constant [17 x i8] c"../net/atm/lec.c\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 790, i32 3 }
@llvm.compiler.used = appending global [188 x ptr] [ptr @__UNIQUE_ID_file614, ptr @__UNIQUE_ID_license615, ptr @__exitcall_lane_module_cleanup, ptr @__initcall__kmod_lec__582_1064_lane_module_init6, ptr @lane2_associate_req._entry, ptr @lane2_associate_req._entry_ptr, ptr @lane_module_cleanup, ptr @lane_module_init._entry, ptr @lane_module_init._entry.137, ptr @lane_module_init._entry_ptr, ptr @lane_module_init._entry_ptr.139, ptr @lec_atm_close._entry, ptr @lec_atm_close._entry.61, ptr @lec_atm_close._entry_ptr, ptr @lec_atm_close._entry_ptr.63, ptr @lec_atm_send._entry, ptr @lec_atm_send._entry.76, ptr @lec_atm_send._entry_ptr, ptr @lec_atm_send._entry_ptr.78, ptr @lec_pop._entry, ptr @lec_pop._entry_ptr, ptr @lec_start_xmit._entry, ptr @lec_start_xmit._entry_ptr, ptr @lec_tx_timeout._entry, ptr @lec_tx_timeout._entry_ptr, ptr @lec_vcc_attach._entry, ptr @lec_vcc_attach._entry_ptr, ptr @.str, ptr @lane_ioctl_ops, ptr @dev_lec, ptr @lec_netdev_ops, ptr @.str.1, ptr @lecatm_dev, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @bridge_ula_lec, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @bus_mac, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @make_entry.__key, ptr @.str.29, ptr @skb_queue_head_init.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @lec_arp_init.__key, ptr @.str.42, ptr @lec_arp_init.__key.43, ptr @.str.44, ptr @lec_arp_init.__key.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @lecdev_ops, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @lec_atm_send.zero_addr, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @lane2_ops, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @lec_ctrl_magic, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @lec_seq_ops, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @lec_seq_show.lec_banner, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @lec_arp_get_status_string.lec_arp_status_string, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_ioctl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_lec to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lecatm_dev to i32), i32 1112, i32 1376, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_ula_lec to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_arp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_arp_init.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_arp_init.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lecdev_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_atm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_atm_close._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_atm_send.zero_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane2_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_atm_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_atm_send._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane2_associate_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_pop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_ctrl_magic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_vcc_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lane_module_init._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_seq_show.lec_banner to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lec_arp_get_status_string.lec_arp_status_string to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lane_module_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atm_proc_root to i32))
  %0 = load ptr, ptr @atm_proc_root, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %0) #13
  tail call void @deregister_atm_ioctl(ptr noundef nonnull @lane_ioctl_ops) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [48 x ptr], ptr @dev_lec, i32 0, i32 %i.010
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %2, null
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_netdev(ptr noundef nonnull %2) #13
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @free_netdev(ptr noundef %4) #13
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_atm_ioctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lane_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atm_proc_root to i32))
  %0 = load ptr, ptr @atm_proc_root, align 4
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %0, ptr noundef nonnull @lec_seq_ops, i32 noundef 28, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @register_atm_ioctl(ptr noundef nonnull @lane_ioctl_ops) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.str.138.sink = phi ptr [ @.str.138, %if.end ], [ @.str.135, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.138.sink, ptr noundef nonnull @.str.136) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lane_ioctl(ptr nocapture noundef %sock, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %ioc_data.i = alloca %struct.atmlec_ioc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i, align 16
  %cmd.off = add i32 %cmd, -25040
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 3
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call1, label %sw.epilog, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.epilog.cleanup_crit_edge [
    i32 25040, label %sw.bb2
    i32 25042, label %sw.bb6
    i32 25041, label %sw.bb8
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb2:                                           ; preds = %sw.epilog
  %3 = tail call i32 @llvm.smax.i32(i32 %arg, i32 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %3)
  %cmp1.i = icmp ugt i32 %3, 47
  br i1 %cmp1.i, label %sw.bb2.cleanup_crit_edge, label %if.end3.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3.i:                                        ; preds = %sw.bb2
  %4 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %3, i32 48) #13, !srcloc !336
  %and.i = and i32 %4, %3
  %arrayidx.i = getelementptr [48 x ptr], ptr @dev_lec, i32 0, i32 %and.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end3.i
  %call8.i = tail call ptr @alloc_etherdev_mqs(i32 noundef 296, i32 noundef 1, i32 noundef 1) #13
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool11.not.i, label %if.then7.i.cleanup_crit_edge, label %if.end13.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13.i:                                       ; preds = %if.then7.i
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call8.i, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @lec_netdev_ops, ptr %netdev_ops.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %call8.i, i32 0, i32 31
  %9 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 18190, ptr %max_mtu.i, align 4
  %call17.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call8.i, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %and.i) #13
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call19.i = tail call i32 @register_netdev(ptr noundef %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  br i1 %tobool20.not.i, label %if.end13.i.if.end31.i_crit_edge, label %if.then21.i

if.end13.i.if.end31.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @free_netdev(ptr noundef %13) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.end3.i
  %lecd.i = getelementptr i8, ptr %6, i32 2432
  %14 = ptrtoint ptr %lecd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lecd.i, align 4
  %tobool28.not.i = icmp eq ptr %15, null
  br i1 %tobool28.not.i, label %if.else.i.if.end31.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else.i.if.end31.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i.if.end31.i_crit_edge, %if.end13.i.if.end31.i_crit_edge
  %.pn.i = phi ptr [ %6, %if.else.i.if.end31.i_crit_edge ], [ %13, %if.end13.i.if.end31.i_crit_edge ]
  %lec_arp_empty_ones.i.i = getelementptr i8, ptr %.pn.i, i32 2308
  %lec_arp_lock.i.i = getelementptr i8, ptr %.pn.i, i32 2384
  %16 = call ptr @memset(ptr %lec_arp_empty_ones.i.i, i32 0, i32 76)
  tail call void @__raw_spin_lock_init(ptr noundef %lec_arp_lock.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @lec_arp_init.__key, i16 noundef signext 3) #13
  %lec_arp_work.i.i = getelementptr i8, ptr %.pn.i, i32 2436
  tail call void @__init_work(ptr noundef %lec_arp_work.i.i, i32 noundef 0) #13
  %17 = ptrtoint ptr %lec_arp_work.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %lec_arp_work.i.i, align 4
  %lockdep_map.i.i = getelementptr i8, ptr %.pn.i, i32 2452
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @lec_arp_init.__key.43, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry13.i.i = getelementptr i8, ptr %.pn.i, i32 2440
  %18 = ptrtoint ptr %entry13.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry13.i.i, ptr %entry13.i.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.i, i32 2444
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry13.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr i8, ptr %.pn.i, i32 2448
  %20 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @lec_arp_check_expire, ptr %func.i.i, align 4
  %timer.i.i = getelementptr i8, ptr %.pn.i, i32 2480
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.46, ptr noundef nonnull @lec_arp_init.__key.45) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %lec_arp_work.i.i, i32 noundef 300) #13
  %itfnum.i = getelementptr i8, ptr %.pn.i, i32 2588
  %22 = ptrtoint ptr %itfnum.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %itfnum.i, align 4
  %lecd32.i = getelementptr i8, ptr %.pn.i, i32 2432
  %23 = ptrtoint ptr %lecd32.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %lecd32.i, align 4
  %dev.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @lecatm_dev, ptr %dev.i, align 4
  tail call void @vcc_insert_socket(ptr noundef %1) #13
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %proto_data.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 15
  %27 = ptrtoint ptr %proto_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %proto_data.i, align 4
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #13
  %maximum_unknown_frame_count.i = getelementptr i8, ptr %.pn.i, i32 2536
  %28 = ptrtoint ptr %maximum_unknown_frame_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %maximum_unknown_frame_count.i, align 4
  %max_unknown_frame_time.i = getelementptr i8, ptr %.pn.i, i32 2540
  %29 = ptrtoint ptr %max_unknown_frame_time.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100, ptr %max_unknown_frame_time.i, align 4
  %vcc_timeout_period.i = getelementptr i8, ptr %.pn.i, i32 2544
  %30 = ptrtoint ptr %vcc_timeout_period.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 120000, ptr %vcc_timeout_period.i, align 4
  %max_retry_count.i = getelementptr i8, ptr %.pn.i, i32 2548
  %31 = ptrtoint ptr %max_retry_count.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %max_retry_count.i, align 4
  %aging_time.i = getelementptr i8, ptr %.pn.i, i32 2552
  %32 = ptrtoint ptr %aging_time.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 30000, ptr %aging_time.i, align 4
  %forward_delay_time.i = getelementptr i8, ptr %.pn.i, i32 2556
  %33 = ptrtoint ptr %forward_delay_time.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1500, ptr %forward_delay_time.i, align 4
  %topology_change.i = getelementptr i8, ptr %.pn.i, i32 2560
  %34 = ptrtoint ptr %topology_change.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %topology_change.i, align 4
  %arp_response_time.i = getelementptr i8, ptr %.pn.i, i32 2564
  %35 = ptrtoint ptr %arp_response_time.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 100, ptr %arp_response_time.i, align 4
  %flush_timeout.i = getelementptr i8, ptr %.pn.i, i32 2568
  %36 = ptrtoint ptr %flush_timeout.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 400, ptr %flush_timeout.i, align 4
  %path_switching_delay.i = getelementptr i8, ptr %.pn.i, i32 2572
  %37 = ptrtoint ptr %path_switching_delay.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 600, ptr %path_switching_delay.i, align 4
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %flags37.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %flags37.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags37.i, align 8
  %and38.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end31.i.if.then4_crit_edge, label %if.then40.i

if.end31.i.if.then4_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then40.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #13
  br label %if.then4

if.then4:                                         ; preds = %if.then40.i, %if.end31.i.if.then4_crit_edge
  tail call void @__module_get(ptr noundef null) #13
  %44 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %sock, align 128
  br label %cleanup

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %arg)
  %45 = icmp ugt i32 %arg, 47
  br i1 %45, label %sw.bb6.cleanup_crit_edge, label %if.end.i

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb6
  %46 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %arg, i32 48) #13, !srcloc !336
  %and.i19 = and i32 %46, %arg
  %arrayidx.i20 = getelementptr [48 x ptr], ptr @dev_lec, i32 0, i32 %and.i19
  %47 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i20, align 4
  %tobool.not.i21 = icmp eq ptr %48, null
  br i1 %tobool.not.i21, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %proto_data.i22 = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 15
  %49 = ptrtoint ptr %proto_data.i22 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %proto_data.i22, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 2304
  %call10.i = tail call fastcc i32 @lec_mcast_make(ptr noundef %add.ptr.i.i, ptr noundef %1) #13
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  %50 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ioc_data.i) #13
  %51 = call ptr @memset(ptr %ioc_data.i, i32 255, i32 28)
  tail call void @__might_fault(ptr noundef nonnull @.str.118, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %sw.bb8.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb8.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb8
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %50, i32 28, i32 -1226833920) #17, !srcloc !337
  %asmresult.i.i.i = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !338

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i23 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ioc_data.i, i32 noundef 28) #13
  %53 = call i32 @llvm.read_register.i32(metadata !326) #13
  %and.i.i.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !339
  %and.i.i.i.i.i = and i32 %55, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !340
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !341
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ioc_data.i, ptr noundef %50, i32 noundef 28) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #13, !srcloc !340
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end.i24_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !338

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i.if.end.i24_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i24

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb8.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 28, %sw.bb8.if.then11.i.i.i_crit_edge ], [ 28, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 28, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ioc_data.i, i32 %sub.i.i.i
  %56 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef %res.03.i.i.i) #16
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then11.i.i.i, %if.end.i.i.i.if.end.i24_crit_edge
  %57 = ptrtoint ptr %ioc_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ioc_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %58)
  %59 = icmp ugt i32 %58, 47
  br i1 %59, label %if.end.i24.lec_vcc_attach.exit_crit_edge, label %if.end6.i28

if.end.i24.lec_vcc_attach.exit_crit_edge:         ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_vcc_attach.exit

if.end6.i28:                                      ; preds = %if.end.i24
  %60 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %58, i32 48) #13, !srcloc !336
  %and.i25 = and i32 %60, %58
  %61 = ptrtoint ptr %ioc_data.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and.i25, ptr %ioc_data.i, align 4
  %arrayidx.i26 = getelementptr [48 x ptr], ptr @dev_lec, i32 0, i32 %and.i25
  %62 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i26, align 4
  %tobool.not.i27 = icmp eq ptr %63, null
  br i1 %tobool.not.i27, label %if.end6.i28.lec_vcc_attach.exit_crit_edge, label %if.end19.i

if.end6.i28.lec_vcc_attach.exit_crit_edge:        ; preds = %if.end6.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_vcc_attach.exit

if.end19.i:                                       ; preds = %if.end6.i28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3264, i32 noundef 8) #18
  %tobool21.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not.i, label %if.end19.i.lec_vcc_attach.exit_crit_edge, label %if.end23.i

if.end19.i.lec_vcc_attach.exit_crit_edge:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_vcc_attach.exit

if.end23.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %xoff.i = getelementptr inbounds %struct.lec_vcc_priv, ptr %call7.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %xoff.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %xoff.i, align 4
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 11
  %66 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pop.i, align 4
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %call7.i.i, align 8
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 22
  %69 = ptrtoint ptr %user_back.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i, ptr %user_back.i, align 8
  store ptr @lec_pop, ptr %pop.i, align 4
  %70 = ptrtoint ptr %ioc_data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ioc_data.i, align 4
  %arrayidx26.i = getelementptr [48 x ptr], ptr @dev_lec, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx26.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %73, i32 2304
  %push.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 10
  %74 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %push.i, align 8
  call fastcc void @lec_vcc_added(ptr noundef %add.ptr.i.i29, ptr noundef nonnull %ioc_data.i, ptr noundef %1, ptr noundef %75) #13
  %76 = ptrtoint ptr %ioc_data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ioc_data.i, align 4
  %arrayidx29.i = getelementptr [48 x ptr], ptr @dev_lec, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx29.i, align 4
  %proto_data.i30 = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 15
  %80 = ptrtoint ptr %proto_data.i30 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %proto_data.i30, align 4
  %81 = ptrtoint ptr %push.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @lec_push, ptr %push.i, align 8
  br label %lec_vcc_attach.exit

lec_vcc_attach.exit:                              ; preds = %if.end23.i, %if.end19.i.lec_vcc_attach.exit_crit_edge, %if.end6.i28.lec_vcc_attach.exit_crit_edge, %if.end.i24.lec_vcc_attach.exit_crit_edge
  %retval.0.i31 = phi i32 [ 0, %if.end23.i ], [ -22, %if.end.i24.lec_vcc_attach.exit_crit_edge ], [ -22, %if.end6.i28.lec_vcc_attach.exit_crit_edge ], [ -12, %if.end19.i.lec_vcc_attach.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ioc_data.i) #13
  br label %cleanup

cleanup:                                          ; preds = %lec_vcc_attach.exit, %if.end6.i, %if.end.i.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.then4, %if.else.i.cleanup_crit_edge, %if.then21.i, %if.then7.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %retval.0.i31, %lec_vcc_attach.exit ], [ %and.i, %if.then4 ], [ %call10.i, %if.end6.i ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.then21.i ], [ -12, %if.then7.i.cleanup_crit_edge ], [ -98, %if.else.i.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_insert_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lec_open(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lec_close(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lec_start_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  %entry1 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #13
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry1, align 4, !annotation !342
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_start_xmit.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_start_xmit, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_start_xmit.__UNIQUE_ID_ddebug560, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lecd = getelementptr i8, ptr %dev, i32 2432
  %1 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lecd, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %do.end9, label %do.body13

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %dev) #16
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %3 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_errors, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

do.body13:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_start_xmit.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_start_xmit, %if.then25)) #13
          to label %do.end30 [label %if.then25], !srcloc !343

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head, align 8
  %9 = ptrtoint ptr %8 to i32
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %15 = ptrtoint ptr %14 to i32
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %18 = ptrtoint ptr %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_start_xmit.__UNIQUE_ID_ddebug561, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %18) #13
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %do.body13
  %data31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data31, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(5) %20, ptr noundef nonnull dereferenceable(5) @bridge_ula_lec, i32 5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then33, label %do.end30.if.end34_crit_edge

do.end30.if.end34_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then33:                                        ; preds = %do.end30
  %21 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %25 to i32
  %add.ptr.i279 = getelementptr i8, ptr %20, i32 %conv.i
  %26 = ptrtoint ptr %add.ptr.i279 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i279, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %27)
  %cmp.i = icmp eq i8 %27, 66
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then33.if.end34_crit_edge

if.then33.if.end34_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true.i:                                  ; preds = %if.then33
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i279, i32 1
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %29)
  %cmp5.i = icmp eq i8 %29, 66
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.end34_crit_edge

land.lhs.true.i.if.end34_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %incdec.ptr3.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %incdec.ptr8.i = getelementptr i8, ptr %incdec.ptr3.i, i32 1
  %30 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp10.i = icmp eq i8 %31, 3
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true7.i.if.end34_crit_edge

land.lhs.true7.i.if.end34_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then.i:                                        ; preds = %land.lhs.true7.i
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 52, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %cmp12.i = icmp eq ptr %call.i.i, null
  br i1 %cmp12.i, label %if.then.i.if.end34_crit_edge, label %if.end.i

if.then.i.if.end34_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 52, ptr %len.i, align 4
  %data15.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %data15.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data15.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %34, align 4
  %add.ptr16.i = getelementptr i8, ptr %incdec.ptr8.i, i32 4
  %36 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr16.i, align 1
  %38 = and i8 %37, 1
  %and.i = zext i8 %38 to i32
  %flag.i = getelementptr inbounds %struct.atmlec_msg, ptr %34, i32 0, i32 2, i32 0, i32 7
  %39 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i, ptr %flag.i, align 4
  %40 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lecd, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %42 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %truesize.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %41, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #13
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %43, ptr elementtype(i32) %sk_backlog.i.i) #13, !srcloc !344
  %45 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lecd, align 4
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue.i, ptr noundef nonnull %call.i.i) #13
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 77
  %47 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sk_data_ready.i, align 8
  tail call void %48(ptr noundef %46) #13
  br label %if.end34

if.end34:                                         ; preds = %if.end.i, %if.then.i.if.end34_crit_edge, %land.lhs.true7.i.if.end34_crit_edge, %land.lhs.true.i.if.end34_crit_edge, %if.then33.if.end34_crit_edge, %do.end30.if.end34_crit_edge
  %49 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data31, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %51 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i)
  %cmp36 = icmp ult i32 %sub.ptr.sub.i, 2
  br i1 %cmp36, label %do.body38, label %if.end34.if.end66_crit_edge

if.end34.if.end66_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

do.body38:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_start_xmit.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_start_xmit, %if.then50)) #13
          to label %do.end53 [label %if.then50], !srcloc !343

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_start_xmit.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2) #13
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body38
  %call54 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 16) #13
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.then64, label %if.end65, !prof !345

if.then64:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

if.end65:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end34.if.end66_crit_edge
  %skb.addr.0 = phi ptr [ %call54, %if.end65 ], [ %skb, %if.end34.if.end66_crit_edge ]
  %call67 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 2) #13
  %data68 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %53 = ptrtoint ptr %data68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data68, align 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %54, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %59)
  %cmp69 = icmp ult i32 %59, 62
  br i1 %cmp69, label %if.then70, label %if.end66.if.end85_crit_edge

if.end66.if.end85_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then70:                                        ; preds = %if.end66
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 7
  %60 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.not.i = icmp eq i32 %61, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then70.skb_tailroom.exit_crit_edge

if.then70.skb_tailroom.exit_crit_edge:            ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  %end.i281 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 17
  %62 = ptrtoint ptr %end.i281 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i281, align 4
  %tail.i282 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 16
  %64 = ptrtoint ptr %tail.i282 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i282, align 8
  %sub.ptr.lhs.cast.i283 = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast.i284 = ptrtoint ptr %65 to i32
  %sub.ptr.sub.i285 = sub i32 %sub.ptr.lhs.cast.i283, %sub.ptr.rhs.cast.i284
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then70.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i285, %cond.false.i ], [ 0, %if.then70.skb_tailroom.exit_crit_edge ]
  %add = add i32 %cond.i, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %add)
  %cmp73 = icmp ult i32 %add, 62
  br i1 %cmp73, label %if.then74, label %skb_tailroom.exit.if.end81_crit_edge

skb_tailroom.exit.if.end81_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then74:                                        ; preds = %skb_tailroom.exit
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 20
  %66 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %truesize, align 8
  %sub = sub i32 62, %67
  %call75 = tail call ptr @skb_copy_expand(ptr noundef %skb.addr.0, i32 noundef 0, i32 noundef %sub, i32 noundef 2592) #13
  tail call void @consume_skb(ptr noundef %skb.addr.0) #13
  %cmp76 = icmp eq ptr %call75, null
  br i1 %cmp76, label %if.then77, label %if.then74.if.end81_crit_edge

if.then74.if.end81_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then77:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %68 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_dropped, align 4
  %inc79 = add i32 %69, 1
  store i32 %inc79, ptr %tx_dropped, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.then74.if.end81_crit_edge, %skb_tailroom.exit.if.end81_crit_edge
  %skb.addr.1 = phi ptr [ %skb.addr.0, %skb_tailroom.exit.if.end81_crit_edge ], [ %call75, %if.then74.if.end81_crit_edge ]
  %len82 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %70 = ptrtoint ptr %len82 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len82, align 4
  %sub83 = sub i32 62, %71
  %call84 = tail call ptr @skb_put(ptr noundef %skb.addr.1, i32 noundef %sub83) #13
  br label %if.end85

if.end85:                                         ; preds = %if.end81, %if.end66.if.end85_crit_edge
  %skb.addr.2 = phi ptr [ %skb.addr.1, %if.end81 ], [ %skb.addr.0, %if.end66.if.end85_crit_edge ]
  %h_dest = getelementptr inbounds %struct.lecdatahdr_8023, ptr %54, i32 0, i32 1
  %72 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %entry1, align 4
  %call87 = call fastcc ptr @lec_arp_resolve(ptr noundef %add.ptr.i, ptr noundef %h_dest, ptr noundef nonnull %entry1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_start_xmit.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_start_xmit, %if.then100)) #13
          to label %do.end106 [label %if.then100], !srcloc !343

if.then100:                                       ; preds = %if.end85
  %tobool103.not = icmp eq ptr %call87, null
  br i1 %tobool103.not, label %if.then100.cond.end_crit_edge, label %cond.true

if.then100.cond.end_crit_edge:                    ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %call87, i32 0, i32 1
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then100.cond.end_crit_edge
  %cond = phi i32 [ %74, %cond.true ], [ 0, %if.then100.cond.end_crit_edge ]
  %75 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %entry1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_start_xmit.__UNIQUE_ID_ddebug563, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, ptr noundef %dev, ptr noundef %call87, i32 noundef %cond, ptr noundef %76) #13
  br label %do.end106

do.end106:                                        ; preds = %cond.end, %if.end85
  %tobool107.not = icmp eq ptr %call87, null
  br i1 %tobool107.not, label %do.end106.if.then111_crit_edge, label %lor.lhs.false

do.end106.if.then111_crit_edge:                   ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then111

lor.lhs.false:                                    ; preds = %do.end106
  %flags108 = getelementptr inbounds %struct.atm_vcc, ptr %call87, i32 0, i32 1
  %77 = ptrtoint ptr %flags108 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %flags108, align 4
  %79 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool110.not = icmp eq i32 %79, 0
  br i1 %tobool110.not, label %lor.lhs.false.if.then111_crit_edge, label %while.cond.preheader

lor.lhs.false.if.then111_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then111

while.cond.preheader:                             ; preds = %lor.lhs.false
  %80 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %entry1, align 4
  %tobool161.not = icmp eq ptr %81, null
  br i1 %tobool161.not, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %tx_wait162 = getelementptr inbounds %struct.lec_arp_table, ptr %81, i32 0, i32 19
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %call87, i32 0, i32 23
  %atm_options.i.i = getelementptr inbounds %struct.atm_vcc, ptr %call87, i32 0, i32 5
  %send.i = getelementptr inbounds %struct.atm_vcc, ptr %call87, i32 0, i32 13
  %call163342 = tail call ptr @skb_dequeue(ptr noundef %tx_wait162) #13
  %tobool164.not343 = icmp eq ptr %call163342, null
  br i1 %tobool164.not343, label %land.rhs.lr.ph.while.end_crit_edge, label %land.rhs.lr.ph.do.body165_crit_edge

land.rhs.lr.ph.do.body165_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %do.body165

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then111:                                       ; preds = %lor.lhs.false.if.then111_crit_edge, %do.end106.if.then111_crit_edge
  %82 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %entry1, align 4
  %tobool112.not = icmp eq ptr %83, null
  br i1 %tobool112.not, label %if.then111.do.body136_crit_edge, label %land.lhs.true

if.then111.do.body136_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body136

land.lhs.true:                                    ; preds = %if.then111
  %qlen = getelementptr inbounds %struct.lec_arp_table, ptr %83, i32 0, i32 19, i32 1
  %84 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %85)
  %cmp113 = icmp ult i32 %85, 8
  br i1 %cmp113, label %do.body115, label %land.lhs.true.do.body136_crit_edge

land.lhs.true.do.body136_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body136

do.body115:                                       ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_start_xmit.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_start_xmit, %if.then127)) #13
          to label %do.end134 [label %if.then127], !srcloc !343

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_start_xmit.__UNIQUE_ID_ddebug564, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef %dev, ptr noundef %h_dest) #13
  br label %do.end134

do.end134:                                        ; preds = %if.then127, %do.body115
  %tx_wait135 = getelementptr inbounds %struct.lec_arp_table, ptr %83, i32 0, i32 19
  tail call void @skb_queue_tail(ptr noundef %tx_wait135, ptr noundef %skb.addr.2) #13
  br label %out

do.body136:                                       ; preds = %land.lhs.true.do.body136_crit_edge, %if.then111.do.body136_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_start_xmit.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_start_xmit, %if.then148)) #13
          to label %do.end155 [label %if.then148], !srcloc !343

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_start_xmit.__UNIQUE_ID_ddebug565, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, ptr noundef %dev, ptr noundef %h_dest) #13
  br label %do.end155

do.end155:                                        ; preds = %if.then148, %do.body136
  %tx_dropped157 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %86 = ptrtoint ptr %tx_dropped157 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_dropped157, align 4
  %inc158 = add i32 %87, 1
  store i32 %inc158, ptr %tx_dropped157, align 4
  tail call void @consume_skb(ptr noundef %skb.addr.2) #13
  br label %out

do.body165:                                       ; preds = %lec_send.exit.do.body165_crit_edge, %land.rhs.lr.ph.do.body165_crit_edge
  %call163344 = phi ptr [ %call163, %lec_send.exit.do.body165_crit_edge ], [ %call163342, %land.rhs.lr.ph.do.body165_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_start_xmit.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_start_xmit, %if.then177)) #13
          to label %do.end182 [label %if.then177], !srcloc !343

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_start_xmit.__UNIQUE_ID_ddebug566, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, ptr noundef %h_dest) #13
  br label %do.end182

do.end182:                                        ; preds = %if.then177, %do.body165
  %88 = getelementptr inbounds %struct.anon.51, ptr %call163344, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call163344, i32 0, i32 3
  %91 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call87, ptr %cb.i, align 8
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call163344, i32 0, i32 20
  %92 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %truesize.i.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i.i, i32 1, i32 3, i32 1) #13
  %94 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i.i, ptr %sk_wmem_alloc.i.i, i32 %93, ptr elementtype(i32) %sk_wmem_alloc.i.i) #13, !srcloc !346
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end182.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !345

do.end182.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end182
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, %93
  %95 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %.not.i.i.i.i = icmp sgt i32 %95, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.atm_account_tx.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !338

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.atm_account_tx.exit.i_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %atm_account_tx.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end182.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end182.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i.i, i32 noundef %.sink.i.i.i.i) #13
  br label %atm_account_tx.exit.i

atm_account_tx.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.atm_account_tx.exit.i_crit_edge
  %96 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %truesize.i.i, align 8
  %acct_truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call163344, i32 0, i32 3, i32 8
  %98 = ptrtoint ptr %acct_truesize.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %acct_truesize.i.i, align 8
  %99 = ptrtoint ptr %atm_options.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %atm_options.i.i, align 8
  %atm_options4.i.i = getelementptr inbounds %struct.sk_buff, ptr %call163344, i32 0, i32 3, i32 4
  %101 = ptrtoint ptr %atm_options4.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %atm_options4.i.i, align 4
  %102 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %send.i, align 4
  %call.i = tail call i32 %103(ptr noundef nonnull %call87, ptr noundef nonnull %call163344) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i286 = icmp slt i32 %call.i, 0
  br i1 %cmp.i286, label %if.then.i287, label %if.end.i289

if.then.i287:                                     ; preds = %atm_account_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 36, i32 7
  br label %lec_send.exit

if.end.i289:                                      ; preds = %atm_account_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 36, i32 1
  %104 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_packets.i, align 4
  %inc3.i = add i32 %105, 1
  store i32 %inc3.i, ptr %tx_packets.i, align 4
  %len.i288 = getelementptr inbounds %struct.sk_buff, ptr %call163344, i32 0, i32 6
  %106 = ptrtoint ptr %len.i288 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %len.i288, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 36, i32 3
  br label %lec_send.exit

lec_send.exit:                                    ; preds = %if.end.i289, %if.then.i287
  %tx_bytes.sink15.i = phi ptr [ %tx_bytes.i, %if.end.i289 ], [ %tx_dropped.i, %if.then.i287 ]
  %.sink14.i = phi i32 [ %107, %if.end.i289 ], [ 1, %if.then.i287 ]
  %108 = ptrtoint ptr %tx_bytes.sink15.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_bytes.sink15.i, align 4
  %add.i = add i32 %109, %.sink14.i
  store i32 %add.i, ptr %tx_bytes.sink15.i, align 4
  %call163 = tail call ptr @skb_dequeue(ptr noundef %tx_wait162) #13
  %tobool164.not = icmp eq ptr %call163, null
  br i1 %tobool164.not, label %lec_send.exit.while.end_crit_edge, label %lec_send.exit.do.body165_crit_edge

lec_send.exit.do.body165_crit_edge:               ; preds = %lec_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body165

lec_send.exit.while.end_crit_edge:                ; preds = %lec_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %lec_send.exit.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %110 = getelementptr inbounds %struct.anon.51, ptr %skb.addr.2, i32 0, i32 2
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %cb.i290 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 3
  %113 = ptrtoint ptr %cb.i290 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call87, ptr %cb.i290, align 8
  %truesize.i.i291 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 20
  %114 = ptrtoint ptr %truesize.i.i291 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %truesize.i.i291, align 8
  %sk_wmem_alloc.i.i292 = getelementptr inbounds %struct.sock, ptr %call87, i32 0, i32 23
  %call.i.i.i.i.i.i293 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i.i292, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i.i292, i32 1, i32 3, i32 1) #13
  %116 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i.i292, ptr %sk_wmem_alloc.i.i292, i32 %115, ptr elementtype(i32) %sk_wmem_alloc.i.i292) #13, !srcloc !346
  %asmresult.i.i.i.i.i.i294 = extractvalue { i32, i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i294)
  %tobool1.not.i.i.i.i295 = icmp eq i32 %asmresult.i.i.i.i.i.i294, 0
  br i1 %tobool1.not.i.i.i.i295, label %while.end.if.end15.sink.split.i.i.i.i300_crit_edge, label %if.else.i.i.i.i298, !prof !345

while.end.if.end15.sink.split.i.i.i.i300_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i300

if.else.i.i.i.i298:                               ; preds = %while.end
  %add.i.i.i.i296 = add i32 %asmresult.i.i.i.i.i.i294, %115
  %117 = or i32 %add.i.i.i.i296, %asmresult.i.i.i.i.i.i294
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %.not.i.i.i.i297 = icmp sgt i32 %117, -1
  br i1 %.not.i.i.i.i297, label %if.else.i.i.i.i298.atm_account_tx.exit.i307_crit_edge, label %if.else.i.i.i.i298.if.end15.sink.split.i.i.i.i300_crit_edge, !prof !338

if.else.i.i.i.i298.if.end15.sink.split.i.i.i.i300_crit_edge: ; preds = %if.else.i.i.i.i298
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i300

if.else.i.i.i.i298.atm_account_tx.exit.i307_crit_edge: ; preds = %if.else.i.i.i.i298
  call void @__sanitizer_cov_trace_pc() #15
  br label %atm_account_tx.exit.i307

if.end15.sink.split.i.i.i.i300:                   ; preds = %if.else.i.i.i.i298.if.end15.sink.split.i.i.i.i300_crit_edge, %while.end.if.end15.sink.split.i.i.i.i300_crit_edge
  %.sink.i.i.i.i299 = phi i32 [ 2, %while.end.if.end15.sink.split.i.i.i.i300_crit_edge ], [ 1, %if.else.i.i.i.i298.if.end15.sink.split.i.i.i.i300_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i.i292, i32 noundef %.sink.i.i.i.i299) #13
  br label %atm_account_tx.exit.i307

atm_account_tx.exit.i307:                         ; preds = %if.end15.sink.split.i.i.i.i300, %if.else.i.i.i.i298.atm_account_tx.exit.i307_crit_edge
  %118 = ptrtoint ptr %truesize.i.i291 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %truesize.i.i291, align 8
  %acct_truesize.i.i301 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 3, i32 8
  %120 = ptrtoint ptr %acct_truesize.i.i301 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %acct_truesize.i.i301, align 8
  %atm_options.i.i302 = getelementptr inbounds %struct.atm_vcc, ptr %call87, i32 0, i32 5
  %121 = ptrtoint ptr %atm_options.i.i302 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %atm_options.i.i302, align 8
  %atm_options4.i.i303 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 3, i32 4
  %123 = ptrtoint ptr %atm_options4.i.i303 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %atm_options4.i.i303, align 4
  %send.i304 = getelementptr inbounds %struct.atm_vcc, ptr %call87, i32 0, i32 13
  %124 = ptrtoint ptr %send.i304 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %send.i304, align 4
  %call.i305 = tail call i32 %125(ptr noundef nonnull %call87, ptr noundef %skb.addr.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %cmp.i306 = icmp slt i32 %call.i305, 0
  br i1 %cmp.i306, label %if.then.i309, label %if.end.i314

if.then.i309:                                     ; preds = %atm_account_tx.exit.i307
  call void @__sanitizer_cov_trace_pc() #15
  %tx_dropped.i308 = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 36, i32 7
  br label %lec_send.exit318

if.end.i314:                                      ; preds = %atm_account_tx.exit.i307
  call void @__sanitizer_cov_trace_pc() #15
  %tx_packets.i310 = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 36, i32 1
  %126 = ptrtoint ptr %tx_packets.i310 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_packets.i310, align 4
  %inc3.i311 = add i32 %127, 1
  store i32 %inc3.i311, ptr %tx_packets.i310, align 4
  %len.i312 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 6
  %128 = ptrtoint ptr %len.i312 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len.i312, align 4
  %tx_bytes.i313 = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 36, i32 3
  br label %lec_send.exit318

lec_send.exit318:                                 ; preds = %if.end.i314, %if.then.i309
  %tx_bytes.sink15.i315 = phi ptr [ %tx_bytes.i313, %if.end.i314 ], [ %tx_dropped.i308, %if.then.i309 ]
  %.sink14.i316 = phi i32 [ %129, %if.end.i314 ], [ 1, %if.then.i309 ]
  %130 = ptrtoint ptr %tx_bytes.sink15.i315 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tx_bytes.sink15.i315, align 4
  %add.i317 = add i32 %131, %.sink14.i316
  store i32 %add.i317, ptr %tx_bytes.sink15.i315, align 4
  %call.i.i.i.i319 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i292, i32 noundef 4) #13
  %132 = ptrtoint ptr %sk_wmem_alloc.i.i292 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %sk_wmem_alloc.i.i292, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %call87, i32 0, i32 21
  %134 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %135)
  %cmp.i320.not = icmp ult i32 %133, %135
  br i1 %cmp.i320.not, label %lec_send.exit318.out_crit_edge, label %if.then185

lec_send.exit318.out_crit_edge:                   ; preds = %lec_send.exit318
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then185:                                       ; preds = %lec_send.exit318
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %call87, i32 0, i32 22
  %136 = ptrtoint ptr %user_back to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %user_back, align 8
  %xoff = getelementptr inbounds %struct.lec_vcc_priv, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %xoff to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %xoff, align 4
  %_tx.i.i322 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %139 = ptrtoint ptr %_tx.i.i322 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %_tx.i.i322, align 128
  %state.i.i323 = getelementptr inbounds %struct.netdev_queue, ptr %140, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i323) #13
  %call.i.i.i.i325 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i292, i32 noundef 4) #13
  %141 = ptrtoint ptr %sk_wmem_alloc.i.i292 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %sk_wmem_alloc.i.i292, align 4
  %143 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %144)
  %cmp.i327.not = icmp ult i32 %142, %144
  br i1 %cmp.i327.not, label %if.then188, label %if.then185.out_crit_edge

if.then185.out_crit_edge:                         ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then188:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %_tx.i.i322 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %_tx.i.i322, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %146) #13
  br label %out

out:                                              ; preds = %if.then188, %if.then185.out_crit_edge, %lec_send.exit318.out_crit_edge, %do.end155, %do.end134
  %147 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %entry1, align 4
  %tobool191.not = icmp eq ptr %148, null
  br i1 %tobool191.not, label %out.if.end193_crit_edge, label %if.then192

out.if.end193_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end193

if.then192:                                       ; preds = %out
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %148, i32 0, i32 20
  %call.i.i.i.i.i.i330 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %149 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i332, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i331 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i331, label %if.end5.i.i.i.i.if.end193_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.if.end193_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end193

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %if.end193

if.then.i332:                                     ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %148) #13
  br label %if.end193

if.end193:                                        ; preds = %if.then.i332, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end193_crit_edge, %out.if.end193_crit_edge
  %_tx.i.i334 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %150 = ptrtoint ptr %_tx.i.i334 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %_tx.i.i334, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %152 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %151, i32 0, i32 12
  %153 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %152)
  %cmp.not.i.i = icmp eq i32 %154, %152
  br i1 %cmp.not.i.i, label %if.end193.cleanup_crit_edge, label %do.body5.i.i

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body5.i.i:                                     ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  %155 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 %152, ptr %trans_start.i.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %do.body5.i.i, %if.end193.cleanup_crit_edge, %if.then77, %if.then64, %do.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lec_set_multicast_list(ptr nocapture noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lec_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef %dev) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp.not.i.i = icmp eq i32 %4, %2
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %2, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lec_arp_resolve(ptr noundef %priv, ptr noundef %mac_to_find, ptr nocapture noundef writeonly %ret_entry) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac_to_find to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_to_find, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %if.then

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

if.then:                                          ; preds = %entry
  %lane_version = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 21
  %3 = ptrtoint ptr %lane_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lane_version, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %4, label %if.then.do.body6_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

if.then.do.body6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %mcast_vcc = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 6
  %6 = ptrtoint ptr %mcast_vcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcast_vcc, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %if.then
  %8 = ptrtoint ptr %mac_to_find to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mac_to_find, align 4
  %10 = load i32, ptr @bus_mac, align 4
  %xor.i = xor i32 %10, %9
  %add.ptr.i = getelementptr i8, ptr %mac_to_find, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %13 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @bus_mac, i32 0, i32 4), align 4
  %xor37.i = xor i16 %13, %12
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then3, label %sw.bb2.do.body6_crit_edge

sw.bb2.do.body6_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

if.then3:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %mcast_vcc4 = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 6
  %14 = ptrtoint ptr %mcast_vcc4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcast_vcc4, align 4
  br label %cleanup

do.body6:                                         ; preds = %sw.bb2.do.body6_crit_edge, %if.then.do.body6_crit_edge, %entry.do.body6_crit_edge
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 5
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_find.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_resolve, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !343

if.then.i:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_find.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %mac_to_find) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body6
  %arrayidx.i = getelementptr i8, ptr %mac_to_find, i32 5
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %18 = and i8 %17, 15
  %and.i = zext i8 %18 to i32
  %arrayidx4.i = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %and.i
  %add.ptr.i.i = getelementptr i8, ptr %mac_to_find, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %entry1.0.in.i = phi ptr [ %arrayidx4.i, %do.end.i ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %19 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %tobool8.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool8.not.i, label %if.else, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr9.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %mac_to_find to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_to_find, align 4
  %22 = ptrtoint ptr %mac_addr9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mac_addr9.i, align 4
  %xor.i.i = xor i32 %23, %21
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %27, %25
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then14, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then14:                                        ; preds = %for.body.i
  %status = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 11
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %29, label %if.then14.land.lhs.true_crit_edge [
    i8 5, label %if.then18
    i8 1, label %if.end25.thread
    i8 4, label %if.then14.if.end46_crit_edge
  ]

if.then14.if.end46_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then14.land.lhs.true_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then18:                                        ; preds = %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 8
  %32 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_used, align 4
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 20
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !346
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then18.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !345

if.then18.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then18
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.lec_arp_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !338

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.lec_arp_hold.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then18.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then18.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #13
  br label %lec_arp_hold.exit

lec_arp_hold.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.lec_arp_hold.exit_crit_edge
  %35 = ptrtoint ptr %ret_entry to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry1.0.i, ptr %ret_entry, align 4
  %vcc = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 4
  %36 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vcc, align 4
  br label %out

if.end25.thread:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %no_tries = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 10
  %38 = ptrtoint ptr %no_tries to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %no_tries, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end25.thread, %if.then14.land.lhs.true_crit_edge
  %packets_flooded = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 13
  %39 = ptrtoint ptr %packets_flooded to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %packets_flooded, align 4
  %conv30 = zext i16 %40 to i32
  %maximum_unknown_frame_count = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 9
  %41 = ptrtoint ptr %maximum_unknown_frame_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maximum_unknown_frame_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv30)
  %cmp31 = icmp ugt i32 %42, %conv30
  br i1 %cmp31, label %if.then33, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then33:                                        ; preds = %land.lhs.true
  %inc = add i16 %40, 1
  %43 = ptrtoint ptr %packets_flooded to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %inc, ptr %packets_flooded, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_resolve.__UNIQUE_ID_ddebug595, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_resolve, %if.then41)) #13
          to label %do.end44 [label %if.then41], !srcloc !343

if.then41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_resolve.__UNIQUE_ID_ddebug595, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #13
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %if.then33
  %mcast_vcc45 = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 6
  %44 = ptrtoint ptr %mcast_vcc45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mcast_vcc45, align 4
  br label %out

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.then14.if.end46_crit_edge
  %usage.i7 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 20
  %call.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i7, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usage.i7, i32 1, i32 3, i32 1) #13
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i7, ptr %usage.i7, i32 1, ptr elementtype(i32) %usage.i7) #13, !srcloc !346
  %asmresult.i.i.i.i.i.i9 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i9)
  %tobool1.not.i.i.i.i10 = icmp eq i32 %asmresult.i.i.i.i.i.i9, 0
  br i1 %tobool1.not.i.i.i.i10, label %if.end46.if.end15.sink.split.i.i.i.i15_crit_edge, label %if.else.i.i.i.i13, !prof !345

if.end46.if.end15.sink.split.i.i.i.i15_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i15

if.else.i.i.i.i13:                                ; preds = %if.end46
  %add.i.i.i.i11 = add i32 %asmresult.i.i.i.i.i.i9, 1
  %47 = or i32 %add.i.i.i.i11, %asmresult.i.i.i.i.i.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i12 = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i12, label %if.else.i.i.i.i13.lec_arp_hold.exit16_crit_edge, label %if.else.i.i.i.i13.if.end15.sink.split.i.i.i.i15_crit_edge, !prof !338

if.else.i.i.i.i13.if.end15.sink.split.i.i.i.i15_crit_edge: ; preds = %if.else.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i15

if.else.i.i.i.i13.lec_arp_hold.exit16_crit_edge:  ; preds = %if.else.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_hold.exit16

if.end15.sink.split.i.i.i.i15:                    ; preds = %if.else.i.i.i.i13.if.end15.sink.split.i.i.i.i15_crit_edge, %if.end46.if.end15.sink.split.i.i.i.i15_crit_edge
  %.sink.i.i.i.i14 = phi i32 [ 2, %if.end46.if.end15.sink.split.i.i.i.i15_crit_edge ], [ 1, %if.else.i.i.i.i13.if.end15.sink.split.i.i.i.i15_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i7, i32 noundef %.sink.i.i.i.i14) #13
  br label %lec_arp_hold.exit16

lec_arp_hold.exit16:                              ; preds = %if.end15.sink.split.i.i.i.i15, %if.else.i.i.i.i13.lec_arp_hold.exit16_crit_edge
  %48 = ptrtoint ptr %ret_entry to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry1.0.i, ptr %ret_entry, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_resolve.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_resolve, %if.then59)) #13
          to label %out [label %if.then59], !srcloc !343

if.then59:                                        ; preds = %lec_arp_hold.exit16
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %status, align 1
  %conv61 = zext i8 %50 to i32
  %vcc62 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 4
  %51 = ptrtoint ptr %vcc62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vcc62, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_resolve.__UNIQUE_ID_ddebug596, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19, i32 noundef %conv61, ptr noundef %52) #13
  br label %out

if.else:                                          ; preds = %for.cond.i
  %call66 = tail call fastcc ptr @make_entry(ptr noundef %priv, ptr noundef %mac_to_find)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_resolve.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_resolve, %if.then79)) #13
          to label %do.end82 [label %if.then79], !srcloc !343

if.then79:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_resolve.__UNIQUE_ID_ddebug597, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.19) #13
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %if.else
  %tobool83.not = icmp eq ptr %call66, null
  br i1 %tobool83.not, label %if.then84, label %if.end86

if.then84:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #15
  %mcast_vcc85 = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 6
  %53 = ptrtoint ptr %mcast_vcc85 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mcast_vcc85, align 4
  br label %out

if.end86:                                         ; preds = %do.end82
  %arrayidx.i17 = getelementptr %struct.lec_arp_table, ptr %call66, i32 0, i32 2, i32 5
  %55 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i17, align 1
  %57 = and i8 %56, 15
  %and.i18 = zext i8 %57 to i32
  %arrayidx2.i = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %and.i18
  %58 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx2.i, align 4
  %60 = ptrtoint ptr %call66 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %59, ptr %call66, align 4
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %if.end86.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end86.hlist_add_head.exit.i_crit_edge:         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %59, i32 0, i32 1
  %61 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call66, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end86.hlist_add_head.exit.i_crit_edge
  %62 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call66, ptr %arrayidx2.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call66, i32 0, i32 1
  %63 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %arrayidx2.i, ptr %pprev34.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_add.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_resolve, %if.then.i19)) #13
          to label %lec_arp_add.exit [label %if.then.i19], !srcloc !343

if.then.i19:                                      ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %mac_addr.i = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_add.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, ptr noundef %mac_addr.i) #13
  br label %lec_arp_add.exit

lec_arp_add.exit:                                 ; preds = %if.then.i19, %hlist_add_head.exit.i
  %packets_flooded87 = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 13
  %64 = ptrtoint ptr %packets_flooded87 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %packets_flooded87, align 4
  %status88 = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 11
  %65 = ptrtoint ptr %status88 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %status88, align 1
  %no_tries89 = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 10
  %66 = ptrtoint ptr %no_tries89 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %no_tries89, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %timestamp = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 9
  %68 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %timestamp, align 4
  %last_used90 = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 8
  %69 = ptrtoint ptr %last_used90 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %67, ptr %last_used90, align 4
  %is_rdesc91 = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 3
  %70 = ptrtoint ptr %is_rdesc91 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %is_rdesc91, align 4
  %call97 = tail call fastcc i32 @send_to_lecd(ptr noundef %priv, i32 noundef 11, ptr noundef %mac_to_find, ptr noundef null, ptr noundef null)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %71, 100
  %timer = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 15
  %expires = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 15, i32 1
  %72 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add, ptr %expires, align 4
  %function = getelementptr inbounds %struct.lec_arp_table, ptr %call66, i32 0, i32 15, i32 2
  %73 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @lec_arp_expire_arp, ptr %function, align 4
  tail call void @add_timer(ptr noundef %timer) #13
  %mcast_vcc101 = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 6
  %74 = ptrtoint ptr %mcast_vcc101 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mcast_vcc101, align 4
  br label %out

out:                                              ; preds = %lec_arp_add.exit, %if.then84, %if.then59, %lec_arp_hold.exit16, %do.end44, %lec_arp_hold.exit
  %found.0 = phi ptr [ %37, %lec_arp_hold.exit ], [ %45, %do.end44 ], [ %75, %lec_arp_add.exit ], [ %54, %if.then84 ], [ null, %if.then59 ], [ null, %lec_arp_hold.exit16 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call9) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then3, %sw.bb
  %retval.0 = phi ptr [ %found.0, %out ], [ %15, %if.then3 ], [ %7, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lec_arp_put(ptr noundef %entry1) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %usage = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 20
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !338

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef %entry1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @make_entry(ptr noundef %priv, ptr nocapture noundef readonly %mac_addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 196) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mac_addr1 = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_addr, align 4
  %3 = ptrtoint ptr %mac_addr1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mac_addr1, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pprev.i, align 4
  %timer = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 15
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @lec_arp_expire_arp, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @make_entry.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_used, align 8
  %priv2 = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %priv, ptr %priv2, align 4
  %tx_wait = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 19
  %lock.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 19, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %12 = ptrtoint ptr %tx_wait to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tx_wait, ptr %tx_wait, align 8
  %prev.i.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 19, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tx_wait, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i, align 8
  %usage = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #13
  %15 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %usage, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_to_lecd(ptr noundef readonly %priv, i32 noundef %type, ptr noundef readonly %mac_addr, ptr noundef readonly %atm_addr, ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %lecd = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lecd, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call ptr @__alloc_skb(i32 noundef 52, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 52, ptr %len, align 4
  %data5 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %3 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data5, align 4
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 48)
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %4, align 4
  %cmp.not = icmp eq ptr %data, null
  br i1 %cmp.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len8, align 4
  %sizeoftlvs = getelementptr inbounds %struct.atmlec_msg, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %sizeoftlvs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sizeoftlvs, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %mac_addr, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %content = getelementptr inbounds %struct.atmlec_msg, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac_addr, align 4
  %13 = ptrtoint ptr %content to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %content, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.atmlec_msg, ptr %4, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i, align 2
  br label %if.end14

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %targetless_le_arp = getelementptr inbounds %struct.atmlec_msg, ptr %4, i32 0, i32 2, i32 0, i32 8
  %17 = ptrtoint ptr %targetless_le_arp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %targetless_le_arp, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %tobool15.not = icmp eq ptr %atm_addr, null
  br i1 %tobool15.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %content17 = getelementptr inbounds %struct.atmlec_msg, ptr %4, i32 0, i32 2
  %atm_addr18 = getelementptr inbounds %struct.anon.157, ptr %content17, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %atm_addr18, ptr %atm_addr, i32 20)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  %19 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lecd, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %21 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %22, ptr elementtype(i32) %sk_backlog.i) #13, !srcloc !344
  %24 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lecd, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %25, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %call.i) #13
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %25, i32 0, i32 77
  %26 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk_data_ready, align 8
  tail call void %27(ptr noundef %25) #13
  br i1 %cmp.not, label %if.end19.cleanup_crit_edge, label %do.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_to_lecd.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_to_lecd, %if.then29)) #13
          to label %do.end [label %if.then29], !srcloc !343

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %len30 = getelementptr inbounds %struct.sk_buff, ptr %data, i32 0, i32 6
  %28 = ptrtoint ptr %len30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len30, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_to_lecd.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %29) #13
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  %30 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lecd, align 4
  %truesize33 = getelementptr inbounds %struct.sk_buff, ptr %data, i32 0, i32 20
  %32 = ptrtoint ptr %truesize33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %truesize33, align 8
  %sk_backlog.i64 = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 9
  %call.i.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i64, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i64, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i64, ptr %sk_backlog.i64, i32 %33, ptr elementtype(i32) %sk_backlog.i64) #13, !srcloc !344
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %data) #13
  %35 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk_data_ready, align 8
  tail call void %36(ptr noundef %25) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lec_arp_expire_arp(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_expire_arp.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_expire_arp, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_expire_arp.__UNIQUE_ID_ddebug590, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr i8, ptr %t, i32 -11
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then6, label %do.end.if.end24_crit_edge

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then6:                                         ; preds = %do.end
  %no_tries = getelementptr i8, ptr %t, i32 -12
  %2 = ptrtoint ptr %no_tries to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_tries, align 4
  %priv = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %max_retry_count = getelementptr inbounds %struct.lec_priv, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %max_retry_count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_retry_count, align 4
  %8 = zext i8 %3 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp9.not = icmp ult i16 %7, %8
  br i1 %cmp9.not, label %if.then6.if.end22_crit_edge, label %if.then11

if.then6.if.end22_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %is_rdesc = getelementptr i8, ptr %t, i32 -40
  %9 = ptrtoint ptr %is_rdesc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %is_rdesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  %mac_addr17 = getelementptr i8, ptr %t, i32 -48
  %. = select i1 %tobool12.not, i32 11, i32 12
  %call19 = tail call fastcc i32 @send_to_lecd(ptr noundef %5, i32 noundef %., ptr noundef %mac_addr17, ptr noundef null, ptr noundef null)
  %11 = ptrtoint ptr %no_tries to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %no_tries, align 4
  %inc = add i8 %12, 1
  store i8 %inc, ptr %no_tries, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then11, %if.then6.if.end22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 100
  %call23 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #13
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %do.end.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lec_arp_check_expire(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_check_expire.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_check_expire, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_check_expire.__UNIQUE_ID_ddebug594, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, ptr noundef %add.ptr) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %lec_arp_lock = getelementptr i8, ptr %work, i32 -52
  %lec_arp_tables = getelementptr i8, ptr %work, i32 -124
  br label %restart

restart:                                          ; preds = %restart.backedge, %do.end
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %restart
  %i.075 = phi i32 [ 0, %restart ], [ %inc, %for.inc45.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %lec_arp_tables, i32 0, i32 %i.075
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %land.rhs.for.cond21_crit_edge, %for.body
  %entry1.0 = phi ptr [ %2, %for.body ], [ %4, %land.rhs.for.cond21_crit_edge ]
  %tobool22.not = icmp eq ptr %entry1.0, null
  br i1 %tobool22.not, label %for.inc45, label %land.rhs

land.rhs:                                         ; preds = %for.cond21
  %3 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.0, align 4
  %call28 = tail call fastcc zeroext i1 @__lec_arp_check_expire(ptr noundef nonnull %entry1.0, i32 noundef %0, ptr noundef %add.ptr)
  br i1 %call28, label %if.then29, label %land.rhs.for.cond21_crit_edge

land.rhs.for.cond21_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond21

if.then29:                                        ; preds = %land.rhs
  %vcc30 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 4
  %5 = ptrtoint ptr %vcc30 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vcc30, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call9) #13
  %tx_wait = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 19
  %call3276 = tail call ptr @skb_dequeue(ptr noundef %tx_wait) #13
  %tobool33.not77 = icmp eq ptr %call3276, null
  br i1 %tobool33.not77, label %if.then29.while.end_crit_edge, label %while.body.lr.ph

if.then29.while.end_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then29
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 23
  %atm_options.i.i = getelementptr inbounds %struct.atm_vcc, ptr %6, i32 0, i32 5
  %send.i = getelementptr inbounds %struct.atm_vcc, ptr %6, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %lec_send.exit.while.body_crit_edge, %while.body.lr.ph
  %call3278 = phi ptr [ %call3276, %while.body.lr.ph ], [ %call32, %lec_send.exit.while.body_crit_edge ]
  %7 = getelementptr inbounds %struct.anon.51, ptr %call3278, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call3278, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %cb.i, align 8
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3278, i32 0, i32 20
  %11 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %truesize.i.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i.i, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i.i, ptr %sk_wmem_alloc.i.i, i32 %12, ptr elementtype(i32) %sk_wmem_alloc.i.i) #13, !srcloc !346
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %while.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !345

while.body.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, %12
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.atm_account_tx.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !338

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.atm_account_tx.exit.i_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %atm_account_tx.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %while.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %while.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i.i, i32 noundef %.sink.i.i.i.i) #13
  br label %atm_account_tx.exit.i

atm_account_tx.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.atm_account_tx.exit.i_crit_edge
  %15 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %truesize.i.i, align 8
  %acct_truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3278, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %acct_truesize.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %acct_truesize.i.i, align 8
  %18 = ptrtoint ptr %atm_options.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %atm_options.i.i, align 8
  %atm_options4.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3278, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %atm_options4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %atm_options4.i.i, align 4
  %21 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send.i, align 4
  %call.i = tail call i32 %22(ptr noundef %6, ptr noundef nonnull %call3278) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %atm_account_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 7
  br label %lec_send.exit

if.end.i:                                         ; preds = %atm_account_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 1
  %23 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_packets.i, align 4
  %inc3.i = add i32 %24, 1
  store i32 %inc3.i, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call3278, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 3
  br label %lec_send.exit

lec_send.exit:                                    ; preds = %if.end.i, %if.then.i
  %tx_bytes.sink15.i = phi ptr [ %tx_bytes.i, %if.end.i ], [ %tx_dropped.i, %if.then.i ]
  %.sink14.i = phi i32 [ %26, %if.end.i ], [ 1, %if.then.i ]
  %27 = ptrtoint ptr %tx_bytes.sink15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_bytes.sink15.i, align 4
  %add.i = add i32 %28, %.sink14.i
  store i32 %add.i, ptr %tx_bytes.sink15.i, align 4
  %call32 = tail call ptr @skb_dequeue(ptr noundef %tx_wait) #13
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %lec_send.exit.while.end_crit_edge, label %lec_send.exit.while.body_crit_edge

lec_send.exit.while.body_crit_edge:               ; preds = %lec_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

lec_send.exit.while.end_crit_edge:                ; preds = %lec_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %lec_send.exit.while.end_crit_edge, %if.then29.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 8
  %30 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %last_used, align 4
  %status = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 11
  %31 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 5, ptr %status, align 1
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 20
  %call.i.i.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i71, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i70 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i70, label %if.end5.i.i.i.i.restart.backedge_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.restart.backedge_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart.backedge

restart.backedge:                                 ; preds = %if.then.i71, %if.then10.i.i.i.i, %if.end5.i.i.i.i.restart.backedge_crit_edge
  br label %restart

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %restart.backedge

if.then.i71:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.0) #13
  br label %restart.backedge

for.inc45:                                        ; preds = %for.cond21
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end46, label %for.inc45.for.body_crit_edge

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end46:                                        ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call9) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %work, i32 noundef 300) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__lec_arp_check_expire(ptr noundef %entry1, i32 noundef %now, ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 12
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %topology_change = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 15
  %3 = ptrtoint ptr %topology_change to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %topology_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %forward_delay_time = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 14
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %aging_time = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %time_to_check.0.in = phi ptr [ %forward_delay_time, %if.then ], [ %aging_time, %if.else ]
  %5 = ptrtoint ptr %time_to_check.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %time_to_check.0 = load i32, ptr %time_to_check.0.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__lec_arp_check_expire.__UNIQUE_ID_ddebug592, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__lec_arp_check_expire, %if.then6)) #13
          to label %do.end [label %if.then6], !srcloc !343

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %last_used = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 8
  %6 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_used, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__lec_arp_check_expire.__UNIQUE_ID_ddebug592, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %now, i32 noundef %7, i32 noundef %time_to_check.0) #13
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %last_used8 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 8
  %8 = ptrtoint ptr %last_used8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_used8, align 4
  %add = sub i32 %time_to_check.0, %now
  %sub = add i32 %add, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true10, label %do.end.if.else37_crit_edge

do.end.if.else37_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else37

land.lhs.true10:                                  ; preds = %do.end
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not = icmp eq i16 %12, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %land.lhs.true10.if.else37_crit_edge

land.lhs.true10.if.else37_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else37

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %mac_addr = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 2
  %13 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mac_addr, align 4
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  br i1 %tobool18.not, label %do.body20, label %land.lhs.true15.if.else37_crit_edge

land.lhs.true15.if.else37_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else37

do.body20:                                        ; preds = %land.lhs.true15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__lec_arp_check_expire.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__lec_arp_check_expire, %if.then32)) #13
          to label %do.end35 [label %if.then32], !srcloc !343

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__lec_arp_check_expire.__UNIQUE_ID_ddebug593, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.50) #13
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.body20
  tail call fastcc void @lec_arp_remove(ptr noundef %priv, ptr noundef %entry1)
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 20
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef %entry1) #13
  br label %cleanup

if.else37:                                        ; preds = %land.lhs.true15.if.else37_crit_edge, %land.lhs.true10.if.else37_crit_edge, %do.end.if.else37_crit_edge
  %status = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 11
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %status, align 1
  %.off = add i8 %18, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true45, label %if.else37.if.end61_crit_edge

if.else37.if.end61_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true45:                                  ; preds = %if.else37
  %timestamp = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 9
  %19 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timestamp, align 4
  %max_unknown_frame_time = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 10
  %21 = ptrtoint ptr %max_unknown_frame_time to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_unknown_frame_time, align 4
  %23 = add i32 %20, %22
  %sub47 = sub i32 %now, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub47)
  %cmp48 = icmp sgt i32 %sub47, -1
  br i1 %cmp48, label %if.then50, label %land.lhs.true45.if.end61thread-pre-split_crit_edge

land.lhs.true45.if.end61thread-pre-split_crit_edge: ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61thread-pre-split

if.then50:                                        ; preds = %land.lhs.true45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %timestamp, align 4
  %packets_flooded = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 13
  %26 = ptrtoint ptr %packets_flooded to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %packets_flooded, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp54 = icmp eq i8 %18, 2
  br i1 %cmp54, label %if.then56, label %if.then50.if.end61thread-pre-split_crit_edge

if.then50.if.end61thread-pre-split_crit_edge:     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61thread-pre-split

if.then56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  %mac_addr57 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 2
  %atm_addr = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 1
  %call59 = tail call fastcc i32 @send_to_lecd(ptr noundef %priv, i32 noundef 2, ptr noundef %mac_addr57, ptr noundef %atm_addr, ptr noundef null)
  br label %if.end61thread-pre-split

if.end61thread-pre-split:                         ; preds = %if.then56, %if.then50.if.end61thread-pre-split_crit_edge, %land.lhs.true45.if.end61thread-pre-split_crit_edge
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr = load i8, ptr %status, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.end61thread-pre-split, %if.else37.if.end61_crit_edge
  %28 = phi i8 [ %.pr, %if.end61thread-pre-split ], [ %18, %if.else37.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp64 = icmp eq i8 %28, 4
  br i1 %cmp64, label %land.lhs.true66, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true66:                                  ; preds = %if.end61
  %timestamp67 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 9
  %29 = ptrtoint ptr %timestamp67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timestamp67, align 4
  %path_switching_delay = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 18
  %31 = ptrtoint ptr %path_switching_delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %path_switching_delay, align 4
  %33 = add i32 %30, %32
  %sub69 = sub i32 %now, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub69)
  %cmp70 = icmp sgt i32 %sub69, -1
  br i1 %cmp70, label %if.then72, label %land.lhs.true66.cleanup_crit_edge

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then72:                                        ; preds = %land.lhs.true66
  %usage.i105 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 20
  %call.i.i.i.i.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i105, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usage.i105, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i105, ptr %usage.i105, i32 1, ptr elementtype(i32) %usage.i105) #13, !srcloc !346
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then72.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !345

if.then72.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then72
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i107 = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i107, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !338

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then72.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then72.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i105, i32 noundef %.sink.i.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %land.lhs.true66.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end61.cleanup_crit_edge ], [ false, %land.lhs.true66.cleanup_crit_edge ], [ false, %if.end5.i.i.i.i.cleanup_crit_edge ], [ false, %if.then10.i.i.i.i ], [ false, %if.then.i ], [ true, %if.else.i.i.i.i.cleanup_crit_edge ], [ true, %if.end15.sink.split.i.i.i.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lec_arp_remove(ptr nocapture noundef readonly %priv, ptr noundef %to_remove) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %to_remove, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %to_remove to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %to_remove, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %to_remove, i32 0, i32 1
  %2 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev2.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %1, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end.hlist_del.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end.hlist_del.exit_crit_edge
  %6 = ptrtoint ptr %to_remove to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %to_remove, align 4
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %timer = getelementptr inbounds %struct.lec_arp_table, ptr %to_remove, i32 0, i32 15
  %call = tail call i32 @del_timer(ptr noundef %timer) #13
  %status = getelementptr inbounds %struct.lec_arp_table, ptr %to_remove, i32 0, i32 11
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp = icmp ugt i8 %9, 3
  br i1 %cmp, label %for.cond.preheader, label %hlist_del.exit.if.end35_crit_edge

hlist_del.exit.if.end35_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.cond.preheader:                               ; preds = %hlist_del.exit
  %atm_addr = getelementptr inbounds %struct.lec_arp_table, ptr %to_remove, i32 0, i32 1
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc30.thread.for.body.outer_crit_edge, %for.cond.preheader
  %i.04.ph = phi i32 [ %inc6, %for.inc30.thread.for.body.outer_crit_edge ], [ 0, %for.cond.preheader ]
  %tobool32.not = phi i1 [ true, %for.inc30.thread.for.body.outer_crit_edge ], [ false, %for.cond.preheader ]
  br label %for.body

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %for.body.outer
  %i.04 = phi i32 [ %inc, %for.inc30.for.body_crit_edge ], [ %i.04.ph, %for.body.outer ]
  %arrayidx = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %i.04
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10.for.cond8_crit_edge, %for.body
  %entry1.0.in = phi ptr [ %arrayidx, %for.body ], [ %entry1.0, %for.body10.for.cond8_crit_edge ]
  %10 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %tobool9.not = icmp eq ptr %entry1.0, null
  br i1 %tobool9.not, label %for.inc30, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %atm_addr11 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %atm_addr, ptr noundef dereferenceable(20) %atm_addr11, i32 20) #19
  %cmp14 = icmp eq i32 %bcmp, 0
  br i1 %cmp14, label %for.inc30.thread, label %for.body10.for.cond8_crit_edge

for.body10.for.cond8_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond8

for.inc30:                                        ; preds = %for.cond8
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end31, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc30.thread:                                 ; preds = %for.body10
  %inc6 = add nuw nsw i32 %i.04, 1
  %exitcond.not7 = icmp eq i32 %inc6, 16
  br i1 %exitcond.not7, label %for.inc30.thread.if.end35_crit_edge, label %for.inc30.thread.for.body.outer_crit_edge

for.inc30.thread.for.body.outer_crit_edge:        ; preds = %for.inc30.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.outer

for.inc30.thread.if.end35_crit_edge:              ; preds = %for.inc30.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.end31:                                        ; preds = %for.inc30
  br i1 %tobool32.not, label %for.end31.if.end35_crit_edge, label %if.then33

for.end31.if.end35_crit_edge:                     ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then33:                                        ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @lec_arp_clear_vccs(ptr noundef nonnull %to_remove)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end31.if.end35_crit_edge, %for.inc30.thread.if.end35_crit_edge, %hlist_del.exit.if.end35_crit_edge
  %tx_wait = getelementptr inbounds %struct.lec_arp_table, ptr %to_remove, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %tx_wait) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_remove.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_remove, %if.then41)) #13
          to label %cleanup [label %if.then41], !srcloc !343

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %mac_addr = getelementptr inbounds %struct.lec_arp_table, ptr %to_remove, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_remove.__UNIQUE_ID_ddebug588, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, ptr noundef %mac_addr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end35, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lec_arp_clear_vccs(ptr nocapture noundef %entry1) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vcc = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 4
  %0 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %entry
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %user_back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_back, align 8
  %proto_data = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %proto_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proto_data, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pop to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pop, align 4
  %xoff = getelementptr inbounds %struct.lec_vcc_priv, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %xoff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %12) #13
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef %3) #13
  %13 = ptrtoint ptr %user_back to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %user_back, align 8
  %old_push = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 6
  %14 = ptrtoint ptr %old_push to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %old_push, align 4
  %push = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %push to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %push, align 8
  tail call void @vcc_release_async(ptr noundef nonnull %1, i32 noundef -32) #13
  %17 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vcc, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %recv_vcc = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 5
  %18 = ptrtoint ptr %recv_vcc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recv_vcc, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.end8.if.end20_crit_edge, label %if.then10

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %user_back14 = getelementptr inbounds %struct.atm_vcc, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %user_back14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_back14, align 8
  tail call void @kfree(ptr noundef %21) #13
  %22 = ptrtoint ptr %user_back14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %user_back14, align 8
  %old_recv_push = getelementptr inbounds %struct.lec_arp_table, ptr %entry1, i32 0, i32 7
  %23 = ptrtoint ptr %old_recv_push to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %old_recv_push, align 4
  %25 = ptrtoint ptr %recv_vcc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %recv_vcc, align 4
  %push17 = getelementptr inbounds %struct.atm_vcc, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %push17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %push17, align 8
  %28 = load ptr, ptr %recv_vcc, align 4
  tail call void @vcc_release_async(ptr noundef %28, i32 noundef -32) #13
  %29 = ptrtoint ptr %recv_vcc to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %recv_vcc, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %if.end8.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_release_async(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lec_atm_close(ptr noundef %vcc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %proto_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 15
  %0 = ptrtoint ptr %proto_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %lecd = getelementptr i8, ptr %1, i32 2432
  %2 = ptrtoint ptr %lecd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %lecd, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %lec_arp_work.i = getelementptr i8, ptr %1, i32 2436
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %lec_arp_work.i) #13
  %lec_arp_lock.i = getelementptr i8, ptr %1, i32 2384
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock.i) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %entry
  %i.0238.i = phi i32 [ 0, %entry ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.lec_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %i.0238.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not236.i = icmp eq ptr %6, null
  br i1 %tobool12.not236.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

land.rhs.i:                                       ; preds = %lec_arp_put.exit.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %entry1.0237.i = phi ptr [ %8, %lec_arp_put.exit.i.land.rhs.i_crit_edge ], [ %6, %for.body.i.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %entry1.0237.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry1.0237.i, align 4
  tail call fastcc void @lec_arp_remove(ptr noundef %add.ptr.i, ptr noundef nonnull %entry1.0237.i) #13
  %usage.i.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0237.i, i32 0, i32 20
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lec_arp_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !338

if.end5.i.i.i.i.i.lec_arp_put.exit.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #13
  br label %lec_arp_put.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.0237.i) #13
  br label %lec_arp_put.exit.i

lec_arp_put.exit.i:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lec_arp_put.exit.i_crit_edge
  %tobool12.not.i = icmp eq ptr %8, null
  br i1 %tobool12.not.i, label %lec_arp_put.exit.i.for.end.i_crit_edge, label %lec_arp_put.exit.i.land.rhs.i_crit_edge

lec_arp_put.exit.i.land.rhs.i_crit_edge:          ; preds = %lec_arp_put.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

lec_arp_put.exit.i.for.end.i_crit_edge:           ; preds = %lec_arp_put.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %lec_arp_put.exit.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0238.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end33.i, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end33.i:                                      ; preds = %for.end.i
  %lec_arp_empty_ones.i = getelementptr i8, ptr %1, i32 2308
  %11 = ptrtoint ptr %lec_arp_empty_ones.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lec_arp_empty_ones.i, align 4
  %tobool46.not239.i = icmp eq ptr %12, null
  br i1 %tobool46.not239.i, label %for.end33.i.for.end67.i_crit_edge, label %for.end33.i.land.rhs47.i_crit_edge

for.end33.i.land.rhs47.i_crit_edge:               ; preds = %for.end33.i
  br label %land.rhs47.i

for.end33.i.for.end67.i_crit_edge:                ; preds = %for.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end67.i

land.rhs47.i:                                     ; preds = %lec_arp_put.exit207.i.land.rhs47.i_crit_edge, %for.end33.i.land.rhs47.i_crit_edge
  %entry1.1240.i = phi ptr [ %14, %lec_arp_put.exit207.i.land.rhs47.i_crit_edge ], [ %12, %for.end33.i.land.rhs47.i_crit_edge ]
  %13 = ptrtoint ptr %entry1.1240.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry1.1240.i, align 4
  %timer.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.1240.i, i32 0, i32 15
  %call54.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #13
  tail call fastcc void @lec_arp_clear_vccs(ptr noundef nonnull %entry1.1240.i) #13
  %15 = ptrtoint ptr %entry1.1240.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry1.1240.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.1240.i, i32 0, i32 1
  %17 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev2.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %18, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %land.rhs47.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

land.rhs47.i.hlist_del.exit.i_crit_edge:          ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %land.rhs47.i.hlist_del.exit.i_crit_edge
  %21 = ptrtoint ptr %entry1.1240.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.1240.i, align 4
  %22 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %usage.i199.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.1240.i, i32 0, i32 20
  %call.i.i.i.i.i.i200.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i199.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i199.i, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i199.i, ptr %usage.i199.i, i32 1, ptr elementtype(i32) %usage.i199.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i201.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i201.i)
  %cmp.i.i.i.i202.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i201.i, 1
  br i1 %cmp.i.i.i.i202.i, label %if.then.i206.i, label %if.end5.i.i.i.i204.i

if.end5.i.i.i.i204.i:                             ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i201.i)
  %.not.i.i.i.i203.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i201.i, 0
  br i1 %.not.i.i.i.i203.i, label %if.end5.i.i.i.i204.i.lec_arp_put.exit207.i_crit_edge, label %if.then10.i.i.i.i205.i, !prof !338

if.end5.i.i.i.i204.i.lec_arp_put.exit207.i_crit_edge: ; preds = %if.end5.i.i.i.i204.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_put.exit207.i

if.then10.i.i.i.i205.i:                           ; preds = %if.end5.i.i.i.i204.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i199.i, i32 noundef 3) #13
  br label %lec_arp_put.exit207.i

if.then.i206.i:                                   ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.1240.i) #13
  br label %lec_arp_put.exit207.i

lec_arp_put.exit207.i:                            ; preds = %if.then.i206.i, %if.then10.i.i.i.i205.i, %if.end5.i.i.i.i204.i.lec_arp_put.exit207.i_crit_edge
  %tobool46.not.i = icmp eq ptr %14, null
  br i1 %tobool46.not.i, label %lec_arp_put.exit207.i.for.end67.i_crit_edge, label %lec_arp_put.exit207.i.land.rhs47.i_crit_edge

lec_arp_put.exit207.i.land.rhs47.i_crit_edge:     ; preds = %lec_arp_put.exit207.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs47.i

lec_arp_put.exit207.i.for.end67.i_crit_edge:      ; preds = %lec_arp_put.exit207.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end67.i

for.end67.i:                                      ; preds = %lec_arp_put.exit207.i.for.end67.i_crit_edge, %for.end33.i.for.end67.i_crit_edge
  %24 = ptrtoint ptr %lec_arp_empty_ones.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %lec_arp_empty_ones.i, align 4
  %lec_no_forward.i = getelementptr i8, ptr %1, i32 2376
  %25 = ptrtoint ptr %lec_no_forward.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lec_no_forward.i, align 4
  %tobool82.not241.i = icmp eq ptr %26, null
  br i1 %tobool82.not241.i, label %for.end67.i.for.end104.i_crit_edge, label %for.end67.i.land.rhs83.i_crit_edge

for.end67.i.land.rhs83.i_crit_edge:               ; preds = %for.end67.i
  br label %land.rhs83.i

for.end67.i.for.end104.i_crit_edge:               ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end104.i

land.rhs83.i:                                     ; preds = %lec_arp_put.exit221.i.land.rhs83.i_crit_edge, %for.end67.i.land.rhs83.i_crit_edge
  %entry1.2242.i = phi ptr [ %28, %lec_arp_put.exit221.i.land.rhs83.i_crit_edge ], [ %26, %for.end67.i.land.rhs83.i_crit_edge ]
  %27 = ptrtoint ptr %entry1.2242.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %entry1.2242.i, align 4
  %timer90.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2242.i, i32 0, i32 15
  %call91.i = tail call i32 @del_timer_sync(ptr noundef %timer90.i) #13
  tail call fastcc void @lec_arp_clear_vccs(ptr noundef nonnull %entry1.2242.i) #13
  %29 = ptrtoint ptr %entry1.2242.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %entry1.2242.i, align 4
  %pprev2.i.i208.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.2242.i, i32 0, i32 1
  %31 = ptrtoint ptr %pprev2.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pprev2.i.i208.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %30, ptr %32, align 4
  %tobool.not.i.i209.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i209.i, label %land.rhs83.i.hlist_del.exit212.i_crit_edge, label %do.body13.i.i211.i

land.rhs83.i.hlist_del.exit212.i_crit_edge:       ; preds = %land.rhs83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit212.i

do.body13.i.i211.i:                               ; preds = %land.rhs83.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i210.i = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %pprev14.i.i210.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %pprev14.i.i210.i, align 4
  br label %hlist_del.exit212.i

hlist_del.exit212.i:                              ; preds = %do.body13.i.i211.i, %land.rhs83.i.hlist_del.exit212.i_crit_edge
  %35 = ptrtoint ptr %entry1.2242.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.2242.i, align 4
  %36 = ptrtoint ptr %pprev2.i.i208.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i208.i, align 4
  %usage.i213.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2242.i, i32 0, i32 20
  %call.i.i.i.i.i.i214.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i213.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i213.i, i32 1, i32 3, i32 1) #13
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i213.i, ptr %usage.i213.i, i32 1, ptr elementtype(i32) %usage.i213.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i215.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i215.i)
  %cmp.i.i.i.i216.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i215.i, 1
  br i1 %cmp.i.i.i.i216.i, label %if.then.i220.i, label %if.end5.i.i.i.i218.i

if.end5.i.i.i.i218.i:                             ; preds = %hlist_del.exit212.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i215.i)
  %.not.i.i.i.i217.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i215.i, 0
  br i1 %.not.i.i.i.i217.i, label %if.end5.i.i.i.i218.i.lec_arp_put.exit221.i_crit_edge, label %if.then10.i.i.i.i219.i, !prof !338

if.end5.i.i.i.i218.i.lec_arp_put.exit221.i_crit_edge: ; preds = %if.end5.i.i.i.i218.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_put.exit221.i

if.then10.i.i.i.i219.i:                           ; preds = %if.end5.i.i.i.i218.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i213.i, i32 noundef 3) #13
  br label %lec_arp_put.exit221.i

if.then.i220.i:                                   ; preds = %hlist_del.exit212.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.2242.i) #13
  br label %lec_arp_put.exit221.i

lec_arp_put.exit221.i:                            ; preds = %if.then.i220.i, %if.then10.i.i.i.i219.i, %if.end5.i.i.i.i218.i.lec_arp_put.exit221.i_crit_edge
  %tobool82.not.i = icmp eq ptr %28, null
  br i1 %tobool82.not.i, label %lec_arp_put.exit221.i.for.end104.i_crit_edge, label %lec_arp_put.exit221.i.land.rhs83.i_crit_edge

lec_arp_put.exit221.i.land.rhs83.i_crit_edge:     ; preds = %lec_arp_put.exit221.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs83.i

lec_arp_put.exit221.i.for.end104.i_crit_edge:     ; preds = %lec_arp_put.exit221.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end104.i

for.end104.i:                                     ; preds = %lec_arp_put.exit221.i.for.end104.i_crit_edge, %for.end67.i.for.end104.i_crit_edge
  %38 = ptrtoint ptr %lec_no_forward.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %lec_no_forward.i, align 4
  %mcast_fwds.i = getelementptr i8, ptr %1, i32 2380
  %39 = ptrtoint ptr %mcast_fwds.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mcast_fwds.i, align 4
  %tobool119.not243.i = icmp eq ptr %40, null
  br i1 %tobool119.not243.i, label %for.end104.i.lec_arp_destroy.exit_crit_edge, label %for.end104.i.land.rhs120.i_crit_edge

for.end104.i.land.rhs120.i_crit_edge:             ; preds = %for.end104.i
  br label %land.rhs120.i

for.end104.i.lec_arp_destroy.exit_crit_edge:      ; preds = %for.end104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_destroy.exit

land.rhs120.i:                                    ; preds = %lec_arp_put.exit235.i.land.rhs120.i_crit_edge, %for.end104.i.land.rhs120.i_crit_edge
  %entry1.3244.i = phi ptr [ %42, %lec_arp_put.exit235.i.land.rhs120.i_crit_edge ], [ %40, %for.end104.i.land.rhs120.i_crit_edge ]
  %41 = ptrtoint ptr %entry1.3244.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %entry1.3244.i, align 4
  tail call fastcc void @lec_arp_clear_vccs(ptr noundef nonnull %entry1.3244.i) #13
  %43 = ptrtoint ptr %entry1.3244.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %entry1.3244.i, align 4
  %pprev2.i.i222.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.3244.i, i32 0, i32 1
  %45 = ptrtoint ptr %pprev2.i.i222.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pprev2.i.i222.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %44, ptr %46, align 4
  %tobool.not.i.i223.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i223.i, label %land.rhs120.i.hlist_del.exit226.i_crit_edge, label %do.body13.i.i225.i

land.rhs120.i.hlist_del.exit226.i_crit_edge:      ; preds = %land.rhs120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit226.i

do.body13.i.i225.i:                               ; preds = %land.rhs120.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i224.i = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %pprev14.i.i224.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %pprev14.i.i224.i, align 4
  br label %hlist_del.exit226.i

hlist_del.exit226.i:                              ; preds = %do.body13.i.i225.i, %land.rhs120.i.hlist_del.exit226.i_crit_edge
  %49 = ptrtoint ptr %entry1.3244.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.3244.i, align 4
  %50 = ptrtoint ptr %pprev2.i.i222.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i222.i, align 4
  %usage.i227.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.3244.i, i32 0, i32 20
  %call.i.i.i.i.i.i228.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i227.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i227.i, i32 1, i32 3, i32 1) #13
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i227.i, ptr %usage.i227.i, i32 1, ptr elementtype(i32) %usage.i227.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i229.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i229.i)
  %cmp.i.i.i.i230.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i229.i, 1
  br i1 %cmp.i.i.i.i230.i, label %if.then.i234.i, label %if.end5.i.i.i.i232.i

if.end5.i.i.i.i232.i:                             ; preds = %hlist_del.exit226.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i229.i)
  %.not.i.i.i.i231.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i229.i, 0
  br i1 %.not.i.i.i.i231.i, label %if.end5.i.i.i.i232.i.lec_arp_put.exit235.i_crit_edge, label %if.then10.i.i.i.i233.i, !prof !338

if.end5.i.i.i.i232.i.lec_arp_put.exit235.i_crit_edge: ; preds = %if.end5.i.i.i.i232.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_put.exit235.i

if.then10.i.i.i.i233.i:                           ; preds = %if.end5.i.i.i.i232.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i227.i, i32 noundef 3) #13
  br label %lec_arp_put.exit235.i

if.then.i234.i:                                   ; preds = %hlist_del.exit226.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.3244.i) #13
  br label %lec_arp_put.exit235.i

lec_arp_put.exit235.i:                            ; preds = %if.then.i234.i, %if.then10.i.i.i.i233.i, %if.end5.i.i.i.i232.i.lec_arp_put.exit235.i_crit_edge
  %tobool119.not.i = icmp eq ptr %42, null
  br i1 %tobool119.not.i, label %lec_arp_put.exit235.i.lec_arp_destroy.exit_crit_edge, label %lec_arp_put.exit235.i.land.rhs120.i_crit_edge

lec_arp_put.exit235.i.land.rhs120.i_crit_edge:    ; preds = %lec_arp_put.exit235.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs120.i

lec_arp_put.exit235.i.lec_arp_destroy.exit_crit_edge: ; preds = %lec_arp_put.exit235.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_destroy.exit

lec_arp_destroy.exit:                             ; preds = %lec_arp_put.exit235.i.lec_arp_destroy.exit_crit_edge, %for.end104.i.lec_arp_destroy.exit_crit_edge
  %52 = ptrtoint ptr %mcast_fwds.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %mcast_fwds.i, align 4
  %mcast_vcc.i = getelementptr i8, ptr %1, i32 2428
  %53 = ptrtoint ptr %mcast_vcc.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %mcast_vcc.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock.i, i32 noundef %call4.i) #13
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 8
  %54 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %55, %sk_receive_queue
  %tobool.not23 = icmp eq ptr %55, null
  %tobool.not = or i1 %cmp.i, %tobool.not23
  br i1 %tobool.not, label %lec_arp_destroy.exit.if.end_crit_edge, label %do.end

lec_arp_destroy.exit.if.end_crit_edge:            ; preds = %lec_arp_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %lec_arp_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %lec_arp_destroy.exit.if.end_crit_edge
  %call624 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool7.not25 = icmp eq ptr %call624, null
  br i1 %tobool7.not25, label %if.end.do.end10_crit_edge, label %while.body.lr.ph

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

while.body.lr.ph:                                 ; preds = %if.end
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call626 = phi ptr [ %call624, %while.body.lr.ph ], [ %call6, %while.body.while.body_crit_edge ]
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call626, i32 0, i32 20
  %56 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %truesize, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #13
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %57, ptr elementtype(i32) %sk_backlog.i) #13, !srcloc !350
  tail call void @consume_skb(ptr noundef nonnull %call626) #13
  %call6 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %while.body.do.end10_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.do.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end10:                                         ; preds = %while.body.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, ptr noundef %1) #16
  tail call void @module_put(ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lec_atm_send(ptr noundef %vcc, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %proto_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 15
  %0 = ptrtoint ptr %proto_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %2 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %truesize, align 8
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %3, ptr elementtype(i32) %sk_wmem_alloc) #13, !srcloc !348
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %3)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, %3
  br i1 %cmp.i.i, label %do.end, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %entry
  %sub.i.i = sub i32 %asmresult.i.i.i.i.i, %3
  %5 = or i32 %sub.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i, label %if.end5.i.i.if.end_crit_edge, label %if.then10.i.i, !prof !338

if.end5.i.i.if.end_crit_edge:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef 3) #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 351, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then10.i.i, %if.end5.i.i.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_atm_send.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_atm_send, %if.then34)) #13
          to label %do.end37 [label %if.then34], !srcloc !343

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_atm_send.__UNIQUE_ID_ddebug567, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, ptr noundef %1, i32 noundef %9) #13
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %if.end
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %11, label %do.end241 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb40
    i32 3, label %sw.bb41
    i32 4, label %sw.bb46
    i32 5, label %sw.bb49
    i32 7, label %do.body54
    i32 6, label %do.end37.sw.bb72_crit_edge
    i32 8, label %sw.bb123
    i32 9, label %sw.bb169
    i32 10, label %sw.bb175
    i32 14, label %do.body180
  ]

do.end37.sw.bb72_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb72

sw.bb:                                            ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %content = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %content, i32 noundef 6) #13
  br label %cleanup247

sw.bb40:                                          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @lec_atm_send.zero_addr, i32 noundef 6) #13
  br label %cleanup247

sw.bb41:                                          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %content42 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2
  %atm_addr = getelementptr inbounds %struct.anon.157, ptr %content42, i32 0, i32 1
  %flag = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 7
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flag, align 4
  tail call fastcc void @lec_addr_delete(ptr noundef %add.ptr.i, ptr noundef %atm_addr, i32 noundef %14)
  br label %cleanup247

sw.bb46:                                          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %flag48 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 7
  %15 = ptrtoint ptr %flag48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flag48, align 4
  %topology_change = getelementptr i8, ptr %1, i32 2560
  %17 = ptrtoint ptr %topology_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %topology_change, align 4
  br label %cleanup247

sw.bb49:                                          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %flag51 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 7
  %18 = ptrtoint ptr %flag51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flag51, align 4
  tail call fastcc void @lec_flush_complete(ptr noundef %add.ptr.i, i32 noundef %19)
  br label %cleanup247

do.body54:                                        ; preds = %do.end37
  %lec_arp_lock = getelementptr i8, ptr %1, i32 2384
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  %content62 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_find.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_atm_send, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !343

if.then.i:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_find.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %content62) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body54
  %arrayidx.i = getelementptr i8, ptr %content62, i32 5
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = and i8 %21, 15
  %and.i = zext i8 %22 to i32
  %arrayidx4.i = getelementptr %struct.lec_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %and.i
  %add.ptr.i.i = getelementptr %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %entry1.0.in.i = phi ptr [ %arrayidx4.i, %do.end.i ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %23 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %tobool8.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool8.not.i, label %for.cond.i.lec_arp_find.exit_crit_edge, label %for.body.i

for.cond.i.lec_arp_find.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_find.exit

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr9.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %content62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %content62, align 4
  %26 = ptrtoint ptr %mac_addr9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac_addr9.i, align 4
  %xor.i.i = xor i32 %27, %25
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %31, %29
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i347 = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i347, label %for.body.i.lec_arp_find.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i.lec_arp_find.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_find.exit

lec_arp_find.exit:                                ; preds = %for.body.i.lec_arp_find.exit_crit_edge, %for.cond.i.lec_arp_find.exit_crit_edge
  tail call fastcc void @lec_arp_remove(ptr noundef %add.ptr.i, ptr noundef %entry1.0.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call57) #13
  %no_source_le_narp = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 9
  %32 = ptrtoint ptr %no_source_le_narp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %no_source_le_narp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool69.not = icmp eq i32 %33, 0
  br i1 %tobool69.not, label %lec_arp_find.exit.sw.bb72_crit_edge, label %lec_arp_find.exit.cleanup247_crit_edge

lec_arp_find.exit.cleanup247_crit_edge:           ; preds = %lec_arp_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup247

lec_arp_find.exit.sw.bb72_crit_edge:              ; preds = %lec_arp_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb72

sw.bb72:                                          ; preds = %lec_arp_find.exit.sw.bb72_crit_edge, %do.end37.sw.bb72_crit_edge
  %content73 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2
  %atm_addr77 = getelementptr inbounds %struct.anon.157, ptr %content73, i32 0, i32 1
  %flag80 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 7
  %34 = ptrtoint ptr %flag80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flag80, align 4
  %targetless_le_arp = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 8
  %36 = ptrtoint ptr %targetless_le_arp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %targetless_le_arp, align 4
  tail call fastcc void @lec_arp_update(ptr noundef %add.ptr.i, ptr noundef %content73, ptr noundef %atm_addr77, i32 noundef %35, i32 noundef %37)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_atm_send.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_atm_send, %if.then94)) #13
          to label %do.end97 [label %if.then94], !srcloc !343

if.then94:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_atm_send.__UNIQUE_ID_ddebug568, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.64) #13
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %sw.bb72
  %sizeoftlvs = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 1
  %38 = ptrtoint ptr %sizeoftlvs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sizeoftlvs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp98.not = icmp eq i32 %39, 0
  br i1 %cmp98.not, label %do.end97.cleanup247_crit_edge, label %do.body101

do.end97.cleanup247_crit_edge:                    ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup247

do.body101:                                       ; preds = %do.end97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_atm_send.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_atm_send, %if.then113)) #13
          to label %do.end117 [label %if.then113], !srcloc !343

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %sizeoftlvs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sizeoftlvs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_atm_send.__UNIQUE_ID_ddebug569, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.64, i32 noundef %41) #13
  br label %do.end117

do.end117:                                        ; preds = %if.then113, %do.body101
  %42 = ptrtoint ptr %sizeoftlvs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sizeoftlvs, align 4
  %lane2_ops.i = getelementptr i8, ptr %1, i32 2592
  %44 = ptrtoint ptr %lane2_ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lane2_ops.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %do.end117.cleanup247_crit_edge, label %land.lhs.true.i

do.end117.cleanup247_crit_edge:                   ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup247

land.lhs.true.i:                                  ; preds = %do.end117
  %associate_indicator.i = getelementptr inbounds %struct.lane2_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %associate_indicator.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %associate_indicator.i, align 4
  %tobool2.not.i = icmp eq ptr %47, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup247_crit_edge, label %if.then.i348

land.lhs.true.i.cleanup247_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup247

if.then.i348:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %47(ptr noundef %1, ptr noundef %content73, ptr noundef %add.ptr, i32 noundef %43) #13
  br label %cleanup247

sw.bb123:                                         ; preds = %do.end37
  %content124 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2
  %48 = ptrtoint ptr %content124 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %content124, align 4
  %maximum_unknown_frame_count125 = getelementptr i8, ptr %1, i32 2536
  %50 = ptrtoint ptr %maximum_unknown_frame_count125 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %maximum_unknown_frame_count125, align 4
  %max_unknown_frame_time = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 1
  %51 = ptrtoint ptr %max_unknown_frame_time to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_unknown_frame_time, align 4
  %mul = mul i32 %52, 100
  %max_unknown_frame_time127 = getelementptr i8, ptr %1, i32 2540
  %53 = ptrtoint ptr %max_unknown_frame_time127 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul, ptr %max_unknown_frame_time127, align 4
  %max_retry_count = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 2
  %54 = ptrtoint ptr %max_retry_count to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %max_retry_count, align 4
  %max_retry_count129 = getelementptr i8, ptr %1, i32 2548
  %56 = ptrtoint ptr %max_retry_count129 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %max_retry_count129, align 4
  %aging_time = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 3
  %57 = ptrtoint ptr %aging_time to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %aging_time, align 4
  %mul131 = mul i32 %58, 100
  %aging_time132 = getelementptr i8, ptr %1, i32 2552
  %59 = ptrtoint ptr %aging_time132 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul131, ptr %aging_time132, align 4
  %forward_delay_time = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 4
  %60 = ptrtoint ptr %forward_delay_time to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %forward_delay_time, align 4
  %mul134 = mul i32 %61, 100
  %forward_delay_time135 = getelementptr i8, ptr %1, i32 2556
  %62 = ptrtoint ptr %forward_delay_time135 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul134, ptr %forward_delay_time135, align 4
  %arp_response_time = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 5
  %63 = ptrtoint ptr %arp_response_time to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arp_response_time, align 4
  %mul137 = mul i32 %64, 100
  %arp_response_time138 = getelementptr i8, ptr %1, i32 2564
  %65 = ptrtoint ptr %arp_response_time138 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul137, ptr %arp_response_time138, align 4
  %flush_timeout = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 6
  %66 = ptrtoint ptr %flush_timeout to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flush_timeout, align 4
  %mul140 = mul i32 %67, 100
  %flush_timeout141 = getelementptr i8, ptr %1, i32 2568
  %68 = ptrtoint ptr %flush_timeout141 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul140, ptr %flush_timeout141, align 4
  %path_switching_delay = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 7
  %69 = ptrtoint ptr %path_switching_delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %path_switching_delay, align 4
  %mul143 = mul i32 %70, 100
  %path_switching_delay144 = getelementptr i8, ptr %1, i32 2572
  %71 = ptrtoint ptr %path_switching_delay144 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul143, ptr %path_switching_delay144, align 4
  %lane_version = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 8
  %72 = ptrtoint ptr %lane_version to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lane_version, align 4
  %lane_version146 = getelementptr i8, ptr %1, i32 2584
  %74 = ptrtoint ptr %lane_version146 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %lane_version146, align 4
  %lane2_ops = getelementptr i8, ptr %1, i32 2592
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp148 = icmp sgt i32 %73, 1
  %spec.select = select i1 %cmp148, ptr @lane2_ops, ptr null
  %75 = ptrtoint ptr %lane2_ops to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %spec.select, ptr %lane2_ops, align 4
  tail call void @rtnl_lock() #13
  %mtu = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 9
  %76 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mtu, align 4
  %call154 = tail call i32 @dev_set_mtu(ptr noundef %1, i32 noundef %77) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %sw.bb123.if.end166_crit_edge, label %do.end159

sw.bb123.if.end166_crit_edge:                     ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end166

do.end159:                                        ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mtu, align 4
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.64, ptr noundef %1, i32 noundef %79) #16
  br label %if.end166

if.end166:                                        ; preds = %do.end159, %sw.bb123.if.end166_crit_edge
  tail call void @rtnl_unlock() #13
  %is_proxy = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 10
  %80 = ptrtoint ptr %is_proxy to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %is_proxy, align 4
  %is_proxy168 = getelementptr i8, ptr %1, i32 2596
  %82 = ptrtoint ptr %is_proxy168 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %is_proxy168, align 4
  br label %cleanup247

sw.bb169:                                         ; preds = %do.end37
  %content170 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2
  %atm_addr171 = getelementptr inbounds %struct.anon.157, ptr %content170, i32 0, i32 1
  %flag174 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 7
  %83 = ptrtoint ptr %flag174 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flag174, align 4
  %lec_arp_lock.i = getelementptr i8, ptr %1, i32 2384
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock.i) #13
  br label %for.body.i350

for.body.i350:                                    ; preds = %for.inc37.i.for.body.i350_crit_edge, %sw.bb169
  %i.057.i = phi i32 [ 0, %sw.bb169 ], [ %inc.i, %for.inc37.i.for.body.i350_crit_edge ]
  %arrayidx.i349 = getelementptr %struct.lec_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %i.057.i
  %85 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load4_noabort(i32 %85)
  %entry1.054.i = load ptr, ptr %arrayidx.i349, align 4
  %tobool11.not55.i = icmp eq ptr %entry1.054.i, null
  br i1 %tobool11.not55.i, label %for.body.i350.for.inc37.i_crit_edge, label %for.body.i350.for.body12.i_crit_edge

for.body.i350.for.body12.i_crit_edge:             ; preds = %for.body.i350
  br label %for.body12.i

for.body.i350.for.inc37.i_crit_edge:              ; preds = %for.body.i350
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc37.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body.i350.for.body12.i_crit_edge
  %entry1.056.i = phi ptr [ %entry1.0.i352, %for.inc.i.for.body12.i_crit_edge ], [ %entry1.054.i, %for.body.i350.for.body12.i_crit_edge ]
  %atm_addr13.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.056.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(20) %atm_addr171, ptr noundef dereferenceable(20) %atm_addr13.i, i32 20) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool15.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool15.not.i, label %if.then.i351, label %for.body12.i.for.inc.i_crit_edge

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i351:                                     ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  %flush_tran_id.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.056.i, i32 0, i32 14
  %86 = ptrtoint ptr %flush_tran_id.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %84, ptr %flush_tran_id.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_set_flush_tran_id.__UNIQUE_ID_ddebug611, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_atm_send, %if.then22.i)) #13
          to label %for.inc.i [label %if.then22.i], !srcloc !343

if.then22.i:                                      ; preds = %if.then.i351
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_set_flush_tran_id.__UNIQUE_ID_ddebug611, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef %84, ptr noundef nonnull %entry1.056.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i, %if.then.i351, %for.body12.i.for.inc.i_crit_edge
  %87 = ptrtoint ptr %entry1.056.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %entry1.0.i352 = load ptr, ptr %entry1.056.i, align 4
  %tobool11.not.i = icmp eq ptr %entry1.0.i352, null
  br i1 %tobool11.not.i, label %for.inc.i.for.inc37.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body12.i

for.inc.i.for.inc37.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc37.i

for.inc37.i:                                      ; preds = %for.inc.i.for.inc37.i_crit_edge, %for.body.i350.for.inc37.i_crit_edge
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %lec_set_flush_tran_id.exit, label %for.inc37.i.for.body.i350_crit_edge

for.inc37.i.for.body.i350_crit_edge:              ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i350

lec_set_flush_tran_id.exit:                       ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock.i, i32 noundef %call3.i) #13
  br label %cleanup247

sw.bb175:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %flag177 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 7
  %88 = ptrtoint ptr %flag177 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flag177, align 4
  %conv178 = trunc i32 %89 to i16
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv178, ptr %add.ptr.i, align 4
  br label %cleanup247

do.body180:                                       ; preds = %do.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_atm_send.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_atm_send, %if.then192)) #13
          to label %do.end200 [label %if.then192], !srcloc !343

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #15
  %mac_addr196 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_atm_send.__UNIQUE_ID_ddebug570, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.64, ptr noundef %1, ptr noundef %mac_addr196) #13
  br label %do.end200

do.end200:                                        ; preds = %if.then192, %do.body180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @br_fdb_test_addr_hook to i32))
  %91 = load ptr, ptr @br_fdb_test_addr_hook, align 4
  %cmp201 = icmp eq ptr %91, null
  br i1 %cmp201, label %do.end200.cleanup247_crit_edge, label %if.end204

do.end200.cleanup247_crit_edge:                   ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup247

if.end204:                                        ; preds = %do.end200
  %mac_addr206 = getelementptr inbounds %struct.atmlec_msg, ptr %7, i32 0, i32 2, i32 0, i32 2
  %call208 = tail call i32 %91(ptr noundef %1, ptr noundef %mac_addr206) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end204.cleanup247_crit_edge, label %if.then210

if.end204.cleanup247_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup247

if.then210:                                       ; preds = %if.end204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_atm_send.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_atm_send, %if.then223)) #13
          to label %do.end228 [label %if.then223], !srcloc !343

if.then223:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_atm_send.__UNIQUE_ID_ddebug571, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.64, ptr noundef %1) #13
  br label %do.end228

do.end228:                                        ; preds = %if.then223, %if.then210
  %call.i = tail call ptr @__alloc_skb(i32 noundef 52, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %cmp230 = icmp eq ptr %call.i, null
  br i1 %cmp230, label %do.end228.cleanup247_crit_edge, label %if.end233

do.end228.cleanup247_crit_edge:                   ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup247

if.end233:                                        ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %92 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 52, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %93 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i, align 4
  %95 = call ptr @memcpy(ptr %94, ptr %7, i32 52)
  %lecd = getelementptr i8, ptr %1, i32 2432
  %96 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lecd, align 4
  %truesize234 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %98 = ptrtoint ptr %truesize234 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %truesize234, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %97, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #13
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %99, ptr elementtype(i32) %sk_backlog.i) #13, !srcloc !344
  %101 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lecd, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %102, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %call.i) #13
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %102, i32 0, i32 77
  %103 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sk_data_ready, align 8
  tail call void %104(ptr noundef %102) #13
  br label %cleanup247

do.end241:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  %call246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.64, ptr noundef %1, i32 noundef %11) #16
  br label %cleanup247

cleanup247:                                       ; preds = %do.end241, %if.end233, %do.end228.cleanup247_crit_edge, %if.end204.cleanup247_crit_edge, %do.end200.cleanup247_crit_edge, %sw.bb175, %lec_set_flush_tran_id.exit, %if.end166, %if.then.i348, %land.lhs.true.i.cleanup247_crit_edge, %do.end117.cleanup247_crit_edge, %do.end97.cleanup247_crit_edge, %lec_arp_find.exit.cleanup247_crit_edge, %sw.bb49, %sw.bb46, %sw.bb41, %sw.bb40, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end241 ], [ 0, %if.then.i348 ], [ 0, %land.lhs.true.i.cleanup247_crit_edge ], [ 0, %do.end117.cleanup247_crit_edge ], [ 0, %if.end233 ], [ 0, %do.end228.cleanup247_crit_edge ], [ 0, %if.end204.cleanup247_crit_edge ], [ 0, %do.end200.cleanup247_crit_edge ], [ 0, %do.end97.cleanup247_crit_edge ], [ 0, %lec_arp_find.exit.cleanup247_crit_edge ], [ 0, %sw.bb175 ], [ 0, %lec_set_flush_tran_id.exit ], [ 0, %if.end166 ], [ 0, %sw.bb49 ], [ 0, %sw.bb46 ], [ 0, %sw.bb41 ], [ 0, %sw.bb40 ], [ 0, %sw.bb ]
  tail call void @consume_skb(ptr noundef %skb) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lec_addr_delete(ptr noundef %priv, ptr nocapture noundef readonly %atm_addr, i32 noundef %permanent) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_addr_delete.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_addr_delete, %if.then)) #13
          to label %do.body5 [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_addr_delete.__UNIQUE_ID_ddebug598, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.79) #13
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  %arrayidx = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %1, null
  br i1 %tobool16.not, label %for.cond, label %do.body5.for.body24_crit_edge

do.body5.for.body24_crit_edge:                    ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond:                                         ; preds = %do.body5
  %arrayidx.1 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool16.not.1 = icmp eq ptr %3, null
  br i1 %tobool16.not.1, label %for.cond.1, label %for.cond.for.body24_crit_edge

for.cond.for.body24_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool16.not.2 = icmp eq ptr %5, null
  br i1 %tobool16.not.2, label %for.cond.2, label %for.cond.1.for.body24_crit_edge

for.cond.1.for.body24_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool16.not.3 = icmp eq ptr %7, null
  br i1 %tobool16.not.3, label %for.cond.3, label %for.cond.2.for.body24_crit_edge

for.cond.2.for.body24_crit_edge:                  ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %tobool16.not.4 = icmp eq ptr %9, null
  br i1 %tobool16.not.4, label %for.cond.4, label %for.cond.3.for.body24_crit_edge

for.cond.3.for.body24_crit_edge:                  ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %tobool16.not.5 = icmp eq ptr %11, null
  br i1 %tobool16.not.5, label %for.cond.5, label %for.cond.4.for.body24_crit_edge

for.cond.4.for.body24_crit_edge:                  ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  %tobool16.not.6 = icmp eq ptr %13, null
  br i1 %tobool16.not.6, label %for.cond.6, label %for.cond.5.for.body24_crit_edge

for.cond.5.for.body24_crit_edge:                  ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  %tobool16.not.7 = icmp eq ptr %15, null
  br i1 %tobool16.not.7, label %for.cond.7, label %for.cond.6.for.body24_crit_edge

for.cond.6.for.body24_crit_edge:                  ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 4
  %tobool16.not.8 = icmp eq ptr %17, null
  br i1 %tobool16.not.8, label %for.cond.8, label %for.cond.7.for.body24_crit_edge

for.cond.7.for.body24_crit_edge:                  ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9, align 4
  %tobool16.not.9 = icmp eq ptr %19, null
  br i1 %tobool16.not.9, label %for.cond.9, label %for.cond.8.for.body24_crit_edge

for.cond.8.for.body24_crit_edge:                  ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10, align 4
  %tobool16.not.10 = icmp eq ptr %21, null
  br i1 %tobool16.not.10, label %for.cond.10, label %for.cond.9.for.body24_crit_edge

for.cond.9.for.body24_crit_edge:                  ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.11, align 4
  %tobool16.not.11 = icmp eq ptr %23, null
  br i1 %tobool16.not.11, label %for.cond.11, label %for.cond.10.for.body24_crit_edge

for.cond.10.for.body24_crit_edge:                 ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.12, align 4
  %tobool16.not.12 = icmp eq ptr %25, null
  br i1 %tobool16.not.12, label %for.cond.12, label %for.cond.11.for.body24_crit_edge

for.cond.11.for.body24_crit_edge:                 ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.13, align 4
  %tobool16.not.13 = icmp eq ptr %27, null
  br i1 %tobool16.not.13, label %for.cond.13, label %for.cond.12.for.body24_crit_edge

for.cond.12.for.body24_crit_edge:                 ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.14, align 4
  %tobool16.not.14 = icmp eq ptr %29, null
  br i1 %tobool16.not.14, label %for.cond.14, label %for.cond.13.for.body24_crit_edge

for.cond.13.for.body24_crit_edge:                 ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.15, align 4
  %tobool16.not.15 = icmp eq ptr %31, null
  br i1 %tobool16.not.15, label %for.cond.14.cleanup_crit_edge, label %for.cond.14.for.body24_crit_edge

for.cond.14.for.body24_crit_edge:                 ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body24:                                       ; preds = %for.cond.14.for.body24_crit_edge, %for.cond.13.for.body24_crit_edge, %for.cond.12.for.body24_crit_edge, %for.cond.11.for.body24_crit_edge, %for.cond.10.for.body24_crit_edge, %for.cond.9.for.body24_crit_edge, %for.cond.8.for.body24_crit_edge, %for.cond.7.for.body24_crit_edge, %for.cond.6.for.body24_crit_edge, %for.cond.5.for.body24_crit_edge, %for.cond.4.for.body24_crit_edge, %for.cond.3.for.body24_crit_edge, %for.cond.2.for.body24_crit_edge, %for.cond.1.for.body24_crit_edge, %for.cond.for.body24_crit_edge, %do.body5.for.body24_crit_edge
  %.lcssa = phi ptr [ %1, %do.body5.for.body24_crit_edge ], [ %3, %for.cond.for.body24_crit_edge ], [ %5, %for.cond.1.for.body24_crit_edge ], [ %7, %for.cond.2.for.body24_crit_edge ], [ %9, %for.cond.3.for.body24_crit_edge ], [ %11, %for.cond.4.for.body24_crit_edge ], [ %13, %for.cond.5.for.body24_crit_edge ], [ %15, %for.cond.6.for.body24_crit_edge ], [ %17, %for.cond.7.for.body24_crit_edge ], [ %19, %for.cond.8.for.body24_crit_edge ], [ %21, %for.cond.9.for.body24_crit_edge ], [ %23, %for.cond.10.for.body24_crit_edge ], [ %25, %for.cond.11.for.body24_crit_edge ], [ %27, %for.cond.12.for.body24_crit_edge ], [ %29, %for.cond.13.for.body24_crit_edge ], [ %31, %for.cond.14.for.body24_crit_edge ]
  %atm_addr25 = getelementptr inbounds %struct.lec_arp_table, ptr %.lcssa, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %atm_addr, ptr noundef dereferenceable(20) %atm_addr25, i32 20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool27.not = icmp eq i32 %bcmp, 0
  br i1 %tobool27.not, label %land.lhs.true, label %for.body24.cleanup_crit_edge

for.body24.cleanup_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %permanent)
  %tobool28.not = icmp eq i32 %permanent, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %land.lhs.true.if.then32_crit_edge

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

lor.lhs.false:                                    ; preds = %land.lhs.true
  %flags29 = getelementptr inbounds %struct.lec_arp_table, ptr %.lcssa, i32 0, i32 12
  %32 = ptrtoint ptr %flags29 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags29, align 2
  %34 = and i16 %33, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool31.not = icmp eq i16 %34, 0
  br i1 %tobool31.not, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge
  tail call fastcc void @lec_arp_remove(ptr noundef %priv, ptr noundef nonnull %.lcssa)
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %.lcssa, i32 0, i32 20
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %.lcssa) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body24.cleanup_crit_edge, %for.cond.14.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lec_flush_complete(ptr noundef %priv, i32 noundef %tran_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_flush_complete.__UNIQUE_ID_ddebug609, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_flush_complete, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_flush_complete.__UNIQUE_ID_ddebug609, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %tran_id) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 5
  br label %restart

restart:                                          ; preds = %if.then44, %lec_arp_put.exit, %do.end
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  br label %for.body

for.body:                                         ; preds = %for.inc60.for.body_crit_edge, %restart
  %i.0108 = phi i32 [ 0, %restart ], [ %inc, %for.inc60.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %i.0108
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0105 = load ptr, ptr %arrayidx, align 4
  %tobool19.not106 = icmp eq ptr %entry1.0105, null
  br i1 %tobool19.not106, label %for.body.for.inc60_crit_edge, label %for.body.for.body20_crit_edge

for.body.for.body20_crit_edge:                    ; preds = %for.body
  br label %for.body20

for.body.for.inc60_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc60

for.body20:                                       ; preds = %for.inc.for.body20_crit_edge, %for.body.for.body20_crit_edge
  %entry1.0107 = phi ptr [ %entry1.0, %for.inc.for.body20_crit_edge ], [ %entry1.0105, %for.body.for.body20_crit_edge ]
  %flush_tran_id = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0107, i32 0, i32 14
  %1 = ptrtoint ptr %flush_tran_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flush_tran_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %tran_id)
  %cmp21 = icmp eq i32 %2, %tran_id
  br i1 %cmp21, label %land.lhs.true, label %for.body20.for.inc_crit_edge

for.body20.for.inc_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body20
  %status = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0107, i32 0, i32 11
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp24 = icmp eq i8 %4, 4
  br i1 %cmp24, label %if.then26, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then26:                                        ; preds = %land.lhs.true
  %status.le = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0107, i32 0, i32 11
  %vcc27 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0107, i32 0, i32 4
  %5 = ptrtoint ptr %vcc27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vcc27, align 4
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0107, i32 0, i32 20
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !346
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then26.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !345

if.then26.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then26
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.lec_arp_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !338

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.lec_arp_hold.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then26.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then26.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #13
  br label %lec_arp_hold.exit

lec_arp_hold.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.lec_arp_hold.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call8) #13
  %tx_wait = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0107, i32 0, i32 19
  %call29109 = tail call ptr @skb_dequeue(ptr noundef %tx_wait) #13
  %tobool30.not110 = icmp eq ptr %call29109, null
  br i1 %tobool30.not110, label %lec_arp_hold.exit.while.end_crit_edge, label %while.body.lr.ph

lec_arp_hold.exit.while.end_crit_edge:            ; preds = %lec_arp_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %lec_arp_hold.exit
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 23
  %atm_options.i.i = getelementptr inbounds %struct.atm_vcc, ptr %6, i32 0, i32 5
  %send.i = getelementptr inbounds %struct.atm_vcc, ptr %6, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %lec_send.exit.while.body_crit_edge, %while.body.lr.ph
  %call29111 = phi ptr [ %call29109, %while.body.lr.ph ], [ %call29, %lec_send.exit.while.body_crit_edge ]
  %9 = getelementptr inbounds %struct.anon.51, ptr %call29111, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call29111, i32 0, i32 3
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %cb.i, align 8
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call29111, i32 0, i32 20
  %13 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %truesize.i.i, align 8
  %call.i.i.i.i.i.i89 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i.i, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i.i, ptr %sk_wmem_alloc.i.i, i32 %14, ptr elementtype(i32) %sk_wmem_alloc.i.i) #13, !srcloc !346
  %asmresult.i.i.i.i.i.i90 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i90)
  %tobool1.not.i.i.i.i91 = icmp eq i32 %asmresult.i.i.i.i.i.i90, 0
  br i1 %tobool1.not.i.i.i.i91, label %while.body.if.end15.sink.split.i.i.i.i96_crit_edge, label %if.else.i.i.i.i94, !prof !345

while.body.if.end15.sink.split.i.i.i.i96_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i96

if.else.i.i.i.i94:                                ; preds = %while.body
  %add.i.i.i.i92 = add i32 %asmresult.i.i.i.i.i.i90, %14
  %16 = or i32 %add.i.i.i.i92, %asmresult.i.i.i.i.i.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i93 = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i93, label %if.else.i.i.i.i94.atm_account_tx.exit.i_crit_edge, label %if.else.i.i.i.i94.if.end15.sink.split.i.i.i.i96_crit_edge, !prof !338

if.else.i.i.i.i94.if.end15.sink.split.i.i.i.i96_crit_edge: ; preds = %if.else.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i96

if.else.i.i.i.i94.atm_account_tx.exit.i_crit_edge: ; preds = %if.else.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %atm_account_tx.exit.i

if.end15.sink.split.i.i.i.i96:                    ; preds = %if.else.i.i.i.i94.if.end15.sink.split.i.i.i.i96_crit_edge, %while.body.if.end15.sink.split.i.i.i.i96_crit_edge
  %.sink.i.i.i.i95 = phi i32 [ 2, %while.body.if.end15.sink.split.i.i.i.i96_crit_edge ], [ 1, %if.else.i.i.i.i94.if.end15.sink.split.i.i.i.i96_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i.i, i32 noundef %.sink.i.i.i.i95) #13
  br label %atm_account_tx.exit.i

atm_account_tx.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i96, %if.else.i.i.i.i94.atm_account_tx.exit.i_crit_edge
  %17 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %truesize.i.i, align 8
  %acct_truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call29111, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %acct_truesize.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %acct_truesize.i.i, align 8
  %20 = ptrtoint ptr %atm_options.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %atm_options.i.i, align 8
  %atm_options4.i.i = getelementptr inbounds %struct.sk_buff, ptr %call29111, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %atm_options4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %atm_options4.i.i, align 4
  %23 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send.i, align 4
  %call.i = tail call i32 %24(ptr noundef %6, ptr noundef nonnull %call29111) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %atm_account_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 7
  br label %lec_send.exit

if.end.i:                                         ; preds = %atm_account_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 1
  %25 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_packets.i, align 4
  %inc3.i = add i32 %26, 1
  store i32 %inc3.i, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call29111, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 3
  br label %lec_send.exit

lec_send.exit:                                    ; preds = %if.end.i, %if.then.i
  %tx_bytes.sink15.i = phi ptr [ %tx_bytes.i, %if.end.i ], [ %tx_dropped.i, %if.then.i ]
  %.sink14.i = phi i32 [ %28, %if.end.i ], [ 1, %if.then.i ]
  %29 = ptrtoint ptr %tx_bytes.sink15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_bytes.sink15.i, align 4
  %add.i = add i32 %30, %.sink14.i
  store i32 %add.i, ptr %tx_bytes.sink15.i, align 4
  %call29 = tail call ptr @skb_dequeue(ptr noundef %tx_wait) #13
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %lec_send.exit.while.end_crit_edge, label %lec_send.exit.while.body_crit_edge

lec_send.exit.while.body_crit_edge:               ; preds = %lec_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

lec_send.exit.while.end_crit_edge:                ; preds = %lec_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %lec_send.exit.while.end_crit_edge, %lec_arp_hold.exit.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0107, i32 0, i32 8
  %32 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_used, align 4
  %33 = ptrtoint ptr %status.le to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 5, ptr %status.le, align 1
  %call.i.i.i.i.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i100, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i99 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i99, label %if.end5.i.i.i.i.lec_arp_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.lec_arp_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %lec_arp_put.exit

if.then.i100:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.0107) #13
  br label %lec_arp_put.exit

lec_arp_put.exit:                                 ; preds = %if.then.i100, %if.then10.i.i.i.i, %if.end5.i.i.i.i.lec_arp_put.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_flush_complete.__UNIQUE_ID_ddebug610, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_flush_complete, %if.then44)) #13
          to label %restart [label %if.then44], !srcloc !343

if.then44:                                        ; preds = %lec_arp_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_flush_complete.__UNIQUE_ID_ddebug610, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.80) #13
  br label %restart

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body20.for.inc_crit_edge
  %35 = ptrtoint ptr %entry1.0107 to i32
  call void @__asan_load4_noabort(i32 %35)
  %entry1.0 = load ptr, ptr %entry1.0107, align 4
  %tobool19.not = icmp eq ptr %entry1.0, null
  br i1 %tobool19.not, label %for.inc.for.inc60_crit_edge, label %for.inc.for.body20_crit_edge

for.inc.for.body20_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body20

for.inc.for.inc60_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc60

for.inc60:                                        ; preds = %for.inc.for.inc60_crit_edge, %for.body.for.inc60_crit_edge
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end61, label %for.inc60.for.body_crit_edge

for.inc60.for.body_crit_edge:                     ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end61:                                        ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lec_arp_update(ptr noundef %priv, ptr noundef %mac_addr, ptr noundef %atm_addr, i32 noundef %remoteflag, i32 noundef %targetless_le_arp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_update.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_update, %if.then)) #13
          to label %do.body7 [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %targetless_le_arp)
  %tobool5.not = icmp eq i32 %targetless_le_arp, 0
  %cond = select i1 %tobool5.not, ptr @.str.89, ptr @.str.88
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_update.__UNIQUE_ID_ddebug599, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, ptr noundef nonnull %cond, ptr noundef %mac_addr) #13
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 5
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_find.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_update, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !343

if.then.i:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_find.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %mac_addr) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body7
  %arrayidx.i = getelementptr i8, ptr %mac_addr, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %2 = and i8 %1, 15
  %and.i = zext i8 %2 to i32
  %arrayidx4.i = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %and.i
  %add.ptr.i.i = getelementptr i8, ptr %mac_addr, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %entry1.0.in.i = phi ptr [ %arrayidx4.i, %do.end.i ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %tobool8.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool8.not.i, label %lec_arp_find.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr9.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_addr, align 4
  %6 = ptrtoint ptr %mac_addr9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_addr9.i, align 4
  %xor.i.i = xor i32 %7, %5
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %11, %9
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.if.end20_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i.if.end20_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

lec_arp_find.exit:                                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %targetless_le_arp)
  %tobool18.not = icmp eq i32 %targetless_le_arp, 0
  br i1 %tobool18.not, label %lec_arp_find.exit.if.end20_crit_edge, label %lec_arp_find.exit.out_crit_edge

lec_arp_find.exit.out_crit_edge:                  ; preds = %lec_arp_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lec_arp_find.exit.if.end20_crit_edge:             ; preds = %lec_arp_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end20:                                         ; preds = %lec_arp_find.exit.if.end20_crit_edge, %for.body.i.if.end20_crit_edge
  %lec_arp_empty_ones = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %lec_arp_empty_ones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %lec_arp_empty_ones, align 4
  %tobool.not.i.not = icmp eq ptr %13, null
  br i1 %tobool.not.i.not, label %if.end20.if.end97_crit_edge, label %if.end20.for.cond_crit_edge

if.end20.for.cond_crit_edge:                      ; preds = %if.end20
  br label %for.cond

if.end20.if.end97_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %if.end20.for.cond_crit_edge
  %entry1.0 = phi ptr [ %15, %land.rhs.for.cond_crit_edge ], [ %13, %if.end20.for.cond_crit_edge ]
  %tobool29.not = icmp eq ptr %entry1.0, null
  br i1 %tobool29.not, label %for.cond.if.end97_crit_edge, label %land.rhs

for.cond.if.end97_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

land.rhs:                                         ; preds = %for.cond
  %14 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entry1.0, align 4
  %atm_addr34 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 1
  %bcmp289 = tail call i32 @bcmp(ptr noundef dereferenceable(20) %atm_addr34, ptr noundef dereferenceable(20) %atm_addr, i32 20) #19
  %cmp36 = icmp eq i32 %bcmp289, 0
  br i1 %cmp36, label %if.then38, label %land.rhs.for.cond_crit_edge

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then38:                                        ; preds = %land.rhs
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.0, i32 0, i32 1
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev2.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %15, ptr %17, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then38.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then38.hlist_del.exit_crit_edge:               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then38.hlist_del.exit_crit_edge
  %20 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0, align 4
  %21 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %timer = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 15
  %call40 = tail call i32 @del_timer(ptr noundef %timer) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_find.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_update, %if.then.i299)) #13
          to label %do.end.i304 [label %if.then.i299], !srcloc !343

if.then.i299:                                     ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_find.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %mac_addr) #13
  br label %do.end.i304

do.end.i304:                                      ; preds = %if.then.i299, %hlist_del.exit
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %24 = and i8 %23, 15
  %and.i301 = zext i8 %24 to i32
  %arrayidx4.i302 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %and.i301
  br label %for.cond.i308

for.cond.i308:                                    ; preds = %for.body.i316.for.cond.i308_crit_edge, %do.end.i304
  %entry1.0.in.i305 = phi ptr [ %arrayidx4.i302, %do.end.i304 ], [ %entry1.0.i306, %for.body.i316.for.cond.i308_crit_edge ]
  %25 = ptrtoint ptr %entry1.0.in.i305 to i32
  call void @__asan_load4_noabort(i32 %25)
  %entry1.0.i306 = load ptr, ptr %entry1.0.in.i305, align 4
  %tobool8.not.i307 = icmp eq ptr %entry1.0.i306, null
  br i1 %tobool8.not.i307, label %if.else, label %for.body.i316

for.body.i316:                                    ; preds = %for.cond.i308
  %mac_addr9.i309 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i306, i32 0, i32 2
  %26 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac_addr, align 4
  %28 = ptrtoint ptr %mac_addr9.i309 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mac_addr9.i309, align 4
  %xor.i.i310 = xor i32 %29, %27
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i311 = getelementptr %struct.lec_arp_table, ptr %entry1.0.i306, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %add.ptr1.i.i311 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr1.i.i311, align 2
  %xor37.i.i312 = xor i16 %33, %31
  %xor3.i.i313 = zext i16 %xor37.i.i312 to i32
  %or.i.i314 = or i32 %xor.i.i310, %xor3.i.i313
  %cmp.i.i315 = icmp eq i32 %or.i.i314, 0
  br i1 %cmp.i.i315, label %if.then43, label %for.body.i316.for.cond.i308_crit_edge

for.body.i316.for.cond.i308_crit_edge:            ; preds = %for.body.i316
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i308

if.then43:                                        ; preds = %for.body.i316
  %timer44 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i306, i32 0, i32 15
  %call45 = tail call i32 @del_timer(ptr noundef %timer44) #13
  %status = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i306, i32 0, i32 11
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 5, ptr %status, align 1
  %atm_addr46 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i306, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %atm_addr46, ptr %atm_addr, i32 20)
  %vcc = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 4
  %36 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vcc, align 4
  %vcc48 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i306, i32 0, i32 4
  %38 = ptrtoint ptr %vcc48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %vcc48, align 4
  %old_push = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 6
  %39 = ptrtoint ptr %old_push to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %old_push, align 4
  %old_push49 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i306, i32 0, i32 6
  %41 = ptrtoint ptr %old_push49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %old_push49, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i306, i32 0, i32 8
  %43 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %last_used, align 4
  %call51 = tail call i32 @del_timer(ptr noundef %timer) #13
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 20
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i318, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end56_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.if.end56_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %if.end56

if.then.i318:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.0) #13
  br label %if.end56

if.else:                                          ; preds = %for.cond.i308
  %status52 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 11
  %45 = ptrtoint ptr %status52 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %status52, align 1
  %mac_addr53 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 2
  %46 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mac_addr, align 4
  %48 = ptrtoint ptr %mac_addr53 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %mac_addr53, align 4
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %add.ptr1.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %last_used55 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 8
  %53 = ptrtoint ptr %last_used55 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %last_used55, align 4
  %54 = and i16 %50, 15
  %55 = zext i16 %54 to i32
  %arrayidx2.i = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %55
  %56 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx2.i, align 4
  %58 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %57, ptr %entry1.0, align 4
  %tobool.not.i.i321 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i321, label %if.else.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.else.hlist_add_head.exit.i_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %entry1.0, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.else.hlist_add_head.exit.i_crit_edge
  %60 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %entry1.0, ptr %arrayidx2.i, align 4
  %61 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %arrayidx2.i, ptr %pprev2.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_add.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_update, %if.then.i322)) #13
          to label %if.end56 [label %if.then.i322], !srcloc !343

if.then.i322:                                     ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_add.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, ptr noundef %mac_addr53) #13
  br label %if.end56

if.end56:                                         ; preds = %if.then.i322, %hlist_add_head.exit.i, %if.then.i318, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end56_crit_edge
  %entry1.1 = phi ptr [ %entry1.0.i306, %if.end5.i.i.i.i.if.end56_crit_edge ], [ %entry1.0.i306, %if.then10.i.i.i.i ], [ %entry1.0.i306, %if.then.i318 ], [ %entry1.0, %hlist_add_head.exit.i ], [ %entry1.0, %if.then.i322 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remoteflag)
  %tobool57.not = icmp ne i32 %remoteflag, 0
  %flags63 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.1, i32 0, i32 12
  %62 = ptrtoint ptr %flags63 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags63, align 2
  %64 = and i16 %63, -2
  %masksel = zext i1 %tobool57.not to i16
  %.sink = or i16 %64, %masksel
  store i16 %.sink, ptr %flags63, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_update.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_update, %if.then79)) #13
          to label %out [label %if.then79], !srcloc !343

if.then79:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_update.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.85) #13
  br label %out

if.end97:                                         ; preds = %for.cond.if.end97_crit_edge, %if.end20.if.end97_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_find.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_update, %if.then.i324)) #13
          to label %do.end.i329 [label %if.then.i324], !srcloc !343

if.then.i324:                                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_find.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %mac_addr) #13
  br label %do.end.i329

do.end.i329:                                      ; preds = %if.then.i324, %if.end97
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i, align 1
  %67 = and i8 %66, 15
  %and.i326 = zext i8 %67 to i32
  %arrayidx4.i327 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %and.i326
  br label %for.cond.i333

for.cond.i333:                                    ; preds = %for.body.i341.for.cond.i333_crit_edge, %do.end.i329
  %entry1.0.in.i330 = phi ptr [ %arrayidx4.i327, %do.end.i329 ], [ %entry1.0.i331, %for.body.i341.for.cond.i333_crit_edge ]
  %68 = ptrtoint ptr %entry1.0.in.i330 to i32
  call void @__asan_load4_noabort(i32 %68)
  %entry1.0.i331 = load ptr, ptr %entry1.0.in.i330, align 4
  %tobool8.not.i332 = icmp eq ptr %entry1.0.i331, null
  br i1 %tobool8.not.i332, label %if.then100, label %for.body.i341

for.body.i341:                                    ; preds = %for.cond.i333
  %mac_addr9.i334 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i331, i32 0, i32 2
  %69 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mac_addr, align 4
  %71 = ptrtoint ptr %mac_addr9.i334 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mac_addr9.i334, align 4
  %xor.i.i335 = xor i32 %72, %70
  %73 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i336 = getelementptr %struct.lec_arp_table, ptr %entry1.0.i331, i32 0, i32 2, i32 4
  %75 = ptrtoint ptr %add.ptr1.i.i336 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr1.i.i336, align 2
  %xor37.i.i337 = xor i16 %76, %74
  %xor3.i.i338 = zext i16 %xor37.i.i337 to i32
  %or.i.i339 = or i32 %xor.i.i335, %xor3.i.i338
  %cmp.i.i340 = icmp eq i32 %or.i.i339, 0
  br i1 %cmp.i.i340, label %for.body.i341.if.end106_crit_edge, label %for.body.i341.for.cond.i333_crit_edge

for.body.i341.for.cond.i333_crit_edge:            ; preds = %for.body.i341
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i333

for.body.i341.if.end106_crit_edge:                ; preds = %for.body.i341
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.then100:                                       ; preds = %for.cond.i333
  %call101 = tail call fastcc ptr @make_entry(ptr noundef %priv, ptr noundef %mac_addr)
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.then100.out_crit_edge, label %if.end104

if.then100.out_crit_edge:                         ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end104:                                        ; preds = %if.then100
  %status105 = getelementptr inbounds %struct.lec_arp_table, ptr %call101, i32 0, i32 11
  %77 = ptrtoint ptr %status105 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %status105, align 1
  %arrayidx.i343 = getelementptr %struct.lec_arp_table, ptr %call101, i32 0, i32 2, i32 5
  %78 = ptrtoint ptr %arrayidx.i343 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i343, align 1
  %80 = and i8 %79, 15
  %and.i344 = zext i8 %80 to i32
  %arrayidx2.i345 = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %and.i344
  %81 = ptrtoint ptr %arrayidx2.i345 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx2.i345, align 4
  %83 = ptrtoint ptr %call101 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %82, ptr %call101, align 4
  %tobool.not.i.i346 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i346, label %if.end104.hlist_add_head.exit.i350_crit_edge, label %do.body12.i.i348

if.end104.hlist_add_head.exit.i350_crit_edge:     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit.i350

do.body12.i.i348:                                 ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i347 = getelementptr inbounds %struct.hlist_node, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %pprev.i.i347 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %call101, ptr %pprev.i.i347, align 4
  br label %hlist_add_head.exit.i350

hlist_add_head.exit.i350:                         ; preds = %do.body12.i.i348, %if.end104.hlist_add_head.exit.i350_crit_edge
  %85 = ptrtoint ptr %arrayidx2.i345 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %call101, ptr %arrayidx2.i345, align 4
  %pprev34.i.i349 = getelementptr inbounds %struct.hlist_node, ptr %call101, i32 0, i32 1
  %86 = ptrtoint ptr %pprev34.i.i349 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %arrayidx2.i345, ptr %pprev34.i.i349, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_add.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_update, %if.then.i352)) #13
          to label %if.end106 [label %if.then.i352], !srcloc !343

if.then.i352:                                     ; preds = %hlist_add_head.exit.i350
  call void @__sanitizer_cov_trace_pc() #15
  %mac_addr.i351 = getelementptr inbounds %struct.lec_arp_table, ptr %call101, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_add.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, ptr noundef %mac_addr.i351) #13
  br label %if.end106

if.end106:                                        ; preds = %if.then.i352, %hlist_add_head.exit.i350, %for.body.i341.if.end106_crit_edge
  %entry1.2 = phi ptr [ %call101, %hlist_add_head.exit.i350 ], [ %call101, %if.then.i352 ], [ %entry1.0.i331, %for.body.i341.if.end106_crit_edge ]
  %atm_addr107 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2, i32 0, i32 1
  %87 = call ptr @memcpy(ptr %atm_addr107, ptr %atm_addr, i32 20)
  %timer109 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2, i32 0, i32 15
  %call110 = tail call i32 @del_timer(ptr noundef %timer109) #13
  %vcc143 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2, i32 0, i32 4
  %old_push145 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2, i32 0, i32 6
  %status148 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2, i32 0, i32 11
  br label %for.body114

for.body114:                                      ; preds = %for.inc164.for.body114_crit_edge, %if.end106
  %i.0368 = phi i32 [ 0, %if.end106 ], [ %inc, %for.inc164.for.body114_crit_edge ]
  %arrayidx = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %i.0368
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %tmp.0365 = load ptr, ptr %arrayidx, align 4
  %tobool127.not366 = icmp eq ptr %tmp.0365, null
  br i1 %tobool127.not366, label %for.body114.for.inc164_crit_edge, label %for.body114.for.body128_crit_edge

for.body114.for.body128_crit_edge:                ; preds = %for.body114
  br label %for.body128

for.body114.for.inc164_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc164

for.body128:                                      ; preds = %for.inc150.for.body128_crit_edge, %for.body114.for.body128_crit_edge
  %tmp.0367 = phi ptr [ %tmp.0, %for.inc150.for.body128_crit_edge ], [ %tmp.0365, %for.body114.for.body128_crit_edge ]
  %cmp129.not = icmp eq ptr %entry1.2, %tmp.0367
  br i1 %cmp129.not, label %for.body128.for.inc150_crit_edge, label %land.lhs.true131

for.body128.for.inc150_crit_edge:                 ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc150

land.lhs.true131:                                 ; preds = %for.body128
  %atm_addr132 = getelementptr inbounds %struct.lec_arp_table, ptr %tmp.0367, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %atm_addr132, ptr noundef dereferenceable(20) %atm_addr, i32 20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool135.not = icmp eq i32 %bcmp, 0
  br i1 %tobool135.not, label %if.then136, label %land.lhs.true131.for.inc150_crit_edge

land.lhs.true131.for.inc150_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc150

if.then136:                                       ; preds = %land.lhs.true131
  %status137 = getelementptr inbounds %struct.lec_arp_table, ptr %tmp.0367, i32 0, i32 11
  %89 = ptrtoint ptr %status137 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %status137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %90)
  %cmp139 = icmp ugt i8 %90, 2
  br i1 %cmp139, label %if.then141, label %if.then136.if.end146_crit_edge

if.then136.if.end146_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146

if.then141:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #15
  %vcc142 = getelementptr inbounds %struct.lec_arp_table, ptr %tmp.0367, i32 0, i32 4
  %91 = ptrtoint ptr %vcc142 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vcc142, align 4
  %93 = ptrtoint ptr %vcc143 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %vcc143, align 4
  %old_push144 = getelementptr inbounds %struct.lec_arp_table, ptr %tmp.0367, i32 0, i32 6
  %94 = ptrtoint ptr %old_push144 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %old_push144, align 4
  %96 = ptrtoint ptr %old_push145 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %old_push145, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %if.then136.if.end146_crit_edge
  %97 = ptrtoint ptr %status137 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %status137, align 1
  %99 = ptrtoint ptr %status148 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %status148, align 1
  br label %for.inc164

for.inc150:                                       ; preds = %land.lhs.true131.for.inc150_crit_edge, %for.body128.for.inc150_crit_edge
  %100 = ptrtoint ptr %tmp.0367 to i32
  call void @__asan_load4_noabort(i32 %100)
  %tmp.0 = load ptr, ptr %tmp.0367, align 4
  %tobool127.not = icmp eq ptr %tmp.0, null
  br i1 %tobool127.not, label %for.inc150.for.inc164_crit_edge, label %for.inc150.for.body128_crit_edge

for.inc150.for.body128_crit_edge:                 ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body128

for.inc150.for.inc164_crit_edge:                  ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc164

for.inc164:                                       ; preds = %for.inc150.for.inc164_crit_edge, %if.end146, %for.body114.for.inc164_crit_edge
  %inc = add nuw nsw i32 %i.0368, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end165, label %for.inc164.for.body114_crit_edge

for.inc164.for.body114_crit_edge:                 ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body114

for.end165:                                       ; preds = %for.inc164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remoteflag)
  %tobool166.not = icmp ne i32 %remoteflag, 0
  %flags173 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2, i32 0, i32 12
  %101 = ptrtoint ptr %flags173 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %flags173, align 2
  %103 = and i16 %102, -2
  %masksel378 = zext i1 %tobool166.not to i16
  %.sink377 = or i16 %103, %masksel378
  store i16 %.sink377, ptr %flags173, align 2
  %104 = ptrtoint ptr %status148 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %status148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %105)
  %switch = icmp ult i8 %105, 2
  br i1 %switch, label %if.then186, label %for.end165.do.body192_crit_edge

for.end165.do.body192_crit_edge:                  ; preds = %for.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body192

if.then186:                                       ; preds = %for.end165
  call void @__sanitizer_cov_trace_pc() #15
  %106 = ptrtoint ptr %status148 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 2, ptr %status148, align 1
  %mac_addr188 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2, i32 0, i32 2
  %call190 = tail call fastcc i32 @send_to_lecd(ptr noundef %priv, i32 noundef 2, ptr noundef %mac_addr188, ptr noundef %atm_addr, ptr noundef null)
  br label %do.body192

do.body192:                                       ; preds = %if.then186, %for.end165.do.body192_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_update.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_update, %if.then204)) #13
          to label %out [label %if.then204], !srcloc !343

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_update.__UNIQUE_ID_ddebug601, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.85) #13
  br label %out

out:                                              ; preds = %if.then204, %do.body192, %if.then100.out_crit_edge, %if.then79, %if.end56, %lec_arp_find.exit.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lane2_resolve(ptr noundef %dev, ptr noundef %dst_mac, i32 noundef %force, ptr nocapture noundef %tlvs, ptr noundef %sizeoftlvs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %cmp = icmp eq i32 %force, 0
  br i1 %cmp, label %do.body2, label %if.end21

do.body2:                                         ; preds = %entry
  %lec_arp_lock = getelementptr i8, ptr %dev, i32 2384
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_find.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lane2_resolve, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !343

if.then.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_find.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %dst_mac) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body2
  %arrayidx.i = getelementptr i8, ptr %dst_mac, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %2 = and i8 %1, 15
  %and.i = zext i8 %2 to i32
  %arrayidx4.i = getelementptr %struct.lec_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %and.i
  %add.ptr.i.i = getelementptr i8, ptr %dst_mac, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %entry1.0.in.i = phi ptr [ %arrayidx4.i, %do.end.i ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %tobool8.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool8.not.i, label %lec_arp_find.exit.thread, label %for.body.i

lec_arp_find.exit.thread:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call5) #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr9.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %dst_mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_mac, align 4
  %6 = ptrtoint ptr %mac_addr9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_addr9.i, align 4
  %xor.i.i = xor i32 %7, %5
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %11, %9
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call5) #13
  %tlvs13 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 17
  %12 = ptrtoint ptr %tlvs13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tlvs13, align 4
  %sizeoftlvs14 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 18
  %14 = ptrtoint ptr %sizeoftlvs14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sizeoftlvs14, align 4
  %call15 = tail call ptr @kmemdup(ptr noundef %13, i32 noundef %15, i32 noundef 2592) #13
  %16 = ptrtoint ptr %tlvs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call15, ptr %tlvs, align 4
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %sizeoftlvs14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizeoftlvs14, align 4
  %19 = ptrtoint ptr %sizeoftlvs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sizeoftlvs, align 4
  br label %cleanup

if.end21:                                         ; preds = %entry
  %cmp22 = icmp eq ptr %sizeoftlvs, null
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = tail call fastcc i32 @send_to_lecd(ptr noundef %add.ptr.i, i32 noundef 11, ptr noundef %dst_mac, ptr noundef null, ptr noundef null)
  br label %cleanup

if.else:                                          ; preds = %if.end21
  %20 = ptrtoint ptr %sizeoftlvs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sizeoftlvs, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %21, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %cmp27 = icmp eq ptr %call.i, null
  br i1 %cmp27, label %if.else.cleanup_crit_edge, label %if.end30

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %sizeoftlvs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sizeoftlvs, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %len, align 4
  %25 = ptrtoint ptr %tlvs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tlvs, align 4
  %27 = load i32, ptr %sizeoftlvs, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = call ptr @memcpy(ptr %29, ptr %26, i32 %27)
  %call31 = tail call fastcc i32 @send_to_lecd(ptr noundef %add.ptr.i, i32 noundef 11, ptr noundef %dst_mac, ptr noundef null, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.else.cleanup_crit_edge, %if.then24, %if.end19, %if.end.cleanup_crit_edge, %lec_arp_find.exit.thread
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ %call25, %if.then24 ], [ %call31, %if.end30 ], [ -1, %lec_arp_find.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lane2_associate_req(ptr noundef %dev, ptr nocapture noundef readonly %lan_dst, ptr noundef %tlvs, i32 noundef %sizeoftlvs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %lan_dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lan_dst, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %xor.i = xor i32 %5, %3
  %add.ptr.i34 = getelementptr i8, ptr %lan_dst, i32 4
  %6 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i34, align 2
  %add.ptr1.i = getelementptr i8, ptr %1, i32 4
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %9, %7
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tlvs3 = getelementptr i8, ptr %dev, i32 2576
  %10 = ptrtoint ptr %tlvs3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tlvs3, align 4
  tail call void @kfree(ptr noundef %11) #13
  %call4 = tail call ptr @kmemdup(ptr noundef %tlvs, i32 noundef %sizeoftlvs, i32 noundef 3264) #13
  %12 = ptrtoint ptr %tlvs3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4, ptr %tlvs3, align 4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %sizeoftlvs9 = getelementptr i8, ptr %dev, i32 2580
  %13 = ptrtoint ptr %sizeoftlvs9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sizeoftlvs, ptr %sizeoftlvs9, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %sizeoftlvs, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %cmp11 = icmp eq ptr %call.i, null
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sizeoftlvs, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %17 = call ptr @memcpy(ptr %16, ptr %tlvs, i32 %sizeoftlvs)
  %call14 = tail call fastcc i32 @send_to_lecd(ptr noundef %add.ptr.i, i32 noundef 13, ptr noundef null, ptr noundef null, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 1, %do.end ], [ 1, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lec_mcast_make(ptr noundef %priv, ptr noundef %vcc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %xoff = getelementptr inbounds %struct.lec_vcc_priv, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %xoff to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %xoff, align 4
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %2 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pop, align 4
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i, align 8
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 22
  %5 = ptrtoint ptr %user_back to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %user_back, align 8
  store ptr @lec_pop, ptr %pop, align 4
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 196) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i, align 8
  %9 = ptrtoint ptr %pop to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pop, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %out

if.end12:                                         ; preds = %if.end
  %mac_addr1.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %mac_addr1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %mac_addr1.i, align 4
  %add.ptr1.i.i = getelementptr %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %add.ptr1.i.i, align 8
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pprev.i.i, align 4
  %timer.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 15
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @lec_arp_expire_arp, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @make_entry.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_used.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %last_used.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last_used.i, align 8
  %priv2.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %priv2.i, align 4
  %tx_wait.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 19
  %lock.i.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 19, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %17 = ptrtoint ptr %tx_wait.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tx_wait.i, ptr %tx_wait.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 19, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tx_wait.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qlen.i.i.i, align 8
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 20
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %usage.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %usage.i, align 8
  %atm_addr = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 1
  %sas_addr = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 20, i32 1
  %21 = call ptr @memcpy(ptr %atm_addr, ptr %sas_addr, i32 20)
  %status = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 11
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %status, align 1
  %flags15 = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 12
  %23 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags15, align 2
  %25 = or i16 %24, 2
  store i16 %25, ptr %flags15, align 2
  %vcc18 = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %vcc18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vcc, ptr %vcc18, align 8
  %push = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 10
  %27 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %push, align 8
  %old_push = getelementptr inbounds %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %old_push to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %old_push, align 8
  store ptr @lec_push, ptr %push, align 8
  %mcast_vcc = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 6
  %30 = ptrtoint ptr %mcast_vcc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %vcc, ptr %mcast_vcc, align 4
  %arrayidx.i = getelementptr %struct.lec_arp_table, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %33 = and i8 %32, 15
  %and.i = zext i8 %33 to i32
  %arrayidx2.i = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %and.i
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx2.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %35, ptr %call7.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end12.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end12.hlist_add_head.exit.i_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i48 = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %pprev.i.i48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i48, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end12.hlist_add_head.exit.i_crit_edge
  %38 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i.i, ptr %arrayidx2.i, align 4
  %39 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %arrayidx2.i, ptr %pprev.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_add.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_mcast_make, %if.then.i)) #13
          to label %out [label %if.then.i], !srcloc !343

if.then.i:                                        ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_add.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, ptr noundef %mac_addr1.i) #13
  br label %out

out:                                              ; preds = %if.then.i, %hlist_add_head.exit.i, %if.then9
  %err.0 = phi i32 [ -12, %if.then9 ], [ 0, %hlist_add_head.exit.i ], [ 0, %if.then.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lec_pop(ptr noundef %vcc, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back, align 8
  %2 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void %6(ptr noundef %vcc, ptr noundef %skb) #13
  %xoff = getelementptr inbounds %struct.lec_vcc_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %xoff to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #13
  %9 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 21
  %11 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.not = icmp ult i32 %10, %12
  br i1 %cmp.i.not, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %xoff to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %xoff, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then3.cleanup_crit_edge, label %land.lhs.true6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true6:                                   ; preds = %if.then3
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true6.cleanup_crit_edge, label %if.then8

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_tx_wake_queue(ptr noundef %17) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %land.lhs.true6.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lec_push(ptr noundef %vcc, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %proto_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 15
  %0 = ptrtoint ptr %proto_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_push.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_push, %if.then5)) #13
          to label %do.end [label %if.then5], !srcloc !343

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_push.__UNIQUE_ID_ddebug573, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call fastcc void @lec_vcc_close(ptr noundef %add.ptr.i, ptr noundef %vcc)
  br label %cleanup106

if.end6:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %3, ptr noundef nonnull dereferenceable(4) @lec_ctrl_magic, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_push.__UNIQUE_ID_ddebug574, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_push, %if.then22)) #13
          to label %do.end27 [label %if.then22], !srcloc !343

if.then22:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_push.__UNIQUE_ID_ddebug574, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.101, ptr noundef %1) #13
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %if.then8
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %skb) #13
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 77
  %4 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_data_ready, align 8
  tail call void %5(ptr noundef %vcc) #13
  br label %cleanup106

if.else:                                          ; preds = %if.end6
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %6 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %7, ptr elementtype(i32) %sk_backlog.i) #13, !srcloc !350
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 2
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp31 = icmp eq i16 %12, %14
  br i1 %cmp31, label %if.else.do.body38_crit_edge, label %lor.lhs.false

if.else.do.body38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body38

lor.lhs.false:                                    ; preds = %if.else
  %lecd = getelementptr i8, ptr %1, i32 2432
  %15 = ptrtoint ptr %lecd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lecd, align 4
  %tobool33.not = icmp eq ptr %16, null
  br i1 %tobool33.not, label %lor.lhs.false.do.body38_crit_edge, label %lor.lhs.false34

lor.lhs.false.do.body38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body38

lor.lhs.false34:                                  ; preds = %lor.lhs.false
  %flags35 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags35, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %lor.lhs.false34.do.body38_crit_edge, label %if.end54

lor.lhs.false34.do.body38_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body38

do.body38:                                        ; preds = %lor.lhs.false34.do.body38_crit_edge, %lor.lhs.false.do.body38_crit_edge, %if.else.do.body38_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_push.__UNIQUE_ID_ddebug575, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_push, %if.then50)) #13
          to label %do.end53 [label %if.then50], !srcloc !343

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_push.__UNIQUE_ID_ddebug575, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.101) #13
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body38
  tail call void @consume_skb(ptr noundef nonnull %skb) #13
  br label %cleanup106

if.end54:                                         ; preds = %lor.lhs.false34
  %h_dest = getelementptr inbounds %struct.lecdatahdr_8023, ptr %10, i32 0, i32 1
  %lec_arp_lock = getelementptr i8, ptr %1, i32 2384
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  %arrayidx1.i = getelementptr %struct.atm_vcc, ptr %vcc, i32 0, i32 8, i32 1, i32 0, i32 3, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i, align 1
  %21 = and i8 %20, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %.not = icmp eq i8 %21, 2
  br i1 %.not, label %if.then70, label %if.end54.if.end81_crit_edge

if.end54.if.end81_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then70:                                        ; preds = %if.end54
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %h_source = getelementptr inbounds %struct.lecdatahdr_8023, ptr %23, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_find.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_push, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !343

if.then.i:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_find.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %h_source) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then70
  %arrayidx.i = getelementptr %struct.lecdatahdr_8023, ptr %23, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %26 = and i8 %25, 15
  %and.i = zext i8 %26 to i32
  %arrayidx4.i = getelementptr %struct.lec_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %and.i
  %add.ptr.i.i = getelementptr %struct.lecdatahdr_8023, ptr %23, i32 0, i32 2, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %entry1.0.in.i = phi ptr [ %arrayidx4.i, %do.end.i ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %27 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %tobool8.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool8.not.i, label %for.cond.i.if.end81_crit_edge, label %for.body.i

for.cond.i.if.end81_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr9.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2
  %28 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %h_source, align 4
  %30 = ptrtoint ptr %mac_addr9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mac_addr9.i, align 4
  %xor.i.i = xor i32 %31, %29
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %35, %33
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

land.lhs.true:                                    ; preds = %for.body.i
  %vcc75 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 4
  %36 = ptrtoint ptr %vcc75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vcc75, align 4
  %cmp76.not = icmp eq ptr %37, %vcc
  br i1 %cmp76.not, label %land.lhs.true.if.end81_crit_edge, label %if.then78

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then78:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @lec_arp_remove(ptr noundef %add.ptr.i, ptr noundef nonnull %entry1.0.i)
  tail call fastcc void @lec_arp_put(ptr noundef nonnull %entry1.0.i)
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %land.lhs.true.if.end81_crit_edge, %for.cond.i.if.end81_crit_edge, %if.end54.if.end81_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call63) #13
  %38 = ptrtoint ptr %h_dest to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %h_dest, align 1
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool85.not = icmp eq i8 %40, 0
  br i1 %tobool85.not, label %land.lhs.true86, label %if.end81.if.end93_crit_edge

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

land.lhs.true86:                                  ; preds = %if.end81
  %is_proxy = getelementptr i8, ptr %1, i32 2596
  %41 = ptrtoint ptr %is_proxy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %is_proxy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool87.not = icmp eq i32 %42, 0
  br i1 %tobool87.not, label %land.lhs.true88, label %land.lhs.true86.if.end93_crit_edge

land.lhs.true86.if.end93_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

land.lhs.true88:                                  ; preds = %land.lhs.true86
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %43 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %45 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %addr_len, align 1
  %conv89 = zext i8 %46 to i32
  %bcmp155 = tail call i32 @bcmp(ptr %h_dest, ptr %44, i32 %conv89) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp155)
  %tobool91.not = icmp eq i32 %bcmp155, 0
  br i1 %tobool91.not, label %land.lhs.true88.if.end93_crit_edge, label %if.then92

land.lhs.true88.if.end93_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then92:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %skb) #13
  br label %cleanup106

if.end93:                                         ; preds = %land.lhs.true88.if.end93_crit_edge, %land.lhs.true86.if.end93_crit_edge, %if.end81.if.end93_crit_edge
  %lec_arp_empty_ones = getelementptr i8, ptr %1, i32 2308
  %47 = ptrtoint ptr %lec_arp_empty_ones to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %lec_arp_empty_ones, align 4
  %tobool.not.i.not = icmp eq ptr %48, null
  br i1 %tobool.not.i.not, label %if.end93.if.end97_crit_edge, label %if.then96

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @lec_arp_check_empties(ptr noundef %add.ptr.i, ptr noundef %vcc, ptr noundef nonnull %skb)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93.if.end97_crit_edge
  %call98 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 2) #13
  %call99 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb, ptr noundef %1) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %49 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %call99, ptr %protocol, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %50 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stats, align 8
  %inc = add i32 %51, 1
  store i32 %inc, ptr %stats, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %54 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %55, %53
  store i32 %add, ptr %rx_bytes, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %56 = call ptr @memset(ptr %cb, i32 0, i32 12)
  %call102 = tail call i32 @netif_rx(ptr noundef nonnull %skb) #13
  br label %cleanup106

cleanup106:                                       ; preds = %if.end97, %if.then92, %do.end53, %do.end27, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lec_vcc_close(ptr noundef %priv, ptr noundef readonly %vcc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_vcc_close.__UNIQUE_ID_ddebug612, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_vcc_close, %if.then)) #13
          to label %do.body8 [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %0 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vpi, align 4
  %conv = sext i16 %1 to i32
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %2 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vci, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_vcc_close.__UNIQUE_ID_ddebug612, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, i32 noundef %conv, i32 noundef %3) #13
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 5
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  %mcast_vcc = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %do.body8
  %i.0277 = phi i32 [ 0, %do.body8 ], [ %inc, %for.inc50.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %i.0277
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool23.not275 = icmp eq ptr %5, null
  br i1 %tobool23.not275, label %for.body.for.inc50_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc50_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %entry1.0276 = phi ptr [ %7, %for.inc.land.rhs_crit_edge ], [ %5, %for.body.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %entry1.0276 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry1.0276, align 4
  %vcc29 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0276, i32 0, i32 4
  %8 = ptrtoint ptr %vcc29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vcc29, align 4
  %cmp30 = icmp eq ptr %9, %vcc
  br i1 %cmp30, label %if.then32, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then32:                                        ; preds = %land.rhs
  tail call fastcc void @lec_arp_remove(ptr noundef %priv, ptr noundef nonnull %entry1.0276)
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0276, i32 0, i32 20
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.lec_arp_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.lec_arp_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %lec_arp_put.exit

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.0276) #13
  br label %lec_arp_put.exit

lec_arp_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.lec_arp_put.exit_crit_edge
  %11 = ptrtoint ptr %mcast_vcc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mcast_vcc, align 4
  %cmp34 = icmp eq ptr %12, %vcc
  br i1 %cmp34, label %if.then36, label %lec_arp_put.exit.for.inc_crit_edge

lec_arp_put.exit.for.inc_crit_edge:               ; preds = %lec_arp_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then36:                                        ; preds = %lec_arp_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %mcast_vcc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mcast_vcc, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %lec_arp_put.exit.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %tobool23.not = icmp eq ptr %7, null
  br i1 %tobool23.not, label %for.inc.for.inc50_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

for.inc.for.inc50_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50

for.inc50:                                        ; preds = %for.inc.for.inc50_crit_edge, %for.body.for.inc50_crit_edge
  %inc = add nuw nsw i32 %i.0277, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end51, label %for.inc50.for.body_crit_edge

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end51:                                        ; preds = %for.inc50
  %lec_arp_empty_ones = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %lec_arp_empty_ones to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lec_arp_empty_ones, align 4
  %tobool64.not278 = icmp eq ptr %15, null
  br i1 %tobool64.not278, label %for.end51.for.end90_crit_edge, label %for.end51.land.rhs65_crit_edge

for.end51.land.rhs65_crit_edge:                   ; preds = %for.end51
  br label %land.rhs65

for.end51.for.end90_crit_edge:                    ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end90

land.rhs65:                                       ; preds = %for.inc79.land.rhs65_crit_edge, %for.end51.land.rhs65_crit_edge
  %entry1.1279 = phi ptr [ %17, %for.inc79.land.rhs65_crit_edge ], [ %15, %for.end51.land.rhs65_crit_edge ]
  %16 = ptrtoint ptr %entry1.1279 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entry1.1279, align 4
  %vcc72 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.1279, i32 0, i32 4
  %18 = ptrtoint ptr %vcc72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vcc72, align 4
  %cmp73 = icmp eq ptr %19, %vcc
  br i1 %cmp73, label %if.then75, label %land.rhs65.for.inc79_crit_edge

land.rhs65.for.inc79_crit_edge:                   ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc79

if.then75:                                        ; preds = %land.rhs65
  tail call fastcc void @lec_arp_clear_vccs(ptr noundef nonnull %entry1.1279)
  %timer = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.1279, i32 0, i32 15
  %call76 = tail call i32 @del_timer(ptr noundef %timer) #13
  %20 = ptrtoint ptr %entry1.1279 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entry1.1279, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.1279, i32 0, i32 1
  %22 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pprev2.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %21, ptr %23, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then75.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then75.hlist_del.exit_crit_edge:               ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then75.hlist_del.exit_crit_edge
  %26 = ptrtoint ptr %entry1.1279 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.1279, align 4
  %27 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %usage.i237 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.1279, i32 0, i32 20
  %call.i.i.i.i.i.i238 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i237, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i237, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i237, ptr %usage.i237, i32 1, ptr elementtype(i32) %usage.i237) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i239 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i239)
  %cmp.i.i.i.i240 = icmp eq i32 %asmresult.i.i.i.i.i.i.i239, 1
  br i1 %cmp.i.i.i.i240, label %if.then.i244, label %if.end5.i.i.i.i242

if.end5.i.i.i.i242:                               ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i239)
  %.not.i.i.i.i241 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i239, 0
  br i1 %.not.i.i.i.i241, label %if.end5.i.i.i.i242.for.inc79_crit_edge, label %if.then10.i.i.i.i243, !prof !338

if.end5.i.i.i.i242.for.inc79_crit_edge:           ; preds = %if.end5.i.i.i.i242
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc79

if.then10.i.i.i.i243:                             ; preds = %if.end5.i.i.i.i242
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i237, i32 noundef 3) #13
  br label %for.inc79

if.then.i244:                                     ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.1279) #13
  br label %for.inc79

for.inc79:                                        ; preds = %if.then.i244, %if.then10.i.i.i.i243, %if.end5.i.i.i.i242.for.inc79_crit_edge, %land.rhs65.for.inc79_crit_edge
  %tobool64.not = icmp eq ptr %17, null
  br i1 %tobool64.not, label %for.inc79.for.end90_crit_edge, label %for.inc79.land.rhs65_crit_edge

for.inc79.land.rhs65_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs65

for.inc79.for.end90_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end90

for.end90:                                        ; preds = %for.inc79.for.end90_crit_edge, %for.end51.for.end90_crit_edge
  %lec_no_forward = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 3
  %29 = ptrtoint ptr %lec_no_forward to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lec_no_forward, align 4
  %tobool103.not280 = icmp eq ptr %30, null
  br i1 %tobool103.not280, label %for.end90.for.end129_crit_edge, label %for.end90.land.rhs104_crit_edge

for.end90.land.rhs104_crit_edge:                  ; preds = %for.end90
  br label %land.rhs104

for.end90.for.end129_crit_edge:                   ; preds = %for.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end129

land.rhs104:                                      ; preds = %for.inc118.land.rhs104_crit_edge, %for.end90.land.rhs104_crit_edge
  %entry1.2281 = phi ptr [ %32, %for.inc118.land.rhs104_crit_edge ], [ %30, %for.end90.land.rhs104_crit_edge ]
  %31 = ptrtoint ptr %entry1.2281 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entry1.2281, align 4
  %recv_vcc = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2281, i32 0, i32 5
  %33 = ptrtoint ptr %recv_vcc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %recv_vcc, align 4
  %cmp111 = icmp eq ptr %34, %vcc
  br i1 %cmp111, label %if.then113, label %land.rhs104.for.inc118_crit_edge

land.rhs104.for.inc118_crit_edge:                 ; preds = %land.rhs104
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc118

if.then113:                                       ; preds = %land.rhs104
  tail call fastcc void @lec_arp_clear_vccs(ptr noundef nonnull %entry1.2281)
  %timer114 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2281, i32 0, i32 15
  %call115 = tail call i32 @del_timer(ptr noundef %timer114) #13
  %35 = ptrtoint ptr %entry1.2281 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entry1.2281, align 4
  %pprev2.i.i246 = getelementptr inbounds %struct.hlist_node, ptr %entry1.2281, i32 0, i32 1
  %37 = ptrtoint ptr %pprev2.i.i246 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pprev2.i.i246, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %36, ptr %38, align 4
  %tobool.not.i.i247 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i247, label %if.then113.hlist_del.exit250_crit_edge, label %do.body13.i.i249

if.then113.hlist_del.exit250_crit_edge:           ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit250

do.body13.i.i249:                                 ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i248 = getelementptr inbounds %struct.hlist_node, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %pprev14.i.i248 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %pprev14.i.i248, align 4
  br label %hlist_del.exit250

hlist_del.exit250:                                ; preds = %do.body13.i.i249, %if.then113.hlist_del.exit250_crit_edge
  %41 = ptrtoint ptr %entry1.2281 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.2281, align 4
  %42 = ptrtoint ptr %pprev2.i.i246 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i246, align 4
  %usage.i251 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.2281, i32 0, i32 20
  %call.i.i.i.i.i.i252 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i251, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i251, i32 1, i32 3, i32 1) #13
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i251, ptr %usage.i251, i32 1, ptr elementtype(i32) %usage.i251) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i253 = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i253)
  %cmp.i.i.i.i254 = icmp eq i32 %asmresult.i.i.i.i.i.i.i253, 1
  br i1 %cmp.i.i.i.i254, label %if.then.i258, label %if.end5.i.i.i.i256

if.end5.i.i.i.i256:                               ; preds = %hlist_del.exit250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i253)
  %.not.i.i.i.i255 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i253, 0
  br i1 %.not.i.i.i.i255, label %if.end5.i.i.i.i256.for.inc118_crit_edge, label %if.then10.i.i.i.i257, !prof !338

if.end5.i.i.i.i256.for.inc118_crit_edge:          ; preds = %if.end5.i.i.i.i256
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc118

if.then10.i.i.i.i257:                             ; preds = %if.end5.i.i.i.i256
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i251, i32 noundef 3) #13
  br label %for.inc118

if.then.i258:                                     ; preds = %hlist_del.exit250
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.2281) #13
  br label %for.inc118

for.inc118:                                       ; preds = %if.then.i258, %if.then10.i.i.i.i257, %if.end5.i.i.i.i256.for.inc118_crit_edge, %land.rhs104.for.inc118_crit_edge
  %tobool103.not = icmp eq ptr %32, null
  br i1 %tobool103.not, label %for.inc118.for.end129_crit_edge, label %for.inc118.land.rhs104_crit_edge

for.inc118.land.rhs104_crit_edge:                 ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs104

for.inc118.for.end129_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end129

for.end129:                                       ; preds = %for.inc118.for.end129_crit_edge, %for.end90.for.end129_crit_edge
  %mcast_fwds = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 4
  %44 = ptrtoint ptr %mcast_fwds to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mcast_fwds, align 4
  %tobool142.not282 = icmp eq ptr %45, null
  br i1 %tobool142.not282, label %for.end129.for.end167_crit_edge, label %for.end129.land.rhs143_crit_edge

for.end129.land.rhs143_crit_edge:                 ; preds = %for.end129
  br label %land.rhs143

for.end129.for.end167_crit_edge:                  ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end167

land.rhs143:                                      ; preds = %for.inc156.land.rhs143_crit_edge, %for.end129.land.rhs143_crit_edge
  %entry1.3283 = phi ptr [ %47, %for.inc156.land.rhs143_crit_edge ], [ %45, %for.end129.land.rhs143_crit_edge ]
  %46 = ptrtoint ptr %entry1.3283 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %entry1.3283, align 4
  %recv_vcc150 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.3283, i32 0, i32 5
  %48 = ptrtoint ptr %recv_vcc150 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %recv_vcc150, align 4
  %cmp151 = icmp eq ptr %49, %vcc
  br i1 %cmp151, label %if.then153, label %land.rhs143.for.inc156_crit_edge

land.rhs143.for.inc156_crit_edge:                 ; preds = %land.rhs143
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc156

if.then153:                                       ; preds = %land.rhs143
  tail call fastcc void @lec_arp_clear_vccs(ptr noundef nonnull %entry1.3283)
  %50 = ptrtoint ptr %entry1.3283 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %entry1.3283, align 4
  %pprev2.i.i260 = getelementptr inbounds %struct.hlist_node, ptr %entry1.3283, i32 0, i32 1
  %52 = ptrtoint ptr %pprev2.i.i260 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pprev2.i.i260, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %51, ptr %53, align 4
  %tobool.not.i.i261 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i261, label %if.then153.hlist_del.exit264_crit_edge, label %do.body13.i.i263

if.then153.hlist_del.exit264_crit_edge:           ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit264

do.body13.i.i263:                                 ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i262 = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  %55 = ptrtoint ptr %pprev14.i.i262 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %pprev14.i.i262, align 4
  br label %hlist_del.exit264

hlist_del.exit264:                                ; preds = %do.body13.i.i263, %if.then153.hlist_del.exit264_crit_edge
  %56 = ptrtoint ptr %entry1.3283 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.3283, align 4
  %57 = ptrtoint ptr %pprev2.i.i260 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i260, align 4
  %usage.i265 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.3283, i32 0, i32 20
  %call.i.i.i.i.i.i266 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i265, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i265, i32 1, i32 3, i32 1) #13
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i265, ptr %usage.i265, i32 1, ptr elementtype(i32) %usage.i265) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i267 = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i267)
  %cmp.i.i.i.i268 = icmp eq i32 %asmresult.i.i.i.i.i.i.i267, 1
  br i1 %cmp.i.i.i.i268, label %if.then.i272, label %if.end5.i.i.i.i270

if.end5.i.i.i.i270:                               ; preds = %hlist_del.exit264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i267)
  %.not.i.i.i.i269 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i267, 0
  br i1 %.not.i.i.i.i269, label %if.end5.i.i.i.i270.for.inc156_crit_edge, label %if.then10.i.i.i.i271, !prof !338

if.end5.i.i.i.i270.for.inc156_crit_edge:          ; preds = %if.end5.i.i.i.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc156

if.then10.i.i.i.i271:                             ; preds = %if.end5.i.i.i.i270
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i265, i32 noundef 3) #13
  br label %for.inc156

if.then.i272:                                     ; preds = %hlist_del.exit264
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.3283) #13
  br label %for.inc156

for.inc156:                                       ; preds = %if.then.i272, %if.then10.i.i.i.i271, %if.end5.i.i.i.i270.for.inc156_crit_edge, %land.rhs143.for.inc156_crit_edge
  %tobool142.not = icmp eq ptr %47, null
  br i1 %tobool142.not, label %for.inc156.for.end167_crit_edge, label %for.inc156.land.rhs143_crit_edge

for.inc156.land.rhs143_crit_edge:                 ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs143

for.inc156.for.end167_crit_edge:                  ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end167

for.end167:                                       ; preds = %for.inc156.for.end167_crit_edge, %for.end129.for.end167_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call12) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lec_arp_check_empties(ptr noundef %priv, ptr noundef readnone %vcc, ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %h_source = getelementptr inbounds %struct.lecdatahdr_8023, ptr %1, i32 0, i32 2
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  %lec_arp_empty_ones = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %land.rhs.for.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %lec_arp_empty_ones, %entry ], [ %entry1.0, %land.rhs.for.cond_crit_edge ]
  %2 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %tobool9.not = icmp eq ptr %entry1.0, null
  br i1 %tobool9.not, label %do.body35, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %vcc14 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 4
  %3 = ptrtoint ptr %vcc14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vcc14, align 4
  %cmp15 = icmp eq ptr %4, %vcc
  br i1 %cmp15, label %if.then, label %land.rhs.for.cond_crit_edge

land.rhs.for.cond_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %land.rhs
  %timer = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 15
  %call17 = tail call i32 @del_timer(ptr noundef %timer) #13
  %mac_addr = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 2
  %5 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_source, align 4
  %7 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.lecdatahdr_8023, ptr %1, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr1.i, align 2
  %status = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 11
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %status, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 8
  %13 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_used, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_find.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_check_empties, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !343

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_find.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %h_source) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %arrayidx.i = getelementptr %struct.lecdatahdr_8023, ptr %1, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = and i8 %15, 15
  %and.i = zext i8 %16 to i32
  %arrayidx4.i = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %and.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %entry1.0.in.i = phi ptr [ %arrayidx4.i, %do.end.i ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %tobool8.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool8.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr9.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h_source, align 4
  %20 = ptrtoint ptr %mac_addr9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_addr9.i, align 4
  %xor.i.i = xor i32 %21, %19
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i.i = getelementptr %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %25, %23
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then21, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then21:                                        ; preds = %for.body.i
  tail call fastcc void @lec_arp_remove(ptr noundef %priv, ptr noundef nonnull %entry1.0.i)
  %usage.i = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0.i, i32 0, i32 20
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i66, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %if.end

if.then.i66:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef nonnull %entry1.0.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i66, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %27 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %entry1.0, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.0, i32 0, i32 1
  %29 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev2.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %28, ptr %30, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end.hlist_del.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end.hlist_del.exit_crit_edge
  %33 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0, align 4
  %34 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %arrayidx.i67 = getelementptr %struct.lec_arp_table, ptr %entry1.0, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i67, align 1
  %37 = and i8 %36, 15
  %and.i68 = zext i8 %37 to i32
  %arrayidx2.i = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %and.i68
  %38 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx2.i, align 4
  store volatile ptr %39, ptr %entry1.0, align 4
  %tobool.not.i.i69 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i69, label %hlist_del.exit.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

hlist_del.exit.hlist_add_head.exit.i_crit_edge:   ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry1.0, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %hlist_del.exit.hlist_add_head.exit.i_crit_edge
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry1.0, ptr %arrayidx2.i, align 4
  %42 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %arrayidx2.i, ptr %pprev2.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_add.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_check_empties, %if.then.i70)) #13
          to label %out [label %if.then.i70], !srcloc !343

if.then.i70:                                      ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_add.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, ptr noundef %mac_addr) #13
  br label %out

do.body35:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_check_empties.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_check_empties, %if.then41)) #13
          to label %out [label %if.then41], !srcloc !343

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_check_empties.__UNIQUE_ID_ddebug613, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111) #13
  br label %out

out:                                              ; preds = %if.then41, %do.body35, %if.then.i70, %hlist_add_head.exit.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lec_vcc_added(ptr noundef %priv, ptr noundef %ioc_data, ptr noundef %vcc, ptr noundef %old_push) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  %receive = getelementptr inbounds %struct.atmlec_ioc, ptr %ioc_data, i32 0, i32 2
  %0 = ptrtoint ptr %receive to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %receive, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %1, label %do.body69 [
    i8 2, label %do.body9
    i8 1, label %do.body30
  ]

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_vcc_added.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_vcc_added, %if.then14)) #13
          to label %do.end16 [label %if.then14], !srcloc !343

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_vcc_added.__UNIQUE_ID_ddebug602, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.119) #13
  br label %do.end16

do.end16:                                         ; preds = %if.then14, %do.body9
  %call17 = tail call fastcc ptr @make_entry(ptr noundef %priv, ptr noundef nonnull @bus_mac)
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %do.end16.out_crit_edge, label %if.end21

do.end16.out_crit_edge:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end21:                                         ; preds = %do.end16
  %timer = getelementptr inbounds %struct.lec_arp_table, ptr %call17, i32 0, i32 15
  %call22 = tail call i32 @del_timer(ptr noundef %timer) #13
  %atm_addr = getelementptr inbounds %struct.lec_arp_table, ptr %call17, i32 0, i32 1
  %atm_addr23 = getelementptr inbounds %struct.atmlec_ioc, ptr %ioc_data, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %atm_addr, ptr %atm_addr23, i32 20)
  %recv_vcc = getelementptr inbounds %struct.lec_arp_table, ptr %call17, i32 0, i32 5
  %4 = ptrtoint ptr %recv_vcc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vcc, ptr %recv_vcc, align 4
  %old_recv_push = getelementptr inbounds %struct.lec_arp_table, ptr %call17, i32 0, i32 7
  %5 = ptrtoint ptr %old_recv_push to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %old_push, ptr %old_recv_push, align 4
  %mcast_fwds = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %mcast_fwds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcast_fwds, align 4
  %8 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %call17, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end21.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end21.hlist_add_head.exit_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call17, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end21.hlist_add_head.exit_crit_edge
  %10 = ptrtoint ptr %mcast_fwds to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call17, ptr %mcast_fwds, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call17, i32 0, i32 1
  %11 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %mcast_fwds, ptr %pprev34.i, align 4
  br label %out

do.body30:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_vcc_added.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_vcc_added, %if.then42)) #13
          to label %do.end47 [label %if.then42], !srcloc !343

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  %atm_addr43 = getelementptr inbounds %struct.atmlec_ioc, ptr %ioc_data, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_vcc_added.__UNIQUE_ID_ddebug603, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.119, i32 noundef 20, ptr noundef %atm_addr43) #13
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %do.body30
  %call48 = tail call fastcc ptr @make_entry(ptr noundef %priv, ptr noundef nonnull @bus_mac)
  %cmp49 = icmp eq ptr %call48, null
  br i1 %cmp49, label %do.end47.out_crit_edge, label %if.end52

do.end47.out_crit_edge:                           ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end52:                                         ; preds = %do.end47
  %atm_addr53 = getelementptr inbounds %struct.lec_arp_table, ptr %call48, i32 0, i32 1
  %atm_addr55 = getelementptr inbounds %struct.atmlec_ioc, ptr %ioc_data, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %atm_addr53, ptr %atm_addr55, i32 20)
  %mac_addr = getelementptr inbounds %struct.lec_arp_table, ptr %call48, i32 0, i32 2
  %13 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  %recv_vcc58 = getelementptr inbounds %struct.lec_arp_table, ptr %call48, i32 0, i32 5
  %14 = ptrtoint ptr %recv_vcc58 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vcc, ptr %recv_vcc58, align 4
  %old_recv_push59 = getelementptr inbounds %struct.lec_arp_table, ptr %call48, i32 0, i32 7
  %15 = ptrtoint ptr %old_recv_push59 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %old_push, ptr %old_recv_push59, align 4
  %status = getelementptr inbounds %struct.lec_arp_table, ptr %call48, i32 0, i32 11
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %status, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %vcc_timeout_period = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 11
  %18 = ptrtoint ptr %vcc_timeout_period to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vcc_timeout_period, align 4
  %add = add i32 %19, %17
  %timer60 = getelementptr inbounds %struct.lec_arp_table, ptr %call48, i32 0, i32 15
  %expires = getelementptr inbounds %struct.lec_arp_table, ptr %call48, i32 0, i32 15, i32 1
  %20 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %expires, align 4
  %function = getelementptr inbounds %struct.lec_arp_table, ptr %call48, i32 0, i32 15, i32 2
  %21 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @lec_arp_expire_vcc, ptr %function, align 4
  %lec_no_forward = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 3
  %22 = ptrtoint ptr %lec_no_forward to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lec_no_forward, align 4
  %24 = ptrtoint ptr %call48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %call48, align 4
  %tobool.not.i335 = icmp eq ptr %23, null
  br i1 %tobool.not.i335, label %if.end52.hlist_add_head.exit339_crit_edge, label %do.body12.i337

if.end52.hlist_add_head.exit339_crit_edge:        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit339

do.body12.i337:                                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i336 = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %pprev.i336 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call48, ptr %pprev.i336, align 4
  br label %hlist_add_head.exit339

hlist_add_head.exit339:                           ; preds = %do.body12.i337, %if.end52.hlist_add_head.exit339_crit_edge
  %26 = ptrtoint ptr %lec_no_forward to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call48, ptr %lec_no_forward, align 4
  %pprev34.i338 = getelementptr inbounds %struct.hlist_node, ptr %call48, i32 0, i32 1
  %27 = ptrtoint ptr %pprev34.i338 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %lec_no_forward, ptr %pprev34.i338, align 4
  tail call void @add_timer(ptr noundef %timer60) #13
  br label %out

do.body69:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_vcc_added.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_vcc_added, %if.then81)) #13
          to label %do.end86 [label %if.then81], !srcloc !343

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  %atm_addr82 = getelementptr inbounds %struct.atmlec_ioc, ptr %ioc_data, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_vcc_added.__UNIQUE_ID_ddebug604, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.119, i32 noundef 20, ptr noundef %atm_addr82) #13
  br label %do.end86

do.end86:                                         ; preds = %if.then81, %do.body69
  %atm_addr95 = getelementptr inbounds %struct.atmlec_ioc, ptr %ioc_data, i32 0, i32 1
  %maximum_unknown_frame_count = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc181.for.body_crit_edge, %do.end86
  %i.0357 = phi i32 [ 0, %do.end86 ], [ %inc, %for.inc181.for.body_crit_edge ]
  %found_entry.0356 = phi i32 [ 0, %do.end86 ], [ %found_entry.1.lcssa, %for.inc181.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lec_priv, ptr %priv, i32 0, i32 2, i32 %i.0357
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %entry1.0352 = load ptr, ptr %arrayidx, align 4
  %tobool93.not353 = icmp eq ptr %entry1.0352, null
  br i1 %tobool93.not353, label %for.body.for.inc181_crit_edge, label %for.body.for.body94_crit_edge

for.body.for.body94_crit_edge:                    ; preds = %for.body
  br label %for.body94

for.body.for.inc181_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc181

for.body94:                                       ; preds = %for.inc.for.body94_crit_edge, %for.body.for.body94_crit_edge
  %entry1.0355 = phi ptr [ %entry1.0, %for.inc.for.body94_crit_edge ], [ %entry1.0352, %for.body.for.body94_crit_edge ]
  %found_entry.1354 = phi i32 [ %found_entry.2, %for.inc.for.body94_crit_edge ], [ %found_entry.0356, %for.body.for.body94_crit_edge ]
  %atm_addr97 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0355, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %atm_addr95, ptr noundef dereferenceable(20) %atm_addr97, i32 20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp100 = icmp eq i32 %bcmp, 0
  br i1 %cmp100, label %do.body103, label %for.body94.for.inc_crit_edge

for.body94.for.inc_crit_edge:                     ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body103:                                       ; preds = %for.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_vcc_added.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_vcc_added, %if.then115)) #13
          to label %do.body119 [label %if.then115], !srcloc !343

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_vcc_added.__UNIQUE_ID_ddebug605, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.119) #13
  br label %do.body119

do.body119:                                       ; preds = %if.then115, %do.body103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_vcc_added.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_vcc_added, %if.then131)) #13
          to label %do.end149 [label %if.then131], !srcloc !343

if.then131:                                       ; preds = %do.body119
  %vcc132 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0355, i32 0, i32 4
  %29 = ptrtoint ptr %vcc132 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vcc132, align 4
  %tobool133.not = icmp eq ptr %30, null
  br i1 %tobool133.not, label %if.then131.cond.end137_crit_edge, label %cond.true134

if.then131.cond.end137_crit_edge:                 ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end137

cond.true134:                                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vci, align 8
  br label %cond.end137

cond.end137:                                      ; preds = %cond.true134, %if.then131.cond.end137_crit_edge
  %cond138 = phi i32 [ %32, %cond.true134 ], [ 0, %if.then131.cond.end137_crit_edge ]
  %recv_vcc139 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0355, i32 0, i32 5
  %33 = ptrtoint ptr %recv_vcc139 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %recv_vcc139, align 4
  %tobool140.not = icmp eq ptr %34, null
  br i1 %tobool140.not, label %cond.end137.cond.end145_crit_edge, label %cond.true141

cond.end137.cond.end145_crit_edge:                ; preds = %cond.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end145

cond.true141:                                     ; preds = %cond.end137
  call void @__sanitizer_cov_trace_pc() #15
  %vci143 = getelementptr inbounds %struct.atm_vcc, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %vci143 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vci143, align 8
  br label %cond.end145

cond.end145:                                      ; preds = %cond.true141, %cond.end137.cond.end145_crit_edge
  %cond146 = phi i32 [ %36, %cond.true141 ], [ 0, %cond.end137.cond.end145_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_vcc_added.__UNIQUE_ID_ddebug606, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.119, i32 noundef %cond138, i32 noundef %cond146) #13
  br label %do.end149

do.end149:                                        ; preds = %cond.end145, %do.body119
  %timer150 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0355, i32 0, i32 15
  %call151 = tail call i32 @del_timer(ptr noundef %timer150) #13
  %vcc152 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0355, i32 0, i32 4
  %37 = ptrtoint ptr %vcc152 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %vcc, ptr %vcc152, align 4
  %old_push153 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0355, i32 0, i32 6
  %38 = ptrtoint ptr %old_push153 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %old_push, ptr %old_push153, align 4
  %status154 = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0355, i32 0, i32 11
  %39 = ptrtoint ptr %status154 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %status154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp156 = icmp eq i8 %40, 2
  br i1 %cmp156, label %if.then158, label %do.end149.for.inc_crit_edge

do.end149.for.inc_crit_edge:                      ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then158:                                       ; preds = %do.end149
  %41 = ptrtoint ptr %maximum_unknown_frame_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maximum_unknown_frame_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp159 = icmp eq i32 %42, 0
  br i1 %cmp159, label %if.then158.for.inc.sink.split_crit_edge, label %if.else163

if.then158.for.inc.sink.split_crit_edge:          ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

if.else163:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %timestamp = getelementptr inbounds %struct.lec_arp_table, ptr %entry1.0355, i32 0, i32 9
  %44 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %timestamp, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else163, %if.then158.for.inc.sink.split_crit_edge
  %.sink = phi i8 [ 4, %if.else163 ], [ 5, %if.then158.for.inc.sink.split_crit_edge ]
  %45 = ptrtoint ptr %status154 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink, ptr %status154, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %do.end149.for.inc_crit_edge, %for.body94.for.inc_crit_edge
  %found_entry.2 = phi i32 [ 1, %do.end149.for.inc_crit_edge ], [ %found_entry.1354, %for.body94.for.inc_crit_edge ], [ 1, %for.inc.sink.split ]
  %46 = ptrtoint ptr %entry1.0355 to i32
  call void @__asan_load4_noabort(i32 %46)
  %entry1.0 = load ptr, ptr %entry1.0355, align 4
  %tobool93.not = icmp eq ptr %entry1.0, null
  br i1 %tobool93.not, label %for.inc.for.inc181_crit_edge, label %for.inc.for.body94_crit_edge

for.inc.for.body94_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body94

for.inc.for.inc181_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc181

for.inc181:                                       ; preds = %for.inc.for.inc181_crit_edge, %for.body.for.inc181_crit_edge
  %found_entry.1.lcssa = phi i32 [ %found_entry.0356, %for.body.for.inc181_crit_edge ], [ %found_entry.2, %for.inc.for.inc181_crit_edge ]
  %inc = add nuw nsw i32 %i.0357, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end182, label %for.inc181.for.body_crit_edge

for.inc181.for.body_crit_edge:                    ; preds = %for.inc181
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end182:                                       ; preds = %for.inc181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_entry.1.lcssa)
  %tobool183.not = icmp eq i32 %found_entry.1.lcssa, 0
  br i1 %tobool183.not, label %if.end204, label %do.body185

do.body185:                                       ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_vcc_added.__UNIQUE_ID_ddebug607, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_vcc_added, %if.then197)) #13
          to label %out [label %if.then197], !srcloc !343

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_vcc_added.__UNIQUE_ID_ddebug607, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.119) #13
  br label %out

if.end204:                                        ; preds = %for.end182
  %call205 = tail call fastcc ptr @make_entry(ptr noundef %priv, ptr noundef nonnull @bus_mac)
  %tobool206.not = icmp eq ptr %call205, null
  br i1 %tobool206.not, label %if.end204.out_crit_edge, label %if.end208

if.end204.out_crit_edge:                          ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end208:                                        ; preds = %if.end204
  %vcc209 = getelementptr inbounds %struct.lec_arp_table, ptr %call205, i32 0, i32 4
  %47 = ptrtoint ptr %vcc209 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %vcc, ptr %vcc209, align 4
  %old_push210 = getelementptr inbounds %struct.lec_arp_table, ptr %call205, i32 0, i32 6
  %48 = ptrtoint ptr %old_push210 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %old_push, ptr %old_push210, align 4
  %atm_addr211 = getelementptr inbounds %struct.lec_arp_table, ptr %call205, i32 0, i32 1
  %49 = call ptr @memcpy(ptr %atm_addr211, ptr %atm_addr95, i32 20)
  %mac_addr215 = getelementptr inbounds %struct.lec_arp_table, ptr %call205, i32 0, i32 2
  %50 = call ptr @memset(ptr %mac_addr215, i32 0, i32 6)
  %status217 = getelementptr inbounds %struct.lec_arp_table, ptr %call205, i32 0, i32 11
  %51 = ptrtoint ptr %status217 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %status217, align 1
  %lec_arp_empty_ones = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 1
  %52 = ptrtoint ptr %lec_arp_empty_ones to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lec_arp_empty_ones, align 4
  %54 = ptrtoint ptr %call205 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %53, ptr %call205, align 4
  %tobool.not.i340 = icmp eq ptr %53, null
  br i1 %tobool.not.i340, label %if.end208.hlist_add_head.exit344_crit_edge, label %do.body12.i342

if.end208.hlist_add_head.exit344_crit_edge:       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit344

do.body12.i342:                                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i341 = getelementptr inbounds %struct.hlist_node, ptr %53, i32 0, i32 1
  %55 = ptrtoint ptr %pprev.i341 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %call205, ptr %pprev.i341, align 4
  br label %hlist_add_head.exit344

hlist_add_head.exit344:                           ; preds = %do.body12.i342, %if.end208.hlist_add_head.exit344_crit_edge
  %56 = ptrtoint ptr %lec_arp_empty_ones to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call205, ptr %lec_arp_empty_ones, align 4
  %pprev34.i343 = getelementptr inbounds %struct.hlist_node, ptr %call205, i32 0, i32 1
  %57 = ptrtoint ptr %pprev34.i343 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %lec_arp_empty_ones, ptr %pprev34.i343, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %vcc_timeout_period219 = getelementptr inbounds %struct.lec_priv, ptr %priv, i32 0, i32 11
  %59 = ptrtoint ptr %vcc_timeout_period219 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vcc_timeout_period219, align 4
  %add220 = add i32 %60, %58
  %timer221 = getelementptr inbounds %struct.lec_arp_table, ptr %call205, i32 0, i32 15
  %expires222 = getelementptr inbounds %struct.lec_arp_table, ptr %call205, i32 0, i32 15, i32 1
  %61 = ptrtoint ptr %expires222 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add220, ptr %expires222, align 4
  %function224 = getelementptr inbounds %struct.lec_arp_table, ptr %call205, i32 0, i32 15, i32 2
  %62 = ptrtoint ptr %function224 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @lec_arp_expire_vcc, ptr %function224, align 4
  tail call void @add_timer(ptr noundef %timer221) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_vcc_added.__UNIQUE_ID_ddebug608, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_vcc_added, %if.then238)) #13
          to label %out [label %if.then238], !srcloc !343

if.then238:                                       ; preds = %hlist_add_head.exit344
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_vcc_added.__UNIQUE_ID_ddebug608, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.119) #13
  br label %out

out:                                              ; preds = %if.then238, %hlist_add_head.exit344, %if.end204.out_crit_edge, %if.then197, %do.body185, %hlist_add_head.exit339, %do.end47.out_crit_edge, %hlist_add_head.exit, %do.end16.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lec_arp_expire_vcc(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -76
  %priv1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call i32 @del_timer(ptr noundef %t) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lec_arp_expire_vcc.__UNIQUE_ID_ddebug591, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lec_arp_expire_vcc, %if.then)) #13
          to label %do.body15 [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  %vcc = getelementptr i8, ptr %t, i32 -36
  %2 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcc, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.then.cond.end12_crit_edge, label %cond.true9

if.then.cond.end12_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end12

cond.true9:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %recv_vcc = getelementptr i8, ptr %t, i32 -32
  %4 = ptrtoint ptr %recv_vcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recv_vcc, align 4
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vpi, align 4
  %conv = sext i16 %7 to i32
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vci, align 8
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true9, %if.then.cond.end12_crit_edge
  %cond38 = phi i32 [ %conv, %cond.true9 ], [ 0, %if.then.cond.end12_crit_edge ]
  %cond13 = phi i32 [ %9, %cond.true9 ], [ 0, %if.then.cond.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lec_arp_expire_vcc.__UNIQUE_ID_ddebug591, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.132, ptr noundef %add.ptr, ptr noundef %1, i32 noundef %cond38, i32 noundef %cond13) #13
  br label %do.body15

do.body15:                                        ; preds = %cond.end12, %entry
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %1, i32 0, i32 5
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock) #13
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %pprev2.i.i = getelementptr i8, ptr %t, i32 -72
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev2.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %11, ptr %13, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.body15.hlist_del.exit_crit_edge, label %do.body13.i.i

do.body15.hlist_del.exit_crit_edge:               ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %do.body15.hlist_del.exit_crit_edge
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %17 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %call19) #13
  tail call fastcc void @lec_arp_clear_vccs(ptr noundef %add.ptr)
  %usage.i = getelementptr i8, ptr %t, i32 116
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !348
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.lec_arp_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.lec_arp_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_arp_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %lec_arp_put.exit

if.then.i:                                        ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @kfree(ptr noundef %add.ptr) #13
  br label %lec_arp_put.exit

lec_arp_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.lec_arp_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_atm_ioctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lec_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev = getelementptr inbounds %struct.lec_state, ptr %1, i32 0, i32 3
  %locked = getelementptr inbounds %struct.lec_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %locked, align 4
  %node = getelementptr inbounds %struct.lec_state, ptr %1, i32 0, i32 2
  %3 = call ptr @memset(ptr %dev, i32 0, i32 16)
  %4 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 1 to ptr), ptr %node, align 4
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc ptr @lec_get_idx(ptr noundef %1, i64 noundef %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %call, %cond.true ], [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lec_seq_stop(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev = getelementptr inbounds %struct.lec_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %locked = getelementptr inbounds %struct.lec_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %locked, align 4
  %lec_arp_lock = getelementptr inbounds %struct.lec_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock, i32 noundef %7) #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !351
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !326) #13
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, -1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !352
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !345

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #13, !srcloc !353
  br label %if.end

if.end:                                           ; preds = %do.end30.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lec_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call fastcc ptr @lec_get_idx(ptr noundef %1, i64 noundef 1)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lec_seq_show(ptr noundef %seq, ptr noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @lec_seq_show.lec_banner) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.lec_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %node = getelementptr inbounds %struct.lec_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.140, ptr noundef %3) #13
  %mac_addr.i = getelementptr inbounds %struct.lec_arp_table, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.141, ptr noundef %mac_addr.i) #13
  %atm_addr.i = getelementptr inbounds %struct.lec_arp_table, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.142, i32 noundef 20, ptr noundef %atm_addr.i) #13
  %status.i = getelementptr inbounds %struct.lec_arp_table, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp.i.i = icmp ugt i8 %7, 5
  %spec.store.select.i.i = select i1 %cmp.i.i, i8 3, i8 %7
  %idxprom.i.i = zext i8 %spec.store.select.i.i to i32
  %arrayidx.i.i = getelementptr [6 x ptr], ptr @lec_arp_get_status_string.lec_arp_status_string, i32 0, i32 %idxprom.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %flags.i = getelementptr inbounds %struct.lec_arp_table, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i, align 2
  %conv.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.143, ptr noundef %9, i32 noundef %conv.i) #13
  %vcc.i = getelementptr inbounds %struct.lec_arp_table, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %vcc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vcc.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %vpi.i = getelementptr inbounds %struct.atm_vcc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vpi.i, align 4
  %conv4.i = sext i16 %15 to i32
  %vci.i = getelementptr inbounds %struct.atm_vcc, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vci.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.144, i32 noundef %conv4.i, i32 noundef %17) #13
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.145) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %recv_vcc.i = getelementptr inbounds %struct.lec_arp_table, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %recv_vcc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recv_vcc.i, align 4
  %tobool6.not.i = icmp eq ptr %19, null
  br i1 %tobool6.not.i, label %if.end.i.lec_info.exit_crit_edge, label %if.then7.i

if.end.i.lec_info.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_info.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %vpi9.i = getelementptr inbounds %struct.atm_vcc, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %vpi9.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vpi9.i, align 4
  %conv10.i = sext i16 %21 to i32
  %vci12.i = getelementptr inbounds %struct.atm_vcc, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %vci12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vci12.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.146, i32 noundef %conv10.i, i32 noundef %23) #13
  br label %lec_info.exit

lec_info.exit:                                    ; preds = %if.then7.i, %if.end.i.lec_info.exit_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #13
  br label %if.end

if.end:                                           ; preds = %lec_info.exit, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lec_get_idx(ptr noundef %state, i64 noundef %l) unnamed_addr #3 align 64 {
entry:
  %lec_misc_tables.i.i.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %itf = getelementptr inbounds %struct.lec_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %itf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %itf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %1)
  %cmp31 = icmp slt i32 %1, 48
  br i1 %cmp31, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.lec_state, ptr %state, i32 0, i32 3
  %locked.i.i = getelementptr inbounds %struct.lec_state, ptr %state, i32 0, i32 1
  %arp_table.i.i.i = getelementptr inbounds %struct.lec_state, ptr %state, i32 0, i32 5
  %node.i.i.i.i = getelementptr inbounds %struct.lec_state, ptr %state, i32 0, i32 2
  %tobool.not8.i.i.i = icmp eq ptr %state, null
  %2 = getelementptr inbounds [3 x ptr], ptr %lec_misc_tables.i.i.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x ptr], ptr %lec_misc_tables.i.i.i, i32 0, i32 2
  %misc_table.i.i.i = getelementptr inbounds %struct.lec_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %dev1.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi ptr [ %.pr, %for.body.lr.ph ], [ null, %for.inc.for.body_crit_edge ]
  %6 = phi i32 [ %1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %l.addr.032 = phi i64 [ %l, %for.body.lr.ph ], [ %l.addr.13.ph, %for.inc.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.i, label %for.body.land.lhs.true.i_crit_edge

for.body.land.lhs.true.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

cond.end.i:                                       ; preds = %for.body
  %arrayidx.i = getelementptr [48 x ptr], ptr @dev_lec, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %cond.end.i.for.inc_crit_edge, label %cond.end.i.land.lhs.true.i_crit_edge

cond.end.i.land.lhs.true.i_crit_edge:             ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

cond.end.i.for.inc_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.i:                                  ; preds = %cond.end.i.land.lhs.true.i_crit_edge, %for.body.land.lhs.true.i_crit_edge
  %cond29.i = phi ptr [ %8, %cond.end.i.land.lhs.true.i_crit_edge ], [ %5, %for.body.land.lhs.true.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %cond29.i, i32 2304
  %tobool4.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.body1.i.i_crit_edge, label %cond.true5.i

land.lhs.true.i.do.body1.i.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i

cond.true5.i:                                     ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %locked.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %cond.true5.i.if.end.i.i_crit_edge

cond.true5.i.if.end.i.i_crit_edge:                ; preds = %cond.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %cond.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i.i, ptr %locked.i.i, align 4
  %lec_arp_lock.i.i = getelementptr i8, ptr %cond29.i, i32 2384
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lec_arp_lock.i.i) #13
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3.i.i, ptr %state, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %cond.true5.i.if.end.i.i_crit_edge
  %13 = ptrtoint ptr %arp_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arp_table.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp9.i.i.i = icmp slt i32 %14, 16
  br i1 %cmp9.i.i.i, label %if.end.i.i.for.body.i.i.i_crit_edge, label %if.end.i.i.land.lhs.true.i.i_crit_edge

if.end.i.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %l.addr.1 = phi i64 [ %l.addr.414, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %l.addr.032, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %p.010.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %14, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.lec_priv, ptr %add.ptr.i.i, i32 0, i32 2, i32 %p.010.i.i.i
  %15 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.body.i.i.i.if.end.i.i.i.i_crit_edge

for.body.i.i.i.if.end.i.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %for.body.i.i.i.if.end.i.i.i.i_crit_edge
  %e.0.i.i.i.i = phi ptr [ %16, %for.body.i.i.i.if.end.i.i.i.i_crit_edge ], [ %18, %if.then.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq ptr %e.0.i.i.i.i, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then1.i.i.i.i, label %if.end.i.i.i.i.if.end3.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end3.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i, align 4
  %dec.i.i.i.i = add i64 %l.addr.1, -1
  br label %if.end3.i.i.i.i

if.end3.i.i.i.i:                                  ; preds = %if.then1.i.i.i.i, %if.end.i.i.i.i.if.end3.i.i.i.i_crit_edge
  %l.addr.2 = phi i64 [ %dec.i.i.i.i, %if.then1.i.i.i.i ], [ %l.addr.1, %if.end.i.i.i.i.if.end3.i.i.i.i_crit_edge ]
  %e.1.i.i.i.i = phi ptr [ %20, %if.then1.i.i.i.i ], [ %e.0.i.i.i.i, %if.end.i.i.i.i.if.end3.i.i.i.i_crit_edge ]
  %tobool4.not20.i.i.i.i = icmp eq ptr %e.1.i.i.i.i, null
  br i1 %tobool4.not20.i.i.i.i, label %if.end3.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge, label %if.end3.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end3.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %if.end3.i.i.i.i
  br label %for.body.i.i.i.i

if.end3.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge: ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_tbl_walk.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end3.i.i.i.i.for.body.i.i.i.i_crit_edge
  %l.addr.3 = phi i64 [ %dec5.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %l.addr.2, %if.end3.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %e.221.i.i.i.i = phi ptr [ %22, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %e.1.i.i.i.i, %if.end3.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dec5.i.i.i.i = add i64 %l.addr.3, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec5.i.i.i.i)
  %cmp6.i.i.i.i = icmp slt i64 %dec5.i.i.i.i, 0
  br i1 %cmp6.i.i.i.i, label %for.body.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i

for.body.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_tbl_walk.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %21 = ptrtoint ptr %e.221.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %e.221.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i.i.i.i, label %lec_tbl_walk.exit.i.i.i.thread, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i.i

lec_tbl_walk.exit.i.i.i.thread:                   ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %node.i.i.i.i, align 4
  br label %for.inc.i.i.i

lec_tbl_walk.exit.i.i.i:                          ; preds = %for.body.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge, %if.end3.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge
  %l.addr.4 = phi i64 [ %l.addr.2, %if.end3.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge ], [ %dec5.i.i.i.i, %for.body.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge ]
  %e.2.lcssa.i.i.i.i = phi ptr [ null, %if.end3.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge ], [ %e.221.i.i.i.i, %for.body.i.i.i.i.lec_tbl_walk.exit.i.i.i_crit_edge ]
  %24 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %e.2.lcssa.i.i.i.i, ptr %node.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %l.addr.4)
  %cmp10.i.i.i.i = icmp sgt i64 %l.addr.4, -1
  %tobool.not.i.i.i = or i1 %tobool.not8.i.i.i, %cmp10.i.i.i.i
  br i1 %tobool.not.i.i.i, label %lec_tbl_walk.exit.i.i.i.for.inc.i.i.i_crit_edge, label %lec_arp_walk.exit.i.i

lec_tbl_walk.exit.i.i.i.for.inc.i.i.i_crit_edge:  ; preds = %lec_tbl_walk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %lec_tbl_walk.exit.i.i.i.for.inc.i.i.i_crit_edge, %lec_tbl_walk.exit.i.i.i.thread
  %l.addr.414 = phi i64 [ %dec5.i.i.i.i, %lec_tbl_walk.exit.i.i.i.thread ], [ %l.addr.4, %lec_tbl_walk.exit.i.i.i.for.inc.i.i.i_crit_edge ]
  %inc.i.i.i = add nsw i32 %p.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.inc.i.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i

lec_arp_walk.exit.i.i:                            ; preds = %lec_tbl_walk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %arp_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %p.010.i.i.i, ptr %arp_table.i.i.i, align 4
  br label %cond.end9.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.i.i.land.lhs.true.i.i_crit_edge, %if.end.i.i.land.lhs.true.i.i_crit_edge
  %l.addr.5 = phi i64 [ %l.addr.032, %if.end.i.i.land.lhs.true.i.i_crit_edge ], [ %l.addr.414, %for.inc.i.i.i.land.lhs.true.i.i_crit_edge ]
  %p.0.lcssa.i.ph.i.i = phi i32 [ %14, %if.end.i.i.land.lhs.true.i.i_crit_edge ], [ 16, %for.inc.i.i.i.land.lhs.true.i.i_crit_edge ]
  %26 = ptrtoint ptr %arp_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %p.0.lcssa.i.ph.i.i, ptr %arp_table.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %lec_misc_tables.i.i.i) #13
  %lec_arp_empty_ones.i.i.i = getelementptr i8, ptr %cond29.i, i32 2308
  %27 = ptrtoint ptr %lec_misc_tables.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lec_arp_empty_ones.i.i.i, ptr %lec_misc_tables.i.i.i, align 4
  %lec_no_forward.i.i.i = getelementptr i8, ptr %cond29.i, i32 2376
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %lec_no_forward.i.i.i, ptr %2, align 4
  %mcast_fwds.i.i.i = getelementptr i8, ptr %cond29.i, i32 2380
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mcast_fwds.i.i.i, ptr %3, align 4
  %30 = ptrtoint ptr %misc_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %misc_table.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp12.i.i.i = icmp ult i32 %31, 3
  br i1 %cmp12.i.i.i, label %for.body.i33.i.i, label %land.lhs.true.i.i.cond.end9.thread48.i_crit_edge

land.lhs.true.i.i.cond.end9.thread48.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end9.thread48.i

for.body.i33.i.i:                                 ; preds = %land.lhs.true.i.i
  %arrayidx.i31.i.i = getelementptr [3 x ptr], ptr %lec_misc_tables.i.i.i, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i31.i.i, align 4
  %34 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %node.i.i.i.i, align 4
  %tobool.not.i.i32.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i32.i.i, label %if.then.i.i34.i.i, label %for.body.i33.i.i.if.end.i.i37.i.i_crit_edge

for.body.i33.i.i.if.end.i.i37.i.i_crit_edge:      ; preds = %for.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i37.i.i

if.then.i.i34.i.i:                                ; preds = %for.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  br label %if.end.i.i37.i.i

if.end.i.i37.i.i:                                 ; preds = %if.then.i.i34.i.i, %for.body.i33.i.i.if.end.i.i37.i.i_crit_edge
  %e.0.i.i35.i.i = phi ptr [ %35, %for.body.i33.i.i.if.end.i.i37.i.i_crit_edge ], [ %37, %if.then.i.i34.i.i ]
  %cmp.i.i36.i.i = icmp eq ptr %e.0.i.i35.i.i, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.i36.i.i, label %if.then1.i.i39.i.i, label %if.end.i.i37.i.i.if.end3.i.i42.i.i_crit_edge

if.end.i.i37.i.i.if.end3.i.i42.i.i_crit_edge:     ; preds = %if.end.i.i37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i.i42.i.i

if.then1.i.i39.i.i:                               ; preds = %if.end.i.i37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %33, align 4
  %dec.i.i38.i.i = add i64 %l.addr.5, -1
  br label %if.end3.i.i42.i.i

if.end3.i.i42.i.i:                                ; preds = %if.then1.i.i39.i.i, %if.end.i.i37.i.i.if.end3.i.i42.i.i_crit_edge
  %l.addr.7 = phi i64 [ %dec.i.i38.i.i, %if.then1.i.i39.i.i ], [ %l.addr.5, %if.end.i.i37.i.i.if.end3.i.i42.i.i_crit_edge ]
  %e.1.i.i40.i.i = phi ptr [ %39, %if.then1.i.i39.i.i ], [ %e.0.i.i35.i.i, %if.end.i.i37.i.i.if.end3.i.i42.i.i_crit_edge ]
  %tobool4.not20.i.i41.i.i = icmp eq ptr %e.1.i.i40.i.i, null
  br i1 %tobool4.not20.i.i41.i.i, label %if.end3.i.i42.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge, label %if.end3.i.i42.i.i.for.body.i.i46.i.i_crit_edge

if.end3.i.i42.i.i.for.body.i.i46.i.i_crit_edge:   ; preds = %if.end3.i.i42.i.i
  br label %for.body.i.i46.i.i

if.end3.i.i42.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge: ; preds = %if.end3.i.i42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_tbl_walk.exit.i52.i.i

for.body.i.i46.i.i:                               ; preds = %for.inc.i.i48.i.i.for.body.i.i46.i.i_crit_edge, %if.end3.i.i42.i.i.for.body.i.i46.i.i_crit_edge
  %l.addr.8 = phi i64 [ %dec5.i.i44.i.i, %for.inc.i.i48.i.i.for.body.i.i46.i.i_crit_edge ], [ %l.addr.7, %if.end3.i.i42.i.i.for.body.i.i46.i.i_crit_edge ]
  %e.221.i.i43.i.i = phi ptr [ %41, %for.inc.i.i48.i.i.for.body.i.i46.i.i_crit_edge ], [ %e.1.i.i40.i.i, %if.end3.i.i42.i.i.for.body.i.i46.i.i_crit_edge ]
  %dec5.i.i44.i.i = add i64 %l.addr.8, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec5.i.i44.i.i)
  %cmp6.i.i45.i.i = icmp slt i64 %dec5.i.i44.i.i, 0
  br i1 %cmp6.i.i45.i.i, label %for.body.i.i46.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge, label %for.inc.i.i48.i.i

for.body.i.i46.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge: ; preds = %for.body.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_tbl_walk.exit.i52.i.i

for.inc.i.i48.i.i:                                ; preds = %for.body.i.i46.i.i
  %40 = ptrtoint ptr %e.221.i.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %e.221.i.i43.i.i, align 4
  %tobool4.not.i.i47.i.i = icmp eq ptr %41, null
  br i1 %tobool4.not.i.i47.i.i, label %lec_tbl_walk.exit.i52.i.i.thread, label %for.inc.i.i48.i.i.for.body.i.i46.i.i_crit_edge

for.inc.i.i48.i.i.for.body.i.i46.i.i_crit_edge:   ; preds = %for.inc.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i46.i.i

lec_tbl_walk.exit.i52.i.i.thread:                 ; preds = %for.inc.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %node.i.i.i.i, align 4
  br label %for.inc.i55.i.i

lec_tbl_walk.exit.i52.i.i:                        ; preds = %for.body.i.i46.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge, %if.end3.i.i42.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge
  %l.addr.9 = phi i64 [ %l.addr.7, %if.end3.i.i42.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge ], [ %dec5.i.i44.i.i, %for.body.i.i46.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge ]
  %e.2.lcssa.i.i49.i.i = phi ptr [ null, %if.end3.i.i42.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge ], [ %e.221.i.i43.i.i, %for.body.i.i46.i.i.lec_tbl_walk.exit.i52.i.i_crit_edge ]
  %43 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %e.2.lcssa.i.i49.i.i, ptr %node.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %l.addr.9)
  %cmp10.i.i50.i.i = icmp sgt i64 %l.addr.9, -1
  %tobool.not.i51.i.i = or i1 %tobool.not8.i.i.i, %cmp10.i.i50.i.i
  br i1 %tobool.not.i51.i.i, label %lec_tbl_walk.exit.i52.i.i.for.inc.i55.i.i_crit_edge, label %lec_tbl_walk.exit.i52.i.i.lec_misc_walk.exit.i.i_crit_edge

lec_tbl_walk.exit.i52.i.i.lec_misc_walk.exit.i.i_crit_edge: ; preds = %lec_tbl_walk.exit.i52.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_misc_walk.exit.i.i

lec_tbl_walk.exit.i52.i.i.for.inc.i55.i.i_crit_edge: ; preds = %lec_tbl_walk.exit.i52.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i55.i.i

for.inc.i55.i.i:                                  ; preds = %lec_tbl_walk.exit.i52.i.i.for.inc.i55.i.i_crit_edge, %lec_tbl_walk.exit.i52.i.i.thread
  %l.addr.919 = phi i64 [ %dec5.i.i44.i.i, %lec_tbl_walk.exit.i52.i.i.thread ], [ %l.addr.9, %lec_tbl_walk.exit.i52.i.i.for.inc.i55.i.i_crit_edge ]
  %inc.i53.i.i = add nuw nsw i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i53.i.i)
  %exitcond.not.i54.i.i = icmp eq i32 %inc.i53.i.i, 3
  br i1 %exitcond.not.i54.i.i, label %for.inc.i55.i.i.cond.end9.thread48.i_crit_edge, label %for.body.i33.i.i.1

for.inc.i55.i.i.cond.end9.thread48.i_crit_edge:   ; preds = %for.inc.i55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end9.thread48.i

for.body.i33.i.i.1:                               ; preds = %for.inc.i55.i.i
  %arrayidx.i31.i.i.1 = getelementptr [3 x ptr], ptr %lec_misc_tables.i.i.i, i32 0, i32 %inc.i53.i.i
  %44 = ptrtoint ptr %arrayidx.i31.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i31.i.i.1, align 4
  %46 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %node.i.i.i.i, align 4
  %tobool.not.i.i32.i.i.1 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i32.i.i.1, label %if.then.i.i34.i.i.1, label %for.body.i33.i.i.1.if.end.i.i37.i.i.1_crit_edge

for.body.i33.i.i.1.if.end.i.i37.i.i.1_crit_edge:  ; preds = %for.body.i33.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i37.i.i.1

if.then.i.i34.i.i.1:                              ; preds = %for.body.i33.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  br label %if.end.i.i37.i.i.1

if.end.i.i37.i.i.1:                               ; preds = %if.then.i.i34.i.i.1, %for.body.i33.i.i.1.if.end.i.i37.i.i.1_crit_edge
  %e.0.i.i35.i.i.1 = phi ptr [ %47, %for.body.i33.i.i.1.if.end.i.i37.i.i.1_crit_edge ], [ %49, %if.then.i.i34.i.i.1 ]
  %cmp.i.i36.i.i.1 = icmp eq ptr %e.0.i.i35.i.i.1, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.i36.i.i.1, label %if.then1.i.i39.i.i.1, label %if.end.i.i37.i.i.1.if.end3.i.i42.i.i.1_crit_edge

if.end.i.i37.i.i.1.if.end3.i.i42.i.i.1_crit_edge: ; preds = %if.end.i.i37.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i.i42.i.i.1

if.then1.i.i39.i.i.1:                             ; preds = %if.end.i.i37.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  %dec.i.i38.i.i.1 = add i64 %l.addr.919, -1
  br label %if.end3.i.i42.i.i.1

if.end3.i.i42.i.i.1:                              ; preds = %if.then1.i.i39.i.i.1, %if.end.i.i37.i.i.1.if.end3.i.i42.i.i.1_crit_edge
  %l.addr.7.1 = phi i64 [ %dec.i.i38.i.i.1, %if.then1.i.i39.i.i.1 ], [ %l.addr.919, %if.end.i.i37.i.i.1.if.end3.i.i42.i.i.1_crit_edge ]
  %e.1.i.i40.i.i.1 = phi ptr [ %51, %if.then1.i.i39.i.i.1 ], [ %e.0.i.i35.i.i.1, %if.end.i.i37.i.i.1.if.end3.i.i42.i.i.1_crit_edge ]
  %tobool4.not20.i.i41.i.i.1 = icmp eq ptr %e.1.i.i40.i.i.1, null
  br i1 %tobool4.not20.i.i41.i.i.1, label %if.end3.i.i42.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge, label %if.end3.i.i42.i.i.1.for.body.i.i46.i.i.1_crit_edge

if.end3.i.i42.i.i.1.for.body.i.i46.i.i.1_crit_edge: ; preds = %if.end3.i.i42.i.i.1
  br label %for.body.i.i46.i.i.1

if.end3.i.i42.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge: ; preds = %if.end3.i.i42.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_tbl_walk.exit.i52.i.i.1

for.body.i.i46.i.i.1:                             ; preds = %for.inc.i.i48.i.i.1.for.body.i.i46.i.i.1_crit_edge, %if.end3.i.i42.i.i.1.for.body.i.i46.i.i.1_crit_edge
  %l.addr.8.1 = phi i64 [ %dec5.i.i44.i.i.1, %for.inc.i.i48.i.i.1.for.body.i.i46.i.i.1_crit_edge ], [ %l.addr.7.1, %if.end3.i.i42.i.i.1.for.body.i.i46.i.i.1_crit_edge ]
  %e.221.i.i43.i.i.1 = phi ptr [ %53, %for.inc.i.i48.i.i.1.for.body.i.i46.i.i.1_crit_edge ], [ %e.1.i.i40.i.i.1, %if.end3.i.i42.i.i.1.for.body.i.i46.i.i.1_crit_edge ]
  %dec5.i.i44.i.i.1 = add i64 %l.addr.8.1, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec5.i.i44.i.i.1)
  %cmp6.i.i45.i.i.1 = icmp slt i64 %dec5.i.i44.i.i.1, 0
  br i1 %cmp6.i.i45.i.i.1, label %for.body.i.i46.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge, label %for.inc.i.i48.i.i.1

for.body.i.i46.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge: ; preds = %for.body.i.i46.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_tbl_walk.exit.i52.i.i.1

for.inc.i.i48.i.i.1:                              ; preds = %for.body.i.i46.i.i.1
  %52 = ptrtoint ptr %e.221.i.i43.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %e.221.i.i43.i.i.1, align 4
  %tobool4.not.i.i47.i.i.1 = icmp eq ptr %53, null
  br i1 %tobool4.not.i.i47.i.i.1, label %lec_tbl_walk.exit.i52.i.i.thread.1, label %for.inc.i.i48.i.i.1.for.body.i.i46.i.i.1_crit_edge

for.inc.i.i48.i.i.1.for.body.i.i46.i.i.1_crit_edge: ; preds = %for.inc.i.i48.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i46.i.i.1

lec_tbl_walk.exit.i52.i.i.thread.1:               ; preds = %for.inc.i.i48.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %node.i.i.i.i, align 4
  br label %for.inc.i55.i.i.1

lec_tbl_walk.exit.i52.i.i.1:                      ; preds = %for.body.i.i46.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge, %if.end3.i.i42.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge
  %l.addr.9.1 = phi i64 [ %l.addr.7.1, %if.end3.i.i42.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge ], [ %dec5.i.i44.i.i.1, %for.body.i.i46.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge ]
  %e.2.lcssa.i.i49.i.i.1 = phi ptr [ null, %if.end3.i.i42.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge ], [ %e.221.i.i43.i.i.1, %for.body.i.i46.i.i.1.lec_tbl_walk.exit.i52.i.i.1_crit_edge ]
  %55 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %e.2.lcssa.i.i49.i.i.1, ptr %node.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %l.addr.9.1)
  %cmp10.i.i50.i.i.1 = icmp sgt i64 %l.addr.9.1, -1
  %tobool.not.i51.i.i.1 = or i1 %tobool.not8.i.i.i, %cmp10.i.i50.i.i.1
  br i1 %tobool.not.i51.i.i.1, label %lec_tbl_walk.exit.i52.i.i.1.for.inc.i55.i.i.1_crit_edge, label %lec_tbl_walk.exit.i52.i.i.1.lec_misc_walk.exit.i.i_crit_edge

lec_tbl_walk.exit.i52.i.i.1.lec_misc_walk.exit.i.i_crit_edge: ; preds = %lec_tbl_walk.exit.i52.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_misc_walk.exit.i.i

lec_tbl_walk.exit.i52.i.i.1.for.inc.i55.i.i.1_crit_edge: ; preds = %lec_tbl_walk.exit.i52.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i55.i.i.1

for.inc.i55.i.i.1:                                ; preds = %lec_tbl_walk.exit.i52.i.i.1.for.inc.i55.i.i.1_crit_edge, %lec_tbl_walk.exit.i52.i.i.thread.1
  %l.addr.919.1 = phi i64 [ %dec5.i.i44.i.i.1, %lec_tbl_walk.exit.i52.i.i.thread.1 ], [ %l.addr.9.1, %lec_tbl_walk.exit.i52.i.i.1.for.inc.i55.i.i.1_crit_edge ]
  %inc.i53.i.i.1 = add nuw nsw i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i53.i.i.1)
  %exitcond.not.i54.i.i.1 = icmp eq i32 %inc.i53.i.i.1, 3
  br i1 %exitcond.not.i54.i.i.1, label %for.inc.i55.i.i.1.cond.end9.thread48.i_crit_edge, label %for.body.i33.i.i.2

for.inc.i55.i.i.1.cond.end9.thread48.i_crit_edge: ; preds = %for.inc.i55.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end9.thread48.i

for.body.i33.i.i.2:                               ; preds = %for.inc.i55.i.i.1
  %arrayidx.i31.i.i.2 = getelementptr [3 x ptr], ptr %lec_misc_tables.i.i.i, i32 0, i32 %inc.i53.i.i.1
  %56 = ptrtoint ptr %arrayidx.i31.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i31.i.i.2, align 4
  %58 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %node.i.i.i.i, align 4
  %tobool.not.i.i32.i.i.2 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i32.i.i.2, label %if.then.i.i34.i.i.2, label %for.body.i33.i.i.2.if.end.i.i37.i.i.2_crit_edge

for.body.i33.i.i.2.if.end.i.i37.i.i.2_crit_edge:  ; preds = %for.body.i33.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i37.i.i.2

if.then.i.i34.i.i.2:                              ; preds = %for.body.i33.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  br label %if.end.i.i37.i.i.2

if.end.i.i37.i.i.2:                               ; preds = %if.then.i.i34.i.i.2, %for.body.i33.i.i.2.if.end.i.i37.i.i.2_crit_edge
  %e.0.i.i35.i.i.2 = phi ptr [ %59, %for.body.i33.i.i.2.if.end.i.i37.i.i.2_crit_edge ], [ %61, %if.then.i.i34.i.i.2 ]
  %cmp.i.i36.i.i.2 = icmp eq ptr %e.0.i.i35.i.i.2, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.i36.i.i.2, label %if.then1.i.i39.i.i.2, label %if.end.i.i37.i.i.2.if.end3.i.i42.i.i.2_crit_edge

if.end.i.i37.i.i.2.if.end3.i.i42.i.i.2_crit_edge: ; preds = %if.end.i.i37.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i.i42.i.i.2

if.then1.i.i39.i.i.2:                             ; preds = %if.end.i.i37.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %57, align 4
  %dec.i.i38.i.i.2 = add i64 %l.addr.919.1, -1
  br label %if.end3.i.i42.i.i.2

if.end3.i.i42.i.i.2:                              ; preds = %if.then1.i.i39.i.i.2, %if.end.i.i37.i.i.2.if.end3.i.i42.i.i.2_crit_edge
  %l.addr.7.2 = phi i64 [ %dec.i.i38.i.i.2, %if.then1.i.i39.i.i.2 ], [ %l.addr.919.1, %if.end.i.i37.i.i.2.if.end3.i.i42.i.i.2_crit_edge ]
  %e.1.i.i40.i.i.2 = phi ptr [ %63, %if.then1.i.i39.i.i.2 ], [ %e.0.i.i35.i.i.2, %if.end.i.i37.i.i.2.if.end3.i.i42.i.i.2_crit_edge ]
  %tobool4.not20.i.i41.i.i.2 = icmp eq ptr %e.1.i.i40.i.i.2, null
  br i1 %tobool4.not20.i.i41.i.i.2, label %if.end3.i.i42.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge, label %if.end3.i.i42.i.i.2.for.body.i.i46.i.i.2_crit_edge

if.end3.i.i42.i.i.2.for.body.i.i46.i.i.2_crit_edge: ; preds = %if.end3.i.i42.i.i.2
  br label %for.body.i.i46.i.i.2

if.end3.i.i42.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge: ; preds = %if.end3.i.i42.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_tbl_walk.exit.i52.i.i.2

for.body.i.i46.i.i.2:                             ; preds = %for.inc.i.i48.i.i.2.for.body.i.i46.i.i.2_crit_edge, %if.end3.i.i42.i.i.2.for.body.i.i46.i.i.2_crit_edge
  %l.addr.8.2 = phi i64 [ %dec5.i.i44.i.i.2, %for.inc.i.i48.i.i.2.for.body.i.i46.i.i.2_crit_edge ], [ %l.addr.7.2, %if.end3.i.i42.i.i.2.for.body.i.i46.i.i.2_crit_edge ]
  %e.221.i.i43.i.i.2 = phi ptr [ %65, %for.inc.i.i48.i.i.2.for.body.i.i46.i.i.2_crit_edge ], [ %e.1.i.i40.i.i.2, %if.end3.i.i42.i.i.2.for.body.i.i46.i.i.2_crit_edge ]
  %dec5.i.i44.i.i.2 = add i64 %l.addr.8.2, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec5.i.i44.i.i.2)
  %cmp6.i.i45.i.i.2 = icmp slt i64 %dec5.i.i44.i.i.2, 0
  br i1 %cmp6.i.i45.i.i.2, label %for.body.i.i46.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge, label %for.inc.i.i48.i.i.2

for.body.i.i46.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge: ; preds = %for.body.i.i46.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_tbl_walk.exit.i52.i.i.2

for.inc.i.i48.i.i.2:                              ; preds = %for.body.i.i46.i.i.2
  %64 = ptrtoint ptr %e.221.i.i43.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %e.221.i.i43.i.i.2, align 4
  %tobool4.not.i.i47.i.i.2 = icmp eq ptr %65, null
  br i1 %tobool4.not.i.i47.i.i.2, label %lec_tbl_walk.exit.i52.i.i.thread.2, label %for.inc.i.i48.i.i.2.for.body.i.i46.i.i.2_crit_edge

for.inc.i.i48.i.i.2.for.body.i.i46.i.i.2_crit_edge: ; preds = %for.inc.i.i48.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i46.i.i.2

lec_tbl_walk.exit.i52.i.i.thread.2:               ; preds = %for.inc.i.i48.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %node.i.i.i.i, align 4
  br label %cond.end9.thread48.i

lec_tbl_walk.exit.i52.i.i.2:                      ; preds = %for.body.i.i46.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge, %if.end3.i.i42.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge
  %l.addr.9.2 = phi i64 [ %l.addr.7.2, %if.end3.i.i42.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge ], [ %dec5.i.i44.i.i.2, %for.body.i.i46.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge ]
  %e.2.lcssa.i.i49.i.i.2 = phi ptr [ null, %if.end3.i.i42.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge ], [ %e.221.i.i43.i.i.2, %for.body.i.i46.i.i.2.lec_tbl_walk.exit.i52.i.i.2_crit_edge ]
  %67 = ptrtoint ptr %node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %e.2.lcssa.i.i49.i.i.2, ptr %node.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %l.addr.9.2)
  %cmp10.i.i50.i.i.2 = icmp sgt i64 %l.addr.9.2, -1
  %tobool.not.i51.i.i.2 = or i1 %tobool.not8.i.i.i, %cmp10.i.i50.i.i.2
  br i1 %tobool.not.i51.i.i.2, label %lec_tbl_walk.exit.i52.i.i.2.cond.end9.thread48.i_crit_edge, label %lec_tbl_walk.exit.i52.i.i.2.lec_misc_walk.exit.i.i_crit_edge

lec_tbl_walk.exit.i52.i.i.2.lec_misc_walk.exit.i.i_crit_edge: ; preds = %lec_tbl_walk.exit.i52.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %lec_misc_walk.exit.i.i

lec_tbl_walk.exit.i52.i.i.2.cond.end9.thread48.i_crit_edge: ; preds = %lec_tbl_walk.exit.i52.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end9.thread48.i

lec_misc_walk.exit.i.i:                           ; preds = %lec_tbl_walk.exit.i52.i.i.2.lec_misc_walk.exit.i.i_crit_edge, %lec_tbl_walk.exit.i52.i.i.1.lec_misc_walk.exit.i.i_crit_edge, %lec_tbl_walk.exit.i52.i.i.lec_misc_walk.exit.i.i_crit_edge
  %q.013.i.i.i.lcssa = phi i32 [ %31, %lec_tbl_walk.exit.i52.i.i.lec_misc_walk.exit.i.i_crit_edge ], [ %inc.i53.i.i, %lec_tbl_walk.exit.i52.i.i.1.lec_misc_walk.exit.i.i_crit_edge ], [ %inc.i53.i.i.1, %lec_tbl_walk.exit.i52.i.i.2.lec_misc_walk.exit.i.i_crit_edge ]
  %l.addr.9.lcssa = phi i64 [ %l.addr.9, %lec_tbl_walk.exit.i52.i.i.lec_misc_walk.exit.i.i_crit_edge ], [ %l.addr.9.1, %lec_tbl_walk.exit.i52.i.i.1.lec_misc_walk.exit.i.i_crit_edge ], [ %l.addr.9.2, %lec_tbl_walk.exit.i52.i.i.2.lec_misc_walk.exit.i.i_crit_edge ]
  %68 = ptrtoint ptr %misc_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %q.013.i.i.i.lcssa, ptr %misc_table.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lec_misc_tables.i.i.i) #13
  br label %cond.end9.i

cond.end9.thread48.i:                             ; preds = %lec_tbl_walk.exit.i52.i.i.2.cond.end9.thread48.i_crit_edge, %lec_tbl_walk.exit.i52.i.i.thread.2, %for.inc.i55.i.i.1.cond.end9.thread48.i_crit_edge, %for.inc.i55.i.i.cond.end9.thread48.i_crit_edge, %land.lhs.true.i.i.cond.end9.thread48.i_crit_edge
  %l.addr.10 = phi i64 [ %l.addr.5, %land.lhs.true.i.i.cond.end9.thread48.i_crit_edge ], [ %l.addr.919, %for.inc.i55.i.i.cond.end9.thread48.i_crit_edge ], [ %l.addr.919.1, %for.inc.i55.i.i.1.cond.end9.thread48.i_crit_edge ], [ %dec5.i.i44.i.i.2, %lec_tbl_walk.exit.i52.i.i.thread.2 ], [ %l.addr.9.2, %lec_tbl_walk.exit.i52.i.i.2.cond.end9.thread48.i_crit_edge ]
  %q.0.lcssa.i.ph.i.i = phi i32 [ %31, %land.lhs.true.i.i.cond.end9.thread48.i_crit_edge ], [ 3, %lec_tbl_walk.exit.i52.i.i.thread.2 ], [ 3, %lec_tbl_walk.exit.i52.i.i.2.cond.end9.thread48.i_crit_edge ], [ 3, %for.inc.i55.i.i.1.cond.end9.thread48.i_crit_edge ], [ 3, %for.inc.i55.i.i.cond.end9.thread48.i_crit_edge ]
  %69 = ptrtoint ptr %misc_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %q.0.lcssa.i.ph.i.i, ptr %misc_table.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lec_misc_tables.i.i.i) #13
  %lec_arp_lock10.i.i = getelementptr i8, ptr %cond29.i, i32 2384
  %70 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lec_arp_lock10.i.i, i32 noundef %71) #13
  %72 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %locked.i.i, align 4
  %73 = ptrtoint ptr %misc_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %misc_table.i.i.i, align 4
  %74 = ptrtoint ptr %arp_table.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %arp_table.i.i.i, align 4
  br label %do.body1.i.i

cond.end9.i:                                      ; preds = %lec_misc_walk.exit.i.i, %lec_arp_walk.exit.i.i
  %l.addr.11 = phi i64 [ %l.addr.9.lcssa, %lec_misc_walk.exit.i.i ], [ %l.addr.4, %lec_arp_walk.exit.i.i ]
  %75 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr.i = load ptr, ptr %locked.i.i, align 4
  %tobool11.not.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool11.not.not.i, label %cond.end9.i.do.body1.i.i_crit_edge, label %lec_itf_walk.exit

cond.end9.i.do.body1.i.i_crit_edge:               ; preds = %cond.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %cond.end9.i.do.body1.i.i_crit_edge, %cond.end9.thread48.i, %land.lhs.true.i.do.body1.i.i_crit_edge
  %l.addr.12 = phi i64 [ %l.addr.032, %land.lhs.true.i.do.body1.i.i_crit_edge ], [ %l.addr.10, %cond.end9.thread48.i ], [ %l.addr.11, %cond.end9.i.do.body1.i.i_crit_edge ]
  %76 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !351
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %cond29.i, i32 0, i32 118
  %77 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !326) #13
  %and.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %85, %79
  %86 = inttoptr i32 %add.i.i to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %add13.i.i = add i32 %88, -1
  store i32 %add13.i.i, ptr %86, align 4
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !352
  %and.i.i.i.i = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !345

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %76) #13, !srcloc !353
  br label %for.inc

lec_itf_walk.exit:                                ; preds = %cond.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %cond29.i, ptr %dev1.i, align 4
  br label %for.end

for.inc:                                          ; preds = %dev_put.exit.i, %cond.end.i.for.inc_crit_edge
  %l.addr.13.ph = phi i64 [ %l.addr.12, %dev_put.exit.i ], [ %l.addr.032, %cond.end.i.for.inc_crit_edge ]
  %91 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %dev1.i, align 4
  %92 = ptrtoint ptr %itf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %itf, align 4
  %inc = add i32 %93, 1
  store i32 %inc, ptr %itf, align 4
  %cmp = icmp slt i32 %inc, 48
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lec_itf_walk.exit, %entry.for.end_crit_edge
  %v.1 = phi ptr [ %.pr.i, %lec_itf_walk.exit ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  ret ptr %v.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !251, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !282, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324}
!llvm.named.register.sp = !{!326}
!llvm.module.flags = !{!327, !328, !329, !330, !331, !332, !333, !334}
!llvm.ident = !{!335}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/atm/lec.c", i32 1050, i32 20}
!2 = !{ptr @__initcall__kmod_lec__582_1064_lane_module_init6, !3, !"__initcall__kmod_lec__582_1064_lane_module_init6", i1 false, i1 false}
!3 = !{!"../net/atm/lec.c", i32 1064, i32 1}
!4 = !{ptr @__exitcall_lane_module_cleanup, !5, !"__exitcall_lane_module_cleanup", i1 false, i1 false}
!5 = !{!"../net/atm/lec.c", i32 1065, i32 1}
!6 = !{ptr @__UNIQUE_ID_file614, !7, !"__UNIQUE_ID_file614", i1 false, i1 false}
!7 = !{!"../net/atm/lec.c", i32 2237, i32 1}
!8 = !{ptr @__UNIQUE_ID_license615, !7, !"__UNIQUE_ID_license615", i1 false, i1 false}
!9 = !{ptr @dev_lec, !10, !"dev_lec", i1 false, i1 false}
!10 = !{!"../net/atm/lec.c", i32 126, i32 27}
!11 = !{ptr @lane_ioctl_ops, !12, !"lane_ioctl_ops", i1 false, i1 false}
!12 = !{!"../net/atm/lec.c", i32 1022, i32 25}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/atm/lec.c", i32 741, i32 40}
!15 = !{ptr @lec_netdev_ops, !16, !"lec_netdev_ops", i1 false, i1 false}
!16 = !{!"../net/atm/lec.c", i32 556, i32 36}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/atm/lec.c", i32 216, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @lec_start_xmit.__UNIQUE_ID_ddebug560, !18, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/atm/lec.c", i32 218, i32 3}
!25 = !{ptr @lec_start_xmit._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @lec_start_xmit._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/atm/lec.c", i32 225, i32 2}
!29 = !{ptr @lec_start_xmit.__UNIQUE_ID_ddebug561, !28, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/atm/lec.c", i32 235, i32 3}
!33 = !{ptr @lec_start_xmit.__UNIQUE_ID_ddebug562, !32, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/atm/lec.c", i32 284, i32 2}
!37 = !{ptr @lec_start_xmit.__UNIQUE_ID_ddebug563, !36, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/atm/lec.c", i32 288, i32 4}
!41 = !{ptr @lec_start_xmit.__UNIQUE_ID_ddebug564, !40, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!42 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/atm/lec.c", i32 292, i32 4}
!45 = !{ptr @lec_start_xmit.__UNIQUE_ID_ddebug565, !44, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/atm/lec.c", i32 305, i32 3}
!49 = !{ptr @lec_start_xmit.__UNIQUE_ID_ddebug566, !48, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bridge_ula_lec, !52, !"bridge_ula_lec", i1 false, i1 false}
!52 = !{!"../net/atm/lec.c", i32 38, i32 22}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/atm/lec.c", i32 1744, i32 4}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @lec_arp_resolve.__UNIQUE_ID_ddebug595, !54, !"__UNIQUE_ID_ddebug595", i1 false, i1 false}
!57 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/atm/lec.c", i32 1755, i32 3}
!60 = !{ptr @lec_arp_resolve.__UNIQUE_ID_ddebug596, !59, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!61 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/atm/lec.c", i32 1761, i32 3}
!64 = !{ptr @lec_arp_resolve.__UNIQUE_ID_ddebug597, !63, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!65 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @bus_mac, !67, !"bus_mac", i1 false, i1 false}
!67 = !{!"../net/atm/lec.c", i32 123, i32 22}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/atm/lec.c", i32 1520, i32 2}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @lec_arp_find.__UNIQUE_ID_ddebug589, !69, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!72 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @make_entry.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../net/atm/lec.c", i32 1540, i32 2}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @skb_queue_head_init.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/atm/lec.c", i32 1288, i32 2}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @lec_arp_add.__UNIQUE_ID_ddebug587, !80, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!83 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/atm/lec.c", i32 539, i32 3}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @send_to_lecd.__UNIQUE_ID_ddebug572, !85, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!88 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/atm/lec.c", i32 1555, i32 2}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @lec_arp_expire_arp.__UNIQUE_ID_ddebug590, !90, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!93 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/atm/lec.c", i32 199, i32 2}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @lec_tx_timeout._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @lec_tx_timeout._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @lec_arp_init.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../net/atm/lec.c", i32 1242, i32 2}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @lec_arp_init.__key.43, !103, !"__key", i1 false, i1 false}
!103 = !{!"../net/atm/lec.c", i32 1243, i32 2}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @lec_arp_init.__key.45, !103, !"__key", i1 false, i1 false}
!106 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/atm/lec.c", i32 1662, i32 2}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @lec_arp_check_expire.__UNIQUE_ID_ddebug594, !108, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!111 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/atm/lec.c", i32 1603, i32 2}
!114 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @__lec_arp_check_expire.__UNIQUE_ID_ddebug592, !113, !"__UNIQUE_ID_ddebug592", i1 false, i1 false}
!116 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/atm/lec.c", i32 1609, i32 3}
!119 = !{ptr @__lec_arp_check_expire.__UNIQUE_ID_ddebug593, !118, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!120 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/atm/lec.c", i32 1329, i32 2}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @lec_arp_remove.__UNIQUE_ID_ddebug588, !122, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!125 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/atm/lec.c", i32 499, i32 10}
!128 = !{ptr @lecatm_dev, !129, !"lecatm_dev", i1 false, i1 false}
!129 = !{!"../net/atm/lec.c", i32 495, i32 23}
!130 = !{ptr @lecdev_ops, !131, !"lecdev_ops", i1 false, i1 false}
!131 = !{!"../net/atm/lec.c", i32 490, i32 32}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/atm/lec.c", i32 480, i32 3}
!134 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @lec_atm_close._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @lec_atm_close._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/atm/lec.c", i32 486, i32 2}
!139 = !{ptr @lec_atm_close._entry.61, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @lec_atm_close._entry_ptr.63, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @lec_atm_send.zero_addr, !142, !"zero_addr", i1 false, i1 false}
!142 = !{!"../net/atm/lec.c", i32 343, i32 18}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/atm/lec.c", i32 355, i32 2}
!145 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @lec_atm_send.__UNIQUE_ID_ddebug567, !144, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!147 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/atm/lec.c", i32 387, i32 3}
!150 = !{ptr @lec_atm_send.__UNIQUE_ID_ddebug568, !149, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!151 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/atm/lec.c", i32 389, i32 4}
!154 = !{ptr @lec_atm_send.__UNIQUE_ID_ddebug569, !153, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!155 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/atm/lec.c", i32 416, i32 4}
!158 = !{ptr @lec_atm_send._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @lec_atm_send._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../net/atm/lec.c", i32 432, i32 3}
!162 = !{ptr @lec_atm_send.__UNIQUE_ID_ddebug570, !161, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!163 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/atm/lec.c", i32 443, i32 4}
!166 = !{ptr @lec_atm_send.__UNIQUE_ID_ddebug571, !165, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!167 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/atm/lec.c", i32 459, i32 3}
!170 = !{ptr @lec_atm_send._entry.76, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @lec_atm_send._entry_ptr.78, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/atm/lec.c", i32 1798, i32 2}
!174 = !{ptr @lec_addr_delete.__UNIQUE_ID_ddebug598, !173, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/atm/lec.c", i32 2059, i32 2}
!177 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @lec_flush_complete.__UNIQUE_ID_ddebug609, !176, !"__UNIQUE_ID_ddebug609", i1 false, i1 false}
!179 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/atm/lec.c", i32 2078, i32 5}
!182 = !{ptr @lec_flush_complete.__UNIQUE_ID_ddebug610, !181, !"__UNIQUE_ID_ddebug610", i1 false, i1 false}
!183 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/atm/lec.c", i32 1830, i32 2}
!186 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @lec_arp_update.__UNIQUE_ID_ddebug599, !185, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!188 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/atm/lec.c", i32 1868, i32 5}
!193 = !{ptr @lec_arp_update.__UNIQUE_ID_ddebug600, !192, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!194 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/atm/lec.c", i32 1913, i32 2}
!197 = !{ptr @lec_arp_update.__UNIQUE_ID_ddebug601, !196, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!198 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @lane2_ops, !200, !"lane2_ops", i1 false, i1 false}
!200 = !{!"../net/atm/lec.c", i32 117, i32 25}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/atm/lec.c", i32 1144, i32 3}
!203 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @lane2_associate_req._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @lane2_associate_req._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../net/atm/lec.c", i32 2101, i32 5}
!208 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @lec_set_flush_tran_id.__UNIQUE_ID_ddebug611, !207, !"__UNIQUE_ID_ddebug611", i1 false, i1 false}
!210 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../net/atm/lec.c", i32 668, i32 3}
!213 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @lec_pop._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @lec_pop._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.101, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/atm/lec.c", i32 591, i32 3}
!218 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @lec_push.__UNIQUE_ID_ddebug573, !217, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!220 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../net/atm/lec.c", i32 610, i32 3}
!223 = !{ptr @lec_push.__UNIQUE_ID_ddebug574, !222, !"__UNIQUE_ID_ddebug574", i1 false, i1 false}
!224 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/atm/lec.c", i32 624, i32 4}
!227 = !{ptr @lec_push.__UNIQUE_ID_ddebug575, !226, !"__UNIQUE_ID_ddebug575", i1 false, i1 false}
!228 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../net/atm/lec.c", i32 2153, i32 2}
!231 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @lec_vcc_close.__UNIQUE_ID_ddebug612, !230, !"__UNIQUE_ID_ddebug612", i1 false, i1 false}
!233 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @lec_ctrl_magic, !235, !"lec_ctrl_magic", i1 false, i1 false}
!235 = !{!"../net/atm/lec.c", i32 564, i32 28}
!236 = !{ptr @.str.111, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../net/atm/lec.c", i32 2232, i32 2}
!238 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @lec_arp_check_empties.__UNIQUE_ID_ddebug613, !237, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!240 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../net/atm/lec.c", i32 690, i32 3}
!243 = !{ptr @.str.115, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @lec_vcc_attach._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @lec_vcc_attach._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!248 = distinct !{null, !247, !"<string literal>", i1 false, i1 false}
!249 = distinct !{null, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!251 = !{ptr @.str.118, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!253 = !{ptr @.str.119, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../net/atm/lec.c", i32 1934, i32 3}
!255 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @lec_vcc_added.__UNIQUE_ID_ddebug602, !254, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!257 = !{ptr @.str.121, !254, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.122, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../net/atm/lec.c", i32 1959, i32 3}
!260 = !{ptr @lec_vcc_added.__UNIQUE_ID_ddebug603, !259, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!261 = !{ptr @.str.123, !259, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.124, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../net/atm/lec.c", i32 1976, i32 2}
!264 = !{ptr @lec_vcc_added.__UNIQUE_ID_ddebug604, !263, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!265 = !{ptr @.str.125, !263, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.126, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../net/atm/lec.c", i32 1984, i32 5}
!268 = !{ptr @lec_vcc_added.__UNIQUE_ID_ddebug605, !267, !"__UNIQUE_ID_ddebug605", i1 false, i1 false}
!269 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.128, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../net/atm/lec.c", i32 1985, i32 5}
!272 = !{ptr @lec_vcc_added.__UNIQUE_ID_ddebug606, !271, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!273 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.130, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../net/atm/lec.c", i32 2027, i32 3}
!276 = !{ptr @lec_vcc_added.__UNIQUE_ID_ddebug607, !275, !"__UNIQUE_ID_ddebug607", i1 false, i1 false}
!277 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @lec_vcc_added.__UNIQUE_ID_ddebug608, !279, !"__UNIQUE_ID_ddebug608", i1 false, i1 false}
!279 = !{!"../net/atm/lec.c", i32 2047, i32 2}
!280 = !{ptr @.str.132, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../net/atm/lec.c", i32 1579, i32 2}
!282 = !{ptr @.str.133, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @lec_arp_expire_vcc.__UNIQUE_ID_ddebug591, !281, !"__UNIQUE_ID_ddebug591", i1 false, i1 false}
!284 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.135, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../net/atm/lec.c", i32 1035, i32 3}
!287 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @lane_module_init._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @lane_module_init._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.138, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../net/atm/lec.c", i32 1041, i32 2}
!292 = !{ptr @lane_module_init._entry.137, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @lane_module_init._entry_ptr.139, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @lec_seq_ops, !295, !"lec_seq_ops", i1 false, i1 false}
!295 = !{!"../net/atm/lec.c", i32 981, i32 36}
!296 = !{ptr @lec_seq_show.lec_banner, !297, !"lec_banner", i1 false, i1 false}
!297 = !{!"../net/atm/lec.c", i32 961, i32 20}
!298 = !{ptr @.str.140, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../net/atm/lec.c", i32 975, i32 19}
!300 = !{ptr @.str.141, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../net/atm/lec.c", i32 800, i32 18}
!302 = !{ptr @.str.142, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../net/atm/lec.c", i32 801, i32 18}
!304 = !{ptr @.str.143, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../net/atm/lec.c", i32 802, i32 18}
!306 = !{ptr @.str.144, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../net/atm/lec.c", i32 805, i32 19}
!308 = !{ptr @.str.145, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../net/atm/lec.c", i32 807, i32 19}
!310 = !{ptr @.str.146, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../net/atm/lec.c", i32 809, i32 19}
!312 = !{ptr @.str.147, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../net/atm/lec.c", i32 785, i32 3}
!314 = !{ptr @.str.148, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../net/atm/lec.c", i32 786, i32 3}
!316 = !{ptr @.str.149, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../net/atm/lec.c", i32 787, i32 3}
!318 = !{ptr @.str.150, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../net/atm/lec.c", i32 788, i32 3}
!320 = !{ptr @.str.151, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../net/atm/lec.c", i32 789, i32 3}
!322 = !{ptr @.str.152, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../net/atm/lec.c", i32 790, i32 3}
!324 = !{ptr @lec_arp_get_status_string.lec_arp_status_string, !325, !"lec_arp_status_string", i1 false, i1 false}
!325 = !{!"../net/atm/lec.c", i32 784, i32 27}
!326 = !{!"sp"}
!327 = !{i32 1, !"wchar_size", i32 2}
!328 = !{i32 1, !"min_enum_size", i32 4}
!329 = !{i32 8, !"branch-target-enforcement", i32 0}
!330 = !{i32 8, !"sign-return-address", i32 0}
!331 = !{i32 8, !"sign-return-address-all", i32 0}
!332 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!333 = !{i32 7, !"uwtable", i32 1}
!334 = !{i32 7, !"frame-pointer", i32 2}
!335 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!336 = !{i64 902446, i64 902463}
!337 = !{i64 2152781448, i64 2152781473}
!338 = !{!"branch_weights", i32 2000, i32 1}
!339 = !{i64 5277003}
!340 = !{i64 5277200}
!341 = !{i64 2152762433}
!342 = !{!"auto-init"}
!343 = !{i64 2148258852, i64 2148258857, i64 2148258870, i64 2148258914, i64 2148258948, i64 2148258969}
!344 = !{i64 2148638126, i64 2148638152, i64 2148638181, i64 2148638215, i64 2148638246, i64 2148638269}
!345 = !{!"branch_weights", i32 1, i32 2000}
!346 = !{i64 2148639656, i64 2148639688, i64 2148639717, i64 2148639751, i64 2148639782, i64 2148639805}
!347 = !{i64 2148727681}
!348 = !{i64 2148642121, i64 2148642153, i64 2148642182, i64 2148642216, i64 2148642247, i64 2148642270}
!349 = !{i64 2149925454}
!350 = !{i64 2148640591, i64 2148640617, i64 2148640646, i64 2148640680, i64 2148640711, i64 2148640734}
!351 = !{i64 1042806, i64 1042867}
!352 = !{i64 1045538}
!353 = !{i64 1045823}
